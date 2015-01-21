.class public Lcom/android/gallery3d/data/ClusterAlbumSet;
.super Lcom/android/gallery3d/data/MediaSet;
.source "ClusterAlbumSet.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# static fields
.field private static final MAX_LOAD_COUNT_CLUSTER_ALBUM:I = 0x40

.field private static final TAG:Ljava/lang/String; = "Gallery2/ClusterAlbumSet"

.field private static isDeleteOperation:Z


# instance fields
.field private clustering:Lcom/android/gallery3d/data/Clustering;

.field public currentIndexOfSet:I

.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/ClusterAlbum;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mBaseSet:Lcom/android/gallery3d/data/MediaSet;

.field private mCurrentLanguage:Ljava/lang/String;

.field private mFirstReloadDone:Z

.field private mKind:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/gallery3d/data/ClusterAlbumSet;->isDeleteOperation:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/app/GalleryApp;Lcom/android/gallery3d/data/MediaSet;I)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "baseSet"
    .parameter "kind"

    .prologue
    .line 50
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 42
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mCurrentLanguage:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 52
    iput-object p3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    .line 53
    iput p4, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    .line 54
    invoke-virtual {p3, p0}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 55
    return-void
.end method

.method public static getClusterDeleteOperation()Z
    .locals 3

    .prologue
    .line 391
    const-string v0, "Gallery2/ClusterAlbumSet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClusterDeleteOperation isDeleteOperation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/gallery3d/data/ClusterAlbumSet;->isDeleteOperation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    sget-boolean v0, Lcom/android/gallery3d/data/ClusterAlbumSet;->isDeleteOperation:Z

    return v0
.end method

.method private reloadName()V
    .locals 8

    .prologue
    .line 113
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, language:Ljava/lang/String;
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mCurrentLanguage:Ljava/lang/String;

    if-eq v4, v3, :cond_2

    .line 115
    const-string v4, "Gallery2/ClusterAlbumSet"

    const-string v5, "Chanage Language................."

    invoke-static {v4, v5}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v1, 0x1

    .line 117
    .local v1, haveGenerateAllNewName:Z
    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->clustering:Lcom/android/gallery3d/data/Clustering;

    monitor-enter v5

    .line 118
    :try_start_0
    iget-object v4, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->clustering:Lcom/android/gallery3d/data/Clustering;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/Clustering;->reGenerateName()Z

    move-result v1

    .line 119
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 120
    iget-object v4, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .line 121
    .local v0, album:Lcom/android/gallery3d/data/ClusterAlbum;
    iget-object v4, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->clustering:Lcom/android/gallery3d/data/Clustering;

    invoke-virtual {v4, v2}, Lcom/android/gallery3d/data/Clustering;->getClusterName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/data/ClusterAlbum;->setName(Ljava/lang/String;)V

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    :cond_0
    if-eqz v1, :cond_1

    .line 124
    iput-object v3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mCurrentLanguage:Ljava/lang/String;

    .line 126
    :cond_1
    invoke-static {}, Lcom/android/gallery3d/data/ClusterAlbumSet;->nextVersionNumber()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 127
    monitor-exit v5

    .line 129
    .end local v1           #haveGenerateAllNewName:Z
    .end local v2           #i:I
    :cond_2
    return-void

    .line 127
    .restart local v1       #haveGenerateAllNewName:Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static setClusterDeleteOperation(Z)V
    .locals 3
    .parameter "deleteOperation"

    .prologue
    .line 386
    const-string v0, "Gallery2/ClusterAlbumSet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClusterDeleteOperation isDeleteOperation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    sput-boolean p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->isDeleteOperation:Z

    .line 388
    return-void
.end method

