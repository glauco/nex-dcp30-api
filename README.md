# NEX DCP30 API

A REST API for NEX-DCP30 climate modeling data using Ruby and Sinatra.

## Using
After setting up PostgreSQL execute:

```
rake db:create
rake db:migrate
rake data:download (or data:download_access to download only ACCESS model files)
rake data:import
```

to import climate data to our database.

CAUTION: A few parts are extremely hacky and are in place just to put a minimum app up and running.
