require "./person"
class Instructor < Person
  attr_accessor :nickname,:strength

  def initialize(params ={})
    super
    @nickname = params[:nickname] if params[:nickname]
    @strength = params[:strength] ? params[:strength]: "be lazy"
  end

  def claim_your_strength
    "I like so much #{self.strength.upcase}"
  end
end
