class Api::V2::FactsController < ApplicationController
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
    flash = "You might have Destoyed this one fact...but Chuck Norris just created 10 MORE in its place!"
    10.times do
      ChuckNorrisFact.create(fact: Faker::ChuckNorris.fact)
    end
    @facts = ChuckNorrisFact.all
    render "/api/v2/facts.json"
  end
end
