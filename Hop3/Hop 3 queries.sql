--1--
SELECT COUNT(R.peopleid)
FROM results R
WHERE R.result is NULL;

--2--
SELECT DISTINCT p.id, p.name from people p
EXCEPT
SELECT p.id, p.name from people p, results r, sports s WHERE p.id = r.peopleid AND s.id = r.sportid
                                                         AND r.result = s.record;

--3--
SELECT DISTINCT p.id, p.name from people p, competitions c , results r, sports s
where p.id = r.peopleid and r.sportid = s.id and c.held BETWEEN '2002-04-01' AND '2002-06-30'
UNION
SELECT p.id, p.name FROM people p, results r, sports s where p.id = r.peopleid and r.sportid = s.id
                                                         and s.name = 'Long Jump';

--4--
SELECT DISTINCT p.id, p.name from people p, results r, competitions c WHERE p.id = r.peopleid
and r.competitionid = c.id group by p.id, c.place, p.height having count(c.place) >= 10 or p.height > 1.70;

--5--
TODO

--6--
TODO

--7--
TODO

--8--
SELECT DISTINCT p.id, p.name from people p, results r, sports s WHERE p.id = r.peopleid and r.sportid = s.id
EXCEPT
SELECT DISTINCT p.id, p.name from people p, results r, sports s WHERE p.id = r.peopleid and r.sportid = s.id
                                                                  and s.name = 'Long Jump';

--9--
SELECT DISTINCT p.id, p.name from people p, results r, sports s WHERE p.id = r.peopleid and r.sportid = s.id
group by p.id, p.name having COUNT(s.name) = 7;

--10--
SELECT DISTINCT c.id, c.place from competitions c, results r WHERE r.competitionid = c.id and r.result IS NULL
EXCEPT
SELECT DISTINCT c.id, c.place from competitions c, results r WHERE r.competitionid = c.id and r.result IS NOT NULL
UNION
SELECT DISTINCT c.id, c.place from competitions c WHERE c.id not in (SELECT r.competitionid from results r);