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
	p."State",
    p."County",
    p."AveragePop2015to2019",
	v."TotalVets",
	v."MaleVets",
	v."FemaleVets",
	v."WhiteVets",
	v."BlackVets",
	v."HispanicVets",
	v."OtherRaceVets",
	v."LessThanHSVets",
	v."HighSchOnlyVets",
	v."SomeCollegeVets",
	v."CollegeDegreeVets",
	v."EmployeedVets",
	v."UnemployeedVets"
INTO
	people_vet_join
FROM
	public.reduced_people as p
INNER JOIN
	public.vet_population as v
ON ((p."State" = v."State")
	and
	(p."County" = v."County"));
