.class final Lcom/android/camera/actor/VideoActor$AutoFocusCallback;
.super Ljava/lang/Object;
.source "VideoActor.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/VideoActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/VideoActor;


# direct methods
.method private constructor <init>(Lcom/android/camera/actor/VideoActor;)V
    .locals 0
    .parameter

    .prologue
    .line 1344
    iput-object p1, p0, Lcom/android/camera/actor/VideoActor$AutoFocusCallback;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/actor/VideoActor;Lcom/android/camera/actor/VideoActor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1344
    invoke-direct {p0, p1}, Lcom/android/camera/actor/VideoActor$AutoFocusCallback;-><init>(Lcom/android/camera/actor/VideoActor;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 6
    .parameter "focused"
    .parameter "camera"

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$AutoFocusCallback;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-boolean v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    if-eqz v0, :cond_0

    .line 1354
    :goto_0
    return-void

    .line 1349
    :cond_0
    const-string v0, "VideoActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoFocusTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/actor/VideoActor$AutoFocusCallback;->this$0:Lcom/android/camera/actor/VideoActor;

    #getter for: Lcom/android/camera/actor/VideoActor;->mFocusStartTime:J
    invoke-static {v4}, Lcom/android/camera/actor/VideoActor;->access$1500(Lcom/android/camera/actor/VideoActor;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mFocusManager.onAutoFocus(focused)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$AutoFocusCallback;->this$0:Lcom/android/camera/actor/VideoActor;

    const/4 v1, 0x2

    #calls: Lcom/android/camera/actor/VideoActor;->setFocusState(I)V
    invoke-static {v0, v1}, Lcom/android/camera/actor/VideoActor;->access$700(Lcom/android/camera/actor/VideoActor;I)V

    .line 1352
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$AutoFocusCallback;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/FocusManager;->onAutoFocus(Z)V

    .line 1353
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$AutoFocusCallback;->this$0:Lcom/android/camera/actor/VideoActor;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/actor/VideoActor;->mIsAutoFocusCallback:Z
    invoke-static {v0, v1}, Lcom/android/camera/actor/VideoActor;->access$1602(Lcom/android/camera/actor/VideoActor;Z)Z

    goto :goto_0
.end method
