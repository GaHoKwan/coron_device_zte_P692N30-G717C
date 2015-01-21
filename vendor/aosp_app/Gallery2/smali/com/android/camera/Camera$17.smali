.class Lcom/android/camera/Camera$17;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->restoreSwitchCameraState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 2893
    iput-object p1, p0, Lcom/android/camera/Camera$17;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2896
    iget-object v0, p0, Lcom/android/camera/Camera$17;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isSwitchingCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2897
    iget-object v0, p0, Lcom/android/camera/Camera$17;->this$0:Lcom/android/camera/Camera;

    const/4 v1, -0x1

    #setter for: Lcom/android/camera/Camera;->mPendingSwitchCameraId:I
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$6602(Lcom/android/camera/Camera;I)I

    .line 2898
    iget-object v0, p0, Lcom/android/camera/Camera$17;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 2899
    iget-object v0, p0, Lcom/android/camera/Camera$17;->this$0:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 2901
    :cond_0
    return-void
.end method
