#include "helpers.h"
#include <math.h>
// Convert image to grayscale
void grayscale(int height, int width, RGBTRIPLE image[height][width])
{
    int avg;
    for(int i=0;i<height;i++)
    {
        for (int j= 0;j < width; j++)
        {
            avg = round((image[i][j].rgbtRed + image[i][j].rgbtGreen + image[i][j].rgbtBlue)/3.0);
            image[i][j].rgbtRed = avg;
            image[i][j].rgbtGreen = avg;
            image[i][j].rgbtBlue = avg;
        }
    }
    return;
}

// Convert image to sepia
void sepia(int height, int width, RGBTRIPLE image[height][width])
{
    int sepiaRed,sepiaGreen,sepiaBlue,originalRed,originalBlue,originalGreen;
    for (int i= 0;i < height; i++)
    {
        for (int j= 0;j < width ; j++)
        {
            originalRed = image[i][j].rgbtRed;
            originalGreen = image[i][j].rgbtGreen;
            originalBlue = image[i][j].rgbtBlue;
            sepiaRed = round( 0.393 * originalRed + 0.769 * originalGreen + 0.189 * originalBlue);
            if(sepiaRed > 255)
            {
                sepiaRed=255;
            }

            sepiaGreen = round(0.349 * originalRed + 0.686 * originalGreen + 0.168 * originalBlue);
            if(sepiaGreen > 255)
            {
                sepiaGreen = 255;
            }
            sepiaBlue = round(0.272 * originalRed + 0.534 * originalGreen + 0.131 * originalBlue);
            if(sepiaBlue > 255)
            {
             sepiaBlue = 255;
            }
            image[i][j].rgbtRed = sepiaRed;
            image[i][j].rgbtGreen = sepiaGreen;
            image[i][j].rgbtBlue = sepiaBlue;


        }
    }
    return;
}

// Reflect image horizontally
void reflect(int height, int width, RGBTRIPLE image[height][width])
{
    RGBTRIPLE temp[height][width];
    for (int i= 0;i < height; i++)
    {
        for (int j= 0,k=width-1;j < width; j++)
        {
            temp[i][j] = image[i][k];
            k--;
        }
    }
    for (int i= 0;i < height; i++)
    {
        for (int j= 0;j < width; j++)
        {
            image[i][j] = temp[i][j];
        }
    }
    return;
}

