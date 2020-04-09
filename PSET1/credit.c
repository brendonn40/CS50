#import <cs50.h>
#import <stdio.h>


int main(void)
{
int vetor[16],sum1=0,sum2=0,checksum;
long card;
int mod,cont=0;
do{
card=get_long("Number: ");
}
while(card<0);
for(int i=0;card>0;i++)
{
    if(cont>15)
    {
        printf("INVALID\n");
        return 0;
    } 
    mod=card%10;
    vetor[i]=mod;
    card/=10;
    cont++;
}
if(cont<13)
{
    printf("INVALID\n");
    return 0;
}
for(int i=1;i<cont;i+=2)
{
if((vetor[i]*2)>9)
{
    sum1+=(vetor[i]*2)-9;
}
else
{
   sum1+=vetor[i]*2;
}
}
for(int i=0;i<cont;i+=2)
{
    sum2+=vetor[i];
}
checksum=sum1+sum2;
if(checksum%10 ==0)
{
    //printf("Valid\n");
    if((vetor[cont-1]==3&&vetor[cont-2]==4|vetor[cont-1]==3&&vetor[cont-2]==7)&& cont==15)
    {
        printf("AMEX\n");
    }
    else if((vetor[cont-1]==4)&&cont==13|cont==16)
    {
        printf("VISA\n");
    }
    else if(vetor[cont-1]==5&&vetor[cont-2]==1|vetor[cont-2]==2|vetor[cont-2]==3|vetor[cont-2]==4|vetor[cont-2]==5)
    {
        printf("MASTERCARD\n");
    }
    else
    {
        printf("INVALID\n");
    }
}
else
{
    printf("INVALID\n");
}
}
