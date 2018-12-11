class BooksController < ApplicationController

 def index
   @books = Book.all
 end

 def new
 end

 def create
   @book = Book.new
   @book.update_attributes(name: params[:book][:name] , author: params[:book][:author])
 end

 def update
 end

 def destroy
 end

 def edit
 end

 def show
 end

end
