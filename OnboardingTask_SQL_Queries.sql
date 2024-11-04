-- a. Number of cities in each state
SELECT
    state,
    COUNT(DISTINCT city) AS number_of_cities
FROM
    dbo.AUS_Post_suburb
GROUP BY
    state
ORDER BY
    state;

-- b. Number of unique postcodes, and suburbs in each city

SELECT
    city,
    state,
    COUNT(DISTINCT postcode) AS unique_postcodes,
    COUNT(DISTINCT suburb) AS unique_suburbs
FROM
    dbo.AUS_Post_suburb
GROUP BY
    city, state
ORDER BY
    state, city;

-- c. Average Property Median Value by Suburb
SELECT
    suburb,
    AVG(property_median_value) AS avg_median_value
FROM
    dbo.NSW_PropertyMedainValue
WHERE
    property_median_value IS NOT NULL
GROUP BY
    suburb;
-- c. Average Property Median Value by Postcode
SELECT
    postcode,
    AVG(property_median_value) AS avg_median_value
FROM
    dbo.NSW_PropertyMedainValue
WHERE
    property_median_value IS NOT NULL
GROUP BY
    postcode;
-- c. Average Property Median Value by Suburb and Postcode together
SELECT
    suburb,
    postcode,
    AVG(property_median_value) AS avg_median_value
FROM
    dbo.NSW_PropertyMedainValue
WHERE
    property_median_value IS NOT NULL
GROUP BY
    suburb, postcode
ORDER BY
    suburb, postcode;
