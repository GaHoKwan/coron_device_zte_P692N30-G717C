.class public Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;
.super Ljava/lang/Object;
.source "RestoreZteNote.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/data/DataSchema;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field mDirectoryPath:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mFilePath:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .locals 1
    .parameter "context"
    .parameter "db"
    .parameter "values"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->mDirectoryPath:Ljava/util/LinkedList;

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->mFilePath:Ljava/util/LinkedList;

    .line 34
    iput-object p2, p0, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 35
    iput-object p3, p0, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->mValues:Landroid/content/ContentValues;

    .line 36
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private copyDrawableSrc(Ljava/lang/String;)V
    .locals 5
    .parameter "drawableSrc"

    .prologue
    .line 94
    const-string v3, "<"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, tempList:[Ljava/lang/String;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 101
    return-void

    .line 97
    :cond_0
    aget-object v1, v2, v0

    .line 98
    .local v1, temp:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 99
    const-string v3, "Resource"

    invoke-direct {p0, v3, v1}, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "type"
    .parameter "name"

    .prologue
    .line 105
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v8

    invoke-virtual {v8}, Lzte/com/cn/cloudnotepad/NoteApp;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Restore"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->getDirectoryPath(Ljava/lang/String;)V

    .line 106
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->mDirectoryPath:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-lt v4, v7, :cond_0

    .line 124
    :goto_1
    return-void

    .line 107
    :cond_0
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->mDirectoryPath:Ljava/util/LinkedList;

    invoke-virtual {v7, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 108
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->mDirectoryPath:Ljava/util/LinkedList;

    invoke-virtual {v7, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, fileList:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    array-length v7, v3

    if-lt v5, v7, :cond_2

    .line 106
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fileList:[Ljava/lang/String;
    .end local v5           #j:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 111
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #fileList:[Ljava/lang/String;
    .restart local v5       #j:I
    :cond_2
    aget-object v7, v3, v5

    invoke-virtual {v7, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 112
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 113
    .local v6, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v7, "account_user_id"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, accountUid:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v8

    invoke-virtual {v8}, Lzte/com/cn/cloudnotepad/NoteApp;->getPhoneStoragePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, dstPath:Ljava/lang/String;
    const-string v8, "wangna"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v7, "srcpath"

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->mDirectoryPath:Ljava/util/LinkedList;

    invoke-virtual {v7, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v9, v3, v5

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v7, "wangna"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "destpath"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->mDirectoryPath:Ljava/util/LinkedList;

    invoke-virtual {v7, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v3, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->renameTo(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 110
    .end local v0           #accountUid:Ljava/lang/String;
    .end local v1           #dstPath:Ljava/lang/String;
    .end local v6           #sharedPreferences:Landroid/content/SharedPreferences;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2
.end method

.method private copyMapSrc(Ljava/lang/String;)V
    .locals 1
    .parameter "map"

    .prologue
    .line 84
    const-string v0, "location"

    invoke-direct {p0, v0, p1}, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private copyWallpaperSrc(Ljava/lang/String;)V
    .locals 1
    .parameter "wallpaper"

    .prologue
    .line 89
    const-string v0, "Wallpapers"

    invoke-direct {p0, v0, p1}, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private getContentValues(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Landroid/content/ContentValues;
    .locals 4
    .parameter "notesData"

    .prologue
    .line 149
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 150
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "title"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "content"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v1, "created"

    iget-wide v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->created:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 153
    const-string v1, "updated"

    iget-wide v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->updated:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 154
    const-string v1, "notebook"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v1, "drawable_src"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "longitude"

    iget v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->longitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    const-string v1, "latitude"

    iget v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->latitude:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string v1, "address"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->address:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v1, "map"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v1, "wallpaper"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v1, "size"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->size:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "content_hash"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v1, "uuid"

    iget-object v2, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-object v0
.end method

.method private getDirectoryPath(Ljava/lang/String;)V
    .locals 6
    .parameter "path"

    .prologue
    .line 195
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, fileList:[Ljava/lang/String;
    array-length v4, v1

    if-nez v4, :cond_1

    .line 211
    :cond_0
    return-void

    .line 201
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 202
    const/4 v3, 0x0

    .line 203
    .local v3, newfile:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    .end local v3           #newfile:Ljava/io/File;
    aget-object v4, v1, v2

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    .restart local v3       #newfile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 205
    iget-object v4, p0, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->mDirectoryPath:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->getDirectoryPath(Ljava/lang/String;)V

    .line 201
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getNotesDataFromValues(Landroid/content/ContentValues;)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    .locals 4
    .parameter "values"

    .prologue
    const/4 v3, 0x0

    .line 128
    new-instance v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;-><init>()V

    .line 129
    .local v0, notesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->title:Ljava/lang/String;

    .line 130
    const-string v1, "content"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    .line 131
    const-string v1, "created"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    iput-wide v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->created:J

    .line 132
    const-string v1, "updated"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_1
    iput-wide v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->updated:J

    .line 133
    const-string v1, "notebook"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->notebook:Ljava/lang/String;

    .line 134
    const-string v1, "drawable_src"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    .line 135
    const-string v1, "longitude"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_3

    move v1, v3

    :goto_3
    iput v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->longitude:I

    .line 136
    const-string v1, "latitude"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_4

    :goto_4
    iput v3, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->latitude:I

    .line 137
    const-string v1, "address"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->address:Ljava/lang/String;

    .line 138
    const-string v1, "map"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, ""

    :goto_5
    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    .line 139
    const-string v1, "wallpaper"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v1, ""

    :goto_6
    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    .line 140
    const-string v1, "size"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->size:Ljava/lang/String;

    .line 142
    const-string v1, "content_hash"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content_hash:Ljava/lang/String;

    .line 143
    const-string v1, "uuid"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    .line 145
    return-object v0

    .line 131
    :cond_0
    const-string v1, "created"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto/16 :goto_0

    .line 132
    :cond_1
    const-string v1, "updated"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto/16 :goto_1

    .line 133
    :cond_2
    const-string v1, "notebook"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 135
    :cond_3
    const-string v1, "longitude"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_3

    .line 136
    :cond_4
    const-string v1, "latitude"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_4

    .line 138
    :cond_5
    const-string v1, "map"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 139
    :cond_6
    const-string v1, "wallpaper"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6
.end method

.method private insertResource(Ljava/lang/String;I)V
    .locals 13
    .parameter "drawableSrc"
    .parameter "id"

    .prologue
    const/4 v12, 0x1

    .line 171
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 172
    .local v3, mResourceFileNameList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-static {p1, v3}, Lzte/com/cn/cloudnotepad/utils/NoteUtils;->resolveResourceString(Ljava/lang/String;Ljava/util/LinkedList;)V

    .line 173
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-lt v2, v9, :cond_0

    .line 191
    return-void

    .line 174
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 175
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 174
    invoke-virtual {v9, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, hash:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 177
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 176
    invoke-virtual {v9, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v11, v10, 0x1

    .line 179
    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .line 178
    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, fileSize:Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 181
    .local v8, resourceValues:Landroid/content/ContentValues;
    const-string v9, "hash"

    invoke-virtual {v8, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v9, "name"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v9, "size"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v9, "note_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "resource"

    const-string v11, "hash"

    invoke-virtual {v9, v10, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 186
    .local v5, resourceRowId:J
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_1

    .line 187
    sget-object v9, Lzte/com/cn/cloudnotepad/data/DataSchema$ResourceTable;->RESOURCE_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 188
    .local v7, resourceUri:Landroid/net/Uri;
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 173
    .end local v7           #resourceUri:Landroid/net/Uri;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public insertZteNote()Landroid/net/Uri;
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 40
    const/4 v7, 0x0

    .line 41
    .local v7, ztenoteUri:Landroid/net/Uri;
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, v9}, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->getNotesDataFromValues(Landroid/content/ContentValues;)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    move-result-object v4

    .line 42
    .local v4, notesData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    new-instance v0, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;

    iget-object v9, p0, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, dbParser:Lzte/com/cn/cloudnotepad/backup/CloudDbParser;
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v9}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->getNotesList(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v2

    .line 44
    .local v2, localList:Ljava/util/List;,"Ljava/util/List<Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;>;"
    const/4 v1, 0x0

    .line 45
    .local v1, localData:Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;
    iget-object v9, v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v2, v9}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->findNoteByUuid(Ljava/util/List;Ljava/lang/String;)Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v0, v1, v4}, Lzte/com/cn/cloudnotepad/backup/CloudDbParser;->isEqual(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v8, v7

    .line 77
    .end local v7           #ztenoteUri:Landroid/net/Uri;
    .local v8, ztenoteUri:Landroid/net/Uri;
    :goto_0
    return-object v8

    .line 51
    .end local v8           #ztenoteUri:Landroid/net/Uri;
    .restart local v7       #ztenoteUri:Landroid/net/Uri;
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->uuid:Ljava/lang/String;

    .line 55
    :cond_1
    invoke-direct {p0, v4}, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->getContentValues(Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Landroid/content/ContentValues;

    move-result-object v3

    .line 57
    .local v3, newValues:Landroid/content/ContentValues;
    iget-object v9, v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 58
    iget-object v9, v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    iget v10, v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    invoke-direct {p0, v9, v10}, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->insertResource(Ljava/lang/String;I)V

    .line 59
    iget-object v9, v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->drawableSrc:Ljava/lang/String;

    invoke-direct {p0, v9}, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->copyDrawableSrc(Ljava/lang/String;)V

    .line 62
    :cond_2
    iget-object v9, v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v9, v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_3

    .line 63
    iget-object v9, v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    invoke-direct {p0, v9}, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->copyWallpaperSrc(Ljava/lang/String;)V

    .line 65
    :cond_3
    iget-object v9, v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_4

    .line 66
    iget-object v9, v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    invoke-direct {p0, v9}, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->copyMapSrc(Ljava/lang/String;)V

    .line 69
    :cond_4
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "notes"

    const-string v11, "title"

    invoke-virtual {v9, v10, v11, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 70
    .local v5, rowId:J
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-lez v9, :cond_5

    .line 71
    sget-object v9, Lzte/com/cn/cloudnotepad/data/DataSchema$NotesTable;->NOTES_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 72
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 73
    long-to-int v9, v5

    iput v9, v4, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    .line 74
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/restore/RestoreZteNote;->mContext:Landroid/content/Context;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getContentStoragePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->createContentThumbnail(Landroid/content/Context;Ljava/lang/String;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V

    :cond_5
    move-object v8, v7

    .line 77
    .end local v7           #ztenoteUri:Landroid/net/Uri;
    .restart local v8       #ztenoteUri:Landroid/net/Uri;
    goto :goto_0
.end method
