.class public Lcom/android/dreams/phototable/LocalSource;
.super Lcom/android/dreams/phototable/PhotoSource;
.source "LocalSource.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoTable.LocalSource"


# instance fields
.field private mFoundAlbumIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalSourceName:Ljava/lang/String;

.field private mNextPosition:I

.field private final mUnknownAlbumName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 6
    .parameter "context"
    .parameter "settings"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/dreams/phototable/PhotoSource;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 43
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c0007

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Photos on Device"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dreams/phototable/LocalSource;->mLocalSourceName:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0c0005

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "Unknown"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dreams/phototable/LocalSource;->mUnknownAlbumName:Ljava/lang/String;

    .line 45
    const-string v0, "PhotoTable.LocalSource"

    iput-object v0, p0, Lcom/android/dreams/phototable/PhotoSource;->mSourceName:Ljava/lang/String;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dreams/phototable/LocalSource;->mNextPosition:I

    .line 47
    invoke-virtual {p0}, Lcom/android/dreams/phototable/PhotoSource;->fillQueue()V

    .line 48
    return-void
.end method

.method private getFoundAlbums()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/dreams/phototable/LocalSource;->mFoundAlbumIds:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/dreams/phototable/LocalSource;->findAlbums()Ljava/util/Collection;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/dreams/phototable/LocalSource;->mFoundAlbumIds:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public findAlbums()Ljava/util/Collection;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$AlbumData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    const-string v1, "PhotoTable.LocalSource"

    const-string v2, "finding albums"

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/LocalSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 62
    .local v11, foundAlbums:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/dreams/phototable/PhotoSource$AlbumData;>;"
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "bucket_id"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "bucket_display_name"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "datetaken"

    aput-object v2, v3, v1

    .line 65
    .local v3, projection:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 67
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dreams/phototable/PhotoSource;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 69
    if-eqz v8, :cond_0

    .line 70
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 72
    const-string v1, "_data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 73
    .local v10, dataIndex:I
    const-string v1, "bucket_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 74
    .local v7, bucketIndex:I
    const-string v1, "bucket_display_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 75
    .local v13, nameIndex:I
    const-string v1, "datetaken"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 77
    .local v16, updatedIndex:I
    if-gez v7, :cond_2

    .line 78
    const-string v1, "PhotoTable.LocalSource"

    const-string v2, "can\'t find the ID column!"

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/LocalSource;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .end local v7           #bucketIndex:I
    .end local v10           #dataIndex:I
    .end local v13           #nameIndex:I
    .end local v16           #updatedIndex:I
    :cond_0
    if-eqz v8, :cond_1

    .line 116
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_1
    const-string v1, "PhotoTable.LocalSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " items."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/LocalSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/dreams/phototable/LocalSource;->mFoundAlbumIds:Ljava/util/Set;

    .line 121
    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    return-object v1

    .line 80
    .restart local v7       #bucketIndex:I
    .restart local v10       #dataIndex:I
    .restart local v13       #nameIndex:I
    .restart local v16       #updatedIndex:I
    :cond_2
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhotoTable.LocalSource:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 82
    .local v12, id:Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .line 83
    .local v9, data:Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 84
    new-instance v9, Lcom/android/dreams/phototable/PhotoSource$AlbumData;

    .end local v9           #data:Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/dreams/phototable/PhotoSource$AlbumData;-><init>(Lcom/android/dreams/phototable/PhotoSource;)V

    .line 85
    .restart local v9       #data:Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    iput-object v12, v9, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->id:Ljava/lang/String;

    .line 86
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dreams/phototable/LocalSource;->mLocalSourceName:Ljava/lang/String;

    iput-object v1, v9, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->account:Ljava/lang/String;

    .line 88
    if-ltz v10, :cond_3

    .line 89
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->thumbnailUrl:Ljava/lang/String;

    .line 92
    :cond_3
    if-ltz v13, :cond_7

    .line 93
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->title:Ljava/lang/String;

    .line 98
    :goto_1
    const-string v1, "PhotoTable.LocalSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v9, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " found"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/LocalSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v11, v12, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_4
    if-ltz v16, :cond_5

    .line 102
    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 103
    .local v14, updated:J
    iget-wide v1, v9, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->updated:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-nez v1, :cond_8

    .end local v14           #updated:J
    :goto_2
    iput-wide v14, v9, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->updated:J

    .line 107
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    .end local v7           #bucketIndex:I
    .end local v9           #data:Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    .end local v10           #dataIndex:I
    .end local v12           #id:Ljava/lang/String;
    .end local v13           #nameIndex:I
    .end local v16           #updatedIndex:I
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    .line 116
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    .line 95
    .restart local v7       #bucketIndex:I
    .restart local v9       #data:Lcom/android/dreams/phototable/PhotoSource$AlbumData;
    .restart local v10       #dataIndex:I
    .restart local v12       #id:Ljava/lang/String;
    .restart local v13       #nameIndex:I
    .restart local v16       #updatedIndex:I
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dreams/phototable/LocalSource;->mUnknownAlbumName:Ljava/lang/String;

    iput-object v1, v9, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->title:Ljava/lang/String;

    goto :goto_1

    .line 103
    .restart local v14       #updated:J
    :cond_8
    iget-wide v1, v9, Lcom/android/dreams/phototable/PhotoSource$AlbumData;->updated:J

    invoke-static {v1, v2, v14, v15}, Ljava/lang/Math;->min(JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v14

    goto :goto_2
.end method

.method protected findImages(I)Ljava/util/Collection;
    .locals 17
    .parameter "howMany"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/dreams/phototable/PhotoSource$ImageData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    const-string v1, "PhotoTable.LocalSource"

    const-string v2, "finding images"

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/LocalSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 129
    .local v11, foundImages:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/dreams/phototable/PhotoSource$ImageData;>;"
    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    const-string v2, "orientation"

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-string v2, "bucket_id"

    aput-object v2, v3, v1

    const/4 v1, 0x3

    const-string v2, "bucket_display_name"

    aput-object v2, v3, v1

    .line 131
    .local v3, projection:[Ljava/lang/String;
    const-string v4, ""

    .line 132
    .local v4, selection:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/dreams/phototable/LocalSource;->getFoundAlbums()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 133
    .local v13, id:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dreams/phototable/PhotoSource;->mSettings:Lcom/android/dreams/phototable/AlbumSettings;

    invoke-virtual {v1, v13}, Lcom/android/dreams/phototable/AlbumSettings;->isAlbumEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const-string v1, ":"

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 135
    .local v16, parts:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 136
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 139
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bucket_id = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v16, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 143
    .end local v13           #id:Ljava/lang/String;
    .end local v16           #parts:[Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 191
    :goto_1
    return-object v11

    .line 147
    :cond_3
    const/4 v8, 0x0

    .line 149
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dreams/phototable/PhotoSource;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 151
    if-eqz v8, :cond_6

    .line 152
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move/from16 v0, p1

    if-le v1, v0, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/dreams/phototable/LocalSource;->mNextPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/dreams/phototable/PhotoSource;->mRNG:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    sub-int v2, v2, p1

    rem-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/dreams/phototable/LocalSource;->mNextPosition:I

    .line 156
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/dreams/phototable/LocalSource;->mNextPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 157
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/dreams/phototable/LocalSource;->mNextPosition:I

    .line 159
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/dreams/phototable/LocalSource;->mNextPosition:I

    invoke-interface {v8, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 161
    const-string v1, "_data"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 162
    .local v10, dataIndex:I
    const-string v1, "orientation"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 163
    .local v15, orientationIndex:I
    const-string v1, "bucket_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 164
    .local v7, bucketIndex:I
    const-string v1, "bucket_display_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 166
    .local v14, nameIndex:I
    if-gez v10, :cond_8

    .line 167
    const-string v1, "PhotoTable.LocalSource"

    const-string v2, "can\'t find the DATA column!"

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/LocalSource;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .end local v7           #bucketIndex:I
    .end local v10           #dataIndex:I
    .end local v14           #nameIndex:I
    .end local v15           #orientationIndex:I
    :cond_6
    :goto_2
    if-eqz v8, :cond_7

    .line 187
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 190
    :cond_7
    const-string v1, "PhotoTable.LocalSource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " items."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/dreams/phototable/LocalSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 169
    .restart local v7       #bucketIndex:I
    .restart local v10       #dataIndex:I
    .restart local v14       #nameIndex:I
    .restart local v15       #orientationIndex:I
    :cond_8
    :goto_3
    :try_start_1
    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v1

    move/from16 v0, p1

    if-ge v1, v0, :cond_a

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_a

    .line 170
    new-instance v9, Lcom/android/dreams/phototable/PhotoSource$ImageData;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/dreams/phototable/PhotoSource$ImageData;-><init>(Lcom/android/dreams/phototable/PhotoSource;)V

    .line 171
    .local v9, data:Lcom/android/dreams/phototable/PhotoSource$ImageData;
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/android/dreams/phototable/PhotoSource$ImageData;->url:Ljava/lang/String;

    .line 172
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v9, Lcom/android/dreams/phototable/PhotoSource$ImageData;->orientation:I

    .line 173
    invoke-virtual {v11, v9}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 175
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/dreams/phototable/LocalSource;->mNextPosition:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/dreams/phototable/LocalSource;->mNextPosition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 186
    .end local v7           #bucketIndex:I
    .end local v9           #data:Lcom/android/dreams/phototable/PhotoSource$ImageData;
    .end local v10           #dataIndex:I
    .end local v14           #nameIndex:I
    .end local v15           #orientationIndex:I
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_9

    .line 187
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    .line 178
    .restart local v7       #bucketIndex:I
    .restart local v10       #dataIndex:I
    .restart local v14       #nameIndex:I
    .restart local v15       #orientationIndex:I
    :cond_a
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 179
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/dreams/phototable/LocalSource;->mNextPosition:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method protected getStream(Lcom/android/dreams/phototable/PhotoSource$ImageData;I)Ljava/io/InputStream;
    .locals 5
    .parameter "data"
    .parameter "longSide"

    .prologue
    .line 196
    const/4 v1, 0x0

    .line 198
    .local v1, fis:Ljava/io/FileInputStream;
    :try_start_0
    const-string v2, "PhotoTable.LocalSource"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "opening:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/LocalSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    new-instance v1, Ljava/io/FileInputStream;

    .end local v1           #fis:Ljava/io/FileInputStream;
    iget-object v2, p1, Lcom/android/dreams/phototable/PhotoSource$ImageData;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :goto_0
    return-object v1

    .line 200
    .end local v1           #fis:Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 201
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "PhotoTable.LocalSource"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/dreams/phototable/LocalSource;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v1, 0x0

    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_0
.end method
