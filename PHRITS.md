### Updates 2022-02-18

- I modified Ron's `people_file_review.ipynb` to connect to the AWS database. File saved as [`fhk_people_file_review.ipynb`](`fhk_people_file_review.ipynb`).<br>
**Implementation:** Delete Ron's file. Remove the `fhk_` from the front of my revision. Commit and push.

- The modified notebook creates tables in the database `vet_data`:
    
    - People
    
    - Reduced_People_Data

- I removed the tables I'd created from CSV files before. The ones we need are being created or read in, and the others are just clutter.

- I modified Ron's `fhk_sorting_data.ipynb` to connect to the AWS database. File saved as [`fhk_sorting_data.ipynb`](`fhk_sorting_data.ipynb`).<br>
**Implementation:** Delete Ron's file. Remove the `fhk_` from the front of my revision. Commit and push.

- The modified notebook creates tables in the database `vet_data`:
    
    - Veterans
    
    - Sorted_Veterans_Data
    
- **Recommendation:** Both scripts can safely be modified to *not* produce the derived `csv` files. Code using the data (including Tableau) should connect to and pull from the tables.

### Updates: 2022-02-09

Tables created for:

- CountyClassification

- Income

- Jobs

- People

- Veterans

Imports performed on all of the above, bringing in most of the data Ron has gathered. I had to use Windows-1252 encoding to support the &ntilde; character and others. I did not build or import tables for the derived data such as `reduced_people_data.csv`. It appears that all of the CSVs were pulled from the `RuralAtlasData23.xlsx` file, so I left that alone, too.

- CountyClassification
    <br> I created a copy of the original, which had tabs instead of commas for a separator. That file is [`csv_CountyClassifications.csv`](Resources/csv_CountyClassifications.csv) and should not otherwise differ from [`CountyClassifications.csv`](Resources/CountyClassifications.csv)

- The table creation script is in [`Create_Tables.sql`](Scripts/Create_Tables.sql).

- The "code" for QuickDBD is stored in [`ERD_WIP.md`](Scripts/ERD_WIP.md). It should not yet be thoroughly relied upon.

- **Note:** No foreign keys yet exist. QuickDB originally generated the FKs I'd flagged, but they were all pointing to `County Classicification` which probably isn't the base table. Removed for the time being.


## Older

### Postgres hosted on Amazon Web Services.

- **Server Name**: shrbfk-final-project

- **Initial Database**: vet_data

- **Endpoint**: shrbfk-final-project.cuitpsvagrne.us-east-2.rds.amazonaws.com

- **Port**: 5432

- **Security Group**: default (sg-06938851ed8d02d68)

## Thoughts

Data: If we can find the data we're looking for, we can store each source in a separate table. They won't necessarily join into a pretty graphical entity relationship diagram, but once it's imported, it's there for munging.

Scope: Since we're talking about Veterans Affairs kinda stuff, I expect we'll mostly find information at the national level. We can narrow or filter from there. If we find rich sources in Virginia, we can pull in the national stuff filtered by state.

Minimum number of commits: Dude, I save and commit when I find a typo. What a silly metric! :-)
