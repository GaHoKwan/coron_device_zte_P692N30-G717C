.class Lcom/android/camera/actor/VideoActor$11;
.super Ljava/lang/Object;
.source "VideoActor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/VideoActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/VideoActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/VideoActor;)V
    .locals 0
    .parameter

    .prologue
    .line 1114
    iput-object p1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1116
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoSavedRunnable.run() begin mVideoCameraClosed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v3, v3, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mStoppingAction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    iget v3, v3, Lcom/android/camera/actor/VideoActor;->mStoppingAction:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mFocusState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mFocusState:I
    invoke-static {v3}, Lcom/android/camera/actor/VideoActor;->access$1000(Lcom/android/camera/actor/VideoActor;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSingleAutoModeSupported="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v3, v3, Lcom/android/camera/actor/VideoActor;->mSingleAutoModeSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRecorderBusy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v3, v3, Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-virtual {v1, v5}, Lcom/android/camera/actor/VideoActor;->hideOtherSettings(Z)V

    .line 1121
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v1, v1, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->dismissProgress()V

    .line 1125
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v1, v1, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    if-nez v1, :cond_0

    .line 1128
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v1, v1, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->keepScreenOnAwhile()V

    .line 1130
    :cond_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v1, v1, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/manager/ShutterManager;->setVideoShutterEnabled(Z)V

    .line 1131
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v1, v1, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    iget v1, v1, Lcom/android/camera/actor/VideoActor;->mStoppingAction:I

    if-eq v1, v4, :cond_5

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    iget v1, v1, Lcom/android/camera/actor/VideoActor;->mStoppingAction:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    const/4 v0, 0x4

    .line 1134
    .local v0, action:I
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1152
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v1, v1, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    if-eqz v1, :cond_2

    .line 1153
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/VideoActor;->closeVideoFileDescriptor()V

    .line 1156
    :cond_2
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v1, v1, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mFocusState:I
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$1000(Lcom/android/camera/actor/VideoActor;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mFocusState:I
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$1000(Lcom/android/camera/actor/VideoActor;)I

    move-result v1

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v1, v1, Lcom/android/camera/actor/VideoActor;->mSingleAutoModeSupported:Z

    if-eqz v1, :cond_4

    .line 1158
    :cond_3
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    #calls: Lcom/android/camera/actor/VideoActor;->changeFocusState()V
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$1100(Lcom/android/camera/actor/VideoActor;)V

    .line 1160
    :cond_4
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/VideoActor;->backToLastModeIfNeed()Z

    .line 1161
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    iput-boolean v5, v1, Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z

    .line 1162
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoSavedRunnable.run() end mRecorderBusy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v3, v3, Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    return-void

    .line 1131
    .end local v0           #action:I
    :cond_5
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    iget v0, v1, Lcom/android/camera/actor/VideoActor;->mStoppingAction:I

    goto :goto_0

    .line 1136
    .restart local v0       #action:I
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v1, v1, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    if-nez v1, :cond_1

    .line 1137
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v1, v1, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->animateCapture()V

    goto :goto_1

    .line 1141
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/VideoActor;->showAlert()V

    goto :goto_1

    .line 1144
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-virtual {v1, v5}, Lcom/android/camera/actor/VideoActor;->doReturnToCaller(Z)V

    goto :goto_1

    .line 1147
    :pswitch_3
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$11;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-virtual {v1, v4}, Lcom/android/camera/actor/VideoActor;->doReturnToCaller(Z)V

    goto :goto_1

    .line 1134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
