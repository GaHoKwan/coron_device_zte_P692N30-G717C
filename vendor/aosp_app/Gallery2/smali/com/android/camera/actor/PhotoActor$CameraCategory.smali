.class public Lcom/android/camera/actor/PhotoActor$CameraCategory;
.super Ljava/lang/Object;
.source "PhotoActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/PhotoActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CameraCategory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/PhotoActor;


# direct methods
.method protected constructor <init>(Lcom/android/camera/actor/PhotoActor;)V
    .locals 0
    .parameter

    .prologue
    .line 1525
    iput-object p1, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public animateCapture(Lcom/android/camera/Camera;)V
    .locals 1
    .parameter "camera"

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$400(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1590
    invoke-virtual {p1}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1592
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->triggerProfileShot2ShotAnimate()V

    .line 1593
    invoke-virtual {p1}, Lcom/android/camera/Camera;->animateCapture()V

    .line 1596
    :cond_0
    return-void
.end method

.method public applySpecialCapture()Z
    .locals 3

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$400(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mZSDEnabled:Z
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$800(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    new-instance v1, Lcom/android/camera/actor/PhotoActor$RenderInCapture;

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-direct {v1, v2}, Lcom/android/camera/actor/PhotoActor$RenderInCapture;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    #setter for: Lcom/android/camera/actor/PhotoActor;->mRenderThread:Lcom/android/camera/actor/PhotoActor$RenderInCapture;
    invoke-static {v0, v1}, Lcom/android/camera/actor/PhotoActor;->access$3102(Lcom/android/camera/actor/PhotoActor;Lcom/android/camera/actor/PhotoActor$RenderInCapture;)Lcom/android/camera/actor/PhotoActor$RenderInCapture;

    .line 1567
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mRenderThread:Lcom/android/camera/actor/PhotoActor$RenderInCapture;
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$3100(Lcom/android/camera/actor/PhotoActor;)Lcom/android/camera/actor/PhotoActor$RenderInCapture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1568
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mZSDPreviewDone:Landroid/hardware/Camera$ZSDPreviewDone;
    invoke-static {v1}, Lcom/android/camera/actor/PhotoActor;->access$3200(Lcom/android/camera/actor/PhotoActor;)Landroid/hardware/Camera$ZSDPreviewDone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDoneCallback(Landroid/hardware/Camera$ZSDPreviewDone;)V

    .line 1572
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 1570
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setPreviewDoneCallback(Landroid/hardware/Camera$ZSDPreviewDone;)V

    goto :goto_0
.end method

.method public canshot()Z
    .locals 4

    .prologue
    .line 1548
    const-wide/16 v0, 0x1

    invoke-static {}, Lcom/android/camera/Storage;->getLeftSpace()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public doCancelCapture()Z
    .locals 1

    .prologue
    .line 1599
    const/4 v0, 0x0

    return v0
.end method

.method public doOnPictureTaken()V
    .locals 1

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor;->interruptRenderThread()V

    .line 1586
    return-void
.end method

.method public doShutter()V
    .locals 0

    .prologue
    .line 1559
    return-void
.end method

.method public enableFD(Lcom/android/camera/Camera;)Z
    .locals 3
    .parameter "camera"

    .prologue
    .line 1603
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v2

    aget-object v0, v1, v2

    .line 1604
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x1

    return v1
.end method

.method public ensureCaptureTempPath()V
    .locals 0

    .prologue
    .line 1561
    return-void
.end method

.method public getJpegPictureCallback()Landroid/hardware/Camera$PictureCallback;
    .locals 1

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$400(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1577
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mContinuousJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$3300(Lcom/android/camera/actor/PhotoActor;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    .line 1580
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mJpegPictureCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$3400(Lcom/android/camera/actor/PhotoActor;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    goto :goto_0
.end method

.method public initializeFirstTime()V
    .locals 3

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v1, v1, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v2, 0x7f0c0007

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->onlyShowInfo(Ljava/lang/String;I)V

    .line 1530
    return-void
.end method

.method public onLeaveActor()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1608
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLeaveActor mContinuousShotPerformed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z
    invoke-static {v2}, Lcom/android/camera/actor/PhotoActor;->access$400(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSavingPictures="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mSavingPictures:Z
    invoke-static {v2}, Lcom/android/camera/actor/PhotoActor;->access$3500(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor;->interruptRenderThread()V

    .line 1611
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$400(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z
    invoke-static {v0, v1}, Lcom/android/camera/actor/PhotoActor;->access$402(Lcom/android/camera/actor/PhotoActor;Z)Z

    .line 1613
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #setter for: Lcom/android/camera/actor/PhotoActor;->mSavingPictures:Z
    invoke-static {v0, v4}, Lcom/android/camera/actor/PhotoActor;->access$3502(Lcom/android/camera/actor/PhotoActor;Z)Z

    .line 1614
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #calls: Lcom/android/camera/actor/PhotoActor;->cancelContinuousShot()V
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$500(Lcom/android/camera/actor/PhotoActor;)V

    .line 1616
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mSavingPictures:Z
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$3500(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1618
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mWaitSavingDoneThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$3600(Lcom/android/camera/actor/PhotoActor;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mWaitSavingDoneThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$3600(Lcom/android/camera/actor/PhotoActor;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1619
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    new-instance v1, Lcom/android/camera/actor/PhotoActor$WaitSavingDoneThread;

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/camera/actor/PhotoActor$WaitSavingDoneThread;-><init>(Lcom/android/camera/actor/PhotoActor;Lcom/android/camera/actor/PhotoActor$1;)V

    #setter for: Lcom/android/camera/actor/PhotoActor;->mWaitSavingDoneThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/android/camera/actor/PhotoActor;->access$3602(Lcom/android/camera/actor/PhotoActor;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 1620
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mWaitSavingDoneThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$3600(Lcom/android/camera/actor/PhotoActor;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1621
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0, v4, v4}, Lcom/android/camera/actor/PhotoActor;->updateSavingHint(ZZ)V

    .line 1626
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1627
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->hideReview()V

    .line 1628
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v4}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 1630
    :cond_3
    return-void

    .line 1624
    :cond_4
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    goto :goto_0
.end method

.method public shutterPressed()V
    .locals 1

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterDown()V

    .line 1534
    return-void
.end method

.method public shutterUp()V
    .locals 1

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterUp()V

    .line 1538
    return-void
.end method

.method public skipFocus()Z
    .locals 1

    .prologue
    .line 1556
    const/4 v0, 0x1

    return v0
.end method

.method public supportContinuousShot()Z
    .locals 1

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mSupportContinuous:Z
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$3000(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v0

    return v0
.end method

.method public switchShutterButton()V
    .locals 2

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1541
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 1545
    :goto_0
    return-void

    .line 1543
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$CameraCategory;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->switchShutter(I)V

    goto :goto_0
.end method
