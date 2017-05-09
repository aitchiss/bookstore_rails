class BookstoresController < ApplicationController

  def index
    bookstores = Bookstore.all
    render json: bookstores
  end

  def show
    bookstore = Bookstore.find(params[:id])
    render json: bookstore
  end
end