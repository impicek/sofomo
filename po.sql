select dimension_1, correct_dimension_2 dimension_2, sum(measure_1) measure_1, sum(measure_2)measure_2 from (
select distinct c.dimension_1, map.correct_dimension_2, c.measure_1, c.measure_2 from (
select  a.DIMENSION_1, a.DIMENSION_2, a.measure_1, 0 measure_2
from a
union all
select b.DIMENSION_1, b.DIMENSION_2, 0, b.measure_2
from b) c, map
where c.dimension_1 = map.dimension_1)
group by dimension_1, correct_dimension_2