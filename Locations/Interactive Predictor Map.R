#Using the exported csv files from the "POGOH Locations" Jupyter Notebook, I can create a map to visualize the different types of locations.

setwd("C:/Users/jahza/PycharmProjects/POGOH Bikes Project/Pittsburgh Locations")
library(sf)
library(dplyr)
library(mapview)


assets = read.csv("assets.csv")
supermarkets = read.csv("supermarkets.csv")
terminals = read.csv("Terminal_Locations.csv")

Assets = st_as_sf(assets, coords = c("longitude", "latitude"), crs = 4326)
Supermarkets = st_as_sf(supermarkets, coords = c("longitude", "latitude"), crs = 4326)
Terminals = st_as_sf(terminals, coords = c("Longitude", "Latitude"), crs = 4326)

mapview(Assets, col.regions = "darkcyan") + mapview(Supermarkets, col.regions = "darkgoldenrod4") +
mapview(Terminals, col.regions = "darksalmon")
