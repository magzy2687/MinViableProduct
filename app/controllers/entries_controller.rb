class EntriesController < ApplicationController
def index
	@entries = Entry.all
end
def show
		@entry = Entry.find(params["id"])

		end
		def create
			#entry_params = params["entry"]
			entry_params = params["entry"].permit("title", "contents")
			entry = Entry.create(entry_params)
			redirect_to(entry_path(entry))
		end
		def edit
			@entry = Entry.find(params["id"])
		end

end
# NEED enough ENDS -- ONE TO END EACH DEFINITION "DEF" AND ALSO TO END THE CLASS "CLASS"