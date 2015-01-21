.class Lcom/android/camera/actor/SmileActor$SmileCameraCategory;
.super Lcom/android/camera/actor/PhotoActor$CameraCategory;
.source "SmileActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/SmileActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmileCameraCategory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/SmileActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/SmileActor;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    invoke-direct {p0, p1}, Lcom/android/camera/actor/PhotoActor$CameraCategory;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    return-void
.end method


# virtual methods
.method public applySpecialCapture()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method public doCancelCapture()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 220
    const-string v0, "SmileActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCamera.getCameraDevice()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v2, v2, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    #getter for: Lcom/android/camera/actor/SmileActor;->mStatus:I
    invoke-static {v2}, Lcom/android/camera/actor/SmileActor;->access$100(Lcom/android/camera/actor/SmileActor;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 231
    :goto_0
    return v3

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    #getter for: Lcom/android/camera/actor/SmileActor;->mStatus:I
    invoke-static {v0}, Lcom/android/camera/actor/SmileActor;->access$100(Lcom/android/camera/actor/SmileActor;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/SmileActor;->stopSmileDetection()V

    goto :goto_0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    #setter for: Lcom/android/camera/actor/SmileActor;->mStatus:I
    invoke-static {v0, v3}, Lcom/android/camera/actor/SmileActor;->access$102(Lcom/android/camera/actor/SmileActor;I)I

    goto :goto_0
.end method

.method public doOnPictureTaken()V
    .locals 4

    .prologue
    .line 207
    const-string v0, "SmileActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doOnPictureTaken() mCamera.isFullScreen() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v2, v2, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCamera.getCurrentMode() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v2, v2, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    #getter for: Lcom/android/camera/actor/SmileActor;->mDoSmileSnapRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/actor/SmileActor;->access$200(Lcom/android/camera/actor/SmileActor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    #getter for: Lcom/android/camera/actor/SmileActor;->mDoSmileSnapRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/actor/SmileActor;->access$200(Lcom/android/camera/actor/SmileActor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    #getter for: Lcom/android/camera/actor/SmileActor;->mDoSmileSnapRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/actor/SmileActor;->access$200(Lcom/android/camera/actor/SmileActor;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/actor/SmileActor;->mStatus:I
    invoke-static {v0, v1}, Lcom/android/camera/actor/SmileActor;->access$102(Lcom/android/camera/actor/SmileActor;I)I

    .line 216
    :cond_1
    return-void
.end method

.method public initializeFirstTime()V
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v1, v1, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const v2, 0x7f0c00ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;I)V

    .line 192
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    #getter for: Lcom/android/camera/actor/SmileActor;->mFullScreenChangedListener:Lcom/android/camera/Camera$OnFullScreenChangedListener;
    invoke-static {v1}, Lcom/android/camera/actor/SmileActor;->access$300(Lcom/android/camera/actor/SmileActor;)Lcom/android/camera/Camera$OnFullScreenChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->addOnFullScreenChangedListener(Lcom/android/camera/Camera$OnFullScreenChangedListener;)Z

    .line 193
    return-void
.end method

.method public onLeaveActor()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 238
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    #getter for: Lcom/android/camera/actor/SmileActor;->mDoSmileSnapRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/actor/SmileActor;->access$200(Lcom/android/camera/actor/SmileActor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    #getter for: Lcom/android/camera/actor/SmileActor;->mStatus:I
    invoke-static {v0}, Lcom/android/camera/actor/SmileActor;->access$100(Lcom/android/camera/actor/SmileActor;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$SmileCameraCategory;->this$0:Lcom/android/camera/actor/SmileActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/SmileActor;->stopSmileDetection()V

    .line 242
    :cond_0
    return-void
.end method

.method public supportContinuousShot()Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method
