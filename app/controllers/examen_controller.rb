class ExamenController < ApplicationController
	
	#before_filter :set_preguntas
	#def set_preguntas
	$preguntas = Preguntum.all.sample(3)
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
