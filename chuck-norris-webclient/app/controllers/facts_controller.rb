class FactsController < ApplicationController
  def index
    @facts = Fact.all
  end

  def new
    
  end

  def create
    @fact = Fact.create(fact: params[:fact])
    redirect_to "/facts/#{ @fact.id }"
  end

  def show
    @fact = Fact.find(params[:id])
  end

  def edit
    @fact = Fact.find(params[:id])
  end

  def update
    @fact = Fact.find(params[:id])
    @fact.update(params[:fact])
    @fact = Unirest.patch(
                      "#{ ENV['HOST_NAME']}/api/v2/facts/#{params[:id]}",
                      headers:{ "Accept" => "application/json"},
                      parameters:{ fact: params[:fact]}
                      ).body
    redirect_to "/facts/#{@facts.id}"
  end

  def destroy
    @fact = Fact.find(params[:id])
    @fact.destroy
    redirect_to "/facts"
  end
end
