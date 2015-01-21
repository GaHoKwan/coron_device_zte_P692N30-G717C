.class Lcom/android/camera/CameraManager$CameraProxy$2;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Lcom/android/camera/Camera;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/CameraManager$CameraProxy;

.field final synthetic val$context:Lcom/android/camera/Camera;

.field final synthetic val$zoomValue:I


# direct methods
.method constructor <init>(Lcom/android/camera/CameraManager$CameraProxy;ILcom/android/camera/Camera;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    iput p2, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->val$zoomValue:I

    iput-object p3, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->val$context:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 529
    const-string v0, "CameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAsyncRunnable.run("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->val$zoomValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    #getter for: Lcom/android/camera/CameraManager$CameraProxy;->mAsyncRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/camera/CameraManager$CameraProxy;->access$900(Lcom/android/camera/CameraManager$CameraProxy;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCamera="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, v2, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v2}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, v0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCamera:Lcom/mediatek/camera/ICamera;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$000(Lcom/android/camera/CameraManager;)Lcom/mediatek/camera/ICamera;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, v0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, v0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraProxy:Lcom/android/camera/CameraManager$CameraProxy;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$100(Lcom/android/camera/CameraManager;)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    new-instance v1, Lcom/android/camera/CameraManager$CameraProxy$2$1;

    invoke-direct {v1, p0}, Lcom/android/camera/CameraManager$CameraProxy$2$1;-><init>(Lcom/android/camera/CameraManager$CameraProxy$2;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->tryLockParametersRun(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 548
    iget-object v1, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    monitor-enter v1

    .line 549
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    #getter for: Lcom/android/camera/CameraManager$CameraProxy;->mAsyncRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/camera/CameraManager$CameraProxy;->access$900(Lcom/android/camera/CameraManager$CameraProxy;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, v0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    #getter for: Lcom/android/camera/CameraManager$CameraProxy;->mAsyncRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/camera/CameraManager$CameraProxy;->access$900(Lcom/android/camera/CameraManager$CameraProxy;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v0, v0, Lcom/android/camera/CameraManager$CameraProxy;->this$0:Lcom/android/camera/CameraManager;

    #getter for: Lcom/android/camera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/CameraManager;->access$700(Lcom/android/camera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    #getter for: Lcom/android/camera/CameraManager$CameraProxy;->mAsyncRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/camera/CameraManager$CameraProxy;->access$900(Lcom/android/camera/CameraManager$CameraProxy;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 553
    const-string v0, "CameraManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAsyncRunnable.post "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraManager$CameraProxy$2;->this$1:Lcom/android/camera/CameraManager$CameraProxy;

    #getter for: Lcom/android/camera/CameraManager$CameraProxy;->mAsyncRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/camera/CameraManager$CameraProxy;->access$900(Lcom/android/camera/CameraManager$CameraProxy;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    monitor-exit v1

    .line 557
    :cond_1
    return-void

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
