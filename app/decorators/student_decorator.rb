class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
  	if subject_item = 0
  		sprintf('%.2f', subject_item)
  	else

  	end
  end
end
