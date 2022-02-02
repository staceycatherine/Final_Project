If I put notes specific to what I'm doing or thinking here, it can roll up to the main repo without accidentally overwriting the main README.

## Thoughts

Database: Postgres hosted on AWS. I'd guess it's a fairly safe assumption that it's smart enough to handle all of us pounding away at the same time.

Data: If we can find the data we're looking for, we can store each source in a separate table. They won't necessarily join into a pretty graphical entity relationship diagram, but once it's imported, it's there for munging.

Scope: Since we're talking about Veterans Affairs kinda stuff, I expect we'll mostly find information at the national level. We can narrow or filter from there. If we find rich sources in Virginia, we can pull in the national stuff filtered by state.

Minimum number of commits: Dude, I save and commit when I find a typo. What a silly metric! :-)
