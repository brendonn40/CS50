#include<stdio.h>
#include<ctype.h>
#include<stdlib.h>
#include<string.h>
#include<cs50.h>
int main(int argc,char * argv[])
{
    string  text;
    char ciphertext[1000];
    int key,len_text;
if(argc!=2)
{
    printf("Usage: ./caesar key\n");
    return 1;
}
else if (argc==2)
{
    int len;
    key=atoi(argv[1]);
    key%=26;  //transforma a key em um numero de 0 a 25(alfabeto)
    len=strlen(argv[1]);
    for (int i = 0; i < len; i++)
    {
        if(isdigit(argv[1][i]) == false)
        {
            printf("Usage: ./caesar key\n");
            return 1;
        }
    }
    if(key<0)
    {
        printf("Usage: ./caesar key\n");
        return 1;
    }

}


    text=get_string("plaintext:");
    len_text=strlen(text);
    for (int i = 0; i < len_text; i++)
    {
        if(isupper(text[i]))
        {
        ciphertext[i]=text[i]+key;
        if (ciphertext[i]>'Z')
        {
            ciphertext[i]=ciphertext[i]-26;
        }
    }
        else if(islower(text[i]))
        {
            int re;
            re=text[i]+key;
            if(re>122)
            {

                ciphertext[i]=re-26;

            }
            else
            {
                ciphertext[i]=re;
            }
        }
        else
        {
            ciphertext[i]=text[i];
        }

    }
ciphertext[len_text]='\0';


   printf("ciphertext:%s\n",ciphertext);




}