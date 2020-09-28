--1--
SELECT name, record FROM sports
ORDER BY name;

--2--
SELECT DISTINCT name from sports
join results on sports.id = results.sportid;

--3--
SELECT count(*) from people
where gender = 'F';

--4--
SELECT p.id, p.name FROM people p, results r WHERE p.id = r.peopleid
GROUP BY p.id, p.name HAVING count(r.result) <= 20;

--5--
SELECT p.name, g.description FROM people p, gender g, results r, sports s WHERE p.gender = g.gender
AND p.id = r.peopleid AND r.sportid = s.id AND r.result = s.record;

--6--
SELECT s.name, count(p.name) AS numathletes FROM people p, results r, sports s WHERE p.id = r.peopleid
AND r.sportid = s.id AND r.result = s.record AND s.name LIKE '% Jump' GROUP BY s.name;

--7--
SELECT p.id, p.name, g.description FROM people p, results r, competitions c , gender g WHERE p.id = r.peopleid
AND r.competitionid = c.id AND p.gender = g.gender AND c.place = 'Selfoss';

--8--
SELECT p.name, g.description FROM people p, gender g WHERE p.gender = g.gender AND p.name LIKE '% Gunnar%';

--9--
SELECT p.name, s.name, CONCAT(Cast(Cast((r.result / s.record) * 100 as int) as varchar), '%')
AS percentage FROM people p, sports s, results r WHERE p.id = r.peopleid AND r.sportid = s.id;

--10--
SELECT p.id, p.name, max(r.result) as best, ROUND(CAST((s.record - max(r.result)) as decimal), 2) as difference
FROM people p, results r, sports s WHERE p.id = r.peopleid AND s.name = 'Triple Jump' AND r.sportid = 2
GROUP BY p.id, p.name, s.record, p.name HAVING count(r.result) >= 5;

