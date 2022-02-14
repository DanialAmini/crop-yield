you have a system, zayanderud watershed

it has a reservoir. you don't have the data for inflow, outflow & storage
but you can get the surface area of the dam reservoir from satelite imagery
derive volume-area relationship from SRTM then apply it to calculate volume of water
the change in volume from step1 to 2 (month 2 to 1) is equal to inflow-outflow

inflow=rain
outflow=release+evaporation from lake

the basin has 10 irrigation networks, each has a certain area (NDVI), and a certain temp or evaporation
it has 10 population centers, each has population_y at year y

the basin has 5 sub basins
each has rain_t at month t
and evaporation_t temp_t at month t

we don't have much information about industries, except maybe area of industry zones in each decade
area of cities in each decade 

the whole basin has 1 or 2 pixels of grace

the whole upstream snow: derive the area from NDSI but probably not necessary

that's it. you can fit a neural network for the system. we don't know how it works... but we can create a surrogate model. 

now for simulation: 
predict rainfall, predict dam storage, then see what we can do

other outputs: production of fruits & crops in the basin
net economic gains 
food security


explore data from other places maybe if data availability is an issue

for example, is there a relationship between storage, or change in storage
based on climate+cropped area(antrhropogenic drivers)?

usa has some good data in usgs streamflow 

for dam the best option would be to use landsatlook to obtain water area because landsat look has such small images!! it's perfect
calibrate it first, then use it!!!

