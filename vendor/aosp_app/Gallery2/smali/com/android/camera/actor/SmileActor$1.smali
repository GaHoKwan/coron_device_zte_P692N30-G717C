.class Lcom/android/camera/actor/SmileActor$1;
.super Ljava/lang/Object;
.source "SmileActor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/SmileActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/SmileActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/SmileActor;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/camera/actor/SmileActor$1;->this$0:Lcom/android/camera/actor/SmileActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 30
    const-string v0, "SmileActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonClick(null), CameraState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/SmileActor$1;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v2, v2, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$1;->this$0:Lcom/android/camera/actor/SmileActor;

    #getter for: Lcom/android/camera/actor/SmileActor;->mStatus:I
    invoke-static {v0}, Lcom/android/camera/actor/SmileActor;->access$100(Lcom/android/camera/actor/SmileActor;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$1;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 33
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$1;->this$0:Lcom/android/camera/actor/SmileActor;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/actor/SmileActor;->mStatus:I
    invoke-static {v0, v1}, Lcom/android/camera/actor/SmileActor;->access$102(Lcom/android/camera/actor/SmileActor;I)I

    .line 34
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$1;->this$0:Lcom/android/camera/actor/SmileActor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/actor/PhotoActor;->onShutterButtonClick(Lcom/android/camera/ui/ShutterButton;)V

    .line 36
    :cond_0
    return-void
.end method
