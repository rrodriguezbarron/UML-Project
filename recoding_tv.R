library(tidyverse)
library(sjmisc)
library(here)

anes <- read_delim(here("data","anes_timeseries_2016_rawdata.txt"), delim = "|")

clean <- readRDS("clean.rds")

anes_trimmed <- anes %>% 
  dplyr::select(V161364:V161427) %>%
  rename("20/20" = V161364,
         "All In with Chris Hayes" = V161365,
         "The Blacklist" = V161366,
         "Evening News with Scott" = V161367,
         "Criminal Minds" = V161368,
         "Empire" = V161369,
         "Hannity" = V161370,
         "Jimmy Kimmel Live" = V161371,
         "The Kelly File" = V161372,
         "Modern Family" = V161373,
         "NCIS" = V161374,
         "The Nightly Show with Larry" = V161375,
         "Sunday Night Football" = V161376,
         "Scorpion" = V161377,
         "The Simpsons" = V161378,
         "Today" = V161379,
         "60 Minutes" = V161380,
         "Anderson Cooper 360" = V161381,
         "CBS This Morning" = V161382,
         "Dancing with the Stars" = V161383,
         "Face the Nation" = V161384,
         "House of Cards" = V161385,
         "Hardball with Chris Matthews" = V161386,
         "Judge Judy" = V161387,
         "Meet the Press" = V161388,
         "Game of Thrones" = V161389,
         "NBC Nightly News with Lester Holt" = V161390,
         "On the Record with Greta Van Susteren" = V161391,
         "Daredevil" = V161392,
         "The Rachel Maddow Show" = V161393,
         "Shark Tank" = V161394,
         "The Voice" = V161395,
         "ABC World News with David Muir" = V161396,
         "Blue Bloods" = V161397,
         "Conan" = V161398,
         "Dateline NBC" = V161399,
         "Good Morning America" = V161400,
         "Hawaii Five-O" = V161401,
         "Madam Secretary" = V161402,
         "Nancy Grace" = V161403,
         "Erin Burnett OutFront" = V161404,
         "PBS News Hour" = V161405,
         "Scandal" = V161406,
         "The Big Bang Theory" = V161407,
         "The Late Show with Stephen Colbert" = V161408,
         "The O'Reilly Factor" = V161409,
         "The Tonight Show Starring Jimmy Fallon" = V161410,
         "Alpha House" = V161411,
         "Al Punto" = V161412,
         "Al Rojo Vivo" = V161413,
         "Aqui y Ahora" = V161414,
         "CNN en Espanol" = V161415,
         "Despierta America" = V161416,
         "El Gordo y La Flaca" = V161417,
         "Enfoque" = V161418,
         "Hoy" = V161419,
         "Lo Mejor de Caso Cerrado" = V161420,
         "Noticiero Enrique Gratas" = V161421,
         "Noticiero Telemundo" = V161422,
         "Noticiero Univision" = V161423,
         "El Senor de los Cielos" = V161424,
         "Que Noche! con Angelica y Raul" = V161425,
         "Primer Impacto" = V161426,
         "Cronicas de Sabado" = V161427) %>% 
  rename_all( ~ paste0("tv_", .x)) %>% 
  clean_names() %>% 
  rec(rec = "0 = 0; 1 = 1; else = NA", append = FALSE) %>% 
  mutate(across(everything(), as.numeric))

clean_ft <- clean %>% 
  dplyr::select(starts_with(match = "ft"))

anes_all <- clean %>% 
  dplyr::select(ideology:radio_no_radio) %>% 
  cbind(anes_trimmed, clean_ft)