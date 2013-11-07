# best_quotes/app/controllers/quotes_controller.rb
class QuotesController < Rulers::Controller
	def index
		quotes = FileModel.all
		render :index, :quotes => quotes
	end
	def new_quote
		attrs = {
			"submitter" => "web user",
			"quote" => "A picture is worth a thousand pixels",
			"attribution" => "Me"
		}
		m = FileModel.create attrs
		render :quote, :obj => m
	end
	def a_quote
		render :a_quote, :noun => :winking
	end
	def quote_1
		quote_1 = Rulers::Model::FileModel.find(1)
		render :quote, :obj => quote_1
	end
	def update_quote
		attrs = {
			"id" => "1",
			"submitter" => "Update Bot",
			"quote" => "This quote has been updated",
			"attribution" => "Unknown"
		}
		FileModel.update attrs
		quotes = FileModel.all
		render :index, :quotes => quotes
	end
end
