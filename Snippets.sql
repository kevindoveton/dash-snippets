PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE tagsIndex(tid INTEGER, sid INTEGER);
INSERT INTO "tagsIndex" VALUES(1,2);
INSERT INTO "tagsIndex" VALUES(2,2);
INSERT INTO "tagsIndex" VALUES(3,1);
INSERT INTO "tagsIndex" VALUES(6,4);
INSERT INTO "tagsIndex" VALUES(7,4);
INSERT INTO "tagsIndex" VALUES(8,4);
INSERT INTO "tagsIndex" VALUES(4,3);
INSERT INTO "tagsIndex" VALUES(5,3);
CREATE TABLE snippets(sid INTEGER PRIMARY KEY, title TEXT, body TEXT, syntax VARCHAR(20), usageCount INTEGER, FOREIGN KEY(sid) REFERENCES tagsIndex(sid) ON DELETE CASCADE ON UPDATE CASCADE);
INSERT INTO "snippets" VALUES(1,'Empty Branch','git checkout --orphan __branchname__
git rm --cached -r .
git clean -fd 
git clean -fd 
','Standard',0);
INSERT INTO "snippets" VALUES(2,'jquerycdn','<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
','Standard',0);
INSERT INTO "snippets" VALUES(3,'bash pwd','DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" ','Standard',0);
INSERT INTO "snippets" VALUES(4,'svg-color','svg
  height: 3em
  *
    fill: #333333
      ','Standard',0);
CREATE TABLE tags(tid INTEGER PRIMARY KEY, tag TEXT UNIQUE, FOREIGN KEY(tid) REFERENCES tagsIndex(tid) ON DELETE CASCADE ON UPDATE CASCADE);
INSERT INTO "tags" VALUES(1,'jquery');
INSERT INTO "tags" VALUES(2,'cdn');
INSERT INTO "tags" VALUES(3,'git');
INSERT INTO "tags" VALUES(4,'bash');
INSERT INTO "tags" VALUES(5,'cwd');
INSERT INTO "tags" VALUES(6,'sass');
INSERT INTO "tags" VALUES(7,'css');
INSERT INTO "tags" VALUES(8,'svg');
CREATE TABLE smartTags(stid INTEGER PRIMARY KEY, name TEXT, query TEXT);
COMMIT;
