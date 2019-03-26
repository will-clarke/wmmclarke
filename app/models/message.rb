class Message < ActiveRecord::Base
  attr_accessor :tricky_sum

  validate :returns_correct_answer?

  def returns_correct_answer?
    errors.add(:message, "incorrect answer") unless correct_answer?
  end

  def correct_answer?
    tricky_sum == 7 ||
      tricky_sum == "7" ||
      tricky_sum == "seven"
  end

end
