require "sinatra"



get "/" do
	
	erb :index
end

post "/abuela" do
	@respuesta = "Ahhh si, manzanas!" if params[:frase] == params[:frase].upcase
	@respuesta = "Habla más duro mijito" unless params[:frase] == params[:frase].upcase
	erb :abuela
end