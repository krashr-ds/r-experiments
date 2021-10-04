# Import text data from CSV, no factors
tweets <- read.csv(coffee_data_file, stringsAsFactors = FALSE)

# View the structure of tweets
str(tweets)

# Isolate text from tweets
coffee_tweets <- tweets$text

# Load tm
library(tm)

# Make a VECTOR SOURCE from coffee_tweets
coffee_source <- VectorSource(coffee_tweets)

# Make a VOLATILE CORPUS from coffee_corpus
coffee_corpus <- VCorpus(coffee_source)

# Print out coffee_corpus
print(coffee_corpus)

# Print the 15th tweet in coffee_corpus
print(coffee_corpus[[15]])

# Print the contents of the 15th tweet in coffee_corpus
print(coffee_corpus[[15]][1])

# Now use content to review the plain text of the 10th tweet
content(coffee_corpus[[10]])

# Create a DataframeSource from the example text
df_source <- DataframeSource(example_text)

# Convert df_source to a volatile corpus
df_corpus <- VCorpus(df_source)

# Examine df_corpus
df_corpus

# Examine df_corpus metadata
meta(df_corpus)

# Compare the number of documents in the vector source
vec_corpus

# Compare METADATA in the vector corpus
meta(vec_corpus)

#TM CLEANING FUNCTIONS (except tolower which is part of base R)

# Create the object: text
text <- "<b>She</b> woke up at       6 A.M. It\'s so early!  She was only 10% awake and began drinking coffee in front of her computer."

# Make lowercase
tolower(text)

# Remove punctuation
removePunctuation(text)

# Remove numbers
removeNumbers(text)

# Remove whitespace
stripWhitespace(text)

#QDAP CLEANING FUNCTIONS

# Remove text within brackets
bracketX(text)

# Replace numbers with words
replace_number(text)

# Replace abbreviations
replace_abbreviation(text)

# Replace contractions
replace_contraction(text)

# Replace symbols with words
replace_symbol(text)

# REMOVING STOPWORDS and ADDING TO THE STOPWORDS DICTIONARY

# List standard English stop words
stopwords("en")

# Print text without standard stop words
removeWords(text, stopwords("en"))

# Add "coffee" and "bean" to the list: new_stops
new_stops <- c("coffee", "bean", stopwords("en"))

# Remove stop words from text
removeWords(text, new_stops)

# STEMMING

# Create complicate
complicate <- c("complicated", "complication", "complicatedly")

# Perform word stemming: stem_doc
stem_doc <- stemDocument(complicate)

# Create the completion dictionary: comp_dict
comp_dict <- c("complicate")

# Perform stem completion: complete_text 
complete_text <- stemCompletion(stem_doc, comp_dict)

# Print complete_text
complete_text

# Remove punctuation: rm_punc
rm_punc <- removePunctuation(text_data)

# Create character vector: n_char_vec
# NOTE: this function, strsplit is NOT stringr str_split!! It is base R.
n_char_vec <- unlist(strsplit(rm_punc, split = " "))

# Perform word stemming: stem_doc
stem_doc <- stemDocument(n_char_vec)

# Print stem_doc
stem_doc

# Re-complete stemmed document: complete_doc
# BE CAREFUL about what's in comp_dict - this might not behave as expected
complete_doc <- stemCompletion(stem_doc, comp_dict)

# Print complete_doc
complete_doc


# HOW TO USE tm_map TO CREATE A CUSTOM CLEANING FUNCTION


clean_corpus <- function(corpus) {
  # Remove punctuation
  corpus <- tm_map(corpus, removePunctuation)
  # Transform to lower case
  corpus <- tm_map(corpus, content_transformer(tolower))
  # Add more stopwords
  corpus <- tm_map(corpus, removeWords, words = c(stopwords("en"), "coffee", "mug"))
  # Strip whitespace
  corpus <- tm_map(corpus, stripWhitespace)
  return(corpus)
}

# Apply your customized function to the tweet_corp: clean_corp
clean_corp <- clean_corpus(tweet_corp)

# Print out a cleaned up tweet
content(clean_corp[[227]])

# Print out the same tweet in the original form
content(tweet_corp[[227]])

# CREATING TERMDOCUMENTMATRIXes and DOCUMENTTERMMATRIXes

# Create the DOCUMENT-TERM MATRIX from the corpus
coffee_dtm <- DocumentTermMatrix(clean_corp)

# Print out coffee_dtm data
coffee_dtm

# Convert coffee_dtm to a matrix
coffee_m <- as.matrix(coffee_dtm)

# Print the dimensions of coffee_m
dim(coffee_m)

# Review a portion of the matrix to get some Starbucks
coffee_m[25:35, c("star", "starbucks")]

# Create a TERM-DOCUMENT MATRIX from the corpus
coffee_tdm <- TermDocumentMatrix(clean_corp)

# Print coffee_tdm data
coffee_tdm

# Convert coffee_tdm to a matrix
coffee_m <- as.matrix(coffee_tdm)

# Print the dimensions of the matrix
dim(coffee_m)

# Review a portion of the matrix
coffee_m[c("star", "starbucks"), 25:35]

#VISUALIZING FREQUENTLY USED WORDS

# Convert coffee_tdm to a matrix
coffee_m <- as.matrix(coffee_tdm)

# Calculate the row sums of coffee_m
term_frequency <- rowSums(coffee_m)

# Sort term_frequency in decreasing order
term_frequency <- sort(term_frequency, decreasing = TRUE)

# View the top 10 most common words
term_frequency[1:10]

# Plot a barchart of the 10 most common words
barplot(term_frequency[1:10], col = "tan", las = 2)

# Create frequency using QDAP

frequency <- freq_terms(
    tweets$text,
    top = 10,
    at.least = 3,
    stopwords = stopwords("english")
)

plot(frequency)

# CLEANING STOPWORDS and CREATING WORDCLOUDS

# Review a "cleaned" tweet
content(chardonnay_corp[[24]])

# Add to stopwords
stops <- c(stopwords(kind = 'en'), 'chardonnay')

# Review last 6 stopwords 
tail(stops)

# Apply to a corpus
cleaned_chardonnay_corp <- tm_map(chardonnay_corp, removeWords, stops)

# Review a "cleaned" tweet again
content(cleaned_chardonnay_corp[[24]])

chardonnay_m <- as.matrix(cleaned_chardonnay_corp)
chardonnay_words <- rowSums(chardonnay_m)

# Sort the chardonnay_words in descending order
sorted_chardonnay_words <- sort(chardonnay_words, decreasing = TRUE)

# Print the 6 most frequent chardonnay terms
head(sorted_chardonnay_words, 6)

# Get a terms vector
terms_vec <- names(chardonnay_words)

# Create a wordcloud for the values in word_freqs
wordcloud(terms_vec, chardonnay_words, 
          max.words = 50, colors = "red")

# CREATE A WORDCLOUD WITH MORE THAN ONE COLOR

# Print the list of colors
colors()

# Print the wordcloud with the specified colors
wordcloud(chardonnay_freqs$term, chardonnay_freqs$num, 
          max.words = 100, 
          colors = c("grey80", "darkgoldenrod1", "tomato"))


# USING A PREDEFINED COLOR PALETTE

# Select 5 colors 
color_pal <- cividis(n = 5)

# Examine the palette output
print(color_pal)

# Create a word cloud with the selected palette
wordcloud(
    chardonnay_freqs$term,
    chardonnay_freqs$num,
    max.words = 100,
    color = color_pal
        )

# Other options: magma, inferno, plasma



