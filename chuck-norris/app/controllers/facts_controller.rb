class FactsController < ApplicationController
  def index
    @facts = ChuckNorrisFact.all
  end

  def create
    @fact = ChuckNorrisFact.new(fact: params[:fact])
    @fact.save
    render :show
  end
end
