class ExamenController < ApplicationController

	def index
		@preguntas = Preguntum.all.sample(3)
	end

end
