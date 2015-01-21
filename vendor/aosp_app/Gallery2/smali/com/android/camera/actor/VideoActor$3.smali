.class Lcom/android/camera/actor/VideoActor$3;
.super Ljava/lang/Object;
.source "VideoActor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actor/VideoActor;->initializeShutterStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/VideoActor;

.field final synthetic val$mFrontCameraId:I


# direct methods
.method constructor <init>(Lcom/android/camera/actor/VideoActor;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/camera/actor/VideoActor$3;->this$0:Lcom/android/camera/actor/VideoActor;

    iput p2, p0, Lcom/android/camera/actor/VideoActor$3;->val$mFrontCameraId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$3;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v0

    iget v1, p0, Lcom/android/camera/actor/VideoActor$3;->val$mFrontCameraId:I

    if-ne v0, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$3;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ShutterManager;->setPhotoShutterEnabled(Z)V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$3;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actor/VideoActor$3;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v1, v1, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/ShutterManager;->setPhotoShutterEnabled(Z)V

    goto :goto_0
.end method
