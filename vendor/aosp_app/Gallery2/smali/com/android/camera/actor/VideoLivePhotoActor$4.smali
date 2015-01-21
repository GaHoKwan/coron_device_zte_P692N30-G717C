.class Lcom/android/camera/actor/VideoLivePhotoActor$4;
.super Ljava/lang/Object;
.source "VideoLivePhotoActor.java"

# interfaces
.implements Lcom/android/camera/Camera$OnFullScreenChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/VideoLivePhotoActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/VideoLivePhotoActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/VideoLivePhotoActor;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/camera/actor/VideoLivePhotoActor$4;->this$0:Lcom/android/camera/actor/VideoLivePhotoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFullScreenChanged(Z)V
    .locals 3
    .parameter "full"

    .prologue
    .line 230
    const-string v0, "VideoLivePhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFullScreenChanged full = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isVideoProcessing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor$4;->this$0:Lcom/android/camera/actor/VideoLivePhotoActor;

    invoke-virtual {v2}, Lcom/android/camera/actor/VideoActor;->isVideoProcessing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor$4;->this$0:Lcom/android/camera/actor/VideoLivePhotoActor;

    #setter for: Lcom/android/camera/actor/VideoLivePhotoActor;->mFullScreen:Z
    invoke-static {v0, p1}, Lcom/android/camera/actor/VideoLivePhotoActor;->access$002(Lcom/android/camera/actor/VideoLivePhotoActor;Z)Z

    .line 232
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor$4;->this$0:Lcom/android/camera/actor/VideoLivePhotoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/VideoActor;->isVideoProcessing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor$4;->this$0:Lcom/android/camera/actor/VideoLivePhotoActor;

    iget-boolean v0, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-nez v0, :cond_2

    .line 236
    const-string v0, "VideoLivePhotoActor"

    const-string v1, "onFullScreenChanged start video recording"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor$4;->this$0:Lcom/android/camera/actor/VideoLivePhotoActor;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/actor/VideoLivePhotoActor;->mNeedBackGroundRecording:Z
    invoke-static {v0, v1}, Lcom/android/camera/actor/VideoLivePhotoActor;->access$102(Lcom/android/camera/actor/VideoLivePhotoActor;Z)Z

    .line 238
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor$4;->this$0:Lcom/android/camera/actor/VideoLivePhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    new-instance v1, Lcom/android/camera/actor/VideoLivePhotoActor$4$1;

    invoke-direct {v1, p0}, Lcom/android/camera/actor/VideoLivePhotoActor$4$1;-><init>(Lcom/android/camera/actor/VideoLivePhotoActor$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor$4;->this$0:Lcom/android/camera/actor/VideoLivePhotoActor;

    iget-boolean v0, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "VideoLivePhotoActor"

    const-string v1, "onFullScreenChanged stop video recording"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor$4;->this$0:Lcom/android/camera/actor/VideoLivePhotoActor;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/actor/VideoLivePhotoActor;->mNeedBackGroundRecording:Z
    invoke-static {v0, v1}, Lcom/android/camera/actor/VideoLivePhotoActor;->access$102(Lcom/android/camera/actor/VideoLivePhotoActor;Z)Z

    .line 247
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor$4;->this$0:Lcom/android/camera/actor/VideoLivePhotoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/VideoLivePhotoActor;->stopVideoRecordingAsync()V

    goto :goto_0
.end method
