# Justin Adams Exam 2 

# Load the data
data <- read.csv("https://goo.gl/j6lRXD")

# Inspect the data
str(data)
head(data)

# Ensure 'treatment' and 'improvement' columns exist and are factors
data$treatment <- as.factor(data$treatment)
data$improvement <- as.factor(data$improvement)

# Create the contingency table using 'treatment' and 'improvement'
contingency_table <- table(data$treatment, data$improvement)
print(contingency_table)

# Check if the table has valid (positive) entries
if (all(contingency_table > 0)) {
  # Perform the Chi-Square test without correction
  chisq_result <- chisq.test(contingency_table, correct = FALSE)

  # Report the results
  print(chisq_result$statistic)  # X-squared value
  print(chisq_result$p.value)    # P-value
} else {
  cat("Error: Contingency table contains zero or negative values.\n")
}

# Load the data
> data <- read.csv("https://goo.gl/j6lRXD")
> 
> # Inspect the data
> str(data)
'data.frame':	105 obs. of  3 variables:
 $ id         : int  1 2 3 4 5 6 7 8 9 10 ...
 $ treatment  : chr  "treated" "treated" "not-treated" "treated" ...
 $ improvement: chr  "improved" "improved" "improved" "improved" ...
> head(data)
  id   treatment  improvement
1  1     treated     improved
2  2     treated     improved
3  3 not-treated     improved
4  4     treated     improved
5  5     treated not-improved
6  6     treated not-improved
> 
> # Ensure 'treatment' and 'improvement' columns exist and are factors
> data$treatment <- as.factor(data$treatment)
> data$improvement <- as.factor(data$improvement)
> 
> # Create the contingency table using 'treatment' and 'improvement'
> contingency_table <- table(data$treatment, data$improvement)
> print(contingency_table)
             
              improved not-improved
  not-treated       26           29
  treated           35           15
> 
> # Check if the table has valid (positive) entries
> if (all(contingency_table > 0)) {
+   # Perform the Chi-Square test without correction
+   chisq_result <- chisq.test(contingency_table, correct = FALSE)
+ 
+   # Report the results
+   print(chisq_result$statistic)  # X-squared value
+   print(chisq_result$p.value)    # P-value
+ } else {
+   cat("Error: Contingency table contains zero or negative values.\n")
+ }
X-squared 
  5.55692 
[1] 0.01840777
> 
