.class public Lcom/android/camera/actor/VideoActor$SavingTask;
.super Ljava/lang/Thread;
.source "VideoActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/VideoActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SavingTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/VideoActor;


# direct methods
.method protected constructor <init>(Lcom/android/camera/actor/VideoActor;)V
    .locals 0
    .parameter

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1080
    const-string v2, "VideoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SavingTask.run() begin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMediaRecorderRecording="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v4, v4, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRecorderBusy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v4, v4, Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileStoreVideo()V

    .line 1083
    const/4 v1, 0x0

    .line 1085
    .local v1, fail:Z
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v2, v2, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_1

    .line 1087
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-virtual {v2}, Lcom/android/camera/actor/VideoActor;->stopRecording()V

    .line 1088
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v2, v2, Lcom/android/camera/actor/VideoActor;->mCallFromOnPause:Z

    if-eqz v2, :cond_0

    .line 1089
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-virtual {v2}, Lcom/android/camera/actor/VideoActor;->startEffectDelayTimer()V

    .line 1091
    :cond_0
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v3, v3, Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1092
    const-string v2, "VideoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting current video filename: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v4, v4, Lcom/android/camera/actor/VideoActor;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v2, v2, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v2, v2, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1104
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v2, v2, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 1106
    :cond_2
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-virtual {v2, v1}, Lcom/android/camera/actor/VideoActor;->doAfterStopRecording(Z)V

    .line 1107
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    .line 1108
    const-string v2, "VideoActor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SavingTask.run() end "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCurrentVideoUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mCurrentVideoUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/camera/actor/VideoActor;->access$900(Lcom/android/camera/actor/VideoActor;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRecorderBusy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v4, v4, Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileStoreVideo()V

    .line 1111
    return-void

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "VideoActor"

    const-string v3, "stop fail"

    invoke-static {v2, v3, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1095
    const/4 v1, 0x1

    .line 1096
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v2, v2, Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1097
    iget-object v2, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$SavingTask;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v3, v3, Lcom/android/camera/actor/VideoActor;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/camera/actor/VideoActor;->deleteVideoFile(Ljava/lang/String;)V

    goto :goto_0
.end method
