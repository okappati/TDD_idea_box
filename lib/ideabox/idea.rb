class Idea

  attr_accessor :id, :title, :description
  attr_reader :likes

  def initialize(title, description)
    @title = title
    @description = description
    @likes = 0
  end

  def like!
    @likes += 1
  end

  def <=>(other)
    likes <=> other.likes
  end

  def test_a_new_idea
    idea = Idea.new('sleep', 'all day')
    assert idea.new?
  end

  def new?
    !id
  end

end
