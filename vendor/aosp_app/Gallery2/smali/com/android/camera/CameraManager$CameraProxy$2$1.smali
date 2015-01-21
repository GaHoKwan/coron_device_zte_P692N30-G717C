.class Lcom/android/camera/CameraManager$CameraProxy$2$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraManager$CameraProxy$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/CameraManager$CameraProxy$2;


# direct methods
.method constructor <init>(Lcom/android/camera/CameraManager$CameraProxy$2;)V
    .locals 0
    .parameter

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/camera/CameraManager$CameraProxy$2$1;->this$2:Lcom/android/camera/CameraManager$CameraProxy$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 535
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileSetParameters()V

    .line 538
    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy$2$1;->this$2:Lcom/android/camera/CameraManager$CameraProxy$2;

    iget-object v1, v1, Lcom/android/camera/CameraManager$CameraProxy$2;->val$context:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 539
    .local v0, params:Landroid/hardware/Camera$Parameters;
    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy$2$1;->this$2:Lcom/android/camera/CameraManager$CameraProxy$2;

    iget-object v1, v1, Lcom/android/camera/CameraManager$CameraProxy$2;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, v1, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 540
    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy$2$1;->this$2:Lcom/android/camera/CameraManager$CameraProxy$2;

    iget v1, v1, Lcom/android/camera/CameraManager$CameraProxy$2;->val$zoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 541
    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy$2$1;->this$2:Lcom/android/camera/CameraManager$CameraProxy$2;

    iget-object v1, v1, Lcom/android/camera/CameraManager$CameraProxy$2;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, v1, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v1}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mediatek/camera/ICamera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 543
    :cond_0
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileSetParameters()V

    .line 544
    return-void
.end method
