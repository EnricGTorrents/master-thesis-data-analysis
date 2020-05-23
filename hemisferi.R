
###### Ordena els fenotips per identificador i afegeix columna d'hemisferi

#### Tots els individus

## ORDER AND ADD HEMISPHERE COLUMN TO DATASETS
# ORDER PHENOTYPES
linear_ALL_interaction_DF$ID <- as.numeric(linear_ALL_interaction_DF$.id)
linear_ALL_interaction_DF <- linear_ALL_interaction_DF[order(linear_ALL_interaction_DF$ID),]
# CREATE NEW HEMISPHERE COLUMN
linear_ALL_interaction_DF <- linear_ALL_interaction_DF %>%
  mutate(Hemisphere = case_when(ID <= 35 ~ 'Right',
                                ID >= 71 ~ 'Total',
                                TRUE ~ 'Left'))

## ADD SIGNIFICANCE COLUMN WITH FOUR VALUES
linear_ALL_interaction_DF <- linear_ALL_interaction_DF %>%
  mutate(Sig = case_when(P < 0.001 ~ 'Smaller than 0.001',
                         P >= 0.001 & P < 0.01 ~ 'Smaller than 0.01',
                         P >= 0.01 & P < 0.05 ~ 'Smaller than 0.05',
                         P >= 0.05 ~ 'No significative'))
#                        TRUE ~ 'No significative'))
linear_ALL_interaction_DF$Sig <- factor(linear_ALL_interaction_DF$Sig, levels = c("Smaller than 0.001", "Smaller than 0.01", "Smaller than 0.05", "No significative"))

#### Tots els individus afectats
#### Sense genotypic

## ORDER AND ADD HEMISPHERE COLUMN TO DATASETS

# ORDER PHENOTYPES
linear_affected_DF$ID <- as.numeric(linear_affected_DF$.id)
linear_affected_DF <- linear_affected_DF[order(linear_affected_DF$ID),]

# CREATE NEW HEMISPHERE COLUMN
linear_affected_DF <- linear_affected_DF %>%
  mutate(Hemisphere = case_when(ID <= 35 ~ 'Right',
                                ID >= 71 ~ 'Total',
                                TRUE ~ 'Left'))

## ADD SIGNIFICANCE COLUMN WITH FOUR VALUES
linear_affected_DF <- linear_affected_DF %>%
  mutate(Sig = case_when(P < 0.001 ~ 'Smaller than 0.001',
                         P >= 0.001 & P < 0.01 ~ 'Smaller than 0.01',
                         P >= 0.01 & P < 0.05 ~ 'Smaller than 0.05',
                         P >= 0.05 ~ 'No significative'))
#                        TRUE ~ 'No significative'))
linear_affected_DF$Sig <- factor(linear_affected_DF$Sig, levels = c("Smaller than 0.001", "Smaller than 0.01", "Smaller than 0.05", "No significative"))

#### Dominant

## ORDER AND ADD HEMISPHERE COLUMN TO DATASETS

# ORDER PHENOTYPES
linear_affected_dominant_DF$ID <- as.numeric(linear_affected_dominant_DF$.id)
linear_affected_dominant_DF <- linear_affected_dominant_DF[order(linear_affected_dominant_DF$ID),]

# CREATE NEW HEMISPHERE COLUMN
linear_affected_dominant_DF <- linear_affected_dominant_DF %>%
  mutate(Hemisphere = case_when(ID <= 35 ~ 'Right',
                                ID >= 71 ~ 'Total',
                                TRUE ~ 'Left'))

## ADD SIGNIFICANCE COLUMN WITH FOUR VALUES
linear_affected_dominant_DF <- linear_affected_dominant_DF %>%
  mutate(Sig = case_when(P < 0.001 ~ 'Smaller than 0.001',
                         P >= 0.001 & P < 0.01 ~ 'Smaller than 0.01',
                         P >= 0.01 & P < 0.05 ~ 'Smaller than 0.05',
                         P >= 0.05 ~ 'No significative'))
#                        TRUE ~ 'No significative'))
linear_affected_dominant_DF$Sig <- factor(linear_affected_dominant_DF$Sig, levels = c("Smaller than 0.001", "Smaller than 0.01", "Smaller than 0.05", "No significative"))

#### Recessive

## ORDER AND ADD HEMISPHERE COLUMN TO DATASETS

# ORDER PHENOTYPES
linear_affected_recessive_DF$ID <- as.numeric(linear_affected_recessive_DF$.id)
linear_affected_recessive_DF <- linear_affected_recessive_DF[order(linear_affected_recessive_DF$ID),]

# CREATE NEW HEMISPHERE COLUMN
linear_affected_recessive_DF <- linear_affected_recessive_DF %>%
  mutate(Hemisphere = case_when(ID <= 35 ~ 'Right',
                                ID >= 71 ~ 'Total',
                                TRUE ~ 'Left'))

