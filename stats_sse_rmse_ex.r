# View summary of model
summary(mod)

# Compute the mean of the residuals
mean(mod$residuals)

# Compute RMSE
sqrt(sum(mod$residuals^2)/(mod$df.residual))
