.class Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;
.super Ljava/lang/Object;
.source "VideoThumbnailDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoThumbnailPlayer"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final INIT_POOL_SIZE:I = 0x10

.field private static final MAX_PLAYER_COUNT:I = 0x10

.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoThumbnailPlayer"


# instance fields
.field private final mCheckOuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCheckOutsLock:Ljava/lang/Object;

.field private mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

.field private volatile mIsWorking:Z

.field private volatile mPlayerCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 442
    const-class v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(ILcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1
    .parameter "initialSize"
    .parameter "activity"

    .prologue
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mCheckOutsLock:Ljava/lang/Object;

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mCheckOuts:Ljava/util/List;

    .line 458
    iput-object p2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 459
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 462
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;-><init>(ILcom/android/gallery3d/app/AbstractGalleryActivity;)V

    .line 463
    return-void
.end method

.method public static create(Lcom/android/gallery3d/app/AbstractGalleryActivity;)Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;
    .locals 1
    .parameter "activity"

    .prologue
    .line 466
    new-instance v0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;-><init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V

    return-object v0
.end method

.method private getPlayInfoFromPath(Ljava/lang/String;)Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;
    .locals 4
    .parameter "thumbnailPath"

    .prologue
    .line 470
    iget-object v3, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mCheckOutsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 471
    :try_start_0
    iget-boolean v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mIsWorking:Z

    if-eqz v2, :cond_1

    .line 472
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mCheckOuts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;

    .line 473
    .local v1, vtPlayInfo:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;
    iget-object v2, v1, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->mPath:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    monitor-exit v3

    .line 479
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #vtPlayInfo:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;
    :goto_0
    return-object v1

    .line 478
    :cond_1
    monitor-exit v3

    .line 479
    const/4 v1, 0x0

    goto :goto_0

    .line 478
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public closeThumbnail(Ljava/lang/String;)Z
    .locals 3
    .parameter "thumbnailPath"

    .prologue
    .line 536
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mCheckOutsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 537
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->getPlayInfoFromPath(Ljava/lang/String;)Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;

    move-result-object v0

    .line 538
    .local v0, vtPlayInfo:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;
    if-nez v0, :cond_0

    .line 539
    const/4 v1, 0x0

    monitor-exit v2

    .line 546
    :goto_0
    return v1

    .line 541
    :cond_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mCheckOuts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 542
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->stop()Z

    .line 544
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->release()V

    .line 545
    iget v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mPlayerCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mPlayerCount:I

    .line 546
    const/4 v1, 0x1

    goto :goto_0

    .line 542
    .end local v0           #vtPlayInfo:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPlayingThumbnails(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 487
    .local p1, thumbnailPaths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 488
    iget-object v3, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mCheckOutsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 489
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mCheckOuts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;

    .line 490
    .local v1, playerInfo:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;
    iget-object v2, v1, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->mPath:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 492
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #playerInfo:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    return-void
.end method

.method public isThumbnailPlaying(Ljava/lang/String;)Z
    .locals 1
    .parameter "thumbnailPath"

    .prologue
    .line 483
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->getPlayInfoFromPath(Ljava/lang/String;)Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openThumbnail(Ljava/lang/String;Lcom/android/gallery3d/data/LocalMediaItem;)Z
    .locals 5
    .parameter "thumbnailPath"
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 507
    iget-boolean v3, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mIsWorking:Z

    if-nez v3, :cond_0

    .line 531
    :goto_0
    return v1

    .line 509
    :cond_0
    iget v3, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mPlayerCount:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    move v1, v2

    .line 510
    goto :goto_0

    .line 512
    :cond_1
    const-string v3, "Gallery2/VideoThumbnailPlayer"

    const-string v4, "create new player in the pool"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {p2}, Lcom/android/gallery3d/data/LocalMediaItem;->getVideoPlayer()Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;

    move-result-object v0

    .line 515
    .local v0, vtPlayInfo:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;
    iget-object v3, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v3, v0, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->mGalleryActivity:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    .line 516
    iput-object p1, v0, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->mPath:Ljava/lang/String;

    .line 517
    iput-object p2, v0, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->mItem:Lcom/android/gallery3d/data/MediaItem;

    .line 518
    iget v3, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mPlayerCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mPlayerCount:I

    .line 520
    sget-boolean v3, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 521
    :cond_2
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->prepare()Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    .line 524
    :cond_3
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mCheckOutsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 525
    :try_start_0
    iget-boolean v3, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mIsWorking:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->start()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 526
    iget-object v3, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mCheckOuts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 528
    :cond_4
    :try_start_1
    invoke-virtual {v0}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 554
    iget-object v3, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mCheckOutsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 555
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mIsWorking:Z

    .line 556
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mCheckOuts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;

    .line 558
    .local v1, vtPlayInfo:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;
    invoke-virtual {v1}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->stop()Z

    .line 559
    invoke-virtual {v1}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->release()V

    goto :goto_0

    .line 563
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #vtPlayInfo:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 561
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mCheckOuts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 562
    const/16 v2, 0x10

    iput v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mPlayerCount:I

    .line 563
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 565
    return-void
.end method

.method public renderThumbnail(Ljava/lang/String;Lcom/android/gallery3d/ui/GLCanvas;II)Z
    .locals 2
    .parameter "thumbnailPath"
    .parameter "canvas"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 497
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->getPlayInfoFromPath(Ljava/lang/String;)Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;

    move-result-object v0

    .line 498
    .local v0, vtPlayInfo:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;
    if-nez v0, :cond_0

    .line 499
    const/4 v1, 0x0

    .line 501
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p2, p3, p4}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoPlayer;->render(Lcom/android/gallery3d/ui/GLCanvas;II)Z

    move-result v1

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->mIsWorking:Z

    .line 551
    return-void
.end method
