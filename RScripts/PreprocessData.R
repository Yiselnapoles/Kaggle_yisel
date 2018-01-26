
install.packages("data.table")
require(data.table)

data_test <- fread("test.csv")
data_train <- fread("train.csv")
data_submission <- fread("sample_submission.csv")

data_train <- as.data.table(data_train)

# Dimensiones

dim(data_test)
dim(data_train)
dim(data_submission)

# Valores perdidos

# which(is.na(data_test$comment_text)) 
# which(is.na(data_train$comment_text)) 
# which(is.na(data_submission)) 

# Resumen estadístico

## Separamos los datos por espacios, para contarlos

data_train[ , 'comment_split' := strsplit(comment_text, " ")]

## Contamos los valores de cada columna

# length(data_train$comment_split[[1]]) 
# 
# data_train[ , 'comment_split_count' := length(comment_split) ]

