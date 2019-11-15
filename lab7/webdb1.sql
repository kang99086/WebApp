/* 1번 */
select *
from roles r
Join movies m ON r.movie_id = m.id
where m.name = 'Pi';

/* 2번 */
select a.first_name,a.last_name
from actors a
Join roles r ON a.id=r.actor_id
Join movies m ON r.movie_id = m.id
where m.name = 'Pi';

/* 3번 */
select distinct a.first_name,a.last_name
from actors a
Join roles r ON a.id=r.actor_id
Join movies m ON r.movie_id = m.id
where m.name = 'Kill Bill: Vol. 1'
INTERSECT
select distinct a.first_name,a.last_name
from actors a
Join roles r ON a.id=r.actor_id
Join movies m ON r.movie_id = m.id
where m.name = 'Kill Bill: Vol. 2';
