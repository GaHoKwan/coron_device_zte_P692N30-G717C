.class final Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;
.super Ljava/lang/Object;
.source "PanoramaActor.java"

# interfaces
.implements Landroid/hardware/Camera$AUTORAMACallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/PanoramaActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PanoramaCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/PanoramaActor;


# direct methods
.method private constructor <init>(Lcom/android/camera/actor/PanoramaActor;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/actor/PanoramaActor;Lcom/android/camera/actor/PanoramaActor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;-><init>(Lcom/android/camera/actor/PanoramaActor;)V

    return-void
.end method


# virtual methods
.method public onBlended([BII)V
    .locals 0
    .parameter "data"
    .parameter "imageIndex"
    .parameter "totalIndex"

    .prologue
    .line 282
    return-void
.end method

.method public onCapture()V
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x1

    .line 246
    const-string v0, "PanoramaActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCapture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mCurrentNum:I
    invoke-static {v2}, Lcom/android/camera/actor/PanoramaActor;->access$1100(Lcom/android/camera/actor/PanoramaActor;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mCaptureState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/actor/PanoramaActor;->access$1200(Lcom/android/camera/actor/PanoramaActor;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I
    invoke-static {v0}, Lcom/android/camera/actor/PanoramaActor;->access$1200(Lcom/android/camera/actor/PanoramaActor;)I

    move-result v0

    if-nez v0, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/camera/actor/PanoramaActor;->access$1100(Lcom/android/camera/actor/PanoramaActor;)I

    move-result v0

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I
    invoke-static {v0}, Lcom/android/camera/actor/PanoramaActor;->access$1200(Lcom/android/camera/actor/PanoramaActor;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 252
    :cond_2
    const-string v0, "PanoramaActor"

    const-string v1, "autorama done"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/actor/PanoramaActor;->mCaptureState:I
    invoke-static {v0, v1}, Lcom/android/camera/actor/PanoramaActor;->access$1202(Lcom/android/camera/actor/PanoramaActor;I)I

    .line 254
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #calls: Lcom/android/camera/actor/PanoramaActor;->onHardwareStopped(Z)V
    invoke-static {v0, v4}, Lcom/android/camera/actor/PanoramaActor;->access$800(Lcom/android/camera/actor/PanoramaActor;Z)V

    .line 275
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    invoke-static {v0}, Lcom/android/camera/actor/PanoramaActor;->access$1108(Lcom/android/camera/actor/PanoramaActor;)I

    .line 276
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/camera/actor/PanoramaActor;->access$1100(Lcom/android/camera/actor/PanoramaActor;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    invoke-virtual {v0, v4}, Lcom/android/camera/actor/PanoramaActor;->stop(Z)V

    goto :goto_0

    .line 255
    :cond_4
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/camera/actor/PanoramaActor;->access$1100(Lcom/android/camera/actor/PanoramaActor;)I

    move-result v0

    if-ltz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/camera/actor/PanoramaActor;->access$1100(Lcom/android/camera/actor/PanoramaActor;)I

    move-result v0

    if-ge v0, v5, :cond_6

    .line 256
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;
    invoke-static {v0}, Lcom/android/camera/actor/PanoramaActor;->access$1300(Lcom/android/camera/actor/PanoramaActor;)Lcom/android/camera/manager/PanoramaViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mCurrentNum:I
    invoke-static {v1}, Lcom/android/camera/actor/PanoramaActor;->access$1100(Lcom/android/camera/actor/PanoramaActor;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/PanoramaViewManager;->setViewsForNext(I)V

    .line 257
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/camera/actor/PanoramaActor;->access$1100(Lcom/android/camera/actor/PanoramaActor;)I

    move-result v0

    if-lez v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mShowingCollimatedDrawable:Z
    invoke-static {v0}, Lcom/android/camera/actor/PanoramaActor;->access$1400(Lcom/android/camera/actor/PanoramaActor;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 259
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    iget-object v0, v0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mRestartCaptureView:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/actor/PanoramaActor;->access$1500(Lcom/android/camera/actor/PanoramaActor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 260
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    iget-object v0, v0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mOnHardwareStop:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/actor/PanoramaActor;->access$600(Lcom/android/camera/actor/PanoramaActor;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 262
    :cond_5
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #setter for: Lcom/android/camera/actor/PanoramaActor;->mShowingCollimatedDrawable:Z
    invoke-static {v0, v4}, Lcom/android/camera/actor/PanoramaActor;->access$1402(Lcom/android/camera/actor/PanoramaActor;Z)Z

    .line 263
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    new-instance v1, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback$1;

    invoke-direct {v1, p0}, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback$1;-><init>(Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;)V

    #setter for: Lcom/android/camera/actor/PanoramaActor;->mRestartCaptureView:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/camera/actor/PanoramaActor;->access$1502(Lcom/android/camera/actor/PanoramaActor;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 269
    iget-object v0, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    iget-object v0, v0, Lcom/android/camera/actor/PanoramaActor;->mPanoramaHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/actor/PanoramaActor$PanoramaCallback;->this$0:Lcom/android/camera/actor/PanoramaActor;

    #getter for: Lcom/android/camera/actor/PanoramaActor;->mRestartCaptureView:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/camera/actor/PanoramaActor;->access$1500(Lcom/android/camera/actor/PanoramaActor;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 272
    :cond_6
    const-string v0, "PanoramaActor"

    const-string v1, "onCapture is called in abnormal state"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onCapture([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 288
    return-void
.end method

.method public onIntermediate([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 285
    return-void
.end method
