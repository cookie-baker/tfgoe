extends Node2D

enum PLAYER_CHARACTER{
	WIZARD=0,
	KNIGHT=1,
	ELF=2
}

export (int) var score = 0
export var selected_character = PLAYER_CHARACTER.ELF

"""
Aqui devem ser guardadas as variáveis globais jogo.
"""
