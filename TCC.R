library(readxl)
P032020 <- read_excel("planilhasTcc/032020.xls")
P042020 <- read_excel("planilhasTcc/042020.xls")
P052020 <- read_excel("planilhasTcc/052020.xls")
P062020 <- read_excel("planilhasTcc/062020.xls")
P072020 <- read_excel("planilhasTcc/072020.xls")
P082020 <- read_excel("planilhasTcc/082020.xls")
P092020 <- read_excel("planilhasTcc/092020.xls")
P102020 <- read_excel("planilhasTcc/102020.xls")
P112020 <- read_excel("planilhasTcc/112020.xls")
P122020 <- read_excel("planilhasTcc/122020.xls")
P012021 <- read_excel("planilhasTcc/012021.xls")
P022021 <- read_excel("planilhasTcc/022021.xls")
P032021 <- read_excel("planilhasTcc/032021.xls")


Tmarco <- table(P032020$CID2)
Tabril <- table(P042020$CID2)
Tmaio <- table(P052020$CID2)
Tjunho <- table (P062020$CID2)
Tjulho <- table(P072020$CID2)
Tagosto <- table(P082020$CID2)
Tsetembro <- table(P092020$CID2)
Toutubro <- table(P102020$CID2)
Tnovembro <- table(P112020$CID2)
Tdezembro <- table(P122020$CID2)
Tjaneiro <- table(P012021$CID2)
Tfevereiro <- table(P022021$CID2)
Tmarco2 <- table(P032021$CID2)

table

marco <- c(Tmarco, sum(Tmarco))
abril <- c(Tabril, sum(Tabril))
maio <-  c(Tmaio, sum(Tmaio))
junho <- c(Tjunho, sum(Tjunho))
julho <- c(Tjulho, sum(Tjulho))
agosto <- c(Tagosto, sum(Tagosto))
setembro <- c(Tsetembro, sum(Tsetembro))
outubro <- c(Toutubro, sum(Toutubro))
novembro <- c(Tnovembro, sum(Tnovembro))
dezembro <- c(Tdezembro, sum(Tdezembro))
janeiro <- c(Tjaneiro, sum(Tjaneiro))
fevereiro <- c(Tfevereiro, sum(Tfevereiro))
marco2021 <- c(Tmarco2, sum(Tmarco2))

#names(coluna_total_marco)[length(coluna_total_marco)] <- "Total"
tabela <- cbind(marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro, janeiro, fevereiro, marco2021)
tabela

x <- c(
  "F32EpisodiosDepressivos",
  "F32.1EpisodioDepressivoModerado",
  "F32.2EpisodioDepressivoGraveSSintPsicot",
  "F32.3_Episodio_Depressivo_Grave_c/Sint_Psicot",
  "F33_Transt_Depressivo_Recorrente",
  "F33.0_Transt_Depressivo_Recorr_Episodio_Atual",
  "F33.1_Transt_Depress_Recorr_Episodio_Atual_Mo",
  "F33.2_Trans_Depr_Recor_Epis_Atual_Grav_s/Sint",
  "F33.3_Trans_Depr_Recor_Epis_Atual_Grav_c/Sint",
  "F40_Transt_Fobico-Ansiosos",
  "F41_Outr_Transt_Ansiosos",
  "F41.0_Transt_de_Panico",
  "F41.1_Ansiedade_Generalizada",
  "F41.2_Transt_Misto_Ansioso_Depressivo")
y <- c("marco","abril", "maio", "junho", "julho", "agosto", "setembro", "outubro", "novembro", "dezembro", "janeiro", "fevereiro", "marco")
a <- y
y <- c("marco","abril", "maio", "junho", "julho", "agosto", "setembro", "outubro", "novembro", "dezembro", "janeiro", "fevereiro", "marco")

