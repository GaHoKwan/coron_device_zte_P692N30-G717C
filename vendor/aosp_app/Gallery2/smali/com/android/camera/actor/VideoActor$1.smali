.class Lcom/android/camera/actor/VideoActor$1;
.super Ljava/lang/Object;
.source "VideoActor.java"

# interfaces
.implements Lcom/android/camera/ui/ShutterButton$OnShutterButtonListener;


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
    .line 141
    iput-object p1, p0, Lcom/android/camera/actor/VideoActor$1;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V
    .locals 4
    .parameter "button"

    .prologue
    .line 158
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video.onShutterButtonClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") mMediaRecorderRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor$1;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v2, v2, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {}, Lcom/android/camera/Storage;->getLeftSpace()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$1;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/VideoActor;->backToLastModeIfNeed()Z

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$1;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$1;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v0, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    .line 168
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileStopVideoRecording()V

    .line 169
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$1;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/VideoActor;->onStopVideoRecordingAsync()V

    .line 170
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileStopVideoRecording()V

    goto :goto_0

    .line 172
    :cond_2
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->startProfileStartVideoRecording()V

    .line 173
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$1;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    .line 174
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$1;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/VideoActor;->startVideoRecording()V

    .line 175
    invoke-static {}, Lcom/android/camera/manager/MMProfileManager;->stopProfileStartVideoRecording()V

    .line 177
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$1;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v0, v0, Lcom/android/camera/actor/VideoActor;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$1;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->setSwipingEnabled(Z)V

    goto :goto_0
.end method

.method public onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V
    .locals 3
    .parameter "button"
    .parameter "pressed"

    .prologue
    .line 148
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video.onShutterButtonFocus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isContinuousFocusEnabledWhenTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    if-nez p2, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$1;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->onShutterUp()V

    .line 154
    :cond_0
    return-void
.end method

.method public onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V
    .locals 3
    .parameter "button"

    .prologue
    .line 144
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video.onShutterButtonLongPressed("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method
