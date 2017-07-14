## smartTags
```sql
CREATE TABLE smartTags(stid INTEGER PRIMARY KEY, name TEXT, query TEXT);
```

## tagsIndex
```sql
CREATE TABLE tagsIndex(tid INTEGER, sid INTEGER);
```

## tags
```sql
CREATE TABLE tags(tid INTEGER PRIMARY KEY, tag TEXT UNIQUE, FOREIGN KEY(tid) REFERENCES tagsIndex(tid) ON DELETE CASCADE ON UPDATE CASCADE);
```

## snippets
```sql
CREATE TABLE snippets(sid INTEGER PRIMARY KEY, title TEXT, body TEXT, syntax VARCHAR(20), usageCount INTEGER, FOREIGN KEY(sid) REFERENCES tagsIndex(sid) ON DELETE CASCADE ON UPDATE CASCADE);
```