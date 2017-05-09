class SalesController < ApplicationController

  def index
    sales = Sale.where({author: params[:author_id]})
    render json: sales.as_json({
        only: [:price, :date],
        include: {
          author: {
            only: [:name]
          },
        bookstore: {
          only: [:name, :location]
        }
        }
      })
  end

end