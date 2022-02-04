If I put notes specific to what I'm doing or thinking here, it can roll up to the main repo without accidentally overwriting the main README.

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
