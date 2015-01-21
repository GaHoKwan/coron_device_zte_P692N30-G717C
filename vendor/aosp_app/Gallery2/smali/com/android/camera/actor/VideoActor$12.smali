.class Lcom/android/camera/actor/VideoActor$12;
.super Ljava/lang/Object;
.source "VideoActor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1184
    iput-object p1, p0, Lcom/android/camera/actor/VideoActor$12;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1186
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoPauseResumeListner.onClick() mMediaRecoderRecordingPaused="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$12;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v3, v3, Lcom/android/camera/actor/VideoActor;->mMediaRecoderRecordingPaused:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mRecorderBusy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$12;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v3, v3, Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mMediaRecorderRecording = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$12;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v3, v3, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$12;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v1, v1, Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$12;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v1, v1, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-nez v1, :cond_1

    .line 1211
    :cond_0
    :goto_0
    return-void

    .line 1193
    :cond_1
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$12;->this$0:Lcom/android/camera/actor/VideoActor;

    iput-boolean v4, v1, Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z

    .line 1194
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$12;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v1, v1, Lcom/android/camera/actor/VideoActor;->mMediaRecoderRecordingPaused:Z

    if-eqz v1, :cond_2

    .line 1195
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$12;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v1, v1, Lcom/android/camera/actor/VideoActor;->mRecordingView:Lcom/android/camera/manager/RecordingView;

    invoke-virtual {v1, v4}, Lcom/android/camera/manager/RecordingView;->setRecordingIndicator(Z)V

    .line 1197
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$12;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v1, v1, Lcom/android/camera/actor/VideoActor;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 1198
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$12;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor$12;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mVideoRecordedDuration:J
    invoke-static {v4}, Lcom/android/camera/actor/VideoActor;->access$1300(Lcom/android/camera/actor/VideoActor;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    #setter for: Lcom/android/camera/actor/VideoActor;->mRecordingStartTime:J
    invoke-static {v1, v2, v3}, Lcom/android/camera/actor/VideoActor;->access$1202(Lcom/android/camera/actor/VideoActor;J)J

    .line 1199
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$12;->this$0:Lcom/android/camera/actor/VideoActor;

    const-wide/16 v2, 0x0

    #setter for: Lcom/android/camera/actor/VideoActor;->mVideoRecordedDuration:J
    invoke-static {v1, v2, v3}, Lcom/android/camera/actor/VideoActor;->access$1302(Lcom/android/camera/actor/VideoActor;J)J

    .line 1200
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$12;->this$0:Lcom/android/camera/actor/VideoActor;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/camera/actor/VideoActor;->mMediaRecoderRecordingPaused:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    :goto_1
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$12;->this$0:Lcom/android/camera/actor/VideoActor;

    iput-boolean v6, v1, Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z

    .line 1210
    const-string v1, "VideoActor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVideoPauseResumeListner.onClick() end. mRecorderBusy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$12;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v3, v3, Lcom/android/camera/actor/VideoActor;->mRecorderBusy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1201
    :catch_0
    move-exception v0

    .line 1202
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "VideoActor"

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1203
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$12;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v1, v1, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const v2, 0x7f0c00bb

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->showToast(I)V

    .line 1204
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$12;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-virtual {v1}, Lcom/android/camera/actor/VideoActor;->releaseMediaRecorder()V

    goto :goto_1

    .line 1207
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$12;->this$0:Lcom/android/camera/actor/VideoActor;

    #calls: Lcom/android/camera/actor/VideoActor;->pauseVideoRecording()V
    invoke-static {v1}, Lcom/android/camera/actor/VideoActor;->access$1400(Lcom/android/camera/actor/VideoActor;)V

    goto :goto_1
.end method
