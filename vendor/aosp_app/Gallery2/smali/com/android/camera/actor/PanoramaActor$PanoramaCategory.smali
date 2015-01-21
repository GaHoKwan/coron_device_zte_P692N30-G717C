.class Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;
.super Lcom/android/camera/actor/PhotoActor$CameraCategory;
.source "PanoramaActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/PanoramaActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PanoramaCategory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/PanoramaActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/PanoramaActor;)V
    .locals 0
    .parameter

    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;->this$0:Lcom/android/camera/actor/PanoramaActor;

    invoke-direct {p0, p1}, Lcom/android/camera/actor/PhotoActor$CameraCategory;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    return-void
.end method


# virtual methods
.method public applySpecialCapture()Z
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x0

    return v0
.end method

.method public doOnPictureTaken()V
    .locals 0

    .prologue
    .line 603
    return-void
.end method

.method public doShutter()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;->this$0:Lcom/android/camera/actor/PanoramaActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 593
    return-void
.end method

.method public enableFD(Lcom/android/camera/Camera;)Z
    .locals 1
    .parameter "camera"

    .prologue
    .line 600
    const/4 v0, 0x0

    return v0
.end method

.method public initializeFirstTime()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 567
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;->this$0:Lcom/android/camera/actor/PanoramaActor;

    invoke-virtual {v0, v3}, Lcom/android/camera/actor/PanoramaActor;->showGuideString(I)V

    .line 568
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;->this$0:Lcom/android/camera/actor/PanoramaActor;

    new-instance v1, Lcom/android/camera/manager/PanoramaViewManager;

    iget-object v2, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;->this$0:Lcom/android/camera/actor/PanoramaActor;

    iget-object v2, v2, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-direct {v1, v2, v3}, Lcom/android/camera/manager/PanoramaViewManager;-><init>(Lcom/android/camera/Camera;I)V

    #setter for: Lcom/android/camera/actor/PanoramaActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;
    invoke-static {v0, v1}, Lcom/android/camera/actor/PanoramaActor;->access$1302(Lcom/android/camera/actor/PanoramaActor;Lcom/android/camera/manager/PanoramaViewManager;)Lcom/android/camera/manager/PanoramaViewManager;

    .line 569
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;
    invoke-static {v0}, Lcom/android/camera/actor/PanoramaActor;->access$1300(Lcom/android/camera/actor/PanoramaActor;)Lcom/android/camera/manager/PanoramaViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mViewChangedListener:Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;
    invoke-static {v1}, Lcom/android/camera/actor/PanoramaActor;->access$1600(Lcom/android/camera/actor/PanoramaActor;)Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/PanoramaViewManager;->setViewChangedListener(Lcom/android/camera/manager/PanoramaViewManager$ViewChangeListener;)V

    .line 570
    return-void
.end method

.method public onLeaveActor()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;->this$0:Lcom/android/camera/actor/PanoramaActor;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/actor/PanoramaActor;->mShutterPressed:Z
    invoke-static {v0, v1}, Lcom/android/camera/actor/PanoramaActor;->access$1702(Lcom/android/camera/actor/PanoramaActor;Z)Z

    .line 608
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;->this$0:Lcom/android/camera/actor/PanoramaActor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/actor/PhotoActor;->overrideFocusMode(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;->this$0:Lcom/android/camera/actor/PanoramaActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 610
    return-void
.end method

.method public shutterPressed()V
    .locals 2

    .prologue
    .line 573
    const-string v0, "PanoramaActor"

    const-string v1, "PanoramaCategory.shutterPressed"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;->this$0:Lcom/android/camera/actor/PanoramaActor;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lcom/android/camera/actor/PhotoActor;->overrideFocusMode(Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;->this$0:Lcom/android/camera/actor/PanoramaActor;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/actor/PanoramaActor;->mShutterPressed:Z
    invoke-static {v0, v1}, Lcom/android/camera/actor/PanoramaActor;->access$1702(Lcom/android/camera/actor/PanoramaActor;Z)Z

    .line 576
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;->this$0:Lcom/android/camera/actor/PanoramaActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterDown()V

    .line 577
    return-void
.end method

.method public shutterUp()V
    .locals 2

    .prologue
    .line 580
    const-string v0, "PanoramaActor"

    const-string v1, "PanoramaCategory.shutterUp"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCategory;->this$0:Lcom/android/camera/actor/PanoramaActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterUp()V

    .line 582
    return-void
.end method

.method public skipFocus()Z
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x0

    return v0
.end method

.method public supportContinuousShot()Z
    .locals 1

    .prologue
    .line 584
    const/4 v0, 0x0

    return v0
.end method
