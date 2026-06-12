CREATE OR REPLACE TABLE `grama-bazaar-1.apmc_data.market_profit_analysis`
AS
SELECT
    cp.price_date,
    cp.crop_name,
    cp.market_name,
    cp.district,
    v.taluk,
    v.village,
    cp.modal_price,
    cp.arrivals,
    v.distance_km
FROM `grama-bazaar-1.apmc_data.cleaned_prices` cp
LEFT JOIN `grama-bazaar-1.apmc_data.villages_clean` v
ON LOWER(TRIM(cp.district)) = LOWER(TRIM(v.district));
