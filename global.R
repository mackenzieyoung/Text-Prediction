load("filtered_data.RData")

next_predict <- function(input) {
    input <- tolower(input)
    str <- strsplit(input, '\\ ')
    l <- length(str[[1]])
    if (l == 0) {
        unigrams_filtered$word[1]
    }
    if (l == 1) {
        w1 <- str[[1]][l]
        out <- subset(bigrams_filtered, word1==w1)$word2[1]
        if (is.na(out)) {
            out <- unigrams_filtered$word[1]
        }
        return(out)
    }
    if (l > 1) {
        w1 <- str[[1]][l-1]
        w2 <- str[[1]][l]
        out <- subset(trigrams_filtered, word1==w1 & word2==w2)$word3[1]
        if (is.na(out)) {
            out <- subset(bigrams_filtered, word1==w2)$word2[1]
            if (is.na(out)) {
                out <- unigrams_filtered$word[1]
            }
        }
    return(out)    
    }
}




