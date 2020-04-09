#include <cs50.h>
#include<stdio.h>
#include<ctype.h>
#include<string.h>

char ciphertext[1000];
string encrypt(string text,string key);
bool check(string argv,int len);
int main(int argc,string argv[])
{
    int len=0;
    string text;
    string key;
    if(argc==2)
    {
        len=strlen(argv[1]);
        //printf("Usage: ./substitution key\n");
        //return 1;
    }
    else
    {
        printf("Usage: ./substitution key\n");
        return 1;
    }
    if(len!= 26)
    {
        printf("Key must contain 26 characters.\n");
        return 1;
    }


    if(check(argv[1],len))
    {
        for(int i=0;i<len;i++)
        {
            for(int j=i+1;j<len;j++)
            {
                if(argv[1][j]==argv[1][i])
                {
                    printf("Key must not contain repeated characters.\n");
                    return 1;
                }
            }
        }
        key=argv[1];
        text=get_string("plaintext:");
        printf("ciphertext:%s\n",encrypt(text,key));
        return 0;
    }
    else
    {
        printf("Key must only contain alphabetic characters.");
        return 1;
    }
}
string encrypt(string text,string key)
{
    int len_str;
    string alf;
    char aux[26];
   // char ciphertext[1000];
    len_str=strlen(text);
    for(int i=0;i<26;i++)
    {
        aux[i]=tolower(key[i]);
    }

    alf="abcdefghijklmnopqrstuvwxyz";
    for(int i=0;i<len_str;i++)
    {
        for(int j=0;j<26;j++)
        {
            if(isalpha(text[i]))
            {
            if(tolower(text[i])==alf[j])
            {
                ciphertext[i]=aux[j];
                if(isupper(text[i]))
                {
                    ciphertext[i]=toupper(aux[j]);
                }
            }
            }
            else
            {
                ciphertext[i]=text[i];
            }
        }
    }
   // ciphertext[len_str]='\0';
    return ciphertext;

}
bool check(string argv,int len)
{

    for(int i=0;i<len;i++)
    {
        if(isalpha(argv[i])== false)
        {
            return false;
        }
    }
    return true;
}