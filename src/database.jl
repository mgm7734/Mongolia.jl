"""
Wrap a [`Mongoc.Database`](https://felipenoris.github.io/Mongoc.jl/stable/api/#Database) and a
[`Mongoc.Client`](https://felipenoris.github.io/Mongoc.jl/stable/api/#Client).

Allows collections to be accessed as properties.
"""
struct Database <: M.AbstractDatabase
    mongo_database::M.Database
end 

"""
Overload property access as shortcut for collections.

```julia
db.project == db["project"]
```

"""
Base.getproperty(db::Database, s::Symbol) = 
    if s ∈ [:mongo_database]
        getfield(db, s)
    else
        db.mongo_database[string(s)]
    end

Base.getindex(db::Database, collection_name::String):: M.Collection = db.mongo_database[collection_name]
