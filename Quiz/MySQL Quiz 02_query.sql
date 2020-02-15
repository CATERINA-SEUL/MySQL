# Quiz 2 - group by & having


# 1. country 테이블에서 몇개의 대륙이 있는지 조회하세요.

SELECT Count(Distinct(Continent)) as Count
FROM country



# 2. country 테이블에서 Continent(대륙)별 몇개의 나라가 있는지 조회하세요.

SELECT Continent, Count(Continent) as count
FROM country
GROUP BY Continent
ORDER BY count DESC

# 3. city 테이블에서 국가코드(CountryCode) 별로 총인구가 몇명인지 조회하고 총인구 순으로 내림차순하세요. (총인구가 5천만 이상인 도시만 출력)

SELECT CountryCode, sum(Population)
FROM city
GROUP BY CountryCode
Having sum(Population) >= 50000000
ORDER BY sum(Population) DESC

# 4. countrylanguage 테이블에서 언어별 사용하는 국가수를 조회하고 많이 사용하는 언어를 5위에서 10위까지 조회하세요.

SELECT Language, count(language) as COUNT
FROM countrylanguage
GROUP BY Language
ORDER BY COUNT DESC
LIMIT 4,6

# 5. countrylanguage 테이블에서 언어별 15개 국가 이상에서 사용되는 언어를 조회하고 언어별 국가수에 따라 내림차순하세요.

SELECT Language, count(language) as COUNT
FROM countrylanguage
GROUP BY Language
Having COUNT >= 15
ORDER BY COUNT DESC

# 6. country 테이블에서 대륙별 전체 표면적크기를 구하고 표면적 크기 순으로 내림차순하세요.

SELECT Continent, sum(SurfaceArea) as surfacearea
FROM country
GROUP BY Continent
ORDER BY SurfaceArea DESC
