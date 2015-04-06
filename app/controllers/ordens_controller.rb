class OrdensController < ApplicationController

	def index
		@ordens = Ordens.all
	end

	def show
		@ordem = Ordens.find(params[:id])
	end

	def new
		@ordem = Ordens.new
	end

	def edit
		@ordem = Ordens.find(params[:id])
	end

	def create
		@ordem = Ordens.new(ordens_params)

		if @ordem.save
			redirect_to @ordem
		else
			render 'new'
		end
	end

	def update
		@ordem = Ordens.find(params[:id])

		if @ordem.update(ordens_params)
			redirect_to @ordem
		else
			render 'edit'
		end
	end

	def destroy
		@ordem = Ordens.find(params[:id])
		@ordem.destroy

		redirect_to ordens_path
	end

	private
		def ordens_params
			params.require(:ordem).permit(:nome_do_comprador, :valor_do_item, :quantidade, :descricao_do_item, :nome_do_vendedor, :endereco_do_vendedor)
		end
end