.method private updateClusters()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 177
    const-string v9, "Gallery2/ClusterAlbumSet"

    const-string v10, "updateClusters"

    invoke-static {v9, v10}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v9}, Lcom/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    .line 179
    .local v3, context:Landroid/content/Context;
    iget v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    packed-switch v9, :pswitch_data_0

    .line 193
    :pswitch_0
    new-instance v9, Lcom/android/gallery3d/data/SizeClustering;

    invoke-direct {v9, v3}, Lcom/android/gallery3d/data/SizeClustering;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->clustering:Lcom/android/gallery3d/data/Clustering;

    .line 197
    :goto_0
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->clustering:Lcom/android/gallery3d/data/Clustering;

    iget-object v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/data/Clustering;->run(Lcom/android/gallery3d/data/MediaSet;)V

    .line 198
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->clustering:Lcom/android/gallery3d/data/Clustering;

    invoke-virtual {v9}, Lcom/android/gallery3d/data/Clustering;->getNumberOfClusters()I

    move-result v8

    .line 199
    .local v8, n:I
    const-string v9, "Gallery2/ClusterAlbumSet"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "number of clusters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 201
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v9}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v4

    .line 202
    .local v4, dataManager:Lcom/android/gallery3d/data/DataManager;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v8, :cond_3

    .line 204
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->clustering:Lcom/android/gallery3d/data/Clustering;

    invoke-virtual {v9, v5}, Lcom/android/gallery3d/data/Clustering;->getClusterName(I)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, childName:Ljava/lang/String;
    iget v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 206
    iget-object v9, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 213
    .local v2, childPath:Lcom/android/gallery3d/data/Path;
    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .line 215
    .local v0, album:Lcom/android/gallery3d/data/ClusterAlbum;
    if-nez v0, :cond_0

    .line 216
    new-instance v0, Lcom/android/gallery3d/data/ClusterAlbum;

    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    invoke-direct {v0, v2, v4, p0}, Lcom/android/gallery3d/data/ClusterAlbum;-><init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/data/MediaSet;)V

    .line 218
    .restart local v0       #album:Lcom/android/gallery3d/data/ClusterAlbum;
    :cond_0
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->clustering:Lcom/android/gallery3d/data/Clustering;

    invoke-virtual {v9, v5}, Lcom/android/gallery3d/data/Clustering;->getCluster(I)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    .line 221
    sput-boolean v12, Lcom/android/gallery3d/data/ClusterAlbumSet;->isDeleteOperation:Z

    .line 222
    invoke-virtual {v0, v12}, Lcom/android/gallery3d/data/ClusterAlbum;->setNumberOfDeletedImage(I)V

    .line 223
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/ClusterAlbum;->setName(Ljava/lang/String;)V

    .line 224
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->clustering:Lcom/android/gallery3d/data/Clustering;

    invoke-virtual {v9, v5}, Lcom/android/gallery3d/data/Clustering;->getClusterCover(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/gallery3d/data/ClusterAlbum;->setCoverMediaItem(Lcom/android/gallery3d/data/MediaItem;)V

    .line 225
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 181
    .end local v0           #album:Lcom/android/gallery3d/data/ClusterAlbum;
    .end local v1           #childName:Ljava/lang/String;
    .end local v2           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v4           #dataManager:Lcom/android/gallery3d/data/DataManager;
    .end local v5           #i:I
    .end local v8           #n:I
    :pswitch_1
    new-instance v9, Lcom/android/gallery3d/data/TimeClustering;

    invoke-direct {v9, v3}, Lcom/android/gallery3d/data/TimeClustering;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->clustering:Lcom/android/gallery3d/data/Clustering;

    goto :goto_0

    .line 184
    :pswitch_2
    new-instance v9, Lcom/android/gallery3d/data/LocationClustering;

    invoke-direct {v9, v3}, Lcom/android/gallery3d/data/LocationClustering;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->clustering:Lcom/android/gallery3d/data/Clustering;

    goto/16 :goto_0

    .line 187
    :pswitch_3
    new-instance v9, Lcom/android/gallery3d/data/TagClustering;

    invoke-direct {v9, v3}, Lcom/android/gallery3d/data/TagClustering;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->clustering:Lcom/android/gallery3d/data/Clustering;

    goto/16 :goto_0

    .line 190
    :pswitch_4
    new-instance v9, Lcom/android/gallery3d/data/FaceClustering;

    invoke-direct {v9, v3}, Lcom/android/gallery3d/data/FaceClustering;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->clustering:Lcom/android/gallery3d/data/Clustering;

    goto/16 :goto_0

    .line 207
    .restart local v1       #childName:Ljava/lang/String;
    .restart local v4       #dataManager:Lcom/android/gallery3d/data/DataManager;
    .restart local v5       #i:I
    .restart local v8       #n:I
    :cond_1
    iget v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mKind:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    .line 208
    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->clustering:Lcom/android/gallery3d/data/Clustering;

    check-cast v9, Lcom/android/gallery3d/data/SizeClustering;

    invoke-virtual {v9, v5}, Lcom/android/gallery3d/data/SizeClustering;->getMinSize(I)J

    move-result-wide v6

    .line 209
    .local v6, minSize:J
    iget-object v9, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v9, v6, v7}, Lcom/android/gallery3d/data/Path;->getChild(J)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 210
    .restart local v2       #childPath:Lcom/android/gallery3d/data/Path;
    goto :goto_2

    .line 211
    .end local v2           #childPath:Lcom/android/gallery3d/data/Path;
    .end local v6           #minSize:J
    :cond_2
    iget-object v9, p0, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v9, v5}, Lcom/android/gallery3d/data/Path;->getChild(I)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .restart local v2       #childPath:Lcom/android/gallery3d/data/Path;
    goto :goto_2

    .line 227
    .end local v1           #childName:Ljava/lang/String;
    .end local v2           #childPath:Lcom/android/gallery3d/data/Path;
    :cond_3
    return-void

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private updateClustersContents()V
    .locals 20

    .prologue
    .line 242
    const-string v17, "Gallery2/ClusterAlbumSet"

    const-string v18, "updateClusterContents"

    invoke-static/range {v17 .. v18}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 245
    .local v5, existing:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/gallery3d/data/Path;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 246
    .local v6, existingMediaItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/MediaItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/gallery3d/data/ClusterAlbumSet$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5, v6}, Lcom/android/gallery3d/data/ClusterAlbumSet$1;-><init>(Lcom/android/gallery3d/data/ClusterAlbumSet;Ljava/util/HashSet;Ljava/util/HashMap;)V

    invoke-virtual/range {v17 .. v18}, Lcom/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;)V

    .line 253
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 254
    .local v13, oldPathHashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/gallery3d/data/Path;>;"
    const/4 v3, 0x0

    .line 256
    .local v3, deletedItem:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 259
    .local v11, n:I
    add-int/lit8 v7, v11, -0x1

    .local v7, i:I
    :goto_0
    if-ltz v7, :cond_4

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/data/ClusterAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v14

    .line 262
    .local v14, oldPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v12, newPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 265
    .local v9, m:I
    const/4 v8, 0x0

    .local v8, j:I
    :goto_1
    if-ge v8, v9, :cond_1

    .line 266
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/gallery3d/data/Path;

    .line 268
    .local v15, p:Lcom/android/gallery3d/data/Path;
    invoke-virtual {v13, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-virtual {v5, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 270
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 272
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 275
    .end local v15           #p:Lcom/android/gallery3d/data/Path;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/gallery3d/data/ClusterAlbum;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/gallery3d/data/ClusterAlbum;->setMediaItems(Ljava/util/ArrayList;)V

    .line 277
    if-lez v3, :cond_2

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/data/ClusterAlbum;->nextVersion()J

    .line 282
    :cond_2
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 259
    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 287
    .end local v8           #j:I
    .end local v9           #m:I
    .end local v12           #newPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v14           #oldPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    :cond_4
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v17

    add-int v17, v17, v3

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    .line 288
    const-string v17, "Gallery2/ClusterAlbumSet"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " offsetOFStack=="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/data/MediaSet;->offsetInStack:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " currentIndexOfSet="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/data/ClusterAlbumSet;->currentIndexOfSet:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/data/MediaSet;->offsetInStack:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_8

    .line 290
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 292
    .local v2, addedPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 293
    .local v10, mNewPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 294
    .local v16, sizeOfExistingPath:I
    const/4 v7, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v7, v0, :cond_6

    .line 295
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 296
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    const-string v18, "Gallery2/ClusterAlbumSet"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " addedPath=="

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/gallery3d/data/Path;

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 301
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->setCurrentIndexOfSet()V

    .line 303
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateAlbumInClusters(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v2           #addedPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v10           #mNewPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v16           #sizeOfExistingPath:I
    :cond_7
    :goto_4
    return-void

    .line 304
    .restart local v2       #addedPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .restart local v10       #mNewPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .restart local v16       #sizeOfExistingPath:I
    :catch_0
    move-exception v4

    .line 305
    .local v4, e:Ljava/util/ConcurrentModificationException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 308
    .end local v2           #addedPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v4           #e:Ljava/util/ConcurrentModificationException;
    .end local v10           #mNewPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .end local v16           #sizeOfExistingPath:I
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClusters()V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v7, v17, -0x1

    :goto_5
    if-ltz v7, :cond_7

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery3d/data/ClusterAlbum;->nextVersion()J

    .line 310
    add-int/lit8 v7, v7, -0x1

    goto :goto_5
.end method

.method private updateClustersContentsForDeleteOperation()V
    .locals 4

    .prologue
    .line 230
    iget-object v2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 231
    .local v1, n:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 234
    iget-object v2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/ClusterAlbum;->getNumberOfDeletedImage()I

    move-result v3

    iget-object v2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/ClusterAlbum;->getMediaItemCount()I

    move-result v2

    if-ne v3, v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/ClusterAlbum;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/data/ClusterAlbum;->setNumberOfDeletedImage(I)V

    .line 236
    iget-object v2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 231
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 239
    :cond_1
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->notifyContentChanged()V

    .line 174
    return-void
.end method

.method public reload()J
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 75
    iget-boolean v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mFirstReloadDone:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    instance-of v5, v5, Lcom/android/gallery3d/data/LocalAlbumSet;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    instance-of v5, v5, Lcom/android/gallery3d/data/MtpDeviceSet;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    instance-of v5, v5, Lcom/android/gallery3d/data/ComboAlbumSet;

    if-eqz v5, :cond_2

    :cond_0
    move v2, v3

    .line 79
    .local v2, needSyncAlbum:Z
    :goto_0
    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    instance-of v5, v5, Lcom/android/gallery3d/data/ClusterAlbum;

    if-eqz v5, :cond_1

    .line 81
    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    iget v6, p0, Lcom/android/gallery3d/data/MediaSet;->offsetInStack:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/gallery3d/data/MediaSet;->offsetInStack:I

    .line 85
    :cond_1
    iget v5, p0, Lcom/android/gallery3d/data/MediaSet;->offsetInStack:I

    rem-int/lit8 v5, v5, 0x2

    if-ne v5, v3, :cond_3

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaObject;->synchronizedAlbumData()J

    move-result-wide v0

    .line 87
    .local v0, mLastDataVersion:J
    :goto_1
    iget-wide v5, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    cmp-long v5, v0, v5

    if-lez v5, :cond_6

    .line 88
    const-string v5, "Gallery2/ClusterAlbumSet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "total media item count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-boolean v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mFirstReloadDone:Z

    if-eqz v5, :cond_5

    .line 90
    sget-boolean v3, Lcom/android/gallery3d/data/ClusterAlbumSet;->isDeleteOperation:Z

    if-nez v3, :cond_4

    .line 91
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClustersContents()V

    .line 100
    :goto_2
    invoke-static {}, Lcom/android/gallery3d/data/ClusterAlbumSet;->nextVersionNumber()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 106
    :goto_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/data/MediaSet;->mCurrentClusterAlbum:Lcom/android/gallery3d/data/MediaSet;

    .line 107
    iput v4, p0, Lcom/android/gallery3d/data/MediaSet;->offsetInStack:I

    .line 109
    iget-wide v3, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v3

    .end local v0           #mLastDataVersion:J
    .end local v2           #needSyncAlbum:Z
    :cond_2
    move v2, v4

    .line 75
    goto :goto_0

    .line 85
    .restart local v2       #needSyncAlbum:Z
    :cond_3
    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    goto :goto_1

    .line 94
    .restart local v0       #mLastDataVersion:J
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClustersContentsForDeleteOperation()V

    goto :goto_2

    .line 97
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClusters()V

    .line 98
    iput-boolean v3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mFirstReloadDone:Z

    goto :goto_2

    .line 102
    :cond_6
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->reloadName()V

    .line 103
    const-string v3, "Gallery2/ClusterAlbumSet"

    const-string v5, "ClusterAlbumSet: mBaseSet.reload() <= mDataVersion"

    invoke-static {v3, v5}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public reloadForSlideShow()J
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 135
    iget-boolean v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mFirstReloadDone:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    instance-of v5, v5, Lcom/android/gallery3d/data/LocalAlbumSet;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    instance-of v5, v5, Lcom/android/gallery3d/data/MtpDeviceSet;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    instance-of v5, v5, Lcom/android/gallery3d/data/ComboAlbumSet;

    if-eqz v5, :cond_2

    :cond_0
    move v2, v3

    .line 139
    .local v2, needSyncAlbum:Z
    :goto_0
    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    instance-of v5, v5, Lcom/android/gallery3d/data/ClusterAlbum;

    if-eqz v5, :cond_1

    .line 141
    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    iget v6, p0, Lcom/android/gallery3d/data/MediaSet;->offsetInStack:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/gallery3d/data/MediaSet;->offsetInStack:I

    .line 145
    :cond_1
    iget v5, p0, Lcom/android/gallery3d/data/MediaSet;->offsetInStack:I

    rem-int/lit8 v5, v5, 0x2

    if-ne v5, v3, :cond_3

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaObject;->synchronizedAlbumData()J

    move-result-wide v0

    .line 147
    .local v0, mLastDataVersion:J
    :goto_1
    iget-wide v5, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    cmp-long v5, v0, v5

    if-lez v5, :cond_6

    .line 148
    const-string v5, "Gallery2/ClusterAlbumSet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "total media item count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v7}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-boolean v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mFirstReloadDone:Z

    if-eqz v5, :cond_5

    .line 150
    sget-boolean v3, Lcom/android/gallery3d/data/ClusterAlbumSet;->isDeleteOperation:Z

    if-nez v3, :cond_4

    .line 151
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClustersContents()V

    .line 160
    :goto_2
    invoke-static {}, Lcom/android/gallery3d/data/ClusterAlbumSet;->nextVersionNumber()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 165
    :goto_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/gallery3d/data/MediaSet;->mCurrentClusterAlbum:Lcom/android/gallery3d/data/MediaSet;

    .line 166
    iput v4, p0, Lcom/android/gallery3d/data/MediaSet;->offsetInStack:I

    .line 168
    iget-wide v3, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v3

    .end local v0           #mLastDataVersion:J
    .end local v2           #needSyncAlbum:Z
    :cond_2
    move v2, v4

    .line 135
    goto :goto_0

    .line 145
    .restart local v2       #needSyncAlbum:Z
    :cond_3
    iget-object v5, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/android/gallery3d/data/MediaSet;->reloadForSlideShow()J

    move-result-wide v0

    goto :goto_1

    .line 154
    .restart local v0       #mLastDataVersion:J
    :cond_4
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClustersContentsForDeleteOperation()V

    goto :goto_2

    .line 157
    :cond_5
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClusters()V

    .line 158
    iput-boolean v3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mFirstReloadDone:Z

    goto :goto_2

    .line 162
    :cond_6
    const-string v3, "Gallery2/ClusterAlbumSet"

    const-string v5, "ClusterAlbumSet: mBaseSet.reload() <= mDataVersion"

    invoke-static {v3, v5}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setCurrentIndexOfSet()V
    .locals 5

    .prologue
    .line 320
    iget-object v3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 321
    .local v0, albumSize:I
    iget-object v3, p0, Lcom/android/gallery3d/data/MediaSet;->mCurrentClusterAlbum:Lcom/android/gallery3d/data/MediaSet;

    if-eqz v3, :cond_1

    .line 322
    const/4 v1, 0x0

    .line 323
    .local v1, hasFindSet:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 324
    iget-object v3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/data/MediaSet;->mCurrentClusterAlbum:Lcom/android/gallery3d/data/MediaSet;

    if-ne v3, v4, :cond_2

    .line 325
    iput v2, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->currentIndexOfSet:I

    .line 326
    const/4 v1, 0x1

    .line 330
    :cond_0
    if-nez v1, :cond_1

    .line 331
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->currentIndexOfSet:I

    .line 332
    const-string v3, "Gallery2/ClusterAlbumSet"

    const-string v4, "[setCurrentIndexOfSet]: has not find set"

    invoke-static {v3, v4}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .end local v1           #hasFindSet:Z
    .end local v2           #i:I
    :cond_1
    return-void

    .line 323
    .restart local v1       #hasFindSet:Z
    .restart local v2       #i:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public synchronizedAlbumData()J
    .locals 4

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mBaseSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaObject;->synchronizedAlbumData()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/android/gallery3d/data/ClusterAlbumSet;->updateClustersContents()V

    .line 378
    invoke-static {}, Lcom/android/gallery3d/data/ClusterAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 380
    :cond_0
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method

.method public updateAlbumInClusters(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    .local p2, exisingMediaItem:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/MediaItem;>;"
    iget-object v8, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    if-eqz v8, :cond_4

    .line 341
    iget v8, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->currentIndexOfSet:I

    iget-object v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    iget v8, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->currentIndexOfSet:I

    if-ltz v8, :cond_3

    .line 344
    :try_start_0
    iget-object v8, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v9

    iget-object v8, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->currentIndexOfSet:I

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/ClusterAlbum;

    iget-object v8, v8, Lcom/android/gallery3d/data/MediaObject;->mPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v9, v8}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v4

    .line 345
    .local v4, mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    const/4 v8, 0x0

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v5

    .line 346
    .local v5, mOldItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 347
    .local v6, sizeOfOldMediaItems:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 349
    .local v7, sizeofAddPaths:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v7, :cond_3

    .line 350
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/MediaItem;

    .line 351
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    const/4 v3, 0x0

    .line 352
    .local v3, k:I
    :goto_1
    if-ge v3, v6, :cond_0

    .line 353
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v9

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v8}, Lcom/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v11

    cmp-long v8, v9, v11

    if-nez v8, :cond_2

    .line 354
    iget-object v8, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->currentIndexOfSet:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/Path;

    invoke-virtual {v8, v9, v3}, Lcom/android/gallery3d/data/ClusterAlbum;->addMediaItems(Lcom/android/gallery3d/data/Path;I)V

    .line 355
    const-string v9, "Gallery2/ClusterAlbumSet"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add Path::"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/Path;

    invoke-virtual {v8}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "  index:::::"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    if-ne v3, v6, :cond_1

    .line 361
    iget-object v8, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->mAlbums:Ljava/util/ArrayList;

    iget v9, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->currentIndexOfSet:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/gallery3d/data/Path;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/gallery3d/data/ClusterAlbum;->addMediaItems(Lcom/android/gallery3d/data/Path;I)V

    .line 362
    const-string v9, "Gallery2/ClusterAlbumSet"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add Path::"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/gallery3d/data/Path;

    invoke-virtual {v8}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " the end index:::::"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 352
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 365
    .end local v1           #item:Lcom/android/gallery3d/data/MediaItem;
    .end local v2           #j:I
    .end local v3           #k:I
    .end local v4           #mMediaSet:Lcom/android/gallery3d/data/MediaSet;
    .end local v5           #mOldItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    .end local v6           #sizeOfOldMediaItems:I
    .end local v7           #sizeofAddPaths:I
    :catch_0
    move-exception v0

    .line 366
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v8, "Gallery2/ClusterAlbumSet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " maybe sizeOldMediaItems is too big:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_3
    const-string v8, "Gallery2/ClusterAlbumSet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentIndexOfSet=="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/gallery3d/data/ClusterAlbumSet;->currentIndexOfSet:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_4
    return-void
.end method
