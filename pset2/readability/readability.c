#import <cs50.h>
#import <stdio.h>
#import <ctype.h>
#import <math.h>

int count_letters(string text);
int count_words(string text);
int count_sentences(string text);
int main(void)
{   
    int letters,words,sentences;
    float l,s,index;
    string text;
    text=get_string("Text: ");
    letters=count_letters(text);
    words=count_words(text);
    sentences=count_sentences(text);
    l=((float)letters/(float)words)*100;
    s=((float)sentences/(float)words)*100;
    index =round((0.0588*l)-(0.296*s)-15.8);
    if(index<1)
    {
        printf("Before Grade 1\n");
    }
    else if(index>16)
    {
        printf("Grade 16+\n");
    }
    else
    {
        printf("Grade %.0f\n",index);
    }
    

}
int count_sentences(string text)
{
    int cont=0;
    for(int i=0;text[i]!='\0';i++)
    {
        if(text[i]=='.'|text[i]=='!'|text[i]=='?')
        {
            cont++;
        }
    }
    return cont;
}
int count_words(string text)
{   
    int cont=1;
    for(int i=0;text[i]!='\0';i++)
    {
        if(isspace(text[i]))
        {
            cont++;
        }
    }
    return cont;    
}
int count_letters(string text)
{
    int cont=0;
    for(int i=0;text[i]!='\0';i++)
    {
        if(isalpha((int)text[i]))
        {
            cont++;
        }
    
    }
    return cont;
}