.class Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;
.super Lcom/android/camera/actor/PhotoActor$CameraCategory;
.source "MotionTrackActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/MotionTrackActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MotionTrackCategory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/MotionTrackActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/MotionTrackActor;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    invoke-direct {p0, p1}, Lcom/android/camera/actor/PhotoActor$CameraCategory;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    return-void
.end method


# virtual methods
.method public applySpecialCapture()Z
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public doOnPictureTaken()V
    .locals 0

    .prologue
    .line 517
    return-void
.end method

.method public enableFD(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "camera"

    .prologue
    .line 509
    const/4 v0, 0x0

    return v0
.end method

.method public initializeFirstTime()V
    .locals 3

    .prologue
    .line 483
    const-string v0, "MotionTrack"

    const-string v1, "MotionTrack/CameraCategory/initializeFirstTime"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mFullScreenChangedListener:Lcom/android/camera/Camera$OnFullScreenChangedListener;
    invoke-static {v1}, Lcom/android/camera/actor/MotionTrackActor;->access$1400(Lcom/android/camera/actor/MotionTrackActor;)Lcom/android/camera/Camera$OnFullScreenChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->addOnFullScreenChangedListener(Lcom/android/camera/Camera$OnFullScreenChangedListener;)Z

    .line 485
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/actor/MotionTrackActor;->showGuideString(I)V

    .line 486
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    new-instance v1, Lcom/android/camera/manager/MotionTrackViewManager;

    iget-object v2, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    iget-object v2, v2, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-direct {v1, v2}, Lcom/android/camera/manager/MotionTrackViewManager;-><init>(Lcom/android/camera/Camera;)V

    #setter for: Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackView:Lcom/android/camera/manager/MotionTrackViewManager;
    invoke-static {v0, v1}, Lcom/android/camera/actor/MotionTrackActor;->access$602(Lcom/android/camera/actor/MotionTrackActor;Lcom/android/camera/manager/MotionTrackViewManager;)Lcom/android/camera/manager/MotionTrackViewManager;

    .line 487
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackView:Lcom/android/camera/manager/MotionTrackViewManager;
    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$600(Lcom/android/camera/actor/MotionTrackActor;)Lcom/android/camera/manager/MotionTrackViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/MotionTrackViewManager;->show()V

    .line 488
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getPickerManager()Lcom/android/camera/manager/PickerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->hide()V

    .line 489
    return-void
.end method

.method public onLeaveActor()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 521
    const-string v0, "MotionTrack"

    const-string v1, "onLeaveActor"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mLongPressed:Z
    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$1500(Lcom/android/camera/actor/MotionTrackActor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #setter for: Lcom/android/camera/actor/MotionTrackActor;->mLongPressed:Z
    invoke-static {v0, v3}, Lcom/android/camera/actor/MotionTrackActor;->access$1502(Lcom/android/camera/actor/MotionTrackActor;Z)Z

    .line 524
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #setter for: Lcom/android/camera/actor/MotionTrackActor;->mSavingPictures:Z
    invoke-static {v0, v2}, Lcom/android/camera/actor/MotionTrackActor;->access$1602(Lcom/android/camera/actor/MotionTrackActor;Z)Z

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mSavingPictures:Z
    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$1600(Lcom/android/camera/actor/MotionTrackActor;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 528
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mWaitSavingDoneThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$1700(Lcom/android/camera/actor/MotionTrackActor;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mWaitSavingDoneThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$1700(Lcom/android/camera/actor/MotionTrackActor;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #calls: Lcom/android/camera/actor/MotionTrackActor;->savingDoneThread()V
    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$900(Lcom/android/camera/actor/MotionTrackActor;)V

    .line 530
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/actor/PhotoActor;->updateSavingHint(ZZ)V

    .line 535
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #setter for: Lcom/android/camera/actor/MotionTrackActor;->mShutterPressed:Z
    invoke-static {v0, v3}, Lcom/android/camera/actor/MotionTrackActor;->access$1802(Lcom/android/camera/actor/MotionTrackActor;Z)Z

    .line 536
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/Camera;->setOrientation(ZI)V

    .line 537
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/actor/PhotoActor;->overrideFocusMode(Ljava/lang/String;)V

    .line 538
    const-string v0, "MotionTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSaveRequest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v2}, Lcom/android/camera/actor/MotionTrackActor;->access$1000(Lcom/android/camera/actor/MotionTrackActor;)Lcom/android/camera/SaveRequest;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$1000(Lcom/android/camera/actor/MotionTrackActor;)Lcom/android/camera/SaveRequest;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 540
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$1000(Lcom/android/camera/actor/MotionTrackActor;)Lcom/android/camera/SaveRequest;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/camera/SaveRequest;->setTag(I)V

    .line 541
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$1000(Lcom/android/camera/actor/MotionTrackActor;)Lcom/android/camera/SaveRequest;

    move-result-object v0

    invoke-interface {v0, v3, v4}, Lcom/android/camera/SaveRequest;->setIndex(II)V

    .line 543
    :cond_3
    return-void

    .line 533
    :cond_4
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    goto :goto_0
.end method

.method public shutterPressed()V
    .locals 0

    .prologue
    .line 492
    return-void
.end method

.method public shutterUp()V
    .locals 2

    .prologue
    .line 495
    const-string v0, "MotionTrack"

    const-string v1, "MT.shutterUp"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MotionTrackCategory;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterUp()V

    .line 497
    return-void
.end method

.method public skipFocus()Z
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x0

    return v0
.end method

.method public supportContinuousShot()Z
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x0

    return v0
.end method
