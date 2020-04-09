// Implements a dictionary's functionality

#include <stdbool.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#include "dictionary.h"

// Represents a node in a hash table
typedef struct node
{
    char word[LENGTH + 1];
    struct node *next;
}
node;

// Number of buckets in hash table
const unsigned int HASHTABLE_SIZE = 65536;

//contains the amount of words in a dictionary
int count_words = 0;
// Hash table
node *table[HASHTABLE_SIZE];

// Returns true if word is in dictionary else false
bool check(const char *word)
{
    int word_len = strlen(word);
    char word_cpy[word_len + 1];

    for (int i = 0; i < word_len; i++)
    {
    word_cpy[i] = tolower(word[i]);
    }
    // add \0 to end of char array to indicate end of string
    word_cpy[word_len] = '\0';

    int index;
    node* cursor;
    /*if(cursor == NULL)
    {
        printf("Ran out of memory.\n");
        return false;
    }*/
    index=hash(word_cpy);
    cursor=table[index];
    if(cursor == NULL)
    {
        return false;
    }
    if(strcmp(cursor->word,word_cpy) == 0)//segfault here.
    {
        return true;
    }
    else
    {
        while(cursor!=NULL)
        {
            if(strcmp(cursor->word,word_cpy) == 0)
            {
                return true;
            }
            else
            {
                cursor=cursor->next;
            }
        }
    }


    return false;
}

// Hashes word to a number
unsigned int hash(const char *word)
{
    // TODO
    unsigned int hash = 0;
    for (int i = 0, n = strlen(word); i < n; i++)
    hash = (hash << 2) ^ word[i];
    return hash % HASHTABLE_SIZE;
}

// Loads dictionary into memory, returning true if successful else false
bool load(const char *dictionary)
{
    // abre o arquivo do dicionario,inicia as variaveis para cada palavra e o index
    FILE * file;
    file= fopen(dictionary,"r");
    char palavra[LENGTH+1];
    unsigned int index;
    //verifica se o arquivo eh valido
    if(file == NULL)
    {
        return false;
    }
    //le todas as palavras ate o fim do arquivo.
    while(fscanf(file,"%s",palavra)!= EOF)
    {
        node* new_node = malloc(sizeof(node));
        if(new_node == NULL)
        {
            return false;
        }
        index=hash(palavra);

        if(table[index] == NULL)
        {
        strcpy(new_node->word,palavra);
        new_node->next = NULL;
        table[index]=new_node;
        count_words++;
        }
        else
        {
        new_node->next = table[index]->next;
        table[index]->next =new_node;
        strcpy(new_node->word,palavra);
        count_words++;
        }

    }
    fclose(file);

    return true;
}

// Returns number of words in dictionary if loaded else 0 if not yet loaded
unsigned int size(void)
{

    return count_words;
}

// Unloads dictionary from memory, returning true if successful else false
bool unload(void)
{
    // TODO
    for(int i=0;i < HASHTABLE_SIZE;i++)
    {
        if(table[i]!= NULL)
        {
            node* cursor;
            node* tmp;
            cursor = table[i];
            while(cursor!=NULL)
            {
                tmp = cursor;
                cursor =cursor->next;
                free(tmp);
            }
        }
    }
    return true;
}
