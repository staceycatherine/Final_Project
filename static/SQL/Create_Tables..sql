﻿-- Foreign Keys removed. They probably don't belong liningh up against CountyClassification

-- Based on Export from QuickDBD

DROP TABLE IF EXISTS "CountyClassification" CASCADE;
DROP TABLE IF EXISTS "Income" CASCADE;
DROP TABLE IF EXISTS "Jobs" CASCADE;
DROP TABLE IF EXISTS "People" CASCADE;
DROP TABLE IF EXISTS "Veterans" CASCADE;


CREATE TABLE "CountyClassification" (
    "FIPS" int   NOT NULL,
    "State" varchar(2)   NOT NULL,
    "County" varchar(50)   NOT NULL,
    "RuralUrbanContinuumCode2013" int   ,
    "UrbanInfluenceCode2013" int   ,
    "RuralUrbanContinuumCode2003" int   ,
    "UrbanInfluenceCode2003" int   ,
    "Metro2013" boolean   ,
    "Nonmetro2013" boolean   ,
    "Micropolitan2013" boolean   ,
    "Type_2015_Update" int   ,
    "Type_2015_Farming_NO" boolean   ,
    "Type_2015_Manufacturing_NO" boolean   ,
    "Type_2015_Mining_NO" boolean   ,
    "Type_2015_Government_NO" boolean   ,
    "Type_2015_Recreation_NO" boolean   ,
    "Low_Education_2015_update" boolean   ,
    "Low_Employment_2015_update" boolean   ,
    "Population_loss_2015_update" boolean   ,
    "Retirement_Destination_2015_Update" boolean   ,
    "Perpov_1980_0711" boolean   ,
    "PersistentChildPoverty_1980_2011" boolean   ,
    "Hipov" boolean   ,
    "HiAmenity" boolean   ,
    "HiCreativeClass2000" boolean   ,
    "Gas_Change" int   ,
    "Oil_Change" int   ,
    "Oil_Gas_Change" int   ,
    "Metro2003" boolean   ,
    "NonmetroNotAdj2003" boolean   ,
    "NonmetroAdj2003" boolean   ,
    "Noncore2003" boolean   ,
    "EconomicDependence2000" int   ,
    "Nonmetro2003" boolean   ,
    "Micropolitan2003" boolean   ,
    "FarmDependent2003" boolean   ,
    "ManufacturingDependent2000" boolean   ,
    "LowEducation2000" boolean   ,
    "RetirementDestination2000" boolean   ,
    "PersistentPoverty2000" boolean   ,
    "Noncore2013" boolean   ,
    "Type_2015_Nonspecialized_NO" boolean   ,
    "Metro_Adjacent2013" boolean   ,
    "PersistentChildPoverty2004" boolean   ,
    "RecreationDependent2000" boolean   ,
    CONSTRAINT "pk_CountyClassification" PRIMARY KEY (
        "FIPS"
     )
);

CREATE TABLE "Income" (
    "FIPS" int   NOT NULL,
    "State" varchar(2)   NOT NULL,
    "County" varchar(50)   NOT NULL,
    "Median_HH_Inc_ACS" int   ,
    "PerCapitaInc" int   ,
    "Poverty_Rate_0_17_ACS" float   ,
    "Poverty_Rate_ACS" float   ,
    "Deep_Pov_All" float   ,
    "Deep_Pov_Children" float   ,
    "NumAll_inPOV_ACS" int   ,
    "PCTPOV017" float   ,
    "POV017" int   ,
    "MedHHInc" int   ,
    "POVALL" int   ,
    "PCTPOVALL" float   ,
    "Num_inPOV_0_17_ACS" int   ,
    CONSTRAINT "pk_Income" PRIMARY KEY (
        "FIPS"
     )
);

