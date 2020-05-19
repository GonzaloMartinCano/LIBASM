NAME = tests.a

FUN = ft_write.s

OBJ = ft_write.o


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
