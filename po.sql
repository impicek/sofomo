select c.dimension_1, map.correct_dimension_2, c.measure_1, c.measure_2 from (
select distinct a.DIMENSION_1, a.DIMENSION_2, a.measure_1, 0 measure_2
from a
union all
select distinct b.DIMENSION_1, b.DIMENSION_2, 0, b.measure_2
from b) c, map
where c.dimension_1 = map.dimension_1
group by c.dimension_1, map.correct_dimension_2, c.measure_1, c.measure_2