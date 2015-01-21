.class Lcom/android/camera/actor/PhotoActor$10;
.super Ljava/lang/Object;
.source "PhotoActor.java"

# interfaces
.implements Landroid/hardware/Camera$ObjectTrackingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/PhotoActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/PhotoActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/PhotoActor;)V
    .locals 0
    .parameter

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/camera/actor/PhotoActor$10;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onObjectTracking(Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 3
    .parameter "face"
    .parameter "camera"

    .prologue
    .line 502
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Photo.onObjectTracking("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mObjectTrackingStarted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor$10;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mObjectTrackingStarted:Z
    invoke-static {v2}, Lcom/android/camera/actor/PhotoActor;->access$900(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/hardware/Camera$Face;->score:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_2

    iget v0, p1, Landroid/hardware/Camera$Face;->score:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_2

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$10;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/PhotoActor;->stopObjectTracking()V

    .line 514
    :cond_1
    :goto_0
    return-void

    .line 508
    :cond_2
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$10;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mObjectTrackingStarted:Z
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$900(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$10;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget v1, p1, Landroid/hardware/Camera$Face;->score:I

    #setter for: Lcom/android/camera/actor/PhotoActor;->mFaceScore:I
    invoke-static {v0, v1}, Lcom/android/camera/actor/PhotoActor;->access$1002(Lcom/android/camera/actor/PhotoActor;I)I

    .line 510
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$10;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFrameView()Lcom/android/camera/ui/FrameView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FrameView;->setObject(Landroid/hardware/Camera$Face;)V

    .line 511
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$10;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$10;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v1, v1, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFrameView()Lcom/android/camera/ui/FrameView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FrameView;->getPointX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    #setter for: Lcom/android/camera/actor/PhotoActor;->mOldX:I
    invoke-static {v0, v1}, Lcom/android/camera/actor/PhotoActor;->access$1102(Lcom/android/camera/actor/PhotoActor;I)I

    .line 512
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$10;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v1, p0, Lcom/android/camera/actor/PhotoActor$10;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v1, v1, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFrameView()Lcom/android/camera/ui/FrameView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/FrameView;->getPointY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    #setter for: Lcom/android/camera/actor/PhotoActor;->mOldY:I
    invoke-static {v0, v1}, Lcom/android/camera/actor/PhotoActor;->access$1202(Lcom/android/camera/actor/PhotoActor;I)I

    goto :goto_0
.end method
