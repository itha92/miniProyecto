class ExamenController < ApplicationController
	
	#before_filter :set_preguntas
	$preguntas = Preguntum.all.sample(3)
	#def set_preguntas
	#	@preguntas = Preguntum.all.sample(3)
	#end
	def index
		$preguntas
	end

	def verify
		respond_to do |format|
			format.json { render :json => $preguntas }
		end
	end

end
