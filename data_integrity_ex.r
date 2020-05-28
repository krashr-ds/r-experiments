#Data Integrity Tricks learned

#To determine if images are considered attachments in the email dataset,
#check to see if there are ever more images than attachments
#if not, then images must be counted as attachments

sum(email$image>email$attach)
