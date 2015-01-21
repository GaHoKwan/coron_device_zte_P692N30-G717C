.class Lcom/android/camera/actor/FaceBeautyActor$FaceBeautyCameraCategory;
.super Lcom/android/camera/actor/PhotoActor$CameraCategory;
.source "FaceBeautyActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/FaceBeautyActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FaceBeautyCameraCategory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/FaceBeautyActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/FaceBeautyActor;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/camera/actor/FaceBeautyActor$FaceBeautyCameraCategory;->this$0:Lcom/android/camera/actor/FaceBeautyActor;

    invoke-direct {p0, p1}, Lcom/android/camera/actor/PhotoActor$CameraCategory;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    return-void
.end method


# virtual methods
.method public animateCapture(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "camera"

    .prologue
    .line 110
    return-void
.end method

.method public applySpecialCapture()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public doOnPictureTaken()V
    .locals 2

    .prologue
    .line 100
    const-string v0, "FaceBeautyActor"

    const-string v1, "FaceBeauty.doOnPictureTaken"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/camera/actor/FaceBeautyActor$FaceBeautyCameraCategory;->this$0:Lcom/android/camera/actor/FaceBeautyActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-super {p0, v0}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->animateCapture(Lcom/android/camera/Camera;)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/actor/FaceBeautyActor$FaceBeautyCameraCategory;->this$0:Lcom/android/camera/actor/FaceBeautyActor;

    #getter for: Lcom/android/camera/actor/FaceBeautyActor;->mOriginalSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v0}, Lcom/android/camera/actor/FaceBeautyActor;->access$000(Lcom/android/camera/actor/FaceBeautyActor;)Lcom/android/camera/SaveRequest;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/FaceBeautyActor$FaceBeautyCameraCategory;->this$0:Lcom/android/camera/actor/FaceBeautyActor;

    #getter for: Lcom/android/camera/actor/FaceBeautyActor;->mOriginalSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v0}, Lcom/android/camera/actor/FaceBeautyActor;->access$000(Lcom/android/camera/actor/FaceBeautyActor;)Lcom/android/camera/SaveRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/SaveRequest;->addRequest()V

    goto :goto_0
.end method

.method public enableFD(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "camera"

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public ensureCaptureTempPath()V
    .locals 4

    .prologue
    .line 86
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isFaceBeautyOriginalPictureSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/camera/actor/FaceBeautyActor$FaceBeautyCameraCategory;->this$0:Lcom/android/camera/actor/FaceBeautyActor;

    iget-object v1, p0, Lcom/android/camera/actor/FaceBeautyActor$FaceBeautyCameraCategory;->this$0:Lcom/android/camera/actor/FaceBeautyActor;

    iget-object v1, v1, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera;->preparePhotoRequest(II)Lcom/android/camera/SaveRequest;

    move-result-object v1

    #setter for: Lcom/android/camera/actor/FaceBeautyActor;->mOriginalSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v0, v1}, Lcom/android/camera/actor/FaceBeautyActor;->access$002(Lcom/android/camera/actor/FaceBeautyActor;Lcom/android/camera/SaveRequest;)Lcom/android/camera/SaveRequest;

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/FaceBeautyActor$FaceBeautyCameraCategory;->this$0:Lcom/android/camera/actor/FaceBeautyActor;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/actor/FaceBeautyActor;->mOriginalSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v0, v1}, Lcom/android/camera/actor/FaceBeautyActor;->access$002(Lcom/android/camera/actor/FaceBeautyActor;Lcom/android/camera/SaveRequest;)Lcom/android/camera/SaveRequest;

    goto :goto_0
.end method

.method public initializeFirstTime()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/actor/FaceBeautyActor$FaceBeautyCameraCategory;->this$0:Lcom/android/camera/actor/FaceBeautyActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/FaceBeautyActor$FaceBeautyCameraCategory;->this$0:Lcom/android/camera/actor/FaceBeautyActor;

    iget-object v1, v1, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v2, 0x7f0c0002

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;I)V

    .line 74
    sget-boolean v0, Lcom/android/camera/actor/PhotoActor;->sFaceDetectionStarted:Z

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/camera/actor/FaceBeautyActor$FaceBeautyCameraCategory;->this$0:Lcom/android/camera/actor/FaceBeautyActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor;->startFaceDetection()V

    .line 77
    :cond_0
    return-void
.end method

.method public onLeaveActor()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcom/android/camera/actor/FaceBeautyActor$FaceBeautyCameraCategory;->this$0:Lcom/android/camera/actor/FaceBeautyActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFrameManager()Lcom/android/camera/manager/FrameManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/FrameManager;->enableFaceBeauty(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/camera/actor/FaceBeautyActor$FaceBeautyCameraCategory;->this$0:Lcom/android/camera/actor/FaceBeautyActor;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/actor/PhotoActor;->updateSavingHint(ZZ)V

    .line 121
    return-void
.end method

.method public supportContinuousShot()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method
