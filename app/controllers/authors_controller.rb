class AuthorsController < ApplicationController

  def index
    authors = Author.all
    render json: authors.as_json({
      only: [:name],
      include: {
        books: {
          only: [:title],

      include: {
        sales: {
          only: [:price, :date],
          include: {
            bookstore: {
              only: [:name, :location]
            }
          }
        }
      }
        }
      }
      })
  end

  def show
    author = Author.find(params[:id])
    render json: author
  end

end