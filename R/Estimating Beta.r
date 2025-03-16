estimate_beta <- function(x,y){
  X <- as.matrix(X)
  y <- as.numeric(y)
  
  # Calculate beta_hat using the OLS formula
  beta_hat <- solve(t(X) %*% X, t(X) %*% y)
  return(beta_hat)
}