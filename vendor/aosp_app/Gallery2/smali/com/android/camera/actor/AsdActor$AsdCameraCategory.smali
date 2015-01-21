.class Lcom/android/camera/actor/AsdActor$AsdCameraCategory;
.super Lcom/android/camera/actor/PhotoActor$CameraCategory;
.source "AsdActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/AsdActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsdCameraCategory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/AsdActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/AsdActor;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/camera/actor/AsdActor$AsdCameraCategory;->this$0:Lcom/android/camera/actor/AsdActor;

    invoke-direct {p0, p1}, Lcom/android/camera/actor/PhotoActor$CameraCategory;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    return-void
.end method


# virtual methods
.method public applySpecialCapture()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public doOnPictureTaken()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public initializeFirstTime()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public onLeaveActor()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/camera/actor/AsdActor$AsdCameraCategory;->this$0:Lcom/android/camera/actor/AsdActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIndicatorManager()Lcom/android/camera/manager/IndicatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/IndicatorManager;->restoreSceneMode()V

    .line 82
    iget-object v0, p0, Lcom/android/camera/actor/AsdActor$AsdCameraCategory;->this$0:Lcom/android/camera/actor/AsdActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 83
    return-void
.end method

.method public supportContinuousShot()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method
