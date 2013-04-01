class ProductsController < ApplicationController
  def new
    @product = Product.new
  end
  def create
    product = Product.create(params[:product])
    params[:tags].split(',').each do |tag|
      tag = tag.squish
      new_tag = Tag.create(name:tag)
      product.tags << new_tag
    end
    @products = Product.all
  end
  def filter
    tag = Tag.find(params[:tag_id])
    @products = tag.products
  end
  def search
    query = params[:query]
    @products = Product.where("name @@ :q or description @@ :q or image @@ :q or address @@ :q", :q => query)
    render :filter
  end
end