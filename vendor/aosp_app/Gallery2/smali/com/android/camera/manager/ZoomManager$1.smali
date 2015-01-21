.class Lcom/android/camera/manager/ZoomManager$1;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/manager/ZoomManager;->startAsyncZoom(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/manager/ZoomManager;

.field final synthetic val$zoomValue:I


# direct methods
.method constructor <init>(Lcom/android/camera/manager/ZoomManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/camera/manager/ZoomManager$1;->this$0:Lcom/android/camera/manager/ZoomManager;

    iput p2, p0, Lcom/android/camera/manager/ZoomManager$1;->val$zoomValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$1;->this$0:Lcom/android/camera/manager/ZoomManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$1;->this$0:Lcom/android/camera/manager/ZoomManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 120
    invoke-static {}, Lcom/android/camera/manager/ZoomManager;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAsyncZoom() parameters.zoom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/manager/ZoomManager$1;->this$0:Lcom/android/camera/manager/ZoomManager;

    invoke-virtual {v2}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$1;->this$0:Lcom/android/camera/manager/ZoomManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$1;->this$0:Lcom/android/camera/manager/ZoomManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    iget v1, p0, Lcom/android/camera/manager/ZoomManager$1;->val$zoomValue:I

    if-eq v0, v1, :cond_1

    .line 125
    iget-object v0, p0, Lcom/android/camera/manager/ZoomManager$1;->this$0:Lcom/android/camera/manager/ZoomManager;

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/manager/ZoomManager$1;->this$0:Lcom/android/camera/manager/ZoomManager;

    invoke-virtual {v1}, Lcom/android/camera/manager/ViewManager;->getContext()Lcom/android/camera/Camera;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/manager/ZoomManager$1;->val$zoomValue:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Lcom/android/camera/Camera;I)V

    .line 128
    :cond_1
    return-void
.end method