CREATE TABLE "Jobs" (
    "FIPS" int   NOT NULL,
    "State" varchar(2)   NOT NULL,
    "County" varchar(50)   NOT NULL,
    "UnempRate2020" float   ,
    "PctEmpChange1920" float   ,
    "UnempRate2019" float   ,
    "PctEmpChange1819" float   ,
    "UnempRate2018" float   ,
    "UnempRate2017" float   ,
    "UnempRate2016" float   ,
    "UnempRate2015" float   ,
    "UnempRate2014" float   ,
    "UnempRate2010" float   ,
    "UnempRate2007" float   ,
    "PctEmpChange1020" float   ,
    "PctEmpChange0720" float   ,
    "PctEmpChange0710" float   ,
    "PctEmpAgriculture" float   ,
    "PctEmpMining" float   ,
    "PctEmpConstruction" float   ,
    "PctEmpManufacturing" float   ,
    "PctEmpTrade" float   ,
    "PctEmpTrans" float   ,
    "PctEmpInformation" float   ,
    "PctEmpFIRE" float   ,
    "PctEmpServices" float   ,
    "PctEmpGovt" float   ,
    "NumCivEmployed" int   ,
    "NumCivLaborForce2012" int   ,
    "NumUnemployed2011" int   ,
    "UnempRate2012" float   ,
    "NumEmployed2011" int   ,
    "NumEmployed2012" int   ,
    "NumCivLaborForce2011" int   ,
    "UnempRate2011" float   ,
    "NumUnemployed2010" int   ,
    "NumEmployed2010" int   ,
    "NumCivLaborForce2010" int   ,
    "NumUnemployed2009" int   ,
    "NumEmployed2009" int   ,
    "NumCivLaborForce2009" int   ,
    "NumUnemployed2008" int   ,
    "UnempRate2013" float   ,
    "NumEmployed2008" int   ,
    "NumCivLaborForce2008" int   ,
    "UnempRate2009" float   ,
    "UnempRate2008" float   ,
    "NumEmployed2016" int   ,
    "NumEmployed2020" int   ,
    "NumCivLaborforce2020" int   ,
    "NumUnemployed2020" int   ,
    "NumEmployed2019" int   ,
    "NumUnemployed2019" int   ,
    "NumCivLaborforce2019" int   ,
    "NumUnemployed2018" int   ,
    "NumEmployed2018" int   ,
    "NumCivLaborforce2018" int   ,
    "NumUnemployed2017" int   ,
    "NumEmployed2017" int   ,
    "NumEmployed2013" int   ,
    "NumUnemployed2016" int   ,
    "NumUnemployed2012" int   ,
    "NumCivLaborforce2016" int   ,
    "NumCivLaborforce2015" int   ,
    "NumEmployed2015" int   ,
    "NumUnemployed2015" int   ,
    "NumUnemployed2014" int   ,
    "NumEmployed2014" int   ,
    "NumCivLaborforce2014" int   ,
    "NumUnemployed2013" int   ,
    "NumCivLaborforce2013" int   ,
    "NumUnemployed2007" int   ,
    "NumEmployed2007" int   ,
    "NumCivLaborforce2007" int   ,
    "NumCivLaborforce2017" int   ,
    CONSTRAINT "pk_Jobs" PRIMARY KEY (
        "FIPS"
     )
);

CREATE TABLE "People" (
    "FIPS" int   NOT NULL,
    "State" varchar(2)   NOT NULL,
    "County" varchar(50)   NOT NULL,
    "PopChangeRate1819" float   ,
    "PopChangeRate1019" float   ,
    "TotalPopEst2019" int   ,
    "NetMigrationRate1019" float   ,
    "NaturalChangeRate1019" float   ,
    "Net_International_Migration_Rate_2010_2019" float   ,
    "PopChangeRate0010" float   ,
    "NetMigrationRate0010" float   ,
    "NaturalChangeRate0010" float   ,
    "Immigration_Rate_2000_2010" float   ,
    "PopDensity2010" float   ,
    "Under18Pct2010" float   ,
    "Age65AndOlderPct2010" float   ,
    "WhiteNonHispanicPct2010" float   ,
    "BlackNonHispanicPct2010" float   ,
    "AsianNonHispanicPct2010" float   ,
    "NativeAmericanNonHispanicPct2010" float   ,
    "HispanicPct2010" float   ,
    "MultipleRacePct2010" float   ,
    "NonHispanicWhitePopChangeRate0010" float   ,
    "NonHispanicBlackPopChangeRate0010" float   ,
    "NonHispanicAsianPopChangeRate0010" float   ,
    "NonHispanicNativeAmericanPopChangeRate0010" float   ,
    "HispanicPopChangeRate0010" float   ,
    "MultipleRacePopChangeRate0010" float   ,
    "WhiteNonHispanicNum2010" int   ,
    "BlackNonHispanicNum2010" int   ,
    "AsianNonHispanicNum2010" int   ,
    "NativeAmericanNonHispanicNum2010" int   ,
    "HispanicNum2010" int   ,
    "MultipleRaceNum2010" int   ,
    "ForeignBornPct" float   ,
    "ForeignBornEuropePct" float   ,
    "ForeignBornMexPct" float   ,
    "NonEnglishHHPct" float   ,
    "Ed1LessThanHSPct" float   ,
    "Ed2HSDiplomaOnlyPct" float   ,
    "Ed3SomeCollegePct" float   ,
    "Ed4AssocDegreePct" float   ,
    "Ed5CollegePlusPct" float   ,
    "AvgHHSize" float   ,
    "FemaleHHPct" float   ,
    "HH65PlusAlonePct" float   ,
    "OwnHomePct" float   ,
    "ForeignBornNum" int   ,
    "TotalPopACS" int   ,
    "ForeignBornAfricaPct" float   ,
    "Ed3SomeCollegeNum" int   ,
    "Ed2HSDiplomaOnlyNum" int   ,
    "Ed1LessThanHSNum" int   ,
    "TotalPop25Plus" int   ,
    "Ed5CollegePlusNum" int   ,
    "TotalOccHU" int   ,
    "ForeignBornAsiaPct" float   ,
    "Ed4AssocDegreeNum" int   ,
    "ForeignBornEuropeNum" int   ,
    "NonEnglishHHNum" int   ,
    "HH65PlusAloneNum" int   ,
    "OwnHomeNum" int   ,
    "FemaleHHNum" int   ,
    "TotalHH" int   ,
    "ForeignBornCentralSouthAmPct" float   ,
    "ForeignBornCentralSouthAmNum" float   ,
    "ForeignBornCaribPct" float   ,
    "ForeignBornCaribNum" int   ,
    "ForeignBornAfricaNum" int   ,
    "ForeignBornAsiaNum" int   ,
    "ForeignBornMexNum" int   ,
    "LandAreaSQMiles2010" float   ,
    "Age65AndOlderNum2010" int   ,
    "TotalPop2010" int   ,
    "Under18Num2010" int   ,
    "Net_International_Migration_2000_2010" float   ,
    "NaturalChangeNum0010" float   ,
    "NetMigrationNum0010" float   ,
    "TotalPopEst2012" int   ,
    "TotalPopEst2013" int   ,
    "TotalPopEst2010" int   ,
    "TotalPopEst2014" int   ,
    "TotalPopEst2011" int   ,
    "Net_International_Migration_2010_2019" int   ,
    "NaturalChange1019" int   ,
    "TotalPopEst2015" int   ,
    "TotalPopEst2016" int   ,
    "TotalPopEst2017" int   ,
    "NetMigration1019" int   ,
    "TotalPopEst2018" int   ,
    "TotalPopEstBase2010" int   ,
    CONSTRAINT "pk_People" PRIMARY KEY (
        "FIPS"
     )
);

