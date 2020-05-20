NAME = tests.a

FUN = ft_write.s ft_strlen.s ft_strcmp.s

OBJ = ft_write.o ft_strlen.o ft_strcmp.o


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
	@gcc tests.c $(NAME) -o test
