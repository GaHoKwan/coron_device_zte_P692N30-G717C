.class public Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;
.super Ljava/lang/Object;
.source "VideoThumbnailDirector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;,
        Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$DirectorSecretary;,
        Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoThumbnailDirector"


# instance fields
.field private final HANDLER_CONCURRENCY:I

.field private volatile mActiveEnd:I

.field private volatile mActiveStart:I

.field private mCurrentStarterIndex:I

.field private mCurrentStoperIndex:I

.field private mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private volatile mIsStageUpdated:Z

.field private mLockSecretaryBeauty:Ljava/lang/Object;

.field private final mPlayingPathLock:Ljava/lang/Object;

.field private final mPlayingPaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecretary:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$DirectorSecretary;

.field private mStageContext:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$StageContext;

.field private mThumbnailPlayer:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;

.field private mThumbnailSource:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow;

.field private mThumbnailStarters:[Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

.field private mThumbnailStopers:[Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;


# direct methods
.method public constructor <init>(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$StageContext;)V
    .locals 3
    .parameter "stageContext"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->HANDLER_CONCURRENCY:I

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mLockSecretaryBeauty:Ljava/lang/Object;

    .line 33
    iput v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mActiveStart:I

    .line 34
    iput v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mActiveEnd:I

    .line 38
    new-array v0, v1, [Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailStarters:[Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

    .line 39
    new-array v0, v1, [Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailStopers:[Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

    .line 236
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mPlayingPaths:Ljava/util/Set;

    .line 237
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mPlayingPathLock:Ljava/lang/Object;

    .line 42
    iput-object p1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mStageContext:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$StageContext;

    .line 43
    invoke-interface {p1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$StageContext;->getGalleryActivity()Lcom/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 44
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailPlayer:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->isThumbnailInStage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$StageContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mStageContext:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$StageContext;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mPlayingPathLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mPlayingPaths:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mLockSecretaryBeauty:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mIsStageUpdated:Z

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->respondToStageUpdate()V

    return-void
.end method

.method private collectAllThumbnailsOnStage(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/data/LocalMediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, mediaItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/data/LocalMediaItem;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 336
    iget v3, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mActiveStart:I

    .local v3, i:I
    :goto_0
    iget v5, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mActiveEnd:I

    if-ge v3, v5, :cond_0

    .line 338
    iget-object v5, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailSource:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow;

    if-nez v5, :cond_1

    .line 354
    :cond_0
    return-void

    .line 341
    :cond_1
    iget-object v5, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailSource:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow;

    invoke-interface {v5, v3}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow;->getThumbnailEntryAt(I)Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$DataEntry;

    move-result-object v2

    .line 342
    .local v2, entry:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$DataEntry;
    if-nez v2, :cond_3

    .line 336
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 346
    :cond_3
    :try_start_0
    invoke-interface {v2}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$DataEntry;->getPlayItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v5

    check-cast v5, Lcom/android/gallery3d/data/LocalMediaItem;

    move-object v0, v5

    check-cast v0, Lcom/android/gallery3d/data/LocalMediaItem;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .local v4, mediaItem:Lcom/android/gallery3d/data/LocalMediaItem;
    :goto_2
    if-eqz v4, :cond_2

    .line 351
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 347
    .end local v4           #mediaItem:Lcom/android/gallery3d/data/LocalMediaItem;
    :catch_0
    move-exception v1

    .line 348
    .local v1, e:Ljava/lang/ClassCastException;
    const/4 v4, 0x0

    .restart local v4       #mediaItem:Lcom/android/gallery3d/data/LocalMediaItem;
    goto :goto_2
.end method

.method private getPreparedThumbnails(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/data/LocalMediaItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/data/LocalMediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, candidateThumbnails:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/data/LocalMediaItem;>;"
    .local p2, preparedThumbnails:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/data/LocalMediaItem;>;"
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 201
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 202
    .local v1, mediaItem:Lcom/android/gallery3d/data/LocalMediaItem;
    sget v2, Lcom/android/gallery3d/data/LocalMediaItem;->TPT_GENERATE_PLAY:I

    iget v3, v1, Lcom/android/gallery3d/data/LocalMediaItem;->thumbnailPlayType:I

    if-ne v2, v3, :cond_1

    .line 203
    iget-object v2, v1, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    iget-object v2, v2, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoState:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 204
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    :cond_1
    sget v2, Lcom/android/gallery3d/data/LocalMediaItem;->TPT_DIRECT_PLAY:I

    iget v3, v1, Lcom/android/gallery3d/data/LocalMediaItem;->thumbnailPlayType:I

    if-ne v2, v3, :cond_0

    .line 207
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    .end local v1           #mediaItem:Lcom/android/gallery3d/data/LocalMediaItem;
    :cond_2
    return-void
.end method

.method private isThumbnailInStage(Ljava/lang/String;)Z
    .locals 8
    .parameter "thumbnailPath"

    .prologue
    .line 129
    const/4 v4, 0x0

    .line 131
    .local v4, isInStage:Z
    iget v3, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mActiveStart:I

    .local v3, i:I
    :goto_0
    iget v6, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mActiveEnd:I

    if-ge v3, v6, :cond_0

    .line 132
    iget-object v6, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailSource:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow;

    if-nez v6, :cond_1

    .line 160
    :cond_0
    :goto_1
    return v4

    .line 135
    :cond_1
    iget-object v6, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailSource:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow;

    invoke-interface {v6, v3}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow;->getThumbnailEntryAt(I)Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$DataEntry;

    move-result-object v2

    .line 136
    .local v2, entry:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$DataEntry;
    if-nez v2, :cond_3

    .line 131
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 140
    :cond_3
    :try_start_0
    invoke-interface {v2}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$DataEntry;->getPlayItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/data/LocalMediaItem;

    move-object v0, v6

    check-cast v0, Lcom/android/gallery3d/data/LocalMediaItem;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .local v5, mediaItem:Lcom/android/gallery3d/data/LocalMediaItem;
    :goto_2
    if-eqz v5, :cond_2

    .line 147
    sget v6, Lcom/android/gallery3d/data/LocalMediaItem;->TPT_GENERATE_PLAY:I

    iget v7, v5, Lcom/android/gallery3d/data/LocalMediaItem;->thumbnailPlayType:I

    if-ne v6, v7, :cond_4

    .line 148
    iget-object v6, v5, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    iget-object v6, v6, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoPath:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 150
    const/4 v4, 0x1

    .line 151
    goto :goto_1

    .line 141
    .end local v5           #mediaItem:Lcom/android/gallery3d/data/LocalMediaItem;
    :catch_0
    move-exception v1

    .line 142
    .local v1, e:Ljava/lang/ClassCastException;
    const/4 v5, 0x0

    .restart local v5       #mediaItem:Lcom/android/gallery3d/data/LocalMediaItem;
    goto :goto_2

    .line 153
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_4
    sget v6, Lcom/android/gallery3d/data/LocalMediaItem;->TPT_DIRECT_PLAY:I

    iget v7, v5, Lcom/android/gallery3d/data/LocalMediaItem;->thumbnailPlayType:I

    if-ne v6, v7, :cond_2

    .line 154
    iget-object v6, v5, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 155
    const/4 v4, 0x1

    .line 156
    goto :goto_1
.end method

.method private requestThumbnails(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/data/LocalMediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, thumbnails:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/data/LocalMediaItem;>;"
    invoke-static {}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->cancelPendingTranscode()V

    .line 214
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 215
    .local v1, mediaItem:Lcom/android/gallery3d/data/LocalMediaItem;
    invoke-virtual {v1}, Lcom/android/gallery3d/data/LocalMediaItem;->prepareThumbnailPlay()V

    .line 216
    sget v2, Lcom/android/gallery3d/data/LocalMediaItem;->TPT_GENERATE_PLAY:I

    iget v3, v1, Lcom/android/gallery3d/data/LocalMediaItem;->thumbnailPlayType:I

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    iget-object v2, v2, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoState:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-nez v2, :cond_0

    .line 218
    invoke-static {v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->requestThumbnail(Lcom/android/gallery3d/data/LocalMediaItem;)V

    goto :goto_0

    .line 221
    .end local v1           #mediaItem:Lcom/android/gallery3d/data/LocalMediaItem;
    :cond_1
    return-void
.end method

.method private respondToStageUpdate()V
    .locals 4

    .prologue
    .line 166
    iget-boolean v3, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mIsStageUpdated:Z

    if-nez v3, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v3, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailSource:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow;

    invoke-interface {v3}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow;->isAllActiveSlotsStaticThumbnailReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v1, thumbnailPaths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailPlayer:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;

    invoke-virtual {v3, v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->getPlayingThumbnails(Ljava/util/List;)V

    .line 177
    invoke-direct {p0, v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->scrollThumbnailsOutOfScene(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v2, thumbnailsOnStage:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/data/LocalMediaItem;>;"
    invoke-direct {p0, v2}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->collectAllThumbnailsOnStage(Ljava/util/List;)V

    .line 184
    invoke-direct {p0, v2}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->requestThumbnails(Ljava/util/List;)V

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v0, preparedThumbnails:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/data/LocalMediaItem;>;"
    invoke-direct {p0, v2, v0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->getPreparedThumbnails(Ljava/util/List;Ljava/util/List;)V

    .line 190
    invoke-direct {p0, v0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->scrollThumbnailsIntoScene(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mIsStageUpdated:Z

    goto :goto_0
.end method

.method private scrollThumbnailsIntoScene(Ljava/util/List;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/data/LocalMediaItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/data/LocalMediaItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailStarters:[Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailStarters:[Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;->cancelPendingRunnables()V

    .line 225
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mStageContext:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$StageContext;

    invoke-interface {v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$StageContext;->isStageChanging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    const/4 v1, 0x0

    .line 233
    :goto_1
    return v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->startThumbnails(Ljava/util/List;)Z

    move-result v1

    goto :goto_1
.end method

.method private scrollThumbnailsOutOfScene(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, thumbnailPaths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 289
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 290
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailStopers:[Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 291
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailStopers:[Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;->cancelPendingRunnables()V

    .line 289
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_1
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mStageContext:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$StageContext;

    invoke-interface {v2}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$StageContext;->isStageChanging()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 297
    :goto_1
    return v1

    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->stopThumbnails(Ljava/util/List;Z)Z

    move-result v1

    goto :goto_1
.end method

.method private startThumbnails(Ljava/util/List;)Z
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/gallery3d/data/LocalMediaItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/gallery3d/data/LocalMediaItem;>;"
    const/4 v9, 0x0

    .line 240
    const/4 v5, 0x0

    .line 241
    .local v5, thumbnailPath:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 242
    .local v2, item:Lcom/android/gallery3d/data/LocalMediaItem;
    iget v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mCurrentStarterIndex:I

    .line 243
    .local v0, currentStarterIndex:I
    rem-int/lit8 v0, v0, 0x2

    .line 244
    iget v7, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mCurrentStarterIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mCurrentStarterIndex:I

    .line 245
    iget v7, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mCurrentStarterIndex:I

    rem-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mCurrentStarterIndex:I

    .line 246
    iget-object v7, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailStarters:[Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

    aget-object v4, v7, v0

    .line 247
    .local v4, playerStarter:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;
    if-eqz v4, :cond_0

    .line 248
    sget v7, Lcom/android/gallery3d/data/LocalMediaItem;->TPT_GENERATE_PLAY:I

    iget v8, v2, Lcom/android/gallery3d/data/LocalMediaItem;->thumbnailPlayType:I

    if-ne v7, v8, :cond_2

    .line 249
    iget-object v6, v2, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    .line 250
    .local v6, videoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;
    iget-object v7, v6, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoState:[I

    aget v7, v7, v9

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 251
    iget-object v7, v6, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoPath:[Ljava/lang/String;

    aget-object v5, v7, v9

    .line 257
    .end local v6           #videoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 258
    .local v3, path:Ljava/lang/String;
    new-instance v7, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$2;

    invoke-direct {v7, p0, v3, v2, v4}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$2;-><init>(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;Ljava/lang/String;Lcom/android/gallery3d/data/LocalMediaItem;Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;)V

    invoke-virtual {v4, v7}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;->submit(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 253
    .end local v3           #path:Ljava/lang/String;
    :cond_2
    sget v7, Lcom/android/gallery3d/data/LocalMediaItem;->TPT_DIRECT_PLAY:I

    iget v8, v2, Lcom/android/gallery3d/data/LocalMediaItem;->thumbnailPlayType:I

    if-ne v7, v8, :cond_1

    .line 254
    iget-object v5, v2, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    goto :goto_1

    .line 284
    .end local v0           #currentStarterIndex:I
    .end local v2           #item:Lcom/android/gallery3d/data/LocalMediaItem;
    .end local v4           #playerStarter:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;
    :cond_3
    const/4 v7, 0x1

    return v7
.end method

.method private stopThumbnails(Ljava/util/List;Z)Z
    .locals 5
    .parameter
    .parameter "forceClose"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, thumbnailPaths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 304
    .local v2, path:Ljava/lang/String;
    iget v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mCurrentStoperIndex:I

    .line 305
    .local v0, currentStoperIndex:I
    rem-int/lit8 v0, v0, 0x2

    .line 306
    iget v4, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mCurrentStoperIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mCurrentStoperIndex:I

    .line 307
    iget v4, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mCurrentStoperIndex:I

    rem-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mCurrentStoperIndex:I

    .line 308
    iget-object v4, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailStopers:[Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

    aget-object v3, v4, v0

    .line 309
    .local v3, playerStoper:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;
    if-eqz v3, :cond_0

    .line 310
    new-instance v4, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$3;

    invoke-direct {v4, p0, p2, v2, v3}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$3;-><init>(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;ZLjava/lang/String;Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;)V

    invoke-virtual {v3, v4}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;->submit(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 329
    .end local v0           #currentStoperIndex:I
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #playerStoper:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;
    :cond_1
    const/4 v4, 0x1

    return v4
.end method


# virtual methods
.method public pause()V
    .locals 2

    .prologue
    .line 64
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mSecretary:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$DirectorSecretary;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mSecretary:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$DirectorSecretary;

    .line 66
    new-instance v1, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$1;

    invoke-direct {v1, p0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$1;-><init>(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 72
    invoke-static {}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->pause()V

    .line 73
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 74
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailStarters:[Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailStarters:[Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailStopers:[Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailStopers:[Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 73
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_2
    return-void
.end method

.method public pumpLiveThumbnails()V
    .locals 2

    .prologue
    .line 121
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mLockSecretaryBeauty:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mIsStageUpdated:Z

    .line 123
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mLockSecretaryBeauty:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 124
    monitor-exit v1

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public renderThumbnail(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$DataEntry;Lcom/android/gallery3d/ui/GLCanvas;II)Z
    .locals 7
    .parameter "entry"
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v5, 0x0

    .line 89
    :try_start_0
    invoke-interface {p1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$DataEntry;->getPlayItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/data/LocalMediaItem;

    move-object v0, v4

    check-cast v0, Lcom/android/gallery3d/data/LocalMediaItem;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .local v2, mediaItem:Lcom/android/gallery3d/data/LocalMediaItem;
    :goto_0
    if-eqz v2, :cond_1

    .line 94
    sget v4, Lcom/android/gallery3d/data/LocalMediaItem;->TPT_GENERATE_PLAY:I

    iget v6, v2, Lcom/android/gallery3d/data/LocalMediaItem;->thumbnailPlayType:I

    if-ne v4, v6, :cond_0

    .line 95
    iget-object v3, v2, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    .line 96
    .local v3, videoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;
    iget-object v4, v3, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoState:[I

    aget v4, v4, v5

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 97
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/gallery3d/ui/GLRootView;->sVideoThumbnailPlaying:Z

    .line 98
    iget-object v4, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailPlayer:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;

    iget-object v6, v3, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoPath:[Ljava/lang/String;

    aget-object v5, v6, v5

    invoke-virtual {v4, v5, p2, p3, p4}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->renderThumbnail(Ljava/lang/String;Lcom/android/gallery3d/ui/GLCanvas;II)Z

    move-result v4

    .line 108
    .end local v3           #videoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;
    :goto_1
    return v4

    .line 90
    .end local v2           #mediaItem:Lcom/android/gallery3d/data/LocalMediaItem;
    :catch_0
    move-exception v1

    .line 91
    .local v1, e:Ljava/lang/ClassCastException;
    const/4 v2, 0x0

    .restart local v2       #mediaItem:Lcom/android/gallery3d/data/LocalMediaItem;
    goto :goto_0

    .line 103
    .end local v1           #e:Ljava/lang/ClassCastException;
    :cond_0
    sget v4, Lcom/android/gallery3d/data/LocalMediaItem;->TPT_DIRECT_PLAY:I

    iget v6, v2, Lcom/android/gallery3d/data/LocalMediaItem;->thumbnailPlayType:I

    if-ne v4, v6, :cond_1

    .line 104
    iget-object v4, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailPlayer:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;

    iget-object v5, v2, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v4, v5, p2, p3, p4}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->renderThumbnail(Ljava/lang/String;Lcom/android/gallery3d/ui/GLCanvas;II)Z

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v5

    .line 108
    goto :goto_1
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 359
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v0

    .line 360
    .local v0, renderContext:Lcom/android/gallery3d/ui/GLRoot;
    if-eqz v0, :cond_0

    .line 361
    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLRoot;->requestRender()V

    .line 363
    :cond_0
    return-void
.end method

.method public resume(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow;)V
    .locals 3
    .parameter "dataWindow"

    .prologue
    .line 47
    invoke-static {p0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->setDirector(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)V

    .line 48
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->pumpLiveThumbnails()V

    .line 49
    iput-object p1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailSource:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow;

    .line 50
    invoke-static {}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->start()V

    .line 51
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->create(Lcom/android/gallery3d/app/AbstractGalleryActivity;)Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailPlayer:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;

    .line 52
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailPlayer:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->resume()V

    .line 53
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailStarters:[Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

    new-instance v2, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

    invoke-direct {v2}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;-><init>()V

    aput-object v2, v1, v0

    .line 55
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailStopers:[Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

    new-instance v2, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

    invoke-direct {v2}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;-><init>()V

    aput-object v2, v1, v0

    .line 56
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailStarters:[Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 57
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailStopers:[Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    new-instance v1, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$DirectorSecretary;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$DirectorSecretary;-><init>(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$1;)V

    iput-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mSecretary:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$DirectorSecretary;

    .line 60
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mSecretary:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$DirectorSecretary;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 61
    return-void
.end method

.method public updateStage()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailSource:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow;->getActiveStart()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mActiveStart:I

    .line 114
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailSource:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow;

    invoke-interface {v0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow;->getActiveEnd()I

    move-result v0

    iput v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mActiveEnd:I

    .line 117
    invoke-virtual {p0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->pumpLiveThumbnails()V

    .line 118
    return-void
.end method
