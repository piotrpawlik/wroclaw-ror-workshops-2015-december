class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
  	if subject_item == 0
  		sprintf('%.2f', subject_item)
  	else
  		average_notes = if !subject_item.subject_item_notes.size.zero?
  			subject_item.subject_item_notes.map(&:value).sum / subject_item.subject_item_notes.size.to_f
  		end
  		sprintf('%.2f', average_notes.to_f)
  	end
  end
end