// Blur image
void blur(int height, int width, RGBTRIPLE image[height][width])
{
    RGBTRIPLE temp[height][width];
    int avgRed,avgGreen,avgBlue;
    for (int i= 0;i < height; i++)
    {
        for (int j= 0;j < width; j++)
        {
            if (i == 0 &&j == 0)//quina superior direita
            {
                avgRed = round((image[i][j].rgbtRed + image[i+1][j].rgbtRed + image[i][j+1].rgbtRed + image[i+1][j+1].rgbtRed) / 4.0);
                avgGreen = round((image[i][j].rgbtGreen + image[i+1][j].rgbtGreen + image[i][j+1].rgbtGreen + image[i+1][j+1].rgbtGreen) / 4.0);
                avgBlue = round((image[i][j].rgbtBlue + image[i+1][j].rgbtBlue + image[i][j+1].rgbtBlue + image[i+1][j+1].rgbtBlue) / 4.0);
            }
            else if(i == 0 && j == width-1)     //quina superior esquerda
            {
                avgRed = round((image[i][j].rgbtRed + image[i+1][j].rgbtRed + image[i][j-1].rgbtRed + image[i+1][j-1].rgbtRed)/4.0);
                avgGreen = round((image[i][j].rgbtGreen + image[i+1][j].rgbtGreen + image[i][j-1].rgbtGreen + image[i+1][j-1].rgbtGreen)/4.0);
                avgBlue = round((image[i][j].rgbtBlue + image[i+1][j].rgbtBlue + image[i][j-1].rgbtBlue + image[i+1][j-1].rgbtBlue)/4.0);

            }
            else if(i==0&&j!=0&&j!=width-1) //primeira linha, meio
            {
             avgRed=round((image[i][j].rgbtRed+image[i][j-1].rgbtRed+image[i][j+1].rgbtRed+image[i+1][j].rgbtRed+image[i+1][j+1].rgbtRed+image[i+1][j-1].rgbtRed)/6.0);
             avgGreen=round((image[i][j].rgbtGreen+image[i][j-1].rgbtGreen+image[i][j+1].rgbtGreen+image[i+1][j].rgbtGreen+image[i+1][j+1].rgbtGreen+image[i+1][j-1].rgbtGreen)/6.0);
             avgBlue=round((image[i][j].rgbtBlue+image[i][j-1].rgbtBlue+image[i][j+1].rgbtBlue+image[i+1][j].rgbtBlue+image[i+1][j+1].rgbtBlue+image[i+1][j-1].rgbtBlue)/6.0);
            }
            else if(j==0&&i>0&&i<height-1) //lateral esquerda
            {
             avgRed=round((image[i][j].rgbtRed+image[i+1][j].rgbtRed+image[i-1][j].rgbtRed+image[i][j+1].rgbtRed+image[i-1][j+1].rgbtRed+image[i+1][j+1].rgbtRed)/6.0);
             avgGreen=round((image[i][j].rgbtGreen+image[i+1][j].rgbtGreen+image[i-1][j].rgbtGreen+image[i][j+1].rgbtGreen+image[i-1][j+1].rgbtGreen+image[i+1][j+1].rgbtGreen)/6.0);
             avgBlue=round((image[i][j].rgbtBlue+image[i+1][j].rgbtBlue+image[i-1][j].rgbtBlue+image[i][j+1].rgbtBlue+image[i-1][j+1].rgbtBlue+image[i+1][j+1].rgbtBlue)/6.0);


            }
            else if(i!=0&&i!=height-1&&j==width-1) //lateral direita
            {
             avgRed=round((image[i][j].rgbtRed+image[i+1][j].rgbtRed+image[i+1][j-1].rgbtRed + image[i][j-1].rgbtRed + image[i-1][j].rgbtRed + image[i-1][j-1].rgbtRed)/6.0);
             avgGreen=round((image[i][j].rgbtGreen+image[i+1][j].rgbtGreen+image[i+1][j-1].rgbtGreen+image[i][j-1].rgbtGreen+image[i-1][j].rgbtGreen+image[i-1][j-1].rgbtGreen)/6.0);
             avgBlue=round((image[i][j].rgbtBlue+image[i+1][j].rgbtBlue+image[i+1][j-1].rgbtBlue+image[i][j-1].rgbtBlue+image[i-1][j].rgbtBlue+image[i-1][j-1].rgbtBlue)/6.0);
            }
            else if(i==height-1&&j==0)    //quina inferior esquerda
            {
                avgRed=round((image[i][j].rgbtRed+image[i][j+1].rgbtRed+image[i-1][j].rgbtRed+image[i-1][j+1].rgbtRed)/4.0);
                avgGreen=round((image[i][j].rgbtGreen+image[i][j+1].rgbtGreen+image[i-1][j].rgbtGreen+image[i-1][j+1].rgbtGreen)/4.0);
                avgBlue=round((image[i][j].rgbtBlue+image[i][j+1].rgbtBlue+image[i-1][j].rgbtBlue+image[i-1][j+1].rgbtBlue)/4.0);
            }
            else if(i==height-1&&j==width-1) //quina inferior direita
            {
                avgRed=round((image[i][j].rgbtRed+image[i][j-1].rgbtRed+image[i-1][j].rgbtRed+image[i-1][j-1].rgbtRed)/4.0);
                avgGreen=round((image[i][j].rgbtGreen+image[i][j-1].rgbtGreen+image[i-1][j].rgbtGreen+image[i-1][j-1].rgbtGreen)/4.0);
                avgBlue=round((image[i][j].rgbtBlue+image[i][j-1].rgbtBlue+image[i-1][j].rgbtBlue+image[i-1][j-1].rgbtBlue)/4.0);
            }
            else if(i==height-1&&j!=0&&j!=width-1)       //ultima linha, meio
            {
             avgRed=round((image[i][j].rgbtRed+image[i][j-1].rgbtRed+image[i][j+1].rgbtRed+image[i-1][j].rgbtRed+image[i-1][j+1].rgbtRed+image[i-1][j-1].rgbtRed)/6.0);
             avgGreen=round((image[i][j].rgbtGreen+image[i][j-1].rgbtGreen+image[i][j+1].rgbtGreen+image[i-1][j].rgbtGreen+image[i-1][j+1].rgbtGreen+image[i-1][j-1].rgbtGreen)/6.0);
             avgBlue=round((image[i][j].rgbtBlue+image[i][j-1].rgbtBlue+image[i][j+1].rgbtBlue+image[i-1][j].rgbtBlue+image[i-1][j+1].rgbtBlue+image[i-1][j-1].rgbtBlue)/6.0);
            }
            else                                   //aqui pega todos 3x3
            {
                avgRed=round((image[i][j].rgbtRed+image[i][j-1].rgbtRed+image[i][j+1].rgbtRed+image[i-1][j].rgbtRed+image[i-1][j+1].rgbtRed+image[i-1][j-1].rgbtRed+image[i+1][j].rgbtRed+image[i+1][j+1].rgbtRed+image[i+1][j-1].rgbtRed)/9.0);
                avgGreen=round((image[i][j].rgbtGreen+image[i][j-1].rgbtGreen+image[i][j+1].rgbtGreen+image[i-1][j].rgbtGreen+image[i-1][j+1].rgbtGreen+image[i-1][j-1].rgbtGreen+image[i+1][j].rgbtGreen+image[i+1][j+1].rgbtGreen+image[i+1][j-1].rgbtGreen)/9.0);
                avgBlue=round((image[i][j].rgbtBlue+image[i][j-1].rgbtBlue+image[i][j+1].rgbtBlue+image[i-1][j].rgbtBlue+image[i-1][j+1].rgbtBlue+image[i-1][j-1].rgbtBlue+image[i+1][j].rgbtBlue+image[i+1][j+1].rgbtBlue+image[i+1][j-1].rgbtBlue)/9.0);


            }
            temp[i][j].rgbtRed=avgRed;
            temp[i][j].rgbtGreen=avgGreen;
            temp[i][j].rgbtBlue=avgBlue;
        }
    }
     for(int i=0;i<height;i++)
    {
        for(int j=0;j<width;j++)
        {
            image[i][j]=temp[i][j];
        }
    }
    return;
}
