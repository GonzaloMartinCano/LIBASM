#include "libasm.h"

int main ()
{
    char c = 'a';
    char *s= "bbbonjour";
	char *p= "bbonjour";
	int x;
	int y;
	int i;
	int j;

	
	write(1, "FT_: ", 5);	
    x = ft_write(1, s, 4);
	write(1, "\n", 1);
	write(1, "ORI: ", 5);
    y = write(1, s, 4);
	write(1, "\n", 1);

    printf("FT_: %d\n", x);
    printf("ORI: %d\n", y);

	i = ft_strlen(s);
	j= strlen(s);
	printf("%d\n%d\n", i, j);
	
	printf("%d\n", ft_strcmp(s, p));
	printf("%d\n", strcmp(s, p));

	char z[100];
	ft_strcpy(z, p);
	printf("%s\n", z);
	strcpy(z, p); 
	printf("%s\n", z);
	return (0);
	}
