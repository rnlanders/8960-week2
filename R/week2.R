# Import and Labeling
rt_df <- read.csv("data/week2.csv",header=T)
levels(rt_df$condition) <- c("Control","Experimental")  # rt_df$condition <- factor(rt_df$condition, levels=c("A","B"), labels=c("Control","Experimental"))
levels(rt_df$gender) <- c("Female","Male","Transgender")  

# Analysis
mean(rt_df[,"rt"])
rt_f_df <- subset(rt_df, gender == "Female") #rt_f_df <- rt_df[rt_df$gender == "Female",]
summary(rt_f_df)
hist(rt_f_df$rt)
datasets <- list(rt_df, rt_f_df)
datasets[[1]][[2]] # datasets[[1]]$rt