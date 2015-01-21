.class Lcom/android/camera/actor/MavActor$MavHandler;
.super Landroid/os/Handler;
.source "MavActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/MavActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MavHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/MavActor;


# direct methods
.method public constructor <init>(Lcom/android/camera/actor/MavActor;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/camera/actor/MavActor$MavHandler;->this$0:Lcom/android/camera/actor/MavActor;

    .line 70
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 71
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 74
    const-string v0, "MavActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage what= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavHandler;->this$0:Lcom/android/camera/actor/MavActor;

    invoke-virtual {v0, v3, v3}, Lcom/android/camera/actor/PhotoActor;->updateSavingHint(ZZ)V

    .line 79
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavHandler;->this$0:Lcom/android/camera/actor/MavActor;

    #calls: Lcom/android/camera/actor/MavActor;->resetCapture()V
    invoke-static {v0}, Lcom/android/camera/actor/MavActor;->access$100(Lcom/android/camera/actor/MavActor;)V

    .line 80
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavHandler;->this$0:Lcom/android/camera/actor/MavActor;

    iget-boolean v0, v0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavHandler;->this$0:Lcom/android/camera/actor/MavActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCameraCategory:Lcom/android/camera/actor/PhotoActor$CameraCategory;

    iget-object v1, p0, Lcom/android/camera/actor/MavActor$MavHandler;->this$0:Lcom/android/camera/actor/MavActor;

    iget-object v1, v1, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/actor/PhotoActor$CameraCategory;->animateCapture(Lcom/android/camera/Camera;)V

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavHandler;->this$0:Lcom/android/camera/actor/MavActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 88
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavHandler;->this$0:Lcom/android/camera/actor/MavActor;

    #calls: Lcom/android/camera/actor/MavActor;->lockOrientation()V
    invoke-static {v0}, Lcom/android/camera/actor/MavActor;->access$200(Lcom/android/camera/actor/MavActor;)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
