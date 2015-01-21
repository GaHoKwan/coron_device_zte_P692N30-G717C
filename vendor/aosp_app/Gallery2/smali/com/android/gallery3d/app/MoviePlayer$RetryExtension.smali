.class Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;
.super Ljava/lang/Object;
.source "MoviePlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Lcom/android/gallery3d/app/MoviePlayer$Restorable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetryExtension"
.end annotation


# static fields
.field private static final KEY_VIDEO_RETRY_COUNT:Ljava/lang/String; = "video_retry_count"


# instance fields
.field private mRetryCount:I

.field private mRetryDuration:I

.field private mRetryPosition:I

.field final synthetic this$0:Lcom/android/gallery3d/app/MoviePlayer;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1328
    iput-object p1, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1328
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;-><init>(Lcom/android/gallery3d/app/MoviePlayer;)V

    return-void
.end method


# virtual methods
.method public clearRetry()V
    .locals 3

    .prologue
    .line 1343
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearRetry() mRetryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    .line 1346
    return-void
.end method

.method public getRetryCount()I
    .locals 3

    .prologue
    .line 1360
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRetryCount() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    return v0
.end method

.method public handleOnReplay()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1420
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->isRetrying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1421
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->clearRetry()V

    .line 1422
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v1

    .line 1423
    .local v1, errorPosition:I
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v4}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDuration()I

    move-result v0

    .line 1424
    .local v0, errorDuration:I
    iget-object v4, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    if-lez v1, :cond_0

    move v2, v3

    :cond_0
    #calls: Lcom/android/gallery3d/app/MoviePlayer;->doStartVideoCareDrm(ZII)V
    invoke-static {v4, v2, v1, v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$2000(Lcom/android/gallery3d/app/MoviePlayer;ZII)V

    .line 1426
    const-string v2, "Gallery2/MoviePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReplay() errorPosition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", errorDuration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    .end local v0           #errorDuration:I
    .end local v1           #errorPosition:I
    :goto_0
    return v3

    :cond_1
    move v3, v2

    goto :goto_0
.end method

.method public isRetrying()Z
    .locals 4

    .prologue
    .line 1366
    const/4 v0, 0x0

    .line 1367
    .local v0, retry:Z
    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    if-lez v1, :cond_0

    .line 1368
    const/4 v0, 0x1

    .line 1371
    :cond_0
    const-string v1, "Gallery2/MoviePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRetrying() mRetryCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    return v0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v0, 0x1

    .line 1388
    const/16 v1, 0x105

    if-ne p2, v1, :cond_1

    .line 1390
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryPosition:I

    .line 1391
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->getDuration()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryDuration:I

    .line 1392
    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    .line 1393
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->reachRetryCount()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1394
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    sget-object v2, Lcom/android/gallery3d/app/MoviePlayer$TState;->RETRY_ERROR:Lcom/android/gallery3d/app/MoviePlayer$TState;

    #setter for: Lcom/android/gallery3d/app/MoviePlayer;->mTState:Lcom/android/gallery3d/app/MoviePlayer$TState;
    invoke-static {v1, v2}, Lcom/android/gallery3d/app/MoviePlayer;->access$1102(Lcom/android/gallery3d/app/MoviePlayer;Lcom/android/gallery3d/app/MoviePlayer$TState;)Lcom/android/gallery3d/app/MoviePlayer$TState;

    .line 1395
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$3100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->showReconnectingError()V

    .line 1398
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mController:Lcom/android/gallery3d/app/MovieControllerOverlay;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$600(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/android/gallery3d/app/MovieControllerOverlay;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/app/CommonControllerOverlay;->setCanReplay(Z)V

    .line 1405
    :goto_0
    return v0

    .line 1400
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$3100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    invoke-interface {v1, v2}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->showReconnecting(I)V

    .line 1401
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->retry()V

    goto :goto_0

    .line 1405
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 1410
    const/16 v0, 0x35d

    if-ne p2, v0, :cond_0

    .line 1413
    invoke-virtual {p0}, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->clearRetry()V

    .line 1414
    const/4 v0, 0x1

    .line 1416
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 1378
    const-string v0, "video_retry_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    .line 1379
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1383
    const-string v0, "video_retry_count"

    iget v1, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1384
    return-void
.end method

.method public reachRetryCount()Z
    .locals 3

    .prologue
    .line 1350
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reachRetryCount() mRetryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iget v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 1353
    const/4 v0, 0x1

    .line 1355
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public retry()V
    .locals 4

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryPosition:I

    iget v3, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryDuration:I

    #calls: Lcom/android/gallery3d/app/MoviePlayer;->doStartVideoCareDrm(ZII)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/app/MoviePlayer;->access$2000(Lcom/android/gallery3d/app/MoviePlayer;ZII)V

    .line 1337
    const-string v0, "Gallery2/MoviePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retry() mRetryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRetryPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/ext/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    return-void
.end method

.method public showRetry()V
    .locals 2

    .prologue
    .line 1434
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mOverlayExt:Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$3100(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IContrllerOverlayExt;->showReconnectingError()V

    .line 1435
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoCanSeek:Z
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$1900(Lcom/android/gallery3d/app/MoviePlayer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->canSeekForward()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1436
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$3200(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->seekTo(I)V

    .line 1438
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoView:Lcom/mediatek/gallery3d/video/MTKVideoView;
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$500(Lcom/android/gallery3d/app/MoviePlayer;)Lcom/mediatek/gallery3d/video/MTKVideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MoviePlayer;->access$3300(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/gallery3d/video/MTKVideoView;->setDuration(I)V

    .line 1439
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoPosition:I
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$3200(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryPosition:I

    .line 1440
    iget-object v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->this$0:Lcom/android/gallery3d/app/MoviePlayer;

    #getter for: Lcom/android/gallery3d/app/MoviePlayer;->mVideoLastDuration:I
    invoke-static {v0}, Lcom/android/gallery3d/app/MoviePlayer;->access$3300(Lcom/android/gallery3d/app/MoviePlayer;)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/MoviePlayer$RetryExtension;->mRetryDuration:I

    .line 1441
    return-void
.end method
