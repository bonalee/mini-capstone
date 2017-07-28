class ProductsController < ApplicationController
  def index
    if session[:count] == nil
      session[:count] = 0
    else
      session[:count] += 1
    end
    @visit_count = session[:count]

    sort_attribute = params[:filter_by]
    filter = params[:filter_order]
    discounted = params[:discounted]
    search = params[:search_name]

    if search
      @donuts = Product.all.where("name ILIKE ?", "%"+ search +"%")
    else
      @donuts = Product.all

      if sort_attribute && filter
        @donuts = Product.order(sort_attribute => filter)        
      elsif discounted
        @donuts = Product.where("price = 1")
      else
        @donuts = Product.order(sort_attribute)
      end
    end
    
    @categories = Category.all 
    category_name = params[:category_name]
    if category_name
      category = Category.find_by(name: category_name)
      @donuts = category.products
    end

    render "donut_index.html.erb"
  end

  def show
    donut_id = params[:id]

    if donut_id == "random"
      @donut = Product.order('RANDOM()').first
    else
      @donut = Product.find_by(id: donut_id)
    end
    render "donut_info.html.erb"
  end

  def new
    @suppliers = Supplier.all
    render "donut_create.html.erb"
  end

  def create
    @donut = Product.create(
      name: params[:form_name],
      price: params[:form_price],
      description: params[:form_description],
      supplier_id: params[:supplier_id]
      )

    Image.create(
      url: params[:image],
      product_id: @donut.id
      )
    redirect_to "/products"
    flash[:success] = "Donut added!"
  end

  def edit
    donut_id = params[:id]
    @donut = Product.find_by(id: donut_id)
    render "donut_edit.html.erb"
  end

  def update
    donut_id = params[:id]
    @donut = Product.find_by(id: donut_id)
    @donut.name = params[:form_name]
    @donut.price = params[:form_price]
    @donut.description = params[:form_description]
    @donut.save

    redirect_to "/products/#{@donut.id}"
    flash[:success] = "Donut changed!"
  end

  def destroy
    donut_id = params[:id]
    @donut = Product.find_by(id: donut_id)
    @donut.destroy
    redirect_to "/products"
    flash[:success] = "Donut deleted!"
  end
end