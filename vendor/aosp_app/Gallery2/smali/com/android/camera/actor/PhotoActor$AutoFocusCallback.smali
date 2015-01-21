.class final Lcom/android/camera/actor/PhotoActor$AutoFocusCallback;
.super Ljava/lang/Object;
.source "PhotoActor.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/PhotoActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/PhotoActor;


# direct methods
.method private constructor <init>(Lcom/android/camera/actor/PhotoActor;)V
    .locals 0
    .parameter

    .prologue
    .line 777
    iput-object p1, p0, Lcom/android/camera/actor/PhotoActor$AutoFocusCallback;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/actor/PhotoActor;Lcom/android/camera/actor/PhotoActor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 777
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PhotoActor$AutoFocusCallback;-><init>(Lcom/android/camera/actor/PhotoActor;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 6
    .parameter "focused"
    .parameter "camera"

    .prologue
    const/4 v5, 0x1

    .line 781
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$AutoFocusCallback;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-boolean v0, v0, Lcom/android/camera/actor/PhotoActor;->mCameraClosed:Z

    if-eqz v0, :cond_0

    .line 793
    :goto_0
    return-void

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$AutoFocusCallback;->this$0:Lcom/android/camera/actor/PhotoActor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/actor/PhotoActor$AutoFocusCallback;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mFocusStartTime:J
    invoke-static {v3}, Lcom/android/camera/actor/PhotoActor;->access$2600(Lcom/android/camera/actor/PhotoActor;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/camera/actor/PhotoActor;->mAutoFocusTime:J

    .line 786
    const-string v0, "PhotoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoFocusTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PhotoActor$AutoFocusCallback;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-wide v2, v2, Lcom/android/camera/actor/PhotoActor;->mAutoFocusTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$AutoFocusCallback;->this$0:Lcom/android/camera/actor/PhotoActor;

    #getter for: Lcom/android/camera/actor/PhotoActor;->mSelftimerCounting:Z
    invoke-static {v0}, Lcom/android/camera/actor/PhotoActor;->access$2700(Lcom/android/camera/actor/PhotoActor;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$AutoFocusCallback;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 788
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$AutoFocusCallback;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0, v5}, Lcom/android/camera/Camera;->setCameraState(I)V

    .line 789
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$AutoFocusCallback;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->restoreViewState()V

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/PhotoActor$AutoFocusCallback;->this$0:Lcom/android/camera/actor/PhotoActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/FocusManager;->onAutoFocus(Z)V

    .line 792
    invoke-static {v5}, Lcom/android/camera/actor/PhotoActor;->access$2802(Z)Z

    goto :goto_0
.end method
