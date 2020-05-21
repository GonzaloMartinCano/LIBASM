NAME = libasm.a

FUN = ft_write.s ft_strlen.s ft_strcmp.s ft_strcpy.s ft_read.s ft_strdup.s

OBJ = ft_write.o ft_strlen.o ft_strcmp.o ft_strcpy.o ft_read.o ft_strdup.o


all: $(NAME)

%.o: %.s
	@nasm -f macho64 $<

$(NAME): $(OBJ)
	@ar rcs $(NAME) $(OBJ)


clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all

test: re
	@gcc testshard.c $(NAME) -o test