library(readxl)
Ptotal <- read_excel("planilhasTcc/geral.xls")
total <- (Ptotal$F32EpisodiosDepressivos)
total2 <- (Ptotal$F32.1EpisodioDepressivoModerado)
total3 <- (Ptotal$F32.2EpisodioDepressivoGraveSSintPsicot)
total4 <- (Ptotal$F32.3_Episodio_Depressivo_Grave_c_Sint_Psicot)
total5 <- (Ptotal$F33_Transt_Depressivo_Recorrente)
total6 <- (Ptotal$F33.0_Transt_Depressivo_Recorr_Episodio_Atual)
total7 <- (Ptotal$F33.1_Transt_Depress_Recorr_Episodio_Atual_Mo)
total8 <- (Ptotal$F33.2_Trans_Depr_Recor_Epis_Atual_Grav_s_Sint)
total9 <- (Ptotal$F33.3_Trans_Depr_Recor_Epis_Atual_Grav_c_Sint)
total10 <- (Ptotal$F40_Transt_Fobico_Ansiosos)
total11 <- (Ptotal$F41_Outr_Transt_Ansiosos)
total12 <- (Ptotal$F41.0_Transt_de_Panico)
total13 <- (Ptotal$F41.1_Ansiedade_Generalizada)
total14 <- (Ptotal$F41.2_Transt_Misto_Ansioso_Depressivo)

a <- c(1,2,3,4,5,6,7,8,9,10,11,12,13)
b <- c(200,500,750,1000,1250,1500, 2000,2250,2500,2750, 3000,3250,3500)

plot(a,b, type = 'n', ylab = "Numero de Benefícios", xlab = "Meses")
#identify(a, labels = y)
lines(total, col="orange")
lines(total2, col="blue")
lines(total3, col="black")
lines(total4, col="red")
lines(total5, col="yellow")
lines(total6, col="green")
lines(total7, col="purple")
lines(total8, col="gray")
lines(total9, col="cyan")
lines(total10, col="magenta")
lines(total11, col="orange")
lines(total12, col="blue")
lines(total13, col="black")
lines(total14, col="red")

library(readxl)
CovidBrasil <- read_excel("planilhasTcc/CovidBrasil.xls")
totalCasos <- (CovidBrasil$Casos_Covid)
a <- c(1,2,3,4,5,6,7,8,9,10,11,12,13)
b <- c(5000,50000,100000,250000,500000,750000,1000000,1250000,1500000,1750000,2000000,2250000,2500000)
plot(a,b, type = 'n', ylab = "Numero de Casos da Doença", xlab = "Meses")
lines(totalCasos, col="black")

library(readxl)
CovidBrasil <- read_excel("planilhasTcc/CovidBrasil.xls")
a <- c(1,2,3,4,5,6,7,8,9,10,11,12,13)
b <- c(2000,5000,10000,15000,20000,25000, 30000,35000, 40000,45000, 50000,55000, 60000)
totalMortes <- (CovidBrasil$Mortes_Covid)
plot(a,b, type = 'n', ylab = "Munero de mortes pelo Covid", xlab = "Meses")
lines(totalMortes, col="red")


library(readxl)
Ptotal <- read_excel("planilhasTcc/geral.xls")
CovidBrasil <- read_excel("planilhasTcc/CovidBrasil.xls")
lines(CovidBrasil, col="orange")

r1 <- cor(Ptotal$F32EpisodiosDepressivos, CovidBrasil$Casos_Covid)
r2 <- cor(Ptotal$F321EpisodioDepressivoModerado, CovidBrasil$Casos_Covid)
r3 <- cor(Ptotal$F32.2EpisodioDepressivoGraveSSintPsicot, CovidBrasil$Casos_Covid)
r4 <- cor(Ptotal$F32.3_Episodio_Depressivo_Grave_c_Sint_Psicot
, CovidBrasil$Casos_Covid)
r5 <- cor(Ptotal$F33_Transt_Depressivo_Recorrente
          , CovidBrasil$Casos_Covid)
r6 <- cor(Ptotal$F33.0_Transt_Depressivo_Recorr_Episodio_Atual
          , CovidBrasil$Casos_Covid)
r7 <- cor(Ptotal$F33.1_Transt_Depress_Recorr_Episodio_Atual_Mo
          , CovidBrasil$Casos_Covid)
r8 <- cor(Ptotal$F33.2_Trans_Depr_Recor_Epis_Atual_Grav_s_Sint
          , CovidBrasil$Casos_Covid)
r9 <- cor(Ptotal$F33.3_Trans_Depr_Recor_Epis_Atual_Grav_c_Sint
          , CovidBrasil$Casos_Covid)
r10 <- cor(Ptotal$F40_Transt_Fobico_Ansiosos
          , CovidBrasil$Casos_Covid)
