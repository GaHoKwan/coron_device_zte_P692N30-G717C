.class Lcom/android/camera/actor/PanoramaActor$7;
.super Ljava/lang/Object;
.source "PanoramaActor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actor/PanoramaActor;->stopAsync(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/PanoramaActor;

.field final synthetic val$isMerge:Z


# direct methods
.method constructor <init>(Lcom/android/camera/actor/PanoramaActor;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/camera/actor/PanoramaActor$7;->this$0:Lcom/android/camera/actor/PanoramaActor;

    iput-boolean p2, p0, Lcom/android/camera/actor/PanoramaActor$7;->val$isMerge:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$7;->this$0:Lcom/android/camera/actor/PanoramaActor;

    iget-boolean v1, p0, Lcom/android/camera/actor/PanoramaActor$7;->val$isMerge:Z

    #calls: Lcom/android/camera/actor/PanoramaActor;->doStop(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/actor/PanoramaActor;->access$500(Lcom/android/camera/actor/PanoramaActor;Z)V

    .line 213
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$7;->this$0:Lcom/android/camera/actor/PanoramaActor;

    new-instance v1, Lcom/android/camera/actor/PanoramaActor$7$1;

    invoke-direct {v1, p0}, Lcom/android/camera/actor/PanoramaActor$7$1;-><init>(Lcom/android/camera/actor/PanoramaActor$7;)V

    #setter for: Lcom/android/camera/actor/PanoramaActor;->mOnHardwareStop:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/camera/actor/PanoramaActor;->access$602(Lcom/android/camera/actor/PanoramaActor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 223
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$7;->this$0:Lcom/android/camera/actor/PanoramaActor;

    iget-object v0, v0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/actor/PanoramaActor$7;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mOnHardwareStop:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/actor/PanoramaActor;->access$600(Lcom/android/camera/actor/PanoramaActor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$7;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/camera/actor/PanoramaActor;->access$900(Lcom/android/camera/actor/PanoramaActor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$7;->this$0:Lcom/android/camera/actor/PanoramaActor;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/actor/PanoramaActor;->mStopProcess:Z
    invoke-static {v0, v2}, Lcom/android/camera/actor/PanoramaActor;->access$1002(Lcom/android/camera/actor/PanoramaActor;Z)Z

    .line 227
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$7;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/camera/actor/PanoramaActor;->access$900(Lcom/android/camera/actor/PanoramaActor;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 228
    monitor-exit v1

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
