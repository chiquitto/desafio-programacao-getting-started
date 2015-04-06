class Ordens < ActiveRecord::Base
	validates :nome_do_comprador, 
		format: { with: /\A[a-zA-Z_ ]+\z/, message: ": Apenas letras." },
		length: { minimum: 3, message: ": Mínimo de 3 carácteres." }

	validates :valor_do_item,
		numericality: { message: ": Apenas números e pontos" }

    validates :quantidade,
    	numericality: { only_integer: true, message: ": Apenas números." }

    validates :descricao_do_item,
    	presence: { message: ": Preencha o compo corretamente." }

    validates :nome_do_vendedor,
    	format: { with: /\A[a-zA-Z_ ]+\z/, message: ": Apenas letras." },
		length: { minimum: 3, message: ": Mínimo de 3 carácteres." }

    validates :endereco_do_vendedor,
    	length: { minimum: 3, message: ": Mínimo de 3 carácteres." }

end
