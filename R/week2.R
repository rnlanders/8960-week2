# Import and Labeling
rt_df <- read.csv("data/week2.csv",header=T)
levels(rt_df$condition) <- c("Control","Experimental")  # rt_df$condition <- factor(rt_df$condition, levels=c("A","B"), labels=c("Control","Experimental"))
