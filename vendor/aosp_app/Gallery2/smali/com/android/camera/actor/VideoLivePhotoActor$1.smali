.class Lcom/android/camera/actor/VideoLivePhotoActor$1;
.super Ljava/lang/Object;
.source "VideoLivePhotoActor.java"

# interfaces
.implements Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;


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
    .line 67
    iput-object p1, p0, Lcom/android/camera/actor/VideoLivePhotoActor$1;->this$0:Lcom/android/camera/actor/VideoLivePhotoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V
    .locals 3
    .parameter "button"

    .prologue
    .line 79
    const-string v0, "VideoLivePhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Photo.onShutterButtonClick mMediaRecorderRecording = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor$1;->this$0:Lcom/android/camera/actor/VideoLivePhotoActor;

    iget-boolean v2, v2, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, "VideoLivePhotoActor"

    const-string v1, "Photo.onShutterButtonClick"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor$1;->this$0:Lcom/android/camera/actor/VideoLivePhotoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/VideoActor;->isWfdEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor$1;->this$0:Lcom/android/camera/actor/VideoLivePhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/VideoLivePhotoActor$1;->this$0:Lcom/android/camera/actor/VideoLivePhotoActor;

    iget-object v1, v1, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const v2, 0x7f0c0020

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor$1;->this$0:Lcom/android/camera/actor/VideoLivePhotoActor;

    iget-boolean v0, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileStopVideoRecording()V

    .line 90
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor$1;->this$0:Lcom/android/camera/actor/VideoLivePhotoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/VideoActor;->onStopVideoRecordingAsync()V

    .line 91
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileStopVideoRecording()V

    goto :goto_0
.end method

.method public onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V
    .locals 0
    .parameter "button"
    .parameter "pressed"

    .prologue
    .line 76
    return-void
.end method

.method public onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V
    .locals 4
    .parameter "button"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/actor/VideoLivePhotoActor$1;->this$0:Lcom/android/camera/actor/VideoLivePhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor$1;->this$0:Lcom/android/camera/actor/VideoLivePhotoActor;

    iget-object v2, v2, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const v3, 0x7f0c00b8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoLivePhotoActor$1;->this$0:Lcom/android/camera/actor/VideoLivePhotoActor;

    iget-object v2, v2, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const v3, 0x7f0c000f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->showInfo(Ljava/lang/String;)V

    .line 72
    return-void
.end method
