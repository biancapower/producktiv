module EntriesHelper
	def format_entry_type(entry_type)
		if entry_type == "task_incomplete"
			"Task"
		else
			entry_type.split("_").map {|word| word.capitalize}.join(" ")
		end
	end

	def symbol_for_entry_type(entry_type)
		case entry_type
		when "task_incomplete"
			"•"
		when "task_completed"
			"⨯"
		when "task_forwarded"
			">"
		when "task_dismissed"
			"⊁"
		when "event"
			"○"
		when "note"
			"–"
		when "idea"
			"+"
		end
	end
end
