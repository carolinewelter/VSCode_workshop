
# Load the data:
data(trees)
# Show the top few entries:
head(trees)

# rename columns
names(trees) <- c("DBH_in","height_ft", "volume_ft3")
head(trees)

plot(DBH_in ~ height_ft, data = trees, pch=16)

mod <- lm(DBH_in ~ height_ft, data = trees)
mod
summary(mod)

# Plot the scatterplot as before:
plot(DBH_in ~ height_ft, data = trees, pch=16)
# And then plot the fitted line:
abline(mod)