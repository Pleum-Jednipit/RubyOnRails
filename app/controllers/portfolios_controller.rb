class PortfoliosController < ApplicationController
	before_action :set_portfolio_item, only: [:show, :edit, :update, :destroy]
	layout "portfolio"
	access all: [:show, :index], user: {except: [:destroy, :new , :create , :update , :eidt]}, site_admin: :all

	def index
		@portfolio_items = Portfolio.all
	end	

	def angular
		@angular_portfolio_items = Portfolio.angular
	end	

	def new
		@portfolio_item = Portfolio.new
		3.times { @portfolio_item.technologies.build}
	end	

	def edit
	
	end	



	def show
	

	end	

	def create
    	@portfolio_item = Portfolio.new(portfolio_params)
	    respond_to do |format|
	      if @portfolio_item.save
	        format.html { redirect_to portfolios_path, notice: 'Your portfolio was successfully created.' }
	      else
	        format.html { render :new }
	      end
	    end
	end

    def update
    	@portfolio_item = Portfolio.find(params[:id])
    	respond_to do |format|
      		if @portfolio_item.update(portfolio_params)
        		format.html { redirect_to portfolios_path, notice: 'The record is successfully updated.' }
      		else
        		format.html { render :edit }
      		end
    	end
  	end

  	def destroy
	  	@portfolio_item = Portfolio.find(params[:id])
	  	@portfolio_item.destroy
	    respond_to do |format|
		    format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully destroyed.' }
		end
  	end	

  	private
  		def portfolio_params
  			params.require(:portfolio).permit(:title, 
  												:subtitle, 
  												:body, 
    											technologies_attributes: [:name]
    											)

		end

		def set_portfolio_item
			@portfolio_item = Portfolio.find(params[:id])
		end
  	end
  	

