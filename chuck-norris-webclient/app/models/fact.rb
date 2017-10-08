class Fact
  attr_accessor :id, :fact

  def initialize(fact_hash)
    @id = fact_hash["id"]
    @fact = fact_hash["fact"]
  end

  def self.all
    fact_collection = []
    response = Unirest.get("#{ ENV['HOST_NAME']}/api/v2/facts.json").body
    response.each do |cnfact_hash|
     fact_collection << Fact.new(cnfact_hash)
    end
    fact_collection
  end

  def self.find(fact_id)
    Fact.new(Unirest.get("#{ ENV['HOST_NAME']}/api/v2/facts/#{ fact_id }.json",
                        headers: {
                                X
                          }).body)
  end

  def destroy
    Unirest.delete(
                    "#{ ENV['HOST_NAME']}/api/v2/facts/#{ id }",
                    headers: {"Accept" => "application/json"})
  end

  def self.create(fact_params)
    response = Unirest.post("#{ ENV['HOST_NAME']}/api/v2/facts.json",
                      headers:{ "Accept" => "application/json"},
                      parameters: fact_params
                      ).body
    Fact.new(response)
  end

  def self.update(fact_params)
    response = Unirest.patch("#{ ENV['HOST_NAME']}/api/v2/facts/#{ id }.json",
                      headers:{ "Accept" => "application/json"},
                      parameters: fact_params
                      ).body
  end

end