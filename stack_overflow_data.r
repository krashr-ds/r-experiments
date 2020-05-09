#DataCamp Stack Overflow Question Data Exercise

questions_with_tags %>%
	# Group by tag_name
  group_by(tag_name) %>%
	# Get mean score and num_questions
	summarize(score = mean(score),
          	  num_questions = n()) %>%
	# Sort num_questions in descending order
	arrange(desc(num_questions))
