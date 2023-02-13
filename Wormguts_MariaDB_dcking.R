# David's database, RMariaDB

install.packages("DBI")

install.packages('RMariaDB')
library(RMariaDB)

onishDATA <- dbConnect(
  drv = RMariaDB::MariaDB(),
  username = "worm",
  host = "129.82.125.11",
  port = 3307,
  dbname = "NishimuraLab"
)

dbListTables(onishDATA)

stage = dbReadTable(onishDATA, "Stage")
williams2023 = dbReadTable(onishDATA, "williams2023")
promoters = dbReadTable(onishDATA, "promoters")
WTF3 = dbReadTable(onishDATA, "WTF3")
anatomy = dbReadTable(onishDATA, "AnatomyAssociation")
peaks = dbReadTable(onishDATA, "modENCODE_peaks")
WTF3 = dbReadTable(onishDATA, "WTF3")
intestine_present = dbReadTable(onishDATA, "intestine_present")


WTF3 = dbReadTable(onishDATA, "WTF3")