CREATE TABLE "Veterans" (
    "FIPS" int   NOT NULL,
    "State" varchar(2)   NOT NULL,
    "County" varchar(50)   NOT NULL,
    "Vets18OPct" float   ,
    "GulfWar2VetsPct" float   ,
    "GulfWar1VetsPct" float   ,
    "VietnamEraVetsPct" float   ,
    "KoreanWarVetsPct" float   ,
    "WW2VetsPct" float   ,
    "MaleVetsPct" float   ,
    "FemaleVetsPct" float   ,
    "WhiteNonHispVetsPct" float   ,
    "BlackVetsPct" float   ,
    "HispanicVetsPct" float   ,
    "OtherRaceVetsPct" float   ,
    "MedianVetsInc" int   ,
    "MedianNonVetsInc" int   ,
    "LessThanHSVetsPct" float   ,
    "HighSchOnlyVetsPct" float   ,
    "SomeCollegeVetsPct" float   ,
    "CollegeDegreeVetsPct" float   ,
    "LFPVetsRate" float   ,
    "UEVetsRate" float   ,
    "PctVetsPoor" float   ,
    "PctNonVetsPoor" float   ,
    "PctVetsDisabilty" float   ,
    "PctNonVetsDisabilty" float   ,
    "CivPopVets18to64Num" int   ,
    "CivPop18ONum" int   ,
    "Vets18ONum" int   ,
    "NonVetsDisabilty" int   ,
    "NonVetsPoor" int   ,
    "VetsDisabilty" int   ,
    "VetsPoor" int   ,
    "CLFVets18to64Num" int   ,
    CONSTRAINT "pk_Veterans" PRIMARY KEY (
        "FIPS"
     )
);

-- ALTER TABLE "Income" ADD CONSTRAINT "fk_Income_FIPS" FOREIGN KEY("FIPS")
-- REFERENCES "CountyClassification" ("FIPS");

-- ALTER TABLE "Jobs" ADD CONSTRAINT "fk_Jobs_FIPS" FOREIGN KEY("FIPS")
-- REFERENCES "CountyClassification" ("FIPS");

-- ALTER TABLE "People" ADD CONSTRAINT "fk_People_FIPS" FOREIGN KEY("FIPS")
-- REFERENCES "CountyClassification" ("FIPS");

-- ALTER TABLE "Veterans" ADD CONSTRAINT "fk_Veterans_FIPS" FOREIGN KEY("FIPS")
-- REFERENCES "CountyClassification" ("FIPS");
