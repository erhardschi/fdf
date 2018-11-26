# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gaerhard <gaerhard@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/19 10:40:16 by gaerhard          #+#    #+#              #
#    Updated: 2018/11/26 16:20:51 by gaerhard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fdf
SRCS = srcs/main.c srcs/parsing.c srcs/bresenham.c srcs/graphic.c \
	   srcs/graphic_2.c
LIB = libft/libft.a
INCLUDES = ./includes
OBJ = $(SRCS:.c=.o)
CFLAGS = -Wall -Werror -Wextra -I$(INCLUDES)
MLXFLAGS = -lmlx -framework OPENGL -framework AppKit
all : $(NAME)

$(NAME): $(OBJ)
	gcc $(CFLAGS) $(MLXFLAGS) $(OBJ) $(LIB) -o $(NAME)

clean :
	rm -f $(OBJ)

fclean : clean
	rm -f $(NAME)

lib :
	make -C libft/

relib :
	make re -C libft/

re : fclean lib all
