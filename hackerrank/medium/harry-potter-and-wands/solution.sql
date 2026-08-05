select w.id,p.age ,w.coins_needed,w.power
from Wands w
join Wands_Property p
on w.code = p.code
where p.is_evil = 0
AND w.coins_needed = (
    SELECT MIN(w2.coins_needed)
    FROM Wands w2
    JOIN Wands_Property p2
    ON w2.code = p2.code
    WHERE p2.is_evil = 0
      AND w2.power = w.power
      AND p2.age = p.age
)
order by w.power desc,
p.age desc;

