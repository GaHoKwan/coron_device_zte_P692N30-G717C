.class final Lcom/android/camera/actor/SmileActor$ActorSmileCallback;
.super Ljava/lang/Object;
.source "SmileActor.java"

# interfaces
.implements Landroid/hardware/Camera$SmileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/SmileActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActorSmileCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/SmileActor;


# direct methods
.method private constructor <init>(Lcom/android/camera/actor/SmileActor;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/camera/actor/SmileActor$ActorSmileCallback;->this$0:Lcom/android/camera/actor/SmileActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/actor/SmileActor;Lcom/android/camera/actor/SmileActor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/camera/actor/SmileActor$ActorSmileCallback;-><init>(Lcom/android/camera/actor/SmileActor;)V

    return-void
.end method


# virtual methods
.method public onSmile()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$ActorSmileCallback;->this$0:Lcom/android/camera/actor/SmileActor;

    #getter for: Lcom/android/camera/actor/SmileActor;->mStatus:I
    invoke-static {v0}, Lcom/android/camera/actor/SmileActor;->access$100(Lcom/android/camera/actor/SmileActor;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 125
    const-string v0, "SmileActor"

    const-string v1, "Smile callback in error state, please check"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const-string v0, "SmileActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smile detected, mstat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/SmileActor$ActorSmileCallback;->this$0:Lcom/android/camera/actor/SmileActor;

    #getter for: Lcom/android/camera/actor/SmileActor;->mStatus:I
    invoke-static {v2}, Lcom/android/camera/actor/SmileActor;->access$100(Lcom/android/camera/actor/SmileActor;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$ActorSmileCallback;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-boolean v0, v0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$ActorSmileCallback;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getViewState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$ActorSmileCallback;->this$0:Lcom/android/camera/actor/SmileActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ShutterManager;->performPhotoShutter()Z

    .line 132
    iget-object v0, p0, Lcom/android/camera/actor/SmileActor$ActorSmileCallback;->this$0:Lcom/android/camera/actor/SmileActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/SmileActor;->stopSmileDetection()V

    goto :goto_0
.end method
