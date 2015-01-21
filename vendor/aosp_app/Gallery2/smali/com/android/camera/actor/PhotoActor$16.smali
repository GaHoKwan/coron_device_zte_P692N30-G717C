.class Lcom/android/camera/actor/PhotoActor$16;
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
    .line 686
    iput-object p1, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 11
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    .line 691
    const-string v6, "PhotoActor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "JpegPictureCallback onPictureTaken jpegData="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mCameraClosed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-boolean v8, v8, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    const/4 v7, 0x0

    #setter for: Lcom/android/camera/actor/PhotoActor;->mKeyHalfPressed:Z
    invoke-static {v6, v7}, Lcom/android/camera/actor/PhotoActor;->access$2402(Lcom/android/camera/actor/PhotoActor;Z)Z

    .line 694
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-boolean v6, v6, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_2

    .line 695
    :cond_0
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v6, v6, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 696
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v6, v6, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 697
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-boolean v6, v6, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v6, :cond_1

    .line 699
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/camera/actor/PhotoActor;->restartPreview(Z)V

    .line 760
    :cond_1
    :goto_0
    return-void

    .line 704
    :cond_2
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    #setter for: Lcom/android/camera/actor/PhotoActor;->mJpegPictureCallbackTime:J
    invoke-static {v6, v7, v8}, Lcom/android/camera/actor/PhotoActor;->access$2502(Lcom/android/camera/actor/PhotoActor;J)J

    .line 708
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-wide v6, v6, Lcom/android/camera/actor/PhotoActor;->mPostViewPictureCallbackTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 709
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v7, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-wide v7, v7, Lcom/android/camera/actor/PhotoActor;->mPostViewPictureCallbackTime:J

    iget-object v9, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mShutterCallbackTime:J
    invoke-static {v9}, Lcom/android/camera/actor/PhotoActor;->access$1600(Lcom/android/camera/actor/PhotoActor;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    iput-wide v7, v6, Lcom/android/camera/actor/PhotoActor;->mShutterToPictureDisplayedTime:J

    .line 711
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v7, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mJpegPictureCallbackTime:J
    invoke-static {v7}, Lcom/android/camera/actor/PhotoActor;->access$2500(Lcom/android/camera/actor/PhotoActor;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-wide v9, v9, Lcom/android/camera/actor/PhotoActor;->mPostViewPictureCallbackTime:J

    sub-long/2addr v7, v9

    iput-wide v7, v6, Lcom/android/camera/actor/PhotoActor;->mPictureDisplayedToJpegCallbackTime:J

    .line 719
    :goto_1
    const-string v6, "PhotoActor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPictureDisplayedToJpegCallbackTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-wide v8, v8, Lcom/android/camera/actor/PhotoActor;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileStorePicture()V

    .line 723
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v6, v6, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 724
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v6, v6, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v6

    if-nez v6, :cond_3

    .line 725
    invoke-static {}, Lcom/mediatek/camera/ext/ExtensionHelper;->getFeatureExtension()Lcom/mediatek/camera/ext/IFeatureExtension;

    move-result-object v5

    .line 726
    .local v5, previewFeature:Lcom/mediatek/camera/ext/IFeatureExtension;
    invoke-interface {v5}, Lcom/mediatek/camera/ext/IFeatureExtension;->isDelayRestartPreview()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 727
    const-wide/16 v6, 0x4b0

    iget-object v8, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-wide v8, v8, Lcom/android/camera/actor/PhotoActor;->mPictureDisplayedToJpegCallbackTime:J

    sub-long v0, v6, v8

    .line 728
    .local v0, delay:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_5

    .line 729
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/camera/actor/PhotoActor;->restartPreview(Z)V

    .line 738
    .end local v0           #delay:J
    .end local v5           #previewFeature:Lcom/mediatek/camera/ext/IFeatureExtension;
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/camera/actor/PhotoActor;->mCapturing:Z

    .line 740
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v6, v6, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v6

    if-nez v6, :cond_7

    .line 742
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v6, p1}, Lcom/android/camera/actor/PhotoActor;->setSaveRequest([B)V

    .line 743
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v6, v6, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    invoke-virtual {v6}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->doOnPictureTaken()V

    .line 755
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 756
    .local v3, now:J
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v7, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mJpegPictureCallbackTime:J
    invoke-static {v7}, Lcom/android/camera/actor/PhotoActor;->access$2500(Lcom/android/camera/actor/PhotoActor;)J

    move-result-wide v7

    sub-long v7, v3, v7

    iput-wide v7, v6, Lcom/android/camera/actor/PhotoActor;->mJpegCallbackFinishTime:J

    .line 757
    const-string v6, "PhotoActor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mJpegCallbackFinishTime = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-wide v8, v8, Lcom/android/camera/actor/PhotoActor;->mJpegCallbackFinishTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileStorePicture()V

    .line 759
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    const-wide/16 v7, 0x0

    #setter for: Lcom/android/camera/actor/PhotoActor;->mJpegPictureCallbackTime:J
    invoke-static {v6, v7, v8}, Lcom/android/camera/actor/PhotoActor;->access$2502(Lcom/android/camera/actor/PhotoActor;J)J

    goto/16 :goto_0

    .line 714
    .end local v3           #now:J
    :cond_4
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v7, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mRawPictureCallbackTime:J
    invoke-static {v7}, Lcom/android/camera/actor/PhotoActor;->access$1700(Lcom/android/camera/actor/PhotoActor;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mShutterCallbackTime:J
    invoke-static {v9}, Lcom/android/camera/actor/PhotoActor;->access$1600(Lcom/android/camera/actor/PhotoActor;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    iput-wide v7, v6, Lcom/android/camera/actor/PhotoActor;->mShutterToPictureDisplayedTime:J

    .line 716
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v7, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mJpegPictureCallbackTime:J
    invoke-static {v7}, Lcom/android/camera/actor/PhotoActor;->access$2500(Lcom/android/camera/actor/PhotoActor;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mRawPictureCallbackTime:J
    invoke-static {v9}, Lcom/android/camera/actor/PhotoActor;->access$1700(Lcom/android/camera/actor/PhotoActor;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    iput-wide v7, v6, Lcom/android/camera/actor/PhotoActor;->mPictureDisplayedToJpegCallbackTime:J

    goto/16 :goto_1

    .line 731
    .restart local v0       #delay:J
    .restart local v5       #previewFeature:Lcom/mediatek/camera/ext/IFeatureExtension;
    :cond_5
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v6, v6, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x68

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 732
    .local v2, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v6, v6, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 735
    .end local v0           #delay:J
    .end local v2           #msg:Landroid/os/Message;
    :cond_6
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/camera/actor/PhotoActor;->restartPreview(Z)V

    goto/16 :goto_2

    .line 745
    .end local v5           #previewFeature:Lcom/mediatek/camera/ext/IFeatureExtension;
    :cond_7
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iput-object p1, v6, Lcom/android/camera/actor/PhotoActor;->mJpegImageData:[B

    .line 746
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v6, v6, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->isQuickCapture()Z

    move-result v6

    if-nez v6, :cond_8

    .line 747
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v6, v6, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->showReview()V

    .line 748
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v6, v6, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 749
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v6, v6, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/camera/Camera;->setViewState(I)V

    goto/16 :goto_3

    .line 751
    :cond_8
    iget-object v6, p0, Lcom/android/camera/actor/PhotoActor$16;->this$0:Lcom/android/camera/actor/PhotoActor;

    #calls: Lcom/android/camera/actor/PhotoActor;->doAttach()V
    invoke-static {v6}, Lcom/android/camera/actor/PhotoActor;->access$600(Lcom/android/camera/actor/PhotoActor;)V

    goto/16 :goto_3
.end method
