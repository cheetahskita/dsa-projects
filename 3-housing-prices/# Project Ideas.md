# Project Ideas

## Heatmap

Saleprice is highly correlated with overall quality and square footage. Aiko showed different parallel lines for cost per square foot - what is causing this difference? It could be year the house was built, or it could be the size of the house (significantly larger homes have lower cost per square foot).


## Data Cleaning

**LotArea**: remove lots above 100,000 sqft (4 homes) that are probably empty land


## Feature Engineering

**UsableSpace**: Subtract garage area from house area (unless living area is already a variable)

**FinishedSpace**: Add basement area to LivingArea *if* basement is finished and
add porch to LivingArea *if* porch is enclosed (?)

**UnfinishedSpace**: Add unfinishd basement and open porch sqft

**Neighborhood**: Homes in a neighborhood sell for comparable values -> group by neighborhood

**Location**: Graph home value by location to look for trends

**HasBLANK**: Binary for whether house has a pool, garage, basement, porch, etc.

**DecadeBuilt**: YearBuilt falls into distinct groups of 5-10 years. Possibly separate by F-test?

**GoodBLANK**: Binary for whether multiple category variable is in good or bad condition

**SaleActivity**: Multiple houses for sale in the same neighborhood can depress the value

**MedianIncome**: Neighborhoods with higher median income have more value

**InterestRate**: Higher mortgage interest rates will decrease the amount of money people are willing spend.


## Modeling Ideas

**Random Forest** to check for feature importance

**K Means Clustering** to check if neighborhoods fall into clusters or not