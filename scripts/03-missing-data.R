data <- read.csv("data/missing-data.csv", na.strings = "" )

data.cleaned <- na.omit(data)

is.na(data[4,2])
is.na(data[4,2])
is.na(data$Income) # solo la columna Income de data

# devuelve data con la columna Income limpia (sin vacios)
data.income.cleaned <- data[!is.na(data$Income),]

# Filas completas para un data frame
complete.cases(data) 

data.cleaned.2 <- data[complete.cases(data),] # alternativa a data.cleaned <- na.omit(data)

# Convertir los ceros de ingresos en NA
data$Income[data$Income == 0] <- NA

# Medidas de centralizacion y dispersion
# Media, promedio
mean(data$Income)  # Retorna NA porque no puede sacar el prmedio de valores NA
mean(data$Income, na.rm = TRUE)

# Desviacion estandar 
sd(data$Income)
sd(data$Income, na.rm = TRUE)