.class Lcom/android/music/MediaPlaybackService$ServiceStub;
.super Lcom/android/music/IMediaPlaybackService$Stub;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceStub"
.end annotation


# instance fields
.field mService:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/android/music/MediaPlaybackService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/music/MediaPlaybackService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 3336
    invoke-direct {p0}, Lcom/android/music/IMediaPlaybackService$Stub;-><init>()V

    .line 3337
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    .line 3338
    return-void
.end method


# virtual methods
.method public canUseAsRingtone()Z
    .locals 1

    .prologue
    .line 3438
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->canUseAsRingtone()Z

    move-result v0

    return v0
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 3405
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public enqueue([JI)V
    .locals 1
    .parameter "list"
    .parameter "action"

    .prologue
    .line 3387
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/MediaPlaybackService;->enqueue([JI)V

    .line 3388
    return-void
.end method

.method public getAlbumId()J
    .locals 2

    .prologue
    .line 3378
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getAlbumId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3375
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistId()J
    .locals 2

    .prologue
    .line 3384
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getArtistId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3381
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioId()J
    .locals 2

    .prologue
    .line 3399
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getAudioId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 3432
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3435
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getMIMEType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 3429
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getMediaMountedCount()I

    move-result v0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3396
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()[J
    .locals 1

    .prologue
    .line 3390
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getQueue()[J

    move-result-object v0

    return-object v0
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 3348
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getQueuePosition()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 3426
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 3414
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3372
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 3354
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public moveQueueItem(II)V
    .locals 1
    .parameter "from"
    .parameter "to"

    .prologue
    .line 3393
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/MediaPlaybackService;->moveQueueItem(II)V

    .line 3394
    return-void
.end method

.method public next()V
    .locals 2

    .prologue
    .line 3369
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/music/MediaPlaybackService;->gotoNext(Z)V

    .line 3370
    return-void
.end method

.method public open([JI)V
    .locals 1
    .parameter "list"
    .parameter "position"

    .prologue
    .line 3345
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/MediaPlaybackService;->open([JI)V

    .line 3346
    return-void
.end method

.method public openFile(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 3342
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/android/music/MediaPlaybackService;->open(Ljava/lang/String;)Z

    .line 3343
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 3360
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->pause()V

    .line 3361
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 3363
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->play()V

    .line 3364
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 3402
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 3366
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->prev()V

    .line 3367
    return-void
.end method

.method public removeTrack(J)I
    .locals 1
    .parameter "id"

    .prologue
    .line 3420
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/MediaPlaybackService;->removeTrack(J)I

    move-result v0

    return v0
.end method

.method public removeTracks(II)I
    .locals 1
    .parameter "first"
    .parameter "last"

    .prologue
    .line 3417
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/MediaPlaybackService;->removeTracks(II)I

    move-result v0

    return v0
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 3408
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/MediaPlaybackService;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setQueuePosition(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 3351
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/android/music/MediaPlaybackService;->setQueuePosition(I)V

    .line 3352
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatmode"

    .prologue
    .line 3423
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/android/music/MediaPlaybackService;->setRepeatMode(I)V

    .line 3424
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1
    .parameter "shufflemode"

    .prologue
    .line 3411
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/android/music/MediaPlaybackService;->setShuffleMode(I)V

    .line 3412
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 3357
    iget-object v0, p0, Lcom/android/music/MediaPlaybackService$ServiceStub;->mService:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/music/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/android/music/MediaPlaybackService;->stop()V

    .line 3358
    return-void
.end method
