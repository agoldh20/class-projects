class Api::V1::FactsController < ApplicationController
  def index
    @facts = ChuckNorrisFact.all
  end

  def update
    fact = ChuckNorrisFact.find(params[:id])
    fact.assign_attributes(fact: params[:fact])
  end

  def show
    @fact = ChuckNorrisFact.find(params[:id])
  end

  def destroy
    @fact = ChuckNorrisFact.find(params[:id]).destroy
    flash = "You have Destoyed this one fact..."
  end
end
