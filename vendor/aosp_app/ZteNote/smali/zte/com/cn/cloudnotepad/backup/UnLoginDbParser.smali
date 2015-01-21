.class public Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;
.super Ljava/lang/Object;
.source "UnLoginDbParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UnLoginDbParser"


# instance fields
.field private UNLOGIN_TOP_DIR:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private clearDbAndFiles()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "resource"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "notes"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "notebook"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 83
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->initNotebookTable()V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->UNLOGIN_TOP_DIR:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Resource/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->clearDir(Ljava/lang/String;)V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->UNLOGIN_TOP_DIR:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Content/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->clearDir(Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->UNLOGIN_TOP_DIR:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Wallpapers/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->clearDir(Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->UNLOGIN_TOP_DIR:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "location/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->clearDir(Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->UNLOGIN_TOP_DIR:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "temp/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->clearDir(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private clearDir(Ljava/lang/String;)V
    .locals 6
    .parameter "dir"

    .prologue
    .line 93
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, dirFile:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 106
    :cond_0
    return-void

    .line 97
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 98
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_0

    array-length v3, v2

    if-eqz v3, :cond_0

    .line 101
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 102
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 103
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 101
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private copyNoteThumb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "srcDir"
    .parameter "dstDir"

    .prologue
    .line 110
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, fileNames:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-nez v3, :cond_1

    .line 119
    :cond_0
    return-void

    .line 114
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->renameTo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 116
    .local v2, result:Z
    const-string v3, "UnLoginDbParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "move file "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getContentValues(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Landroid/content/ContentValues;
    .locals 4
    .parameter "data"

    .prologue
    .line 219
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 220
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "title"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v1, "content"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "created"

    iget-wide v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->created:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    const-string v1, "updated"

    iget-wide v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->updated:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 225
    const-string v1, "notebook"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v1, "drawable_src"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v1, "longitude"

    iget v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->longitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    const-string v1, "latitude"

    iget v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->latitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    const-string v1, "address"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->address:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v1, "map"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v1, "wallpaper"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v1, "size"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->size:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 234
    const-string v1, "content_hash"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v1, "uuid"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_0
    return-object v0
.end method

.method private getContentValues(Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;)Landroid/content/ContentValues;
    .locals 3
    .parameter "data"

    .prologue
    .line 209
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 210
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "hash"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v1, "name"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v1, "type"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v1, "size"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->size:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v1, "note_id"

    iget v2, p1, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->note_id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    return-object v0
.end method

.method private getNoteBookList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 277
    sget-object v1, Lzte/com/cn/cloudnotepad/data/DataSchema$NotebookTable;->NOTEBOOK_CONTENT_URI:Landroid/net/Uri;

    .line 278
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 279
    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    .line 280
    const-string v4, "title"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    .line 281
    const-string v4, "number"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    .line 282
    const-string v4, "cover"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    .line 283
    const-string v4, "sequence"

    aput-object v4, v2, v0

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 277
    invoke-direct/range {v0 .. v5}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 286
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v8, v3

    .line 301
    :goto_0
    return-object v8

    .line 289
    :cond_1
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 290
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;>;"
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 293
    :cond_2
    :try_start_0
    new-instance v7, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    invoke-direct {v7}, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;-><init>()V

    .line 294
    .local v7, data:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->id:I

    .line 295
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    .line 296
    const-string v0, "number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->number:I

    .line 297
    const-string v0, "cover"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->cover:I

    .line 298
    const-string v0, "sequence"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->sequence:I

    .line 299
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 292
    if-nez v0, :cond_2

    .line 303
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 302
    .end local v7           #data:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;
    :catchall_0
    move-exception v0

    .line 303
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 304
    throw v0
.end method

.method private getNotesList()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 309
    const/4 v6, 0x0

    .line 312
    .local v6, cursor:Landroid/database/Cursor;
    const/16 v0, 0xd

    :try_start_0
    new-array v10, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 313
    const-string v1, "_id"

    aput-object v1, v10, v0

    const/4 v0, 0x1

    .line 314
    const-string v1, "title"

    aput-object v1, v10, v0

    const/4 v0, 0x2

    .line 315
    const-string v1, "content"

    aput-object v1, v10, v0

    const/4 v0, 0x3

    .line 317
    const-string v1, "created"

    aput-object v1, v10, v0

    const/4 v0, 0x4

    .line 318
    const-string v1, "updated"

    aput-object v1, v10, v0

    const/4 v0, 0x5

    .line 319
    const-string v1, "notebook"

    aput-object v1, v10, v0

    const/4 v0, 0x6

    .line 320
    const-string v1, "drawable_src"

    aput-object v1, v10, v0

    const/4 v0, 0x7

    .line 321
    const-string v1, "longitude"

    aput-object v1, v10, v0

    const/16 v0, 0x8

    .line 322
    const-string v1, "latitude"

    aput-object v1, v10, v0

    const/16 v0, 0x9

    .line 323
    const-string v1, "address"

    aput-object v1, v10, v0

    const/16 v0, 0xa

    .line 324
    const-string v1, "map"

    aput-object v1, v10, v0

    const/16 v0, 0xb

    .line 325
    const-string v1, "wallpaper"

    aput-object v1, v10, v0

    const/16 v0, 0xc

    .line 328
    const-string v1, "size"

    aput-object v1, v10, v0

    .line 330
    .local v10, prj:[Ljava/lang/String;
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-le v0, v12, :cond_3

    .line 331
    const/16 v0, 0xf

    new-array v2, v0, [Ljava/lang/String;

    .line 332
    .local v2, projection:[Ljava/lang/String;
    const/4 v0, 0x0

    const/4 v1, 0x0

    array-length v3, v10

    invoke-static {v10, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    const/16 v0, 0xd

    const-string v1, "content_hash"

    aput-object v1, v2, v0

    .line 334
    const/16 v0, 0xe

    const-string v1, "uuid"

    aput-object v1, v2, v0

    .line 339
    :goto_0
    sget-object v1, Lzte/com/cn/cloudnotepad/data/DataSchema$NotesTable;->NOTES_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 340
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_4

    .line 376
    :cond_0
    if-eqz v6, :cond_1

    .line 377
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v9, v11

    .line 374
    .end local v2           #projection:[Ljava/lang/String;
    .end local v10           #prj:[Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v9

    .line 337
    .restart local v10       #prj:[Ljava/lang/String;
    :cond_3
    move-object v2, v10

    .restart local v2       #projection:[Ljava/lang/String;
    goto :goto_0

    .line 343
    :cond_4
    :try_start_1
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 344
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 346
    :cond_5
    new-instance v7, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-direct {v7}, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;-><init>()V

    .line 347
    .local v7, data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    .line 348
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    .line 349
    const-string v0, "content"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    .line 350
    const-string v0, "created"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->created:J

    .line 351
    const-string v0, "updated"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->updated:J

    .line 352
    const-string v0, "notebook"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    .line 353
    const-string v0, "drawable_src"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    .line 354
    const-string v0, "longitude"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->longitude:I

    .line 355
    const-string v0, "latitude"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->latitude:I

    .line 356
    const-string v0, "address"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->address:Ljava/lang/String;

    .line 357
    const-string v0, "map"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    .line 358
    const-string v0, "wallpaper"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    .line 359
    const-string v0, "size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->size:Ljava/lang/String;

    .line 361
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-le v0, v12, :cond_6

    .line 362
    const-string v0, "content_hash"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    .line 363
    const-string v0, "uuid"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    .line 368
    :goto_2
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 345
    if-nez v0, :cond_5

    .line 376
    if-eqz v6, :cond_2

    .line 377
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 365
    :cond_6
    :try_start_2
    iget-object v0, v7, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->messageDigest([B)[B

    move-result-object v0

    invoke-static {v0}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->mdByteToString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    .line 366
    const-string v0, ""

    iput-object v0, v7, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 372
    .end local v2           #projection:[Ljava/lang/String;
    .end local v7           #data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    .end local v10           #prj:[Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 376
    .local v8, e:Ljava/lang/Exception;
    if-eqz v6, :cond_7

    .line 377
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v9, v11

    .line 374
    goto/16 :goto_1

    .line 375
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 376
    if-eqz v6, :cond_8

    .line 377
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 379
    :cond_8
    throw v0
.end method

.method private getResourceList(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "selection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 242
    sget-object v1, Lzte/com/cn/cloudnotepad/data/DataSchema$ResourceTable;->RESOURCE_CONTENT_URI:Landroid/net/Uri;

    .line 243
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 244
    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    .line 245
    const-string v3, "hash"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    .line 246
    const-string v3, "name"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    .line 247
    const-string v3, "type"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    .line 248
    const-string v3, "size"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    .line 249
    const-string v3, "note_id"

    aput-object v3, v2, v0

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    .line 242
    invoke-direct/range {v0 .. v5}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 252
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v8, v4

    .line 268
    :goto_0
    return-object v8

    .line 255
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;>;"
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 259
    :cond_2
    :try_start_0
    new-instance v7, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;

    invoke-direct {v7}, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;-><init>()V

    .line 260
    .local v7, data:Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->id:I

    .line 261
    const-string v0, "hash"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->hash:Ljava/lang/String;

    .line 262
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->name:Ljava/lang/String;

    .line 263
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->type:Ljava/lang/String;

    .line 264
    const-string v0, "size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->size:Ljava/lang/String;

    .line 265
    const-string v0, "note_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->note_id:I

    .line 266
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 258
    if-nez v0, :cond_2

    .line 271
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 270
    .end local v7           #data:Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;
    :catchall_0
    move-exception v0

    .line 271
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 272
    throw v0
.end method

.method private initNotebookTable()V
    .locals 5

    .prologue
    .line 69
    const-string v0, "INSERT INTO notebook(title, number, cover, sequence) VALUES "

    .line 70
    .local v0, query:Ljava/lang/String;
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mContext:Landroid/content/Context;

    const v4, 0x7f090019

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'0\', \'0\', \'0\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mContext:Landroid/content/Context;

    const v4, 0x7f090061

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'0\', \'0\', \'1\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mContext:Landroid/content/Context;

    const v4, 0x7f090062

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'0\', \'0\', \'2\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mContext:Landroid/content/Context;

    const v4, 0x7f090063

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'0\', \'1\', \'3\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mContext:Landroid/content/Context;

    const v4, 0x7f090065

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'0\', \'2\', \'4\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mContext:Landroid/content/Context;

    const v4, 0x7f090064

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', \'0\', \'3\', \'5\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private parseNoteThumb()V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->UNLOGIN_TOP_DIR:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Resource/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->copyNoteThumb(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->UNLOGIN_TOP_DIR:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "Wallpapers/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getWallPaperStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->copyNoteThumb(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->UNLOGIN_TOP_DIR:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "location/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getLocationStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->copyNoteThumb(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method private parseNotebooks()V
    .locals 10

    .prologue
    .line 131
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->getNoteBookList()Ljava/util/List;

    move-result-object v4

    .line 132
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;>;"
    if-nez v4, :cond_1

    .line 156
    :cond_0
    return-void

    .line 135
    :cond_1
    new-instance v7, Lzte/com/cn/cloudnotepad/data/NotebookData;

    iget-object v8, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lzte/com/cn/cloudnotepad/data/NotebookData;-><init>(Landroid/content/Context;)V

    .line 136
    .local v7, notebookData:Lzte/com/cn/cloudnotepad/data/NotebookData;
    invoke-virtual {v7}, Lzte/com/cn/cloudnotepad/data/NotebookData;->getNotebookList()V

    .line 137
    sget-object v8, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 139
    .local v6, localSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 140
    const/4 v2, 0x0

    .line 141
    .local v2, isExist:Z
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    .line 142
    .local v0, data:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    sget-object v8, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v3, v8, :cond_3

    .line 149
    :goto_2
    if-nez v2, :cond_2

    .line 150
    const/4 v8, 0x0

    iput v8, v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->number:I

    .line 151
    iput v6, v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->sequence:I

    .line 152
    add-int/lit8 v6, v6, 0x1

    .line 153
    invoke-virtual {v7, v0}, Lzte/com/cn/cloudnotepad/data/NotebookData;->insertNoteBookData(Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;)V

    .line 139
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_3
    sget-object v8, Lzte/com/cn/cloudnotepad/data/NotebookData;->mNotebookList:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;

    .line 144
    .local v5, localData:Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;
    iget-object v8, v0, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    iget-object v9, v5, Lzte/com/cn/cloudnotepad/data/NotebookData$NOTEBOOK_DATA;->title:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 145
    const/4 v2, 0x1

    .line 146
    goto :goto_2

    .line 142
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private parseNotes()V
    .locals 21

    .prologue
    .line 160
    invoke-direct/range {p0 .. p0}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->getNotesList()Ljava/util/List;

    move-result-object v9

    .line 161
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    if-nez v9, :cond_1

    .line 206
    :cond_0
    return-void

    .line 165
    :cond_1
    new-instance v11, Lzte/com/cn/cloudnotepad/data/NotesData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lzte/com/cn/cloudnotepad/data/NotesData;-><init>(Landroid/content/Context;)V

    .line 166
    .local v11, notesData:Lzte/com/cn/cloudnotepad/data/NotesData;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lzte/com/cn/cloudnotepad/data/NotesData;->getNotebookGroupList(Ljava/lang/String;I)V

    .line 167
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v10, localList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    iget-object v0, v11, Lzte/com/cn/cloudnotepad/data/NotesData;->mNoteDateGroupMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 169
    .local v2, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_4

    .line 173
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_0

    .line 174
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    .line 175
    .local v4, data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->getContentValues(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Landroid/content/ContentValues;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lzte/com/cn/cloudnotepad/data/NotesData;->saveNoteData(Landroid/content/ContentValues;)I

    move-result v7

    .line 177
    .local v7, id:I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lzte/com/cn/cloudnotepad/NoteApp;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "/Content/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, contentDir:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "cover_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".jpg"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 179
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getContentStoragePath()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "cover_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 178
    invoke-static/range {v17 .. v18}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->renameTo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 180
    .local v15, result:Z
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "in parseNotes(), rename unlogin db cover file from "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "cover_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".jpg"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 181
    const-string v18, " to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getContentStoragePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "cover_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ".jpg"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 180
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 182
    .local v16, str:Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 183
    const-string v17, "UnLoginDbParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " success"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_2
    :goto_2
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "note_id = "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->getResourceList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 197
    .local v13, resList:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;>;"
    if-eqz v13, :cond_3

    .line 198
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_6

    .line 173
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 169
    .end local v3           #contentDir:Ljava/lang/String;
    .end local v4           #data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    .end local v6           #i:I
    .end local v7           #id:I
    .end local v13           #resList:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;>;"
    .end local v15           #result:Z
    .end local v16           #str:Ljava/lang/String;
    :cond_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 170
    .local v8, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 185
    .end local v8           #l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    .restart local v3       #contentDir:Ljava/lang/String;
    .restart local v4       #data:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    .restart local v6       #i:I
    .restart local v7       #id:I
    .restart local v15       #result:Z
    .restart local v16       #str:Ljava/lang/String;
    :cond_5
    const-string v17, "UnLoginDbParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, " failed"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :try_start_0
    new-instance v17, Ljava/io/FileInputStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "cover_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getContentStoragePath()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "cover_"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".jpg"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 187
    invoke-static/range {v17 .. v19}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->copyFileData(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 189
    new-instance v17, Ljava/io/File;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "cover_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 191
    :catch_0
    move-exception v5

    .line 192
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 198
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v13       #resList:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;>;"
    :cond_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;

    .line 199
    .local v12, resData:Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->getContentValues(Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;)Landroid/content/ContentValues;

    move-result-object v14

    .line 200
    .local v14, resValues:Landroid/content/ContentValues;
    const-string v18, "note_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Lzte/com/cn/cloudnotepad/data/DataSchema$ResourceTable;->RESOURCE_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_3
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 385
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 386
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v1, Lzte/com/cn/cloudnotepad/data/NotepadProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 412
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown URI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 388
    :pswitch_1
    const-string v1, "notes"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 414
    :goto_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 416
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 417
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v8, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 419
    :cond_0
    return-object v8

    .line 391
    .end local v8           #c:Landroid/database/Cursor;
    :pswitch_2
    const-string v1, "notes"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 392
    const-string v1, "_id="

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 393
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 396
    :pswitch_3
    const-string v1, "notebook"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :pswitch_4
    const-string v1, "notebook"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 400
    const-string v1, "_id="

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 401
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 404
    :pswitch_5
    const-string v1, "resource"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 407
    :pswitch_6
    const-string v1, "resource"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 408
    const-string v1, "_id="

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 409
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public parse()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mContext:Landroid/content/Context;

    const-string v1, "notepad.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->parse(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 2
    .parameter "testDbPath"

    .prologue
    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v1

    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/NoteApp;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->UNLOGIN_TOP_DIR:Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->parseNotebooks()V

    .line 61
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->parseNotes()V

    .line 62
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->parseNoteThumb()V

    .line 63
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->clearDbAndFiles()V

    .line 64
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/UnLoginDbParser;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 65
    return-void
.end method
