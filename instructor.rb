class Instructor
  attr_accessor :first_name,:last_name,:nickname,:age,:strength

  def initialize(params ={})
    @first_name = params[:first_name] ? params[:first_name]: "no name"
    @last_name = params[:last_name] ? params[:last_name]: "no lastname"
    @nickname = params[:nickname] if params[:nickname]
    @age = params[:age] ? params[:age]: 1000
    @strength = params[:strength] ? params[:strength]: "be lazy"
  end

  def claim_your_strength
    "I like so much #{self.strength.upcase}"
  end
end
