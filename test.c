#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>

size_t	ft_strlen(const char *s);
ssize_t	ft_write(int fd, const void *buf, size_t count);
ssize_t	ft_read(int fd, void *buf, size_t count);
char	*ft_strcpy(char *dest, const char *src);
int		ft_strcmp(const char *s1, const char *s2);
char	*ft_strdup(const char *s1);

int main ()
{
    char c = 'a';
    char *s= "Hola";
    int x;
    int y;

    x = ft_write(1, &c, 1);
    y = write(1, &c, 1);

    printf("%d\n", x);
    printf("%d\n", x);

    return (0);
}