.class public Lzte/com/cn/cloudnotepad/data/NotepadDB;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "NotepadDB.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/data/DataSchema;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 33
    const-string v0, "notepad.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 35
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/data/NotepadDB;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "databaseName"

    .prologue
    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 40
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/data/NotepadDB;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private CreateNotebookTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 95
    const-string v0, "CREATE TABLE notebook (_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,number INTEGER,cover INTEGER,sequence INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method private CreateNotesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 64
    const-string v1, "NotepadDB"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in CreateNotesTable(), db version = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "CREATE TABLE notes (_id INTEGER PRIMARY KEY AUTOINCREMENT,title TEXT,content TEXT,created INTEGER,updated INTEGER,notebook TEXT, drawable_src TEXT,longitude INTEGER,latitude INTEGER,address TEXT,map TEXT,wallpaper TEXT,size TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ", content_hash TEXT default \'\' NOT NULL, uuid TEXT default \'\' NOT NULL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method private CreateResourceTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 114
    const-string v0, "CREATE TABLE resource (_id INTEGER PRIMARY KEY AUTOINCREMENT,hash TEXT,name TEXT,type TEXT,size TEXT,note_id INTEGER REFERENCES notes(_id) ON DELETE CASCADE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method private CreateTriggersOnNoteTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .parameter "db"

    .prologue
    .line 128
    const-string v4, "trig_notebook_on_update_note_book"

    .line 129
    .local v4, trig_notebook_on_note_book_update:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CREATE TRIGGER "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 130
    const-string v10, " AFTER UPDATE OF notebook ON "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "notes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 131
    const-string v10, " FOR EACH ROW "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 132
    const-string v10, "BEGIN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 133
    const-string v10, "UPDATE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "notebook"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 134
    const-string v10, " SET number = number+1 WHERE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 135
    const-string v10, " title = new.notebook AND (SELECT COUNT(*) FROM notebook WHERE title = old.notebook AND _id > 2)>0 ; "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 137
    const-string v10, "UPDATE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "notebook"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 138
    const-string v10, " SET number = number-1 WHERE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 139
    const-string v10, " title = old.notebook AND _id > 2; "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 140
    const-string v10, "END;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 129
    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    const-string v7, "trig_notebook_on_insert_note"

    .line 144
    .local v7, trig_notebook_on_note_insert:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CREATE TRIGGER "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 145
    const-string v10, " AFTER INSERT ON "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "notes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 146
    const-string v10, " FOR EACH ROW "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 147
    const-string v10, "BEGIN UPDATE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "notebook"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 148
    const-string v10, " SET number = number+1 WHERE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 149
    const-string v10, "title"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = new.notebook; END;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 144
    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 152
    const-string v0, "trig_insert_notebook_on_widget_insert_note"

    .line 153
    .local v0, trig_insert_notebook_on_widget_note_insert:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CREATE TRIGGER "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 154
    const-string v10, " BEFORE INSERT ON "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "notes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 155
    const-string v10, " WHEN new.notebook notnull AND  new.notebook NOT IN (SELECT title from notebook) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 156
    const-string v10, " BEGIN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 157
    const-string v10, " UPDATE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "notebook"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " SET sequence = sequence+1 WHERE sequence > 1; "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 158
    const-string v10, " INSERT INTO notebook(title, number, cover, sequence) VALUES(new.notebook, 0, 3, 2); "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 159
    const-string v10, " END;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 153
    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 163
    const-string v6, "trig_notebook_on_update_note_inactive"

    .line 164
    .local v6, trig_notebook_on_note_inactive_update:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CREATE TRIGGER "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 165
    const-string v10, " AFTER UPDATE OF active ON "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "notes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 166
    const-string v10, " FOR EACH ROW "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 167
    const-string v10, "BEGIN UPDATE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "notebook"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 168
    const-string v10, " SET number = number-1 WHERE ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 169
    const-string v10, " title = new.notebook AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 170
    const-string v10, " new.active = 0 AND old.active = 1) ; END;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 164
    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 173
    const-string v5, "trig_notebook_on_update_note_delete"

    .line 174
    .local v5, trig_notebook_on_note_delete_update:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CREATE TRIGGER "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 175
    const-string v10, " AFTER DELETE ON "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "notes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 176
    const-string v10, " FOR EACH ROW "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 177
    const-string v10, "BEGIN UPDATE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "notebook"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 178
    const-string v10, " SET number = number-1 WHERE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 179
    const-string v10, " title = old.notebook; END;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 174
    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 181
    const-string v3, "trig_notebook_on_update_note_active"

    .line 182
    .local v3, trig_notebook_on_note_active_update:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CREATE TRIGGER "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 183
    const-string v10, " AFTER UPDATE OF active ON "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "notes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 184
    const-string v10, " FOR EACH ROW "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 185
    const-string v10, "BEGIN UPDATE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "notebook"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 186
    const-string v10, " SET number = number+1 WHERE ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 187
    const-string v10, " title = new.notebook AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 188
    const-string v10, " new.active = 1 AND old.active = 0) ; END;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 182
    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 190
    const-string v2, "trig_note_on_update_notebook"

    .line 191
    .local v2, trig_note_on_notebook_update:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CREATE TRIGGER "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 192
    const-string v10, " AFTER UPDATE OF title ON "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "notebook"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 193
    const-string v10, " FOR EACH ROW "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 194
    const-string v10, "BEGIN UPDATE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "notes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 195
    const-string v10, " SET notebook = new.title WHERE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 196
    const-string v10, " notebook = old.title; END;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 191
    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 198
    const-string v1, "trig_note_on_delete_notebook"

    .line 199
    .local v1, trig_note_on_notebook_delete:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CREATE TRIGGER "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 200
    const-string v10, " AFTER DELETE ON "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "notebook"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 201
    const-string v10, " FOR EACH ROW "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 202
    const-string v10, "BEGIN DELETE FROM "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "notes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 203
    const-string v10, " WHERE notebook = old.title; END;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 199
    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 206
    const-string v8, "trig_sequence_on_delete_notebook"

    .line 207
    .local v8, trig_sequence_on_notebook_delete_:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CREATE TRIGGER "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 208
    const-string v10, " AFTER DELETE ON "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "notebook"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 209
    const-string v10, " FOR EACH ROW "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 210
    const-string v10, "BEGIN UPDATE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "notebook"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 211
    const-string v10, " SET sequence = sequence-1 WHERE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 212
    const-string v10, " sequence > old.sequence; END;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 207
    invoke-virtual {p1, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method private InitalNoteData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 32
    .parameter "db"

    .prologue
    .line 269
    move-object/from16 v0, p0

    iget-object v3, v0, Lzte/com/cn/cloudnotepad/data/NotepadDB;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v31

    .line 270
    .local v31, preferences:Landroid/content/SharedPreferences;
    const-string v3, "HasExample"

    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    .line 271
    .local v28, currentCount:Z
    if-eqz v28, :cond_0

    .line 308
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-interface/range {v31 .. v31}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v29

    .line 276
    .local v29, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "HasExample"

    const/4 v4, 0x1

    move-object/from16 v0, v29

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 277
    invoke-interface/range {v29 .. v29}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 280
    const v3, 0x7f020021

    const-string v4, "ed571d698d42b22a30faff052066b08f.jpg"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->storeResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 281
    .local v10, doodleFileString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lzte/com/cn/cloudnotepad/data/NotepadDB;->mContext:Landroid/content/Context;

    const v4, 0x7f0900dd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, doodleText:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->setNoteContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, doodleContent:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 285
    .local v8, doodleDrawable_src:Ljava/lang/String;
    const v3, 0x7f020039

    const-string v4, "796f9f0593610f0c930256cffd4c3f63.jpg"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->storeResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 286
    .local v18, foodFileString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lzte/com/cn/cloudnotepad/data/NotepadDB;->mContext:Landroid/content/Context;

    const v4, 0x7f0900df

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 287
    .local v13, foodText:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v13}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->setNoteContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 288
    .local v14, foodContent:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 290
    .local v16, foodDrawable_src:Ljava/lang/String;
    const v3, 0x7f0200d5

    const-string v4, "a12b688e8bdcf7e9ec666a96d482922b.jpg"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->storeResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 291
    .local v26, studyFileString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lzte/com/cn/cloudnotepad/data/NotepadDB;->mContext:Landroid/content/Context;

    const v4, 0x7f0900e1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    .line 292
    .local v21, studyText:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->setNoteContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 293
    .local v22, studyContent:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 295
    .local v24, studyDrawable_src:Ljava/lang/String;
    const v4, 0x7f0900dc

    .line 296
    const v7, 0x7f090065

    const-string v9, "2"

    const-string v11, "predefine_example_uuid_1"

    move-object/from16 v3, p0

    .line 295
    invoke-direct/range {v3 .. v11}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->getNotesData(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    move-result-object v30

    .line 297
    .local v30, notesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->insertToDb(Landroid/database/sqlite/SQLiteDatabase;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lzte/com/cn/cloudnotepad/data/NotepadDB;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    iget v4, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    const v7, 0x7f020021

    const-string v9, "2"

    invoke-static {v3, v5, v4, v7, v9}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->createExampleThumbnail(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)V

    .line 299
    const v12, 0x7f0900de

    .line 300
    const v15, 0x7f090064

    const-string v17, "3"

    const-string v19, "predefine_example_uuid_2"

    move-object/from16 v11, p0

    .line 299
    invoke-direct/range {v11 .. v19}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->getNotesData(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    move-result-object v30

    .line 301
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->insertToDb(Landroid/database/sqlite/SQLiteDatabase;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v3, v0, Lzte/com/cn/cloudnotepad/data/NotepadDB;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    iget v4, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    const v7, 0x7f020039

    const-string v9, "3"

    invoke-static {v3, v13, v4, v7, v9}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->createExampleThumbnail(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)V

    .line 303
    const v20, 0x7f0900e0

    .line 304
    const v23, 0x7f090063

    const-string v25, "6"

    const-string v27, "predefine_example_uuid_3"

    move-object/from16 v19, p0

    .line 303
    invoke-direct/range {v19 .. v27}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->getNotesData(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    move-result-object v30

    .line 305
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->insertToDb(Landroid/database/sqlite/SQLiteDatabase;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lzte/com/cn/cloudnotepad/data/NotepadDB;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    iget v4, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    const v7, 0x7f0200d5

    const-string v9, "6"

    move-object/from16 v0, v21

    invoke-static {v3, v0, v4, v7, v9}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->createExampleThumbnail(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private InitalNotebookData(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 370
    const-string v0, "INSERT INTO notebook(title, number, cover, sequence) VALUES "

    .line 371
    .local v0, query:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/data/NotepadDB;->mContext:Landroid/content/Context;

    const v3, 0x7f090019

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'0\', \'0\', \'0\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/data/NotepadDB;->mContext:Landroid/content/Context;

    const v3, 0x7f090061

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'0\', \'0\', \'1\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/data/NotepadDB;->mContext:Landroid/content/Context;

    const v3, 0x7f090062

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'0\', \'0\', \'2\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/data/NotepadDB;->mContext:Landroid/content/Context;

    const v3, 0x7f090063

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'0\', \'1\', \'3\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/data/NotepadDB;->mContext:Landroid/content/Context;

    const v3, 0x7f090065

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'0\', \'2\', \'4\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/data/NotepadDB;->mContext:Landroid/content/Context;

    const v3, 0x7f090064

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\', \'0\', \'3\', \'5\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method private getNoteSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "title"
    .parameter "text"
    .parameter "fileString"

    .prologue
    .line 332
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    .line 333
    .local v0, size:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 334
    const-string v1, "|"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->convertStringtoSize(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 335
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 336
    const/16 v0, 0x64

    .line 338
    :cond_0
    int-to-long v1, v0

    invoke-static {v1, v2}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->convertFileSize(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getNotesData(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    .locals 3
    .parameter "titleId"
    .parameter "text"
    .parameter "content"
    .parameter "notebookId"
    .parameter "drawable_src"
    .parameter "wallpaper"
    .parameter "fileString"
    .parameter "uuid"

    .prologue
    .line 311
    new-instance v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;-><init>()V

    .line 312
    .local v0, notesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/data/NotepadDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    .line 313
    iput-object p3, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->created:J

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->updated:J

    .line 316
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/data/NotepadDB;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    .line 317
    iput-object p5, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    .line 318
    iput-object p6, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    .line 322
    iget-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-direct {p0, v1, p2, p7}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->getNoteSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->size:Ljava/lang/String;

    .line 324
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->messageDigest([B)[B

    move-result-object v1

    invoke-static {v1}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->mdByteToString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    .line 326
    iput-object p8, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    .line 328
    return-object v0
.end method

.method private insertToDb(Landroid/database/sqlite/SQLiteDatabase;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V
    .locals 8
    .parameter "db"
    .parameter "notesData"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 343
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 344
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "title"

    iget-object v3, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v2, "content"

    iget-object v3, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v2, "created"

    iget-wide v3, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->created:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 347
    const-string v2, "updated"

    iget-wide v3, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->updated:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 348
    const-string v2, "notebook"

    iget-object v3, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v2, "drawable_src"

    iget-object v3, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v2, "wallpaper"

    iget-object v3, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v2, "size"

    iget-object v3, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->size:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v2, "content_hash"

    iget-object v3, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v2, "uuid"

    iget-object v3, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v2, "notes"

    invoke-virtual {p1, v2, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    .line 358
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 359
    .local v0, resValues:Landroid/content/ContentValues;
    const-string v2, "hash"

    iget-object v3, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    iget-object v4, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v2, "name"

    iget-object v3, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    iget-object v4, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v2, "size"

    iget-object v3, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->size:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v2, "note_id"

    iget v3, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 363
    const-string v2, "resource"

    invoke-virtual {p1, v2, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 366
    return-void
.end method

.method private setNoteContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "content"
    .parameter "text"

    .prologue
    const/4 v6, 0x0

    .line 245
    new-instance v1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-direct {v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;-><init>()V

    .line 247
    .local v1, mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;
    const-string v2, "text"

    .line 248
    const-string v3, "36.0"

    const-string v4, "79"

    const-string v5, ""

    .line 247
    invoke-static {v2, p2, v3, v4, v5}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControlData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v0

    .line 249
    .local v0, controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    invoke-virtual {v1, v0, v6}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->insertControl(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V

    .line 251
    const-string v2, "picture"

    .line 252
    const-string v3, "|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 253
    const-string v4, ""

    .line 254
    const-string v5, "|"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 256
    const-string v6, ""

    .line 251
    invoke-static {v2, v3, v4, v5, v6}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControlData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v0

    .line 257
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->insertControl(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V

    .line 259
    const-string v2, "text"

    const-string v3, ""

    .line 260
    const-string v4, "36.0"

    const-string v5, "79"

    const-string v6, ""

    .line 259
    invoke-static {v2, v3, v4, v5, v6}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControlData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v0

    .line 261
    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->insertControl(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V

    .line 263
    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private storeResource(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "resId"
    .parameter "hashName"

    .prologue
    .line 239
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getFileSizeString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, sizeString:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateNotesTableNewColumnValue(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter "db"

    .prologue
    .line 402
    invoke-virtual {p0, p1}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->getEmptyUUidAndContentHashRecord(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v4

    .line 403
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v7, "NotepadDB"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "old record without uuid, list = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 424
    :cond_0
    return-void

    .line 408
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 409
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v5, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 410
    .local v5, oldContent:Ljava/lang/String;
    new-instance v2, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-direct {v2}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;-><init>()V

    .line 411
    .local v2, controlUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;
    invoke-virtual {v2, v5}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControls(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsString()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, content:Ljava/lang/String;
    const-string v7, "NotepadDB"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "in updateNotesTableNewColumnValue(), before translate, content = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-string v7, "NotepadDB"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "in updateNotesTableNewColumnValue(), after translate, content = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 416
    .local v6, values:Landroid/content/ContentValues;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->messageDigest([B)[B

    move-result-object v7

    invoke-static {v7}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->mdByteToString([B)Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, content_hash:Ljava/lang/String;
    const-string v7, "content"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v7, "content_hash"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v7, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v8, "notes"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v7, "_id = "

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v6, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 408
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private upgradeNotesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 392
    const-string v0, "ALTER TABLE notes ADD COLUMN uuid TEXT default \'\' NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 394
    const-string v0, "ALTER TABLE notes ADD COLUMN content_hash TEXT default \'\' NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 396
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->InitalNoteData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 397
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->updateNotesTableNewColumnValue(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 398
    return-void
.end method


# virtual methods
.method public getEmptyUUidAndContentHashRecord(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 14
    .parameter "db"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 427
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v12, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v9, 0x0

    .line 430
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 431
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "notes"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 433
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "content"

    aput-object v3, v2, v1

    .line 434
    const-string v3, "uuid = \"\""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    .line 433
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 435
    const-string v1, "NotepadDB"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "in getEmptyUUidAndContentHashRecord(), cursor = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 448
    if-eqz v9, :cond_0

    .line 449
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 446
    .end local v0           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v12           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    :goto_1
    return-object v12

    .line 437
    .restart local v0       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v12       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    :try_start_1
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 438
    .local v11, id:I
    const-string v1, "content"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 439
    .local v8, content:Ljava/lang/String;
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 443
    .end local v0           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v8           #content:Ljava/lang/String;
    .end local v11           #id:I
    :catch_0
    move-exception v10

    .line 445
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 448
    if-eqz v9, :cond_2

    .line 449
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v12, v13

    .line 446
    goto :goto_1

    .line 447
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 448
    if-eqz v9, :cond_3

    .line 449
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 451
    :cond_3
    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 45
    const-string v0, "NotepadDB"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "in onCreate(), db version = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->CreateNotesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 47
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->CreateNotebookTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 49
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->CreateResourceTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 50
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->CreateTriggersOnNoteTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 51
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->InitalNotebookData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 52
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->InitalNoteData(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 53
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 59
    const-string v0, "PRAGMA foreign_keys = ON"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 382
    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 383
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/data/NotepadDB;->upgradeNotesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 385
    :cond_0
    const-string v0, "NotepadDB"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "in onUpgrade(), delete files in directory : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getContentStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getContentStoragePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->deleteDirectoryFiles(Ljava/lang/String;)V

    .line 387
    return-void
.end method
