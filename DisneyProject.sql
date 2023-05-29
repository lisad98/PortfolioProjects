SELECT *
FROM PortfolioProject.dbo.disney$
ORDER BY release_date, movie_title

--genres with highest total gross

SELECT genre, MAX(total_gross) AS genre_total_gross
FROM PortfolioProject.dbo.disney$
GROUP BY genre
ORDER BY genre_total_gross

--release date vs inflation adjusted gross

SELECT release_date, inflation_adjusted_gross
FROM PortfolioProject.dbo.disney$
ORDER BY release_date

--mpaa_rating with highest total gross

SELECT mpaa_rating, MAX(total_gross) AS mpaa_total_gross
FROM PortfolioProject.dbo.disney$
GROUP BY mpaa_rating
ORDER BY mpaa_total_gross

--total gross vs inflation adjusted gross

SELECT genre, MAX(total_gross) AS genre_total_gross, MAX(inflation_adjusted_gross) AS genre_infl_gross
FROM PortfolioProject.dbo.disney$
GROUP BY genre