r11 <- cor(Ptotal$F41_Outr_Transt_Ansiosos
          , CovidBrasil$Casos_Covid)
r12 <- cor(Ptotal$F41.0_Transt_de_Panico
          , CovidBrasil$Casos_Covid)
r13 <- cor(Ptotal$F41.1_Ansiedade_Generalizada
          , CovidBrasil$Casos_Covid)
r14 <- cor(Ptotal$F41.2_Transt_Misto_Ansioso_Depressivo
           , CovidBrasil$Casos_Covid)
r1
r2
r3
r4
r5



x <- c(
  "F32EpisodiosDepressivos",
  "F32.1EpisodioDepressivoModerado",
  "F32.2EpisodioDepressivoGraveSSintPsicot",
  "F32.3_Episodio_Depressivo_Grave_c/Sint_Psicot",
  "F33_Transt_Depressivo_Recorrente",
  "F33.0_Transt_Depressivo_Recorr_Episodio_Atual",
  "F33.1_Transt_Depress_Recorr_Episodio_Atual_Mo",
  "F33.2_Trans_Depr_Recor_Epis_Atual_Grav_s/Sint",
  "F33.3_Trans_Depr_Recor_Epis_Atual_Grav_c/Sint",
  "F40_Transt_Fobico-Ansiosos",
  "F41_Outr_Transt_Ansiosos",
  "F41.0_Transt_de_Panico",
  "F41.1_Ansiedade_Generalizada",
  "F41.2_Transt_Misto_Ansioso_Depressivo")
y <- c(r1,r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14)
tabela <- cbind(x,y)
tabela

#r1
plot(Ptotal$F32EpisodiosDepressivos, CovidBrasil$Casos_Covid)
#r2
plot(Ptotal$F321EpisodioDepressivoModerado, CovidBrasil$Casos_Covid)
#r3
plot(Ptotal$F32.2EpisodioDepressivoGraveSSintPsicot, CovidBrasil$Casos_Covid)
#r4
plot(Ptotal$F32.3_Episodio_Depressivo_Grave_c_Sint_Psicot, CovidBrasil$Casos_Covid)
#r5
plot(Ptotal$F33_Transt_Depressivo_Recorrente, CovidBrasil$Casos_Covid)
#r6
plot(Ptotal$F33.0_Transt_Depressivo_Recorr_Episodio_Atual, CovidBrasil$Casos_Covid)
#r7
plot(Ptotal$F33.1_Transt_Depress_Recorr_Episodio_Atual_Mo, CovidBrasil$Casos_Covid)
#r8
plot(Ptotal$F33.2_Trans_Depr_Recor_Epis_Atual_Grav_s_Sint, CovidBrasil$Casos_Covid)
#r9
plot(Ptotal$F33.3_Trans_Depr_Recor_Epis_Atual_Grav_c_Sint, CovidBrasil$Casos_Covid)
#r10
plot(Ptotal$F40_Transt_Fobico_Ansiosos, CovidBrasil$Casos_Covid)
#r11
plot(Ptotal$F41_Outr_Transt_Ansiosos, CovidBrasil$Casos_Covid)
#r12
plot(Ptotal$F41.0_Transt_de_Panico, CovidBrasil$Casos_Covid)
#r13
plot(Ptotal$F41.1_Ansiedade_Generalizada, CovidBrasil$Casos_Covid)
#r14
plot(Ptotal$F41.2_Transt_Misto_Ansioso_Depressivo, CovidBrasil$Casos_Covid)




y <- c("marco","abril", "maio", "junho", "julho", "agosto", "setembro", "outubro", "novembro", "dezembro", "janeiro", "fevereiro", "marco","marco")

lines(total, col="orange")

lines(total3, col = "red")
lines(total2, col = "blue")

#plot(total2)
#plot(total3)


#plot(tabela, type ='1', xlab = "Março", ylab = "Quantidade")
x<-seq(0,1,2,3,4,0,1,2,3,4,0,1,2,3,4)
f <- function(x) (log(x))^2-x*exp(-x^3)
plot(Tmarco, x)
#lines(P032020$CID2, col = "blue")
#plot(tabela$marco, tabela$abril)
#lines(P032020$CID2, col = "blue")






