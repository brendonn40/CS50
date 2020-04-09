#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>

int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        printf("Usage: ./recover file.raw\n");
        return 1;
    }
    FILE * memorycard = fopen(argv[1],"r");
    if (memorycard == NULL)
    {
        printf("File not found.\n");
        return 1;
    }
    uint8_t buffer[512];
    int count = 0;
    char filename[8];
    bool first = true;
    FILE *img = NULL;
    // enquanto os bytes que eu estou tentando ler existe,aka(lendo ate o final do arquivo.)
    while(fread(buffer, 512 * sizeof (uint8_t), 1, memorycard)==1)
    {
      //checa se eh um jpeg
      if (buffer[0] == 0xff && buffer[1] == 0xd8 && buffer[2] == 0xff && (buffer[3] & 0xf0) == 0xe0)
      {
         //se for o primeiro jpeg,cria o primeiro arquivo e troca o valor da variavel first pra false
         if(first == true)
         {
         sprintf(filename,"%03i.jpg",count);//cria o nome do arquivo
         img = fopen(filename,"w");//abre o arquivo
         fwrite(buffer,512,1,img);//escreve 512 bytes no arquivo
         first= false;
         }
        //se nao for o primeiro, fecha o arquivo anterior,aumenta o contador, e cria o arquivo novo e escreve nele
         else
         {
          fclose(img);
          count++;
          sprintf(filename,"%03i.jpg",count);
          img = fopen(filename,"w");
          fwrite(buffer,512,1,img);
          }
      }
         //se os bytes que estao em buffer nao sao o de um jpeg,checa se ja foi achado um jpeg antes, se foi, escreve os bytes no arquivo aberto anteriormente.
         else
         {
            if(first == false)
            fwrite(buffer,512,1,img);
         }

    }
    fclose(img);
    fclose(memorycard);
    return 0;
}
