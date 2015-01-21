.class Lcom/android/camera/actor/MavActor$6;
.super Ljava/lang/Object;
.source "MavActor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actor/MavActor;->stopAsync(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/MavActor;

.field final synthetic val$isMerge:Z


# direct methods
.method constructor <init>(Lcom/android/camera/actor/MavActor;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/camera/actor/MavActor$6;->this$0:Lcom/android/camera/actor/MavActor;

    iput-boolean p2, p0, Lcom/android/camera/actor/MavActor$6;->val$isMerge:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$6;->this$0:Lcom/android/camera/actor/MavActor;

    iget-boolean v1, p0, Lcom/android/camera/actor/MavActor$6;->val$isMerge:Z

    #calls: Lcom/android/camera/actor/MavActor;->doStop(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/actor/MavActor;->access$500(Lcom/android/camera/actor/MavActor;Z)V

    .line 239
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$6;->this$0:Lcom/android/camera/actor/MavActor;

    new-instance v1, Lcom/android/camera/actor/MavActor$6$1;

    invoke-direct {v1, p0}, Lcom/android/camera/actor/MavActor$6$1;-><init>(Lcom/android/camera/actor/MavActor$6;)V

    #setter for: Lcom/android/camera/actor/MavActor;->mOnHardwareStop:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/camera/actor/MavActor;->access$602(Lcom/android/camera/actor/MavActor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 249
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$6;->this$0:Lcom/android/camera/actor/MavActor;

    iget-object v0, v0, Lcom/android/camera/actor/MavActor;->mMavHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/actor/MavActor$6;->this$0:Lcom/android/camera/actor/MavActor;

    #getter for: Lcom/android/camera/actor/MavActor;->mOnHardwareStop:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/actor/MavActor;->access$600(Lcom/android/camera/actor/MavActor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$6;->this$0:Lcom/android/camera/actor/MavActor;

    #getter for: Lcom/android/camera/actor/MavActor;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/camera/actor/MavActor;->access$900(Lcom/android/camera/actor/MavActor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$6;->this$0:Lcom/android/camera/actor/MavActor;

    const/4 v2, 0x0

    #setter for: Lcom/android/camera/actor/MavActor;->mStopProcess:Z
    invoke-static {v0, v2}, Lcom/android/camera/actor/MavActor;->access$1002(Lcom/android/camera/actor/MavActor;Z)Z

    .line 253
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$6;->this$0:Lcom/android/camera/actor/MavActor;

    #getter for: Lcom/android/camera/actor/MavActor;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/camera/actor/MavActor;->access$900(Lcom/android/camera/actor/MavActor;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 254
    monitor-exit v1

    .line 255
    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