## ADD SIGNIFICANCE COLUMN WITH FOUR VALUES
linear_affected_recessive_DF <- linear_affected_recessive_DF %>%
  mutate(Sig = case_when(P < 0.001 ~ 'Smaller than 0.001',
                         P >= 0.001 & P < 0.01 ~ 'Smaller than 0.01',
                         P >= 0.01 & P < 0.05 ~ 'Smaller than 0.05',
                         P >= 0.05 ~ 'No significative'))
#                        TRUE ~ 'No significative'))
linear_affected_recessive_DF$Sig <- factor(linear_affected_recessive_DF$Sig, levels = c("Smaller than 0.001", "Smaller than 0.01", "Smaller than 0.05", "No significative"))

#### Tots els individus no afectats
#### Sense genotypic

## ORDER AND ADD HEMISPHERE COLUMN TO DATASETS

# ORDER PHENOTYPES
linear_unaffected_DF$ID <- as.numeric(linear_unaffected_DF$.id)
linear_unaffected_DF <- linear_unaffected_DF[order(linear_unaffected_DF$ID),]

# CREATE NEW HEMISPHERE COLUMN
linear_unaffected_DF <- linear_unaffected_DF %>%
  mutate(Hemisphere = case_when(ID <= 35 ~ 'Right',
                                ID >= 71 ~ 'Total',
                                TRUE ~ 'Left'))

## ADD SIGNIFICANCE COLUMN WITH FOUR VALUES
linear_unaffected_DF <- linear_unaffected_DF %>%
  mutate(Sig = case_when(P < 0.001 ~ 'Smaller than 0.001',
                         P >= 0.001 & P < 0.01 ~ 'Smaller than 0.01',
                         P >= 0.01 & P < 0.05 ~ 'Smaller than 0.05',
                         P >= 0.05 ~ 'No significative'))
#                        TRUE ~ 'No significative'))
linear_unaffected_DF$Sig <- factor(linear_unaffected_DF$Sig, levels = c("Smaller than 0.001", "Smaller than 0.01", "Smaller than 0.05", "No significative"))

#### Dominant

## ORDER AND ADD HEMISPHERE COLUMN TO DATASETS

# ORDER PHENOTYPES
linear_unaffected_dominant_DF$ID <- as.numeric(linear_unaffected_dominant_DF$.id)
linear_unaffected_dominant_DF <- linear_unaffected_dominant_DF[order(linear_unaffected_dominant_DF$ID),]

# CREATE NEW HEMISPHERE COLUMN
linear_unaffected_dominant_DF <- linear_unaffected_dominant_DF %>%
  mutate(Hemisphere = case_when(ID <= 35 ~ 'Right',
                                ID >= 71 ~ 'Total',
                                TRUE ~ 'Left'))

## ADD SIGNIFICANCE COLUMN WITH FOUR VALUES
linear_unaffected_dominant_DF <- linear_unaffected_dominant_DF %>%
  mutate(Sig = case_when(P < 0.001 ~ 'Smaller than 0.001',
                         P >= 0.001 & P < 0.01 ~ 'Smaller than 0.01',
                         P >= 0.01 & P < 0.05 ~ 'Smaller than 0.05',
                         P >= 0.05 ~ 'No significative'))
#                        TRUE ~ 'No significative'))
linear_unaffected_dominant_DF$Sig <- factor(linear_unaffected_dominant_DF$Sig, levels = c("Smaller than 0.001", "Smaller than 0.01", "Smaller than 0.05", "No significative"))

#### Recessive

## ORDER AND ADD HEMISPHERE COLUMN TO DATASETS

# ORDER PHENOTYPES
linear_unaffected_recessive_DF$ID <- as.numeric(linear_unaffected_recessive_DF$.id)
linear_unaffected_recessive_DF <- linear_unaffected_recessive_DF[order(linear_unaffected_recessive_DF$ID),]

# CREATE NEW HEMISPHERE COLUMN
linear_unaffected_recessive_DF <- linear_unaffected_recessive_DF %>%
  mutate(Hemisphere = case_when(ID <= 35 ~ 'Right',
                                ID >= 71 ~ 'Total',
                                TRUE ~ 'Left'))

## ADD SIGNIFICANCE COLUMN WITH FOUR VALUES
linear_unaffected_recessive_DF <- linear_unaffected_recessive_DF %>%
  mutate(Sig = case_when(P < 0.001 ~ 'Smaller than 0.001',
                         P >= 0.001 & P < 0.01 ~ 'Smaller than 0.01',
                         P >= 0.01 & P < 0.05 ~ 'Smaller than 0.05',
                         P >= 0.05 ~ 'No significative'))
#                        TRUE ~ 'No significative'))
linear_unaffected_recessive_DF$Sig <- factor(linear_unaffected_recessive_DF$Sig, levels = c("Smaller than 0.001", "Smaller than 0.01", "Smaller than 0.05", "No significative"))