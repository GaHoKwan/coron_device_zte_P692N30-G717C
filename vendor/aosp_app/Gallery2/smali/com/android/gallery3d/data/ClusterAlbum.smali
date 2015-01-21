.class public Lcom/android/gallery3d/data/ClusterAlbum;
.super Lcom/android/gallery3d/data/MediaSet;
.source "ClusterAlbum.java"

# interfaces
.implements Lcom/android/gallery3d/data/ContentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery2/ClusterAlbum"


# instance fields
.field private mClusterAlbumSet:Lcom/android/gallery3d/data/MediaSet;

.field private mCover:Lcom/android/gallery3d/data/MediaItem;

.field private mCoverBackUp:Lcom/android/gallery3d/data/MediaItem;

.field private mDataManager:Lcom/android/gallery3d/data/DataManager;

.field private mName:Ljava/lang/String;

.field private mNumberOfDeletedImage:I

.field private mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/Path;Lcom/android/gallery3d/data/DataManager;Lcom/android/gallery3d/data/MediaSet;)V
    .locals 2
    .parameter "path"
    .parameter "dataManager"
    .parameter "clusterAlbumSet"

    .prologue
    .line 36
    invoke-static {}, Lcom/android/gallery3d/data/ClusterAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery3d/data/MediaSet;-><init>(Lcom/android/gallery3d/data/Path;J)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mName:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    .line 38
    iput-object p3, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mClusterAlbumSet:Lcom/android/gallery3d/data/MediaSet;

    .line 39
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mClusterAlbumSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 40
    return-void
.end method

.method static synthetic access$008(Lcom/android/gallery3d/data/ClusterAlbum;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mNumberOfDeletedImage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mNumberOfDeletedImage:I

    return v0
.end method

.method public static getMediaItemFromPath(Ljava/util/ArrayList;IILcom/android/gallery3d/data/DataManager;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter "start"
    .parameter "count"
    .parameter "dataManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;II",
            "Lcom/android/gallery3d/data/DataManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt p1, v6, :cond_1

    .line 100
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 119
    :cond_0
    return-object v4

    .line 102
    :cond_1
    add-int v6, p1, p2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 103
    .local v2, end:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 104
    .local v5, subset:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    sub-int v6, v2, p1

    new-array v0, v6, [Lcom/android/gallery3d/data/MediaItem;

    .line 105
    .local v0, buf:[Lcom/android/gallery3d/data/MediaItem;
    new-instance v1, Lcom/android/gallery3d/data/ClusterAlbum$1;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/data/ClusterAlbum$1;-><init>([Lcom/android/gallery3d/data/MediaItem;)V

    .line 111
    .local v1, consumer:Lcom/android/gallery3d/data/MediaSet$ItemConsumer;
    const/4 v6, 0x0

    invoke-virtual {p3, v5, v1, v6}, Lcom/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    .line 112
    new-instance v4, Ljava/util/ArrayList;

    sub-int v6, v2, p1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/MediaItem;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_0

    .line 114
    aget-object v6, v0, v3

    if-eqz v6, :cond_2

    .line 116
    aget-object v6, v0, v3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method addMediaItems(Lcom/android/gallery3d/data/Path;I)V
    .locals 1
    .parameter "paths"
    .parameter "index"

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/gallery3d/data/ClusterAlbum;->nextVersion()J

    .line 70
    :cond_0
    return-void
.end method

.method public delete()V
    .locals 4

    .prologue
    .line 168
    new-instance v0, Lcom/android/gallery3d/data/ClusterAlbum$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/data/ClusterAlbum$2;-><init>(Lcom/android/gallery3d/data/ClusterAlbum;)V

    .line 178
    .local v0, consumer:Lcom/android/gallery3d/data/MediaSet$ItemConsumer;
    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    iget-object v2, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    .line 179
    return-void
.end method

.method protected enumerateMediaItems(Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)I
    .locals 2
    .parameter "consumer"
    .parameter "startIndex"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCoverMediaItem()Lcom/android/gallery3d/data/MediaItem;
    .locals 2

    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mCover:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mCover:Lcom/android/gallery3d/data/MediaItem;

    .line 57
    :goto_0
    return-object v1

    .line 52
    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/android/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mCoverBackUp:Lcom/android/gallery3d/data/MediaItem;
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mCoverBackUp:Lcom/android/gallery3d/data/MediaItem;

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/util/ConcurrentModificationException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mCoverBackUp:Lcom/android/gallery3d/data/MediaItem;

    goto :goto_0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 2
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
    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mDataManager:Lcom/android/gallery3d/data/DataManager;

    invoke-static {v0, p1, p2, v1}, Lcom/android/gallery3d/data/ClusterAlbum;->getMediaItemFromPath(Ljava/util/ArrayList;IILcom/android/gallery3d/data/DataManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getMediaItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfDeletedImage()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mNumberOfDeletedImage:I

    return v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 163
    const/16 v0, 0x405

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mNumberOfDeletedImage:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x1

    return v0
.end method

.method public nextVersion()J
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/android/gallery3d/data/ClusterAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 153
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/gallery3d/data/MediaSet;->notifyContentChanged()V

    .line 159
    return-void
.end method

.method public reload()J
    .locals 4

    .prologue
    .line 137
    const-string v0, "Gallery2/ClusterAlbum"

    const-string v1, "reload-->>>>>>>>>>>>>>>>>>>>>>>>>mClusterAlbumSet.synchronizedAlbumData() "

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mClusterAlbumSet:Lcom/android/gallery3d/data/MediaSet;

    iput-object p0, v0, Lcom/android/gallery3d/data/MediaSet;->mCurrentClusterAlbum:Lcom/android/gallery3d/data/MediaSet;

    .line 141
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mClusterAlbumSet:Lcom/android/gallery3d/data/MediaSet;

    iget v1, p0, Lcom/android/gallery3d/data/MediaSet;->offsetInStack:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/gallery3d/data/MediaSet;->offsetInStack:I

    .line 142
    iget-object v0, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mClusterAlbumSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 143
    invoke-static {}, Lcom/android/gallery3d/data/ClusterAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    .line 144
    const-string v0, "Gallery2/ClusterAlbum"

    const-string v1, "mClusterAlbumSet.synchronizedAlbumData() > mDataVersion"

    invoke-static {v0, v1}, Lcom/android/gallery3d/data/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/data/MediaSet;->offsetInStack:I

    .line 147
    iget-wide v0, p0, Lcom/android/gallery3d/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method

.method public setCoverMediaItem(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter "cover"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mCover:Lcom/android/gallery3d/data/MediaItem;

    .line 44
    return-void
.end method

.method setMediaItems(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/Path;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/data/Path;>;"
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    .line 62
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mName:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setNumberOfDeletedImage(I)V
    .locals 0
    .parameter "number"

    .prologue
    .line 188
    iput p1, p0, Lcom/android/gallery3d/data/ClusterAlbum;->mNumberOfDeletedImage:I

    .line 189
    return-void
.end method
