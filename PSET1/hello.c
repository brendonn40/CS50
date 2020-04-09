#include <stdio.h>
#include <cs50.h>
int main(void)
{
    string name;
    name = get_string("Whats is your name?\n"); //gets name
    printf("hello, %s\n", name);//prints name
}
