class Lesson
  attr_accessor :instructor,:subject
  def initialize(params={})
    @instructor = params[:instructor] if params[:instructor]
    @subject = params[:subject] ? params[:subject] : "Party!!"
  end
end
