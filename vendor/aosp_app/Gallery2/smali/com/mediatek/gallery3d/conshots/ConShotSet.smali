.class public Lcom/mediatek/gallery3d/conshots/ConShotSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "ConShotSet.java"


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String; = null

.field private static final INVALID_COUNT:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ConShotSet"


# instance fields
.field private final mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private mBucketId:I

.field private mCachedCount:I

.field private final mGroupId:J

.field private final mItemPath:Lcom/android/gallery3d/data/Path;

.field private final mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

.field private final mOrderClause:Ljava/lang/String;

.field private final mProjection:[Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mWhereClause:Ljava/lang/String;

.field private final mWhereClauseArgs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "count(*)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;JI)V
    .locals 4
    .parameter "path"
    .parameter "application"
    .parameter "groupId"
    .parameter "bucketId"

    .prologue
    .line 65
    invoke-static {}, Lcom/mediatek/gallery3d/conshots/ConShotSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mCachedCount:I

    .line 66
    iput-object p2, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 67
    invoke-interface {p2}, Lcom/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mResolver:Landroid/content/ContentResolver;

    .line 68
    iput-wide p3, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mGroupId:J

    .line 69
    iput p5, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mBucketId:I

    .line 70
    const-string v0, "group_id = ? AND title LIKE \'IMG%CS\' AND bucket_id= ?"

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mWhereClause:Ljava/lang/String;

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mGroupId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mWhereClauseArgs:[Ljava/lang/String;

    .line 75
    const-string v0, "group_index ASC"

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mOrderClause:Ljava/lang/String;

    .line 76
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mBaseUri:Landroid/net/Uri;

    .line 77
    sget-object v0, Lcom/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mProjection:[Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/mediatek/gallery3d/conshots/ConShotImage;->ITEM_PATH:Lcom/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mItemPath:Lcom/android/gallery3d/data/Path;

    .line 79
    new-instance v0, Lcom/android/gallery3d/data/ChangeNotifier;

    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mBaseUri:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    .line 80
    return-void
.end method

.method public static getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 6
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"
    .parameter "id"

    .prologue
    .line 147
    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Z)Lcom/android/gallery3d/data/MediaItem;
    .locals 1
    .parameter "path"
    .parameter "cursor"
    .parameter "dataManager"
    .parameter "app"
    .parameter "isImage"

    .prologue
    .line 135
    invoke-virtual {p2, p0}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 137
    .local v0, item:Lcom/android/gallery3d/data/LocalMediaItem;
    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/mediatek/gallery3d/conshots/ConShotImage;

    .end local v0           #item:Lcom/android/gallery3d/data/LocalMediaItem;
    invoke-direct {v0, p0, p3, p1}, Lcom/mediatek/gallery3d/conshots/ConShotImage;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Landroid/database/Cursor;)V

    .line 142
    .restart local v0       #item:Lcom/android/gallery3d/data/LocalMediaItem;
    :goto_0
    return-object v0

    .line 140
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)V

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 4

    .prologue
    .line 190
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 191
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mWhereClause:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mWhereClauseArgs:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/DataManager;->broadcastUpdatePicture()V

    .line 199
    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 84
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "group_id"

    iget-wide v2, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mGroupId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDetails()Lcom/android/gallery3d/data/MediaDetails;
    .locals 3

    .prologue
    .line 208
    new-instance v0, Lcom/android/gallery3d/data/MediaDetails;

    invoke-direct {v0}, Lcom/android/gallery3d/data/MediaDetails;-><init>()V

    .line 209
    .local v0, details:Lcom/android/gallery3d/data/MediaDetails;
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/mediatek/gallery3d/conshots/ConShotSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 214
    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 14
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v10

    .line 92
    .local v10, dataManager:Lcom/android/gallery3d/data/DataManager;
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "limit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 94
    .local v2, uri:Landroid/net/Uri;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v13, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    .line 96
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mProjection:[Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mWhereClause:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mWhereClauseArgs:[Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mOrderClause:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 99
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 100
    const-string v1, "ConShotSet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    :goto_0
    return-object v13

    .line 104
    :cond_1
    const/4 v9, 0x0

    .line 106
    .local v9, dataDirty:Z
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 108
    .local v11, id:I
    const/4 v7, 0x0

    .line 109
    .local v7, childPath:Lcom/android/gallery3d/data/Path;
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mItemPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v11}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v7

    .line 110
    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    const/4 v3, 0x1

    invoke-static {v7, v8, v10, v1, v3}, Lcom/mediatek/gallery3d/conshots/ConShotSet;->loadOrUpdateItem(Lcom/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/app/GalleryApp;Z)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v12

    .line 113
    .local v12, item:Lcom/android/gallery3d/data/MediaItem;
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    if-eqz v12, :cond_2

    move-object v0, v12

    check-cast v0, Lcom/android/gallery3d/data/LocalMediaItem;

    move-object v1, v0

    iget-boolean v1, v1, Lcom/android/gallery3d/data/LocalMediaItem;->dataDirty:Z

    if-eqz v1, :cond_2

    .line 116
    const/4 v9, 0x1

    .line 117
    check-cast v12, Lcom/android/gallery3d/data/LocalMediaItem;

    .end local v12           #item:Lcom/android/gallery3d/data/MediaItem;
    const/4 v1, 0x0

    iput-boolean v1, v12, Lcom/android/gallery3d/data/LocalMediaItem;->dataDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 121
    .end local v7           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v11           #id:I
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 125
    if-eqz v9, :cond_0

    .line 126
    const-string v1, "ConShotSet"

    const-string v3, "getMediaItem:data changed in database."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->notifyContentChanged()V

    goto :goto_0
.end method

.method public getMediaItemCount()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 153
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/gallery3d/conshots/ConShotSet;->COUNT_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mWhereClause:Ljava/lang/String;

    iget-object v4, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mWhereClauseArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 156
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 157
    const-string v0, "ConShotSet"

    const-string v1, "query fail"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 166
    :goto_0
    return v0

    .line 161
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 162
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mCachedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 166
    iget v0, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mCachedCount:I

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 185
    const/16 v0, 0x405

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mNotifier:Lcom/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Lcom/mediatek/gallery3d/conshots/ConShotSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 178
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/gallery3d/conshots/ConShotSet;->mCachedCount:I

    .line 180
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method
