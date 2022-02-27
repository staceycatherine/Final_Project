### Updates 2022-02-26 (WIP)

(No `README` updates needed, I think.)

> The web page is coming along (https://phritspetpals.herokuapp.com/). I'll move it to a better place before we're done. I still need to look at the JavaScript to see what I'm missing. I've tweaked some wording for the formal presentation, so please let me know if I've missed or mischaracterized anything. That and other feedback much appreciated!

> I have consolidated what we have for code so far into Final_Project.ipynb. I'll pull the rest of y'all's stuff in before all is said and done. Once we've figured out what model and parameters gives us the curve we want, I'll prune or comment out the extraneous stuff. Again, feedback is much appreciated!

> Next up: Consolidating @Ronald Bingham's data cleanup into one notebook, the content of which I'll move to the placeholder I've put in Final_Project. @Stacey Hart, so what you have to do for the model(s) you're working on. I'll patch in or fix anything like the manual people_vet_join hacking you're doing at the moment. I'll get you a good table for that before I start worrying about the JavaScript on the website.

Source for States and their abbreviations: [World Population Review](https://worldpopulationreview.com/states/state-abbreviations)


### Applied/Historical: Updates 2022-02-20

- [Database ERD](Images/Database_ERD.png) **I *did* add this to the group README already for Sunday's project sumission.**

- Modifications to the `fhk_` copies of Ron's worksheets. (They haven't replaced the originals yet.) I swapped out all the database work for a single call to `get_db_engine()`. ~~I had to do a little work in the `utils_common.py` file so that what Stacey's working on can use `get_db_session()` while Ron doesn't have to rewrite his usage of `get_db_engine()`.~~

- What I'd coded around Stacey's stuff called for a `Session`, but it really needed a `db_engine` after all. `nn_refactored.ipynb` updated accordingly. I left the flexibility in `utils_common.py` alone.

- `nn_refactored` now applies reusable code to :

    - connect to the database
    
    - read `people_vet_join`, the combined file.

    - (Table is already clean. No action taken.)
    
    - encode the dataframe, converting categoricals to numeric

- **YOWZA!** I tried to create a table of the encoded results here, but it failed because we're limited to *1600 columns!* For every state and county, there's an encoded column that looks like `State_KS" FLOAT(53)`. IIRC, we can pull those columns out, encode the data, then put them back: I think the record order remains unchanged. We know what those columns are, so I'll plan to plug that into `encode_dataframe()`.

### Applied/Historical: Updates 2022-02-18

- I modified Ron's `people_file_review.ipynb` to connect to the AWS database. File saved as [`fhk_people_file_review.ipynb`](`fhk_people_file_review.ipynb`).<br>
**Implementation:** Delete Ron's file. Remove the `fhk_` from the front of my revision. Commit and push.

- The modified notebook creates tables in the database `vet_data`:
    
    - people
    
    - reduced_people_data

- I removed the tables I'd created from CSV files before. The ones we need are being created or read in, and the others are just clutter.

- I modified Ron's `sorting_data.ipynb` to connect to the AWS database. File saved as [`fhk_sorting_data.ipynb`](`fhk_sorting_data.ipynb`).<br>
**Implementation:** Delete Ron's file. Remove the `fhk_` from the front of my revision. Commit and push.

- The modified notebook creates tables in the database `vet_data`:
    
    - veterans
    
    - sorted_veterans_data
    
- **Recommendation:** Both scripts can safely be modified to *not* produce the derived `csv` files. Code using the data (including Tableau) should connect to and pull from the tables.

- Created [`people_vet_join.sql`](static/SQL/people_vet_join.sql) to execute a `JOIN`. The script creates the table:

    - people_vet_join

- **Repo:** I moved the existing SQL scripts to [`./static/SQL/`](static/SQL/).

### Applied/Historical: Updates: 2022-02-09

Tables created for:

- CountyClassification

- Income

- Jobs

- People

/- Veterans

Imports performed on all of the above, bringing in most of the data Ron has gathered. I had to use Windows-1252 encoding to support the &ntilde; character and others. I did not build or import tables for the derived data such as `reduced_people_data.csv`. It appears that all of the CSVs were pulled from the `RuralAtlasData23.xlsx` file, so I left that alone, too.

- CountyClassification
    <br> I created a copy of the original, which had tabs instead of commas for a separator. That file is [`csv_CountyClassifications.csv`](Resources/csv_CountyClassifications.csv) and should not otherwise differ from [`CountyClassifications.csv`](Resources/CountyClassifications.csv)

- The table creation script is in [`Create_Tables.sql`](Scripts/Create_Tables.sql).

- The "code" for QuickDBD is stored in [`ERD_WIP.md`](Scripts/ERD_WIP.md). It should not yet be thoroughly relied upon.

- **Note:** No foreign keys yet exist. QuickDB originally generated the FKs I'd flagged, but they were all pointing to `County Classicification` which probably isn't the base table. Removed for the time being.


### Applied/Historical: Postgres hosted on Amazon Web Services.

- **Server Name**: shrbfk-final-project

- **Initial Database**: vet_data

- **Endpoint**: shrbfk-final-project.cuitpsvagrne.us-east-2.rds.amazonaws.com

- **Port**: 5432

- **Security Group**: default (sg-06938851ed8d02d68)
