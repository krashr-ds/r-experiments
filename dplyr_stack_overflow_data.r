#DataCamp Stack Overflow Question Data Exercise

questions_with_tags %>%
	# Group by tag_name
  group_by(tag_name) %>%
	# Get mean score and num_questions
	summarize(score = mean(score),
          	  num_questions = n()) %>%
	# Sort num_questions in descending order
	arrange(desc(num_questions))

questions %>%
	# Inner join questions and answers with proper suffixes
	inner_join(answers, by = c("id" = "question_id"), suffix = c("_question", "_answer")) %>%
	# Subtract creation_date_question from creation_date_answer to create gap
	mutate(gap = as.integer(creation_date_answer - creation_date_question))

# Count and sort the question id column in the answers table
answer_counts <- answers %>%
  group_by(question_id) %>%
  summarize(n = sum(n()))


# Combine the answer_counts and questions tables
questions %>% 
  left_join(answer_counts, by = c("id" = "question_id")) %>%
	
	# Replace the NAs in the n column
replace_na(list(n=0))

question_answer_counts %>%
	# Join the question_tags tables
	inner_join(question_tags, by = c("id" = "question_id")) %>%
	# Join the tags table
	inner_join(tags, by = c("tag_id" = "id"))

tagged_answers %>%
	# Aggregate by tag_name
  group_by(tag_name) %>%
	# Summarize questions and average_answers
    summarize(questions = n(),
              average_answers =mean(n)) %>%
	# Sort the questions in descending order
    arrange(desc(questions))
