.class public Lzte/com/cn/cloudnotepad/data/ResourceData;
.super Ljava/lang/Object;
.source "ResourceData.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/data/DataSchema;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;
    }
.end annotation


# static fields
.field private static final PROJECTION_RESOURCE:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 15
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 16
    const-string v2, "hash"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 17
    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 18
    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 19
    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 20
    const-string v2, "note_id"

    aput-object v2, v0, v1

    .line 14
    sput-object v0, Lzte/com/cn/cloudnotepad/data/ResourceData;->PROJECTION_RESOURCE:[Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/data/ResourceData;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private getResourceData(Landroid/database/Cursor;)Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 113
    new-instance v0, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;

    invoke-direct {v0}, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;-><init>()V

    .line 114
    .local v0, data:Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->id:I

    .line 115
    const-string v1, "hash"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->hash:Ljava/lang/String;

    .line 116
    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->name:Ljava/lang/String;

    .line 117
    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->type:Ljava/lang/String;

    .line 118
    const-string v1, "size"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->size:Ljava/lang/String;

    .line 119
    const-string v1, "note_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->note_id:I

    .line 120
    return-object v0
.end method


# virtual methods
.method public deleteResourceData(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 132
    sget-object v1, Lzte/com/cn/cloudnotepad/data/DataSchema$ResourceTable;->RESOURCE_CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 134
    .local v0, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/data/ResourceData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public deleteResourceDataByNoteId(I)V
    .locals 4
    .parameter "noteId"

    .prologue
    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "note_id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, where:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/data/ResourceData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lzte/com/cn/cloudnotepad/data/DataSchema$ResourceTable;->RESOURCE_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getResourceList()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 50
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v9, resourceNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 53
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/data/ResourceData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lzte/com/cn/cloudnotepad/data/DataSchema$ResourceTable;->RESOURCE_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lzte/com/cn/cloudnotepad/data/ResourceData;->PROJECTION_RESOURCE:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 54
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 64
    if-eqz v6, :cond_0

    .line 65
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 62
    .end local v9           #resourceNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-object v9

    .line 55
    .restart local v9       #resourceNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-direct {p0, v6}, Lzte/com/cn/cloudnotepad/data/ResourceData;->getResourceData(Landroid/database/Cursor;)Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;

    move-result-object v7

    .line 56
    .local v7, data:Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;
    iget-object v0, v7, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->name:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 60
    .end local v7           #data:Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;
    :catch_0
    move-exception v8

    .line 64
    .local v8, e:Ljava/lang/Exception;
    if-eqz v6, :cond_2

    .line 65
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v9, v10

    .line 62
    goto :goto_1

    .line 63
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 64
    if-eqz v6, :cond_3

    .line 65
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 67
    :cond_3
    throw v0
.end method

.method public getUniqueResourceNameListByNoteId(I)Ljava/util/ArrayList;
    .locals 12
    .parameter "noteId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "note_id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and hash not in (select distinct hash from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    const-string v1, "resource"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "note_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " != "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    const-string v1, " and hash not in (select distinct A.hash from resource A, resource B where B.hash = A.hash and A._id != B._id and B.note_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and A.note_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, selection:Ljava/lang/String;
    const/4 v6, 0x0

    .line 86
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 88
    .local v9, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/data/ResourceData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lzte/com/cn/cloudnotepad/data/DataSchema$ResourceTable;->RESOURCE_CONTENT_URI:Landroid/net/Uri;

    .line 89
    sget-object v2, Lzte/com/cn/cloudnotepad/data/ResourceData;->PROJECTION_RESOURCE:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 88
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 90
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_2

    .line 104
    :cond_0
    if-eqz v6, :cond_1

    .line 105
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v10, v11

    .line 102
    :goto_0
    return-object v10

    .line 93
    :cond_2
    :try_start_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    .end local v9           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v10, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-nez v0, :cond_4

    .line 104
    if-eqz v6, :cond_3

    .line 105
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v9, v10

    .line 99
    .end local v10           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 96
    .end local v9           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    :try_start_3
    invoke-direct {p0, v6}, Lzte/com/cn/cloudnotepad/data/ResourceData;->getResourceData(Landroid/database/Cursor;)Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;

    move-result-object v7

    .line 97
    .local v7, data:Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;
    iget-object v0, v7, Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;->name:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 100
    .end local v7           #data:Lzte/com/cn/cloudnotepad/data/ResourceData$RESOURCE_DATA;
    :catch_0
    move-exception v8

    move-object v9, v10

    .line 104
    .end local v10           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v8, e:Ljava/lang/Exception;
    .restart local v9       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    if-eqz v6, :cond_5

    .line 105
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v10, v11

    .line 102
    goto :goto_0

    .line 103
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 104
    :goto_3
    if-eqz v6, :cond_6

    .line 105
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_6
    throw v0

    .line 103
    .end local v9           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3

    .line 100
    :catch_1
    move-exception v8

    goto :goto_2
.end method

.method public saveResourceData(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 125
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/data/ResourceData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lzte/com/cn/cloudnotepad/data/DataSchema$ResourceTable;->RESOURCE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    goto :goto_0
.end method
