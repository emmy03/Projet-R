# Définir la matrice d'expression 
matrice_exp <- matrix(c(43.26, 40.89, 5.05, 
166.6, 41.87, 136.65, 
12.53, 39.55, 42.09, 
28.77, 191.92, 236.56, 
114.7, 79.7, 99.76, 
119.1, 80.57, 114.59, 
118.9, 156.69, 186.95, 
3.76, 2.48, 136.78, 
32.73, 11.99, 118.8, 
17.46, 56.11, 21.41), 
nrow = 10, ncol = 3, byrow = TRUE)

# Définir les noms des gènes 
genes_names <- paste0("G", 1:10) 

# Sélectionner les gènes à tracer 
genes_plot <- c("G1", "G7", "G8", "G9") 

# Définir les noms de lignes de matrice_exp 
rownames(matrice_exp) <- genes_names 

# Définir les noms des échantillons 
s <- paste0("s", 1:3) 

# Tracer les profils d'expression dans des graphiques séparés 
par(mfrow = c(2, 2)) 

# Tracer le profil d'expression du gène G1 
plot(x = 1:3, y = matrice_exp["G1", ], type = "l", lty = 1, col = 1, xlab = "Echantillons", ylab = "Niveau d'expression", main = "Profil d'expression du gène G1") 

# Tracer le profil d'expression du gène G7 
plot(x = 1:3, y = matrice_exp["G7", ], type = "l", lty = 1, col = 2, xlab = "Echantillons", ylab = "Niveau d'expression", main = "Profil d'expression du gène G7") 

# Tracer le profil d'expression du gène G8 
plot(x = 1:3, y = matrice_exp["G8", ], type = "l", lty = 1, col = 3, xlab = "Echantillons", ylab = "Niveau d'expression", main = "Profil d'expression du gène G8") 

# Tracer le profil d'expression du gène G9 
plot(x = 1:3, y = matrice_exp["G9", ], type = "l", lty = 1, col = 4, xlab = "Echantillons", ylab = "Niveau d'expression", main = "Profil d'expression du gène G9") 
par(mfrow = c(1, 3))  

# Extraire les valeurs d'expression des gènes G1, G7, G8 et G9 
expression_G1 <- matrice_exp["G1", ] 
expression_G7 <- matrice_exp["G7", ] 
expression_G8 <- matrice_exp["G8", ] 
expression_G9 <- matrice_exp["G9", ] 

# Tracer les valeurs d'expression de G7 en fonction de G1 
plot(expression_G1, expression_G7, type = "l", xlab = "Expression de G1", ylab = "Expression de G7", main = "Expression de G7 en fonction de G1") 

# Tracer les valeurs d'expression de G8 en fonction de G1 
plot(expression_G1, expression_G8, type = "l", xlab = "Expression de G1", ylab = "Expression de G8", main = "Expression de G8 en fonction de G1") 

# Tracer les valeurs d'expression de G9 en fonction de G1 
plot(expression_G1, expression_G9, type = "l", xlab = "Expression de G1", ylab = "Expression de G9", main = "Expression de G9 en fonction de G1") 

# Calculer la matrice de corrélation 
cor_matrice <- cor(t(matrice_exp)) 

# Calculer les valeurs absolues 
cor_matrice_abs <- abs(cor_matrice) 
print(cor_matrice_abs) 