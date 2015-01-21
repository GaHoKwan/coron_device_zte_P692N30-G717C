.class public Lcom/zte/backup/format/db/NotepadDBBackup;
.super Lcom/zte/backup/format/db/DBBackup;
.source "NotepadDBBackup.java"


# static fields
.field private static final NotesDB:Ljava/lang/String; = "note.db"

.field public static final NotesDBPath:Ljava/lang/String; = "/data/data/zte.com.cn.notepad/databases/note_pad.db"

.field private static final NotesTable:Ljava/lang/String; = "notes"

.field private static final NotesURI:Ljava/lang/String; = "content://zte.com.cn.provider.NotePad/notes"


# direct methods
.method public constructor <init>(Lcom/zte/backup/composer/Composer;)V
    .locals 1
    .parameter "composer"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/zte/backup/format/db/DBBackup;-><init>(Lcom/zte/backup/composer/Composer;)V

    .line 51
    const-string v0, "NotepadDBBackup"

    iput-object v0, p0, Lcom/zte/backup/format/db/DBBackup;->LOG_TAG:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public changeContentValues(Landroid/content/Context;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0
    .parameter "context"
    .parameter "values"

    .prologue
    .line 86
    return-object p2
.end method

.method public getBackupDataSize()J
    .locals 6

    .prologue
    const-wide/16 v3, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/zte/backup/format/db/NotepadDBBackup;->getItemCount()I

    move-result v5

    int-to-long v1, v5

    .line 119
    .local v1, size:J
    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const-string v5, "/data/data/zte.com.cn.notepad/databases/note_pad.db"

    if-nez v5, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-wide v3

    .line 123
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/data/zte.com.cn.notepad/databases/note_pad.db"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    move-wide v3, v1

    .line 125
    goto :goto_0
.end method

.method public getCheckExistKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    const-string v2, "title"

    .line 92
    .local v2, titleKey:Ljava/lang/String;
    const-string v1, "note"

    .line 94
    .local v1, noteKey:Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-object v0
.end method

.method public getConditionkeys(Lcom/zte/backup/format/db/OkbDBInterface;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 77
    return-void
.end method

.method public getDBName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "note.db"

    return-object v0
.end method

.method public getDBVersionBySDKVersion()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public getDiffDBVersionKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQueryDBSelwhenBackup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "notes"

    return-object v0
.end method

.method public getURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 56
    const-string v0, "content://zte.com.cn.provider.NotePad/notes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public isSouport(Landroid/content/Context;)Z
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    .line 34
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/backup/format/db/NotepadDBBackup;->getURI()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 35
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v8

    .line 44
    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_0
    return v0

    .line 39
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    const/4 v0, 0x1

    goto :goto_0

    .line 40
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .local v7, e:Ljava/lang/Exception;
    move v0, v8

    .line 41
    goto :goto_0
.end method
