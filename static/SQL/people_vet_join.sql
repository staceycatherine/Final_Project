-- ****************************************************************************
-- ****************************************************************************
-- ****************************************************************************
--  Module 20:        Final Project
--
--  Rubric Requirement: Create a SQL join.
--
--
-- Creates the table people_vet_join combining all fields from 
--      reduced_people_data and all but the duplicated fields State and
--      County from sorted_veterans_data. The tables are joined on the common
--      fields State and County.
-- ****************************************************************************
-- ****************************************************************************
-- ****************************************************************************
DROP TABLE IF EXISTS people_vet_join;

SELECT
	p.*,
	v."TotalVets",
	v."VeteranPopulationPct",
	v."MaleVetsPct",
	v."FemaleVetsPct",
	v."WhiteVetsPct",
	v."BlackVetsPct",
	v."HispanicVetsPct",
	v."OtherRaceVetsPct",
	v."LessThanHSVetsPct",
	v."HighSchOnlyVetsPct",
	v."SomeCollegeVetsPct",
	v."CollegeDegreeVetsPct",
	v."EmployeedVetsPct",
	v."UnemployeedVetsPct"
INTO
	people_vet_join
FROM
	public.reduced_people_data as p
INNER JOIN
	public.sorted_veterans_data as v
ON ((p."State" = v."State")
	and
	(p."County" = v."County"));
