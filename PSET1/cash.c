#import <cs50.h>
#import <stdio.h>
#import <math.h>

int main(void)
{
float price;
int coins,change;
do{
price=get_float("Change owed:");
}
while(price<0);
change=round(price*100);
coins=change/25;
change=change%25;
coins+=change/10;
change=change%10;
coins+=change/5;
change=change%5;
coins+=change/1;

printf("%i\n",coins);

}
