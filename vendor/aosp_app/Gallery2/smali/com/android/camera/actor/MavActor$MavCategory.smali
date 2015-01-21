.class Lcom/android/camera/actor/MavActor$MavCategory;
.super Lcom/android/camera/actor/PhotoActor$CameraCategory;
.source "MavActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/MavActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MavCategory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/MavActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/MavActor;)V
    .locals 0
    .parameter

    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/camera/actor/MavActor$MavCategory;->this$0:Lcom/android/camera/actor/MavActor;

    invoke-direct {p0, p1}, Lcom/android/camera/actor/PhotoActor$CameraCategory;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    return-void
.end method


# virtual methods
.method public applySpecialCapture()Z
    .locals 1

    .prologue
    .line 591
    const/4 v0, 0x0

    return v0
.end method

.method public doOnPictureTaken()V
    .locals 0

    .prologue
    .line 594
    return-void
.end method

.method public doShutter()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavCategory;->this$0:Lcom/android/camera/actor/MavActor;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/actor/PhotoActor;->playSound(I)V

    .line 583
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavCategory;->this$0:Lcom/android/camera/actor/MavActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 584
    return-void
.end method

.method public enableFD(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "camera"

    .prologue
    .line 587
    const/4 v0, 0x0

    return v0
.end method

.method public initializeFirstTime()V
    .locals 4

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavCategory;->this$0:Lcom/android/camera/actor/MavActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/MavActor$MavCategory;->this$0:Lcom/android/camera/actor/MavActor;

    #getter for: Lcom/android/camera/actor/MavActor;->mFullScreenChangedListener:Lcom/android/camera/Camera$OnFullScreenChangedListener;
    invoke-static {v1}, Lcom/android/camera/actor/MavActor;->access$1400(Lcom/android/camera/actor/MavActor;)Lcom/android/camera/Camera$OnFullScreenChangedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->addOnFullScreenChangedListener(Lcom/android/camera/Camera$OnFullScreenChangedListener;)Z

    .line 558
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavCategory;->this$0:Lcom/android/camera/actor/MavActor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/actor/MavActor;->showGuideString(I)V

    .line 559
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavCategory;->this$0:Lcom/android/camera/actor/MavActor;

    new-instance v1, Lcom/android/camera/manager/PanoramaViewManager;

    iget-object v2, p0, Lcom/android/camera/actor/MavActor$MavCategory;->this$0:Lcom/android/camera/actor/MavActor;

    iget-object v2, v2, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/camera/manager/PanoramaViewManager;-><init>(Lcom/android/camera/Camera;I)V

    #setter for: Lcom/android/camera/actor/MavActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;
    invoke-static {v0, v1}, Lcom/android/camera/actor/MavActor;->access$1302(Lcom/android/camera/actor/MavActor;Lcom/android/camera/manager/PanoramaViewManager;)Lcom/android/camera/manager/PanoramaViewManager;

    .line 560
    return-void
.end method

.method public onLeaveActor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 598
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavCategory;->this$0:Lcom/android/camera/actor/MavActor;

    #setter for: Lcom/android/camera/actor/MavActor;->mShutterPressed:Z
    invoke-static {v0, v2}, Lcom/android/camera/actor/MavActor;->access$1502(Lcom/android/camera/actor/MavActor;Z)Z

    .line 599
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavCategory;->this$0:Lcom/android/camera/actor/MavActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/Camera;->setOrientation(ZI)V

    .line 600
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavCategory;->this$0:Lcom/android/camera/actor/MavActor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/actor/PhotoActor;->overrideFocusMode(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavCategory;->this$0:Lcom/android/camera/actor/MavActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 602
    return-void
.end method

.method public shutterPressed()V
    .locals 2

    .prologue
    .line 563
    const-string v0, "MavActor"

    const-string v1, "MavCategory.shutterPressed"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavCategory;->this$0:Lcom/android/camera/actor/MavActor;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/android/camera/actor/PhotoActor;->overrideFocusMode(Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavCategory;->this$0:Lcom/android/camera/actor/MavActor;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/actor/MavActor;->mShutterPressed:Z
    invoke-static {v0, v1}, Lcom/android/camera/actor/MavActor;->access$1502(Lcom/android/camera/actor/MavActor;Z)Z

    .line 566
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavCategory;->this$0:Lcom/android/camera/actor/MavActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterDown()V

    .line 567
    return-void
.end method

.method public shutterUp()V
    .locals 2

    .prologue
    .line 570
    const-string v0, "MavActor"

    const-string v1, "MavCategory.shutterUp"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavCategory;->this$0:Lcom/android/camera/actor/MavActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterUp()V

    .line 572
    return-void
.end method

.method public skipFocus()Z
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x0

    return v0
.end method

.method public supportContinuousShot()Z
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x0

    return v0
.end method
