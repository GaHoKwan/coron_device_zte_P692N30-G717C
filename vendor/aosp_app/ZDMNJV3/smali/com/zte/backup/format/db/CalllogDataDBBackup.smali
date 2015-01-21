.class public Lcom/zte/backup/format/db/CalllogDataDBBackup;
.super Lcom/zte/backup/format/db/DBBackup;
.source "CalllogDataDBBackup.java"


# static fields
.field public static final ADD_CALLLOG_SIZE:I = 0x1400

.field private static final CONTENT_CALL_LOG_CALLS:Ljava/lang/String; = "content://call_log/calls"


# instance fields
.field private columnNames:[Ljava/lang/String;

.field private contactNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/zte/backup/composer/Composer;Ljava/lang/String;)V
    .locals 1
    .parameter "composer"
    .parameter "contactNumber"

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1}, Lcom/zte/backup/format/db/DBBackup;-><init>(Lcom/zte/backup/composer/Composer;)V

    .line 20
    iput-object v0, p0, Lcom/zte/backup/format/db/CalllogDataDBBackup;->contactNumber:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/zte/backup/format/db/CalllogDataDBBackup;->columnNames:[Ljava/lang/String;

    .line 24
    const-string v0, "CalllogDataDBBackup"

    iput-object v0, p0, Lcom/zte/backup/format/db/DBBackup;->LOG_TAG:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/zte/backup/format/db/CalllogDataDBBackup;->contactNumber:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public changeContentValues(Landroid/content/Context;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 10
    .parameter "context"
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 68
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 69
    .local v9, mValues:Landroid/content/ContentValues;
    const/4 v8, 0x0

    .line 71
    .local v8, data:Ljava/lang/String;
    iget-object v0, p0, Lcom/zte/backup/format/db/CalllogDataDBBackup;->columnNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/backup/format/db/CalllogDataDBBackup;->getURI()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 73
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/backup/format/db/CalllogDataDBBackup;->columnNames:[Ljava/lang/String;

    .line 74
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 77
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_0
    const/4 v6, 0x0

    .local v6, columnIndex:I
    :goto_0
    iget-object v0, p0, Lcom/zte/backup/format/db/CalllogDataDBBackup;->columnNames:[Ljava/lang/String;

    array-length v0, v0

    if-lt v6, v0, :cond_1

    .line 84
    return-object v9

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/zte/backup/format/db/CalllogDataDBBackup;->columnNames:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #data:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 79
    .restart local v8       #data:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 80
    iget-object v0, p0, Lcom/zte/backup/format/db/CalllogDataDBBackup;->columnNames:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public getBackupDataSize()J
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/zte/backup/format/db/CalllogDataDBBackup;->getItemCount()I

    move-result v4

    int-to-long v0, v4

    .line 110
    .local v0, iCntNum:J
    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 115
    :goto_0
    return-wide v2

    .line 113
    :cond_0
    const-wide/16 v2, 0x1400

    .line 114
    .local v2, size:J
    const-wide/16 v4, 0x800

    mul-long/2addr v4, v0

    add-long/2addr v2, v4

    .line 115
    goto :goto_0
.end method

.method public getCheckExistKeys()Ljava/util/List;
    .locals 5
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
    .line 51
    const-string v3, "number"

    .line 52
    .local v3, numberKey:Ljava/lang/String;
    const-string v0, "date"

    .line 53
    .local v0, dateKey:Ljava/lang/String;
    const-string v1, "duration"

    .line 54
    .local v1, durationKey:Ljava/lang/String;
    const-string v4, "type"

    .line 56
    .local v4, typeKey:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v2, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-object v2
.end method

.method public getConditionkeys(Lcom/zte/backup/format/db/OkbDBInterface;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 104
    return-void
.end method

.method public getDBName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "CallHistory.db"

    return-object v0
.end method

.method public getDBVersionBySDKVersion()I
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, nowVersion:I
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v2, "15"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v2, "14"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    :cond_0
    const/4 v0, 0x1

    .line 124
    :cond_1
    return v0
.end method

.method public getDiffDBVersionKeys()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 39
    const/4 v1, 0x5

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    .line 40
    .local v0, diffVerionHasKey:[Ljava/lang/String;
    return-object v0
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public getQueryDBSelwhenBackup()Ljava/lang/String;
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x0

    .line 31
    .local v0, select:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/backup/format/db/CalllogDataDBBackup;->contactNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "number =\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zte/backup/format/db/CalllogDataDBBackup;->contactNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    :cond_0
    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string v0, "calls"

    return-object v0
.end method

.method public getURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 89
    const-string v0, "content://call_log/calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
