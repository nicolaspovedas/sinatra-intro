get "/" do
	@entries = Entrie.all
	erb :index
end