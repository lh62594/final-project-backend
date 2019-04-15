class Portfoliostat < ApplicationRecord
  belongs_to :portfolio


  def test_task_to_run
    return "testing 123"
  end


  def self.testing_too
    return "another test"
  end

end
