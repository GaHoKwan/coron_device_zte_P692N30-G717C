.class public Lzte/com/cn/cloudnotepad/restore/RestoreNotePad;
.super Ljava/lang/Object;
.source "RestoreNotePad.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/data/DataSchema;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .locals 0
    .parameter "context"
    .parameter "db"
    .parameter "values"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lzte/com/cn/cloudnotepad/restore/RestoreNotePad;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    iput-object p3, p0, Lzte/com/cn/cloudnotepad/restore/RestoreNotePad;->mValues:Landroid/content/ContentValues;

    .line 30
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/restore/RestoreNotePad;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private checkNoteExist(Ljava/util/List;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Z
    .locals 4
    .parameter
    .parameter "notesData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;",
            ">;",
            "Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, localList:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 101
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 94
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    .line 95
    .local v1, localData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    iget-object v2, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    iget-object v3, v1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 96
    iget-object v2, p2, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    iget-object v3, v1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, v1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->address:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 98
    const/4 v2, 0x1

    goto :goto_1

    .line 93
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getContentString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "content"

    .prologue
    .line 105
    new-instance v1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-direct {v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;-><init>()V

    .line 106
    .local v1, mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;
    const-string v2, "text"

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    invoke-static {v2, p1, v3, v4, v5}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControlData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v0

    .line 107
    .local v0, controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->insertControl(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V

    .line 109
    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getContentValues(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Landroid/content/ContentValues;
    .locals 4
    .parameter "notesData"

    .prologue
    .line 74
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 75
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "title"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "content"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v1, "created"

    iget-wide v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->created:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 78
    const-string v1, "updated"

    iget-wide v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->updated:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 79
    const-string v1, "notebook"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "map"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "wallpaper"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "size"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->size:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "content_hash"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "uuid"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-object v0
.end method

.method private getNotesData(Landroid/content/ContentValues;)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    .locals 3
    .parameter "values"

    .prologue
    .line 61
    new-instance v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;-><init>()V

    .line 62
    .local v0, notesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    .line 63
    const-string v1, "note"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lzte/com/cn/cloudnotepad/restore/RestoreNotePad;->getContentString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    .line 64
    const-string v1, "created"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    iput-wide v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->created:J

    .line 65
    const-string v1, "modified"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_1
    iput-wide v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->updated:J

    .line 66
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/restore/RestoreNotePad;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    .line 67
    const-string v1, "1"

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    .line 68
    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "note"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lzte/com/cn/cloudnotepad/restore/RestoreNotePad;->getSizeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->size:Ljava/lang/String;

    .line 69
    return-object v0

    .line 64
    :cond_0
    const-string v1, "created"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    .line 65
    :cond_1
    const-string v1, "modified"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_1
.end method

.method private getSizeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "title"
    .parameter "content"

    .prologue
    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    .line 114
    .local v0, size:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 115
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 116
    const/16 v0, 0x64

    .line 119
    :cond_0
    int-to-long v1, v0

    invoke-static {v1, v2}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->convertFileSize(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public insertNotePad()Landroid/net/Uri;
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    .local v3, notepadUri:Landroid/net/Uri;
    iget-object v8, p0, Lzte/com/cn/cloudnotepad/restore/RestoreNotePad;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, v8}, Lzte/com/cn/cloudnotepad/restore/RestoreNotePad;->getNotesData(Landroid/content/ContentValues;)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    move-result-object v4

    .line 36
    .local v4, notesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    new-instance v0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;

    iget-object v8, p0, Lzte/com/cn/cloudnotepad/restore/RestoreNotePad;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, dbParser:Lzte/com/cn/cloudnotepad/backup/CloudDbParser;
    iget-object v8, p0, Lzte/com/cn/cloudnotepad/restore/RestoreNotePad;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v8}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->getNotesList(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v1

    .line 38
    .local v1, localList:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    if-eqz v1, :cond_0

    .line 39
    invoke-direct {p0, v1, v4}, Lzte/com/cn/cloudnotepad/restore/RestoreNotePad;->checkNoteExist(Ljava/util/List;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 57
    :goto_0
    return-object v7

    .line 44
    :cond_0
    iget-object v8, v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->messageDigest([B)[B

    move-result-object v8

    invoke-static {v8}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->mdByteToString([B)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    .line 45
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    .line 47
    invoke-direct {p0, v4}, Lzte/com/cn/cloudnotepad/restore/RestoreNotePad;->getContentValues(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Landroid/content/ContentValues;

    move-result-object v2

    .line 48
    .local v2, newValues:Landroid/content/ContentValues;
    iget-object v8, p0, Lzte/com/cn/cloudnotepad/restore/RestoreNotePad;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "notes"

    const-string v10, "title"

    invoke-virtual {v8, v9, v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 49
    .local v5, rowId:J
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-lez v8, :cond_1

    .line 50
    sget-object v8, Lzte/com/cn/cloudnotepad/data/DataSchema$NotesTable;->NOTES_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 51
    iget-object v8, p0, Lzte/com/cn/cloudnotepad/restore/RestoreNotePad;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v3, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 52
    long-to-int v7, v5

    iput v7, v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    .line 54
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/restore/RestoreNotePad;->mContext:Landroid/content/Context;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getContentStoragePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->createContentThumbnail(Landroid/content/Context;Ljava/lang/String;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V

    .line 56
    :cond_1
    const-string v7, "wangna"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "notepadUri"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v3

    .line 57
    goto :goto_0
.end method
