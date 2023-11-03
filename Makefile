NAME = libftprintf.a

SOURCES = ft_printf.c				\
		  ft_printf_char.c			\
		  ft_printf_decimal.c		\
		  ft_printf_hexa_lower.c	\
		  ft_printf_hexa_upper.c	\
		  ft_printf_int.c			\
		  ft_printf_point.c			\
		  ft_printf_string.c		\
		  ft_printf_uns_dec.c

SOURCES_LIBFT = ft_itoa.c			\
   				ft_putstr_fd.c		\
   				ft_strmapi.c		\
   				ft_atoi.c			\
   				ft_memchr.c			\
   				ft_bzero.c			\
   				ft_calloc.c			\
   				ft_isalnum.c		\
   				ft_isalpha.c		\
   				ft_isascii.c		\
   				ft_isdigit.c		\
   				ft_isprint.c		\
   				ft_memcmp.c			\
   				ft_memcpy.c			\
   				ft_memmove.c		\
   				ft_memset.c			\
   				ft_putchar_fd.c		\
   				ft_putendl_fd.c		\
   				ft_putnbr_fd.c		\
   				ft_split.c			\
   				ft_strchr.c			\
   				ft_strdup.c			\
   				ft_striteri.c		\
   				ft_strjoin.c		\
   				ft_strlcat.c		\
   				ft_strlcpy.c		\
   				ft_strlen.c			\
   				ft_strncmp.c		\
   				ft_strnstr.c		\
   				ft_strrchr.c		\
   				ft_strtrim.c		\
   				ft_substr.c			\
   				ft_tolower.c		\
   				ft_toupper.c		\
   				ft_lstadd_back.c	\
   				ft_lstadd_front.c	\
   				ft_lstclear.c		\
   				ft_lstdelone.c		\
   				ft_lstiter.c		\
   				ft_lstlast.c		\
   				ft_lstmap.c			\
   				ft_lstnew.c			\
   				ft_lstsize.c		

LIBFT = $(addprefix libft/, $(SOURCES_LIBFT))

OBJECTS = $(SOURCES:.c=.o)

OBJECTS_LIBFT = $(LIBFT:.c=.o)

CC = gcc
CFLAGS = -Wall -Werror -Wextra
RM = rm -f
AR = ar rcs

all : $(NAME)

$(NAME): $(OBJECTS) $(OBJECTS_LIBFT) ft_printf.h
	$(AR) $(NAME) $(OBJECTS) $(OBJECTS_LIBFT)

%.o: %.c ft_printf.h
	$(CC) $(CFLAGS) -I. -c $< -o ${<:.c=.o}

clean :
	$(RM) $(OBJECTS)
	@make clean -C libft


fclean : clean
	$(RM) $(NAME)
	@make fclean -C libft

re : fclean all

.PHONY:	all clean fclean re
