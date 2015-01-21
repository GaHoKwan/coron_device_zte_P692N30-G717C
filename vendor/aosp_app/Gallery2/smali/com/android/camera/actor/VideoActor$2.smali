.class Lcom/android/camera/actor/VideoActor$2;
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
    .line 184
    iput-object p1, p0, Lcom/android/camera/actor/VideoActor$2;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V
    .locals 5
    .parameter "button"

    .prologue
    const/4 v4, 0x0

    .line 197
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Photo.onShutterButtonClick("

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

    .line 198
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$2;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mStopVideoRecording:Z
    invoke-static {v0}, Lcom/android/camera/actor/VideoActor;->access$300(Lcom/android/camera/actor/VideoActor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 201
    :cond_0
    const-string v0, "VideoActor"

    const-string v1, "Video snapshot start"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$2;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$2;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v1, v1, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->preparePhotoRequest()Lcom/android/camera/SaveRequest;

    move-result-object v1

    #setter for: Lcom/android/camera/actor/VideoActor;->mPhotoSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v0, v1}, Lcom/android/camera/actor/VideoActor;->access$402(Lcom/android/camera/actor/VideoActor;Lcom/android/camera/SaveRequest;)Lcom/android/camera/SaveRequest;

    .line 203
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$2;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    new-instance v1, Lcom/android/camera/actor/VideoActor$JpegPictureCallback;

    iget-object v2, p0, Lcom/android/camera/actor/VideoActor$2;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v3, p0, Lcom/android/camera/actor/VideoActor$2;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mPhotoSaveRequest:Lcom/android/camera/SaveRequest;
    invoke-static {v3}, Lcom/android/camera/actor/VideoActor;->access$400(Lcom/android/camera/actor/VideoActor;)Lcom/android/camera/SaveRequest;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/SaveRequest;->getLocation()Landroid/location/Location;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/camera/actor/VideoActor$JpegPictureCallback;-><init>(Lcom/android/camera/actor/VideoActor;Landroid/location/Location;)V

    invoke-virtual {v0, v4, v4, v4, v1}, Lcom/android/camera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 205
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$2;->this$0:Lcom/android/camera/actor/VideoActor;

    const/4 v1, 0x1

    #calls: Lcom/android/camera/actor/VideoActor;->showVideoSnapshotUI(Z)V
    invoke-static {v0, v1}, Lcom/android/camera/actor/VideoActor;->access$500(Lcom/android/camera/actor/VideoActor;Z)V

    goto :goto_0
.end method

.method public onShutterButtonFocus(Lcom/android/camera/ui/ShutterButton;Z)V
    .locals 3
    .parameter "button"
    .parameter "pressed"

    .prologue
    .line 192
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Photo.onShutterButtonFocus("

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

    .line 193
    return-void
.end method

.method public onShutterButtonLongPressed(Lcom/android/camera/ui/ShutterButton;)V
    .locals 3
    .parameter "button"

    .prologue
    .line 187
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Photo.onShutterButtonLongPressed("

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

    .line 188
    return-void
.end method
