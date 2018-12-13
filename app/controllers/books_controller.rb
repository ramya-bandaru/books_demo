class BooksController < ApplicationController

 def index
   @books = Book.all
 end

 def new
   @book = Book.new

 end

 def create
   @book = Book.new
   @book.update_attributes(name: params[:book][:name] , author: params[:book][:author])
   if @book.save
     redirect_to books_path
   else
     render :new


   end
 end

 def update
   @book = Book.find(params[:id])
   @book.update_attributes(name: params[:book][:name] , author: params[:book][:author])
   if @book.save
     redirect_to books_path
   else
     render :edit
   end

 end

 def destroy
 end

 def edit
   @book = Book.find(params[:id])

 end

 def show
    @book = Book.find(params[:id])
 end

end
