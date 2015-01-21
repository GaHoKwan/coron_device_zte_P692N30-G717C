.class Lcom/android/camera/actor/PhotoActor$15;
.super Ljava/lang/Object;
.source "PhotoActor.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/PhotoActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/PhotoActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/PhotoActor;)V
    .locals 0
    .parameter

    .prologue
    .line 646
    iput-object p1, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 7
    .parameter "data"
    .parameter "camera"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 649
    const-string v1, "PhotoActor"

    const-string v2, "PhotoActor.ContinuousShot.onPictureTaken"

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileStorePicture()V

    .line 651
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z
    invoke-static {v1}, Lcom/android/camera/actor/PhotoActor;->access$400(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 652
    const-string v1, "PhotoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPictureTaken("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") stop shot!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v1, v6, v4}, Lcom/android/camera/actor/PhotoActor;->onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V

    .line 654
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    #setter for: Lcom/android/camera/actor/PhotoActor;->mIgnoreClick:Z
    invoke-static {v1, v5}, Lcom/android/camera/actor/PhotoActor;->access$1802(Lcom/android/camera/actor/PhotoActor;Z)Z

    .line 679
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileStorePicture()V

    .line 680
    const-string v1, "PhotoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuous Shot, onPictureTaken: mCurrentShotsNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mCurrentShotsNum:I
    invoke-static {v3}, Lcom/android/camera/actor/PhotoActor;->access$2000(Lcom/android/camera/actor/PhotoActor;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mContinuousShotPerformed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z
    invoke-static {v3}, Lcom/android/camera/actor/PhotoActor;->access$400(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const-string v1, "PhotoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Continuous Shot, speed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mMemoryManager:Lcom/android/camera/actor/PhotoActor$MemoryManager;
    invoke-static {v3}, Lcom/android/camera/actor/PhotoActor;->access$2200(Lcom/android/camera/actor/PhotoActor;)Lcom/android/camera/actor/PhotoActor$MemoryManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/actor/PhotoActor$MemoryManager;->getSuitableContinuousShotSpeed()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return-void

    .line 655
    :cond_1
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z
    invoke-static {v1}, Lcom/android/camera/actor/PhotoActor;->access$400(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-boolean v1, v1, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v1, :cond_6

    .line 656
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v1, v1, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v1}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->canshot()Z

    move-result v1

    if-nez v1, :cond_2

    .line 657
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v1, v6, v4}, Lcom/android/camera/actor/PhotoActor;->onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V

    .line 659
    :cond_2
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    array-length v2, p1

    invoke-static {v1, v2}, Lcom/android/camera/actor/PhotoActor;->access$1912(Lcom/android/camera/actor/PhotoActor;I)I

    .line 660
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v1, p1}, Lcom/android/camera/actor/PhotoActor;->setSaveRequest([B)V

    .line 661
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v2, v2, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getFileSaver()Lcom/android/camera/FileSaver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v3, v3, Lcom/android/camera/actor/PhotoActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    invoke-virtual {v2, v3}, Lcom/android/camera/FileSaver;->copyPhotoRequest(Lcom/android/camera/SaveRequest;)Lcom/android/camera/SaveRequest;

    move-result-object v2

    iput-object v2, v1, Lcom/android/camera/actor/PhotoActor;->mSaveRequest:Lcom/android/camera/SaveRequest;

    .line 663
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-static {v1}, Lcom/android/camera/actor/PhotoActor;->access$2008(Lcom/android/camera/actor/PhotoActor;)I

    .line 664
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    #calls: Lcom/android/camera/actor/PhotoActor;->showCsSpeedIndicator()V
    invoke-static {v1}, Lcom/android/camera/actor/PhotoActor;->access$2100(Lcom/android/camera/actor/PhotoActor;)V

    .line 665
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mMemoryManager:Lcom/android/camera/actor/PhotoActor$MemoryManager;
    invoke-static {v1}, Lcom/android/camera/actor/PhotoActor;->access$2200(Lcom/android/camera/actor/PhotoActor;)Lcom/android/camera/actor/PhotoActor$MemoryManager;

    move-result-object v1

    array-length v2, p1

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/actor/PhotoActor$MemoryManager;->refresh(J)V

    .line 666
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mCurrentShotsNum:I
    invoke-static {v1}, Lcom/android/camera/actor/PhotoActor;->access$2000(Lcom/android/camera/actor/PhotoActor;)I

    move-result v1

    if-eq v1, v5, :cond_3

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mCurrentShotsNum:I
    invoke-static {v1}, Lcom/android/camera/actor/PhotoActor;->access$2000(Lcom/android/camera/actor/PhotoActor;)I

    move-result v1

    rem-int/lit8 v1, v1, 0x5

    if-nez v1, :cond_4

    .line 667
    :cond_3
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mContinuousShotDataSize:I
    invoke-static {v1}, Lcom/android/camera/actor/PhotoActor;->access$1900(Lcom/android/camera/actor/PhotoActor;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v2, v2, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getFileSaver()Lcom/android/camera/FileSaver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/FileSaver;->getWaitingDataSize()J

    move-result-wide v2

    long-to-int v2, v2

    sub-int v0, v1, v2

    .line 668
    .local v0, storedDatatSize:I
    const-string v1, "PhotoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storedDatatSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v1, v1, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mMemoryManager:Lcom/android/camera/actor/PhotoActor$MemoryManager;
    invoke-static {v2}, Lcom/android/camera/actor/PhotoActor;->access$2200(Lcom/android/camera/actor/PhotoActor;)Lcom/android/camera/actor/PhotoActor$MemoryManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/actor/PhotoActor$MemoryManager;->getLeftMemory()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setContinuousShotState(II)V

    .line 671
    .end local v0           #storedDatatSize:I
    :cond_4
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mCurrentShotsNum:I
    invoke-static {v1}, Lcom/android/camera/actor/PhotoActor;->access$2000(Lcom/android/camera/actor/PhotoActor;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mMaxCaptureNum:I
    invoke-static {v2}, Lcom/android/camera/actor/PhotoActor;->access$2300(Lcom/android/camera/actor/PhotoActor;)I

    move-result v2

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mMemoryManager:Lcom/android/camera/actor/PhotoActor$MemoryManager;
    invoke-static {v1}, Lcom/android/camera/actor/PhotoActor;->access$2200(Lcom/android/camera/actor/PhotoActor;)Lcom/android/camera/actor/PhotoActor$MemoryManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/actor/PhotoActor$MemoryManager;->isNeedStopCapture()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    :cond_5
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v1, v6, v4}, Lcom/android/camera/actor/PhotoActor;->onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V

    .line 673
    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    #setter for: Lcom/android/camera/actor/PhotoActor;->mIgnoreClick:Z
    invoke-static {v1, v5}, Lcom/android/camera/actor/PhotoActor;->access$1802(Lcom/android/camera/actor/PhotoActor;Z)Z

    goto/16 :goto_0

    .line 676
    :cond_6
    const-string v1, "PhotoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received onPictureTaken, but mCameraClosed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-boolean v3, v3, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or mContinuousShotPerformed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor$15;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mContinuousShotPerformed:Z
    invoke-static {v3}, Lcom/android/camera/actor/PhotoActor;->access$400(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ignore it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
