bundesliga <- c(
  "FC Bayern" = 55L,
  "BVB"  = 51L,
  "RB Leipzig"= 50L,
  "Borussia MGB"= 49L,
  "Bayer 04" = 47L,
  "FC Schalke 04"  = 37L,
  "VfL Wolfsburg"= 36L,
  "SC Freiburg" = 36L,
  "TSG Hoffenheim" = 35L,
  "1. FC Köln"= 32L,
  "Union Berlin"= 30L,
  "Eintracht Frankfurt" = 28L,
  "Hertha Berlin"= 28L,
  "FC Augsburg"  = 27L,
  "Mainz 05" = 26L,
  "Fortuna Duesseldorf" = 22L,
  "Werder Bremen" = 26L,
  "SC Paderborn"  = 16L)
bundesliga 

bundesliga_mat.<- matrix(bundesliga, nrow = 18)
bundesliga_mat.

class(bundesliga_mat.)
typeof(bundesliga_mat.)

first3 <- bundesliga_mat.[1:3]
last3 <- bundesliga_mat.[16:18]
first3
last3

typeof(first3)
typeof(last3)
class(first3)
class(last3)

head(bundesliga_mat., 3)
tail(bundesliga_mat., 3)

bundesliga_mat2 <- bundesliga_mat.
rownames(bundesliga_mat2) <- (c("FC Bayern", "BVB", "RB Leipzig", "Borussia MGB", "Bayer 04",
           "FC Schalke 04", "VfL Wolfsburg", "SC Freiburg", "TSG Hoffenheim",
           "1. FC Köln", "Union Berlin", "Eintracht Frankfurt", "Hertha Berlin",
           "FC Augsburg", "Mainz 05", "Fortuna Duesseldorf", "Werder Bremen",
           "SC Paderborn"))
bundesliga_mat2

dim(bundesliga_mat.)
dim(bundesliga_mat2)

typeof(bundesliga_mat.)
typeof(bundesliga_mat2)

class(bundesliga_mat.)
class(bundesliga_mat2)

bundesliga_mat3 <- bundesliga_mat.
bundesliga_mat3 <- cbind(bundesliga_mat3, 1:18)
bundesliga_mat3

typeof(bundesliga_mat3)
class(bundesliga_mat3)
dim(bundesliga_mat3)

bundesliga_mat3 <- cbind(bundesliga_mat3,
                         c("BAY", "NRW", "SXN", "NRW", "NRW",
                             "NRW", "NSX", "BWB", "BWB", "NRW",
                             "BER", "HES", "BER", "BAY", "RLP",
                             "NRW", "BRE", "NRW"))
bundesliga_mat3

typeof(bundesliga_mat3)
class(bundesliga_mat3)
dim(bundesliga_mat3)

colnames(bundesliga_mat3) <- c("points", "rank", "state")
bundesliga_mat3

bundesliga_df <- as.data.frame(bundesliga_mat3)
bundesliga_df

typeof(bundesliga_df)
class(bundesliga_df)
dim(bundesliga_df)

apply(bundesliga_df, 2,  class)

bundesliga_df$points_int <- as.integer(bundesliga_df$points)
bundesliga_df$rank_int <- as.integer(bundesliga_df$rank)
bundesliga_df$rank <- NULL
bundesliga_df$points <- NULL
bundesliga_df

str(bundesliga_df)


##dtatframe


df <- data.frame(name = c("Alex", "Lilly", "Mark", "Oliver", "Martha", "Lucas", "Caroline"),
                 age = c(25L, 31L, 23L, 52L, 76L, 49L, 26L),
                 height = c(177L, 163L, 190L, 179L, 163L, 183L, 164L),
                 weight = c(57L, 69L, 83L, 75L, 70L, 83L, 53L),
                 gender = c('D', 'F', 'M', 'M', 'F', 'M', 'F'))
df

str(df)

gender <- c('D', 'F', 'M', 'M', 'F', 'M', 'F')
gender_factor <- factor(gender, levels = c('F', 'M', 'D'))
df$gender <- NULL
df$gender <- gender_factor
df

df2 <- data.frame(working = c('Yes', 'No', 'No', 'Yes', 'Yes', 'No', 'Yes'))
df2

df3 <- cbind(df, df2)
df3

working <- c('Yes', 'No', 'No', 'Yes', 'Yes', 'No', 'Yes')
working <- ifelse(working == 'Yes', TRUE, FALSE)
df3$working <- NULL
df3$working <- working
df3

dim(df3)

sapply(df3, typeof)
sapply(df3, class)

df3$bmi <- df$weight/(df$height/100)^2
df3

?subset
males_df <- subset(df3, df$gender == 'M' )
males_df

subset(males_df, males_df$bmi > 23)

subset(males_df[c('name','bmi')], )
