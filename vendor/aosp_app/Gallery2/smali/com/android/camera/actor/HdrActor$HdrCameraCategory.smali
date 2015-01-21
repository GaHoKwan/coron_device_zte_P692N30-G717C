.class Lcom/android/camera/actor/HdrActor$HdrCameraCategory;
.super Lcom/android/camera/actor/PhotoActor$CameraCategory;
.source "HdrActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/HdrActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HdrCameraCategory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/HdrActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/HdrActor;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/actor/HdrActor$HdrCameraCategory;->this$0:Lcom/android/camera/actor/HdrActor;

    invoke-direct {p0, p1}, Lcom/android/camera/actor/PhotoActor$CameraCategory;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    return-void
.end method


# virtual methods
.method public animateCapture(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter "camera"

    .prologue
    .line 86
    return-void
.end method

.method public applySpecialCapture()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public doOnPictureTaken()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "HdrActor"

    const-string v1, "Hdr.doOnPictureTaken"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/android/camera/actor/HdrActor$HdrCameraCategory;->this$0:Lcom/android/camera/actor/HdrActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-super {p0, v0}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->animateCapture(Lcom/android/camera/Camera;)V

    .line 79
    iget-object v0, p0, Lcom/android/camera/actor/HdrActor$HdrCameraCategory;->this$0:Lcom/android/camera/actor/HdrActor;

    #getter for: Lcom/android/camera/actor/HdrActor;->mOriginalSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v0}, Lcom/android/camera/actor/HdrActor;->access$000(Lcom/android/camera/actor/HdrActor;)Lcom/android/camera/SaveRequest;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/HdrActor$HdrCameraCategory;->this$0:Lcom/android/camera/actor/HdrActor;

    #getter for: Lcom/android/camera/actor/HdrActor;->mOriginalSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v0}, Lcom/android/camera/actor/HdrActor;->access$000(Lcom/android/camera/actor/HdrActor;)Lcom/android/camera/SaveRequest;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/SaveRequest;->addRequest()V

    goto :goto_0
.end method

.method public ensureCaptureTempPath()V
    .locals 4

    .prologue
    .line 64
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isHdrOriginalPictureSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/camera/actor/HdrActor$HdrCameraCategory;->this$0:Lcom/android/camera/actor/HdrActor;

    iget-object v1, p0, Lcom/android/camera/actor/HdrActor$HdrCameraCategory;->this$0:Lcom/android/camera/actor/HdrActor;

    iget-object v1, v1, Lcom/android/camera/actor/CameraActor;->mContext:Lcom/android/camera/Camera;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/Camera;->preparePhotoRequest(II)Lcom/android/camera/SaveRequest;

    move-result-object v1

    #setter for: Lcom/android/camera/actor/HdrActor;->mOriginalSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v0, v1}, Lcom/android/camera/actor/HdrActor;->access$002(Lcom/android/camera/actor/HdrActor;Lcom/android/camera/SaveRequest;)Lcom/android/camera/SaveRequest;

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/HdrActor$HdrCameraCategory;->this$0:Lcom/android/camera/actor/HdrActor;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/actor/HdrActor;->mOriginalSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v0, v1}, Lcom/android/camera/actor/HdrActor;->access$002(Lcom/android/camera/actor/HdrActor;Lcom/android/camera/SaveRequest;)Lcom/android/camera/SaveRequest;

    goto :goto_0
.end method

.method public initializeFirstTime()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/actor/HdrActor$HdrCameraCategory;->this$0:Lcom/android/camera/actor/HdrActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/HdrActor$HdrCameraCategory;->this$0:Lcom/android/camera/actor/HdrActor;

    iget-object v1, v1, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v2, 0x7f0c0012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;I)V

    .line 56
    return-void
.end method

.method public onLeaveActor()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "HdrActor"

    const-string v1, "HDR.onLeaveActor"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/camera/actor/HdrActor$HdrCameraCategory;->this$0:Lcom/android/camera/actor/HdrActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 92
    return-void
.end method

.method public supportContinuousShot()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method
