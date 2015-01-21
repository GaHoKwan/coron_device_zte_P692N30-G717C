.class Lcom/android/camera/actor/VideoEffectsActor$EffectHandler;
.super Landroid/os/Handler;
.source "VideoEffectsActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/VideoEffectsActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EffectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/VideoEffectsActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/VideoEffectsActor;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/camera/actor/VideoEffectsActor$EffectHandler;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    .line 63
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 64
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 68
    const-string v0, "VideoEffectsActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$EffectHandler;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$EffectHandler;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    iget-object v1, v0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    monitor-enter v1

    .line 73
    :try_start_0
    const-string v0, "VideoEffectsActor"

    const-string v2, " handleMessage mVideoSavingTask.notifyAll()"

    invoke-static {v0, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$EffectHandler;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/camera/actor/VideoActor;->mRecorderCameraReleased:Z

    .line 75
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$EffectHandler;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoSavingTask:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 76
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
