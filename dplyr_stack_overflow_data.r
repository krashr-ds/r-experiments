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

# Inner join the question_tags and tags tables with the questions table
questions %>%
  inner_join(question_tags, by = c("id" = "question_id")) %>%
  inner_join(tags, by = c("tag_id" = "id"))

# Inner join the question_tags and tags tables with the answers table
answers %>%
  inner_join(question_tags, by = c("question_id" = "question_id")) %>%
  inner_join(tags, by = c("tag_id" = "id"))

posts_with_tags <- bind_rows(questions_with_tags %>% mutate(type = "question"),
                              answers_with_tags %>% mutate(type = "answer"))

# Add a year column, then aggregate by type, year, and tag_name
#NOTE: WHEN SOME OF THESE LESSONS SAY "AGGREGATE" THEY MEAN COUNT!! (not group_by)
posts_with_tags %>%
  mutate(year = year(creation_date)) %>%
  count(type, year, tag_name)

# Filter for the dplyr and ggplot2 tag names 
by_type_year_tag_filtered <- by_type_year_tag %>%
  filter(tag_name == 'dplyr' | tag_name == 'ggplot2')

# Create a line plot faceted by the tag name 
ggplot(by_type_year_tag_filtered, aes(x = year, y = n, color = type)) +
  geom_line() +
  facet_wrap(~ tag_name)
