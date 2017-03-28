# Mostrar todos los entries.x
# Mostrar un Entry en particular (por id).x
# Crear un nuevo entry.x
# Editar un entry existente.
# Borrar un entry existente.
# Mostrar todos los entries para un tag. Como se vería esta URL ? en cual controlador pondrías la ruta ?

#show

get '/show/:id' do 
	@entrie = Entrie.find_by(id: params[:id])
	erb :show
end
#new

get '/new' do
	erb :new
end	

#create
post '/new' do
	@entrie = Entrie.new(title: params[:title], body: params[:body])
	if @entrie.save
		redirect "/show/#{@entrie.id}"
	end
end

#edit
get "show/:id/edit" do
	@entrie = Entrie.find_by(id: params[:id])
	erb :edit
end

#update
patch "show/:id" do
	@entrie = Entrie.find_by(id: params[:id])
	@entrie.update(title: params[:title], body: params[:body])	
	redirect "/#{@entrie.id}"
end



