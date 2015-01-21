.class Lzte/android/flashlight/CameraHolder$1;
.super Landroid/os/Handler;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/android/flashlight/CameraHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/android/flashlight/CameraHolder;


# direct methods
.method constructor <init>(Lzte/android/flashlight/CameraHolder;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 27
    iput-object p1, p0, Lzte/android/flashlight/CameraHolder$1;->this$0:Lzte/android/flashlight/CameraHolder;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 35
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 52
    :goto_0
    return-void

    .line 38
    :pswitch_0
    :try_start_0
    const-string v1, "chh"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release start  mCamera="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lzte/android/flashlight/CameraHolder$1;->this$0:Lzte/android/flashlight/CameraHolder;

    #getter for: Lzte/android/flashlight/CameraHolder;->mCamera:Landroid/hardware/Camera;
    invoke-static {v3}, Lzte/android/flashlight/CameraHolder;->access$000(Lzte/android/flashlight/CameraHolder;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v1, p0, Lzte/android/flashlight/CameraHolder$1;->this$0:Lzte/android/flashlight/CameraHolder;

    #getter for: Lzte/android/flashlight/CameraHolder;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lzte/android/flashlight/CameraHolder;->access$000(Lzte/android/flashlight/CameraHolder;)Landroid/hardware/Camera;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 40
    iget-object v1, p0, Lzte/android/flashlight/CameraHolder$1;->this$0:Lzte/android/flashlight/CameraHolder;

    #getter for: Lzte/android/flashlight/CameraHolder;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lzte/android/flashlight/CameraHolder;->access$000(Lzte/android/flashlight/CameraHolder;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 41
    iget-object v1, p0, Lzte/android/flashlight/CameraHolder$1;->this$0:Lzte/android/flashlight/CameraHolder;

    #getter for: Lzte/android/flashlight/CameraHolder;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1}, Lzte/android/flashlight/CameraHolder;->access$000(Lzte/android/flashlight/CameraHolder;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 42
    iget-object v1, p0, Lzte/android/flashlight/CameraHolder$1;->this$0:Lzte/android/flashlight/CameraHolder;

    const/4 v2, 0x1

    #setter for: Lzte/android/flashlight/CameraHolder;->mState:I
    invoke-static {v1, v2}, Lzte/android/flashlight/CameraHolder;->access$102(Lzte/android/flashlight/CameraHolder;I)I

    .line 43
    iget-object v1, p0, Lzte/android/flashlight/CameraHolder$1;->this$0:Lzte/android/flashlight/CameraHolder;

    const/4 v2, 0x0

    #setter for: Lzte/android/flashlight/CameraHolder;->mCamera:Landroid/hardware/Camera;
    invoke-static {v1, v2}, Lzte/android/flashlight/CameraHolder;->access$002(Lzte/android/flashlight/CameraHolder;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 44
    const-string v1, "chh"

    const-string v2, "release end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
