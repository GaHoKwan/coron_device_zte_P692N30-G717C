.class final Lcom/android/camera/actor/MavActor$MavFrameCallback;
.super Ljava/lang/Object;
.source "MavActor.java"

# interfaces
.implements Landroid/hardware/Camera$MAVCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/MavActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MavFrameCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/MavActor;


# direct methods
.method private constructor <init>(Lcom/android/camera/actor/MavActor;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/camera/actor/MavActor$MavFrameCallback;->this$0:Lcom/android/camera/actor/MavActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/actor/MavActor;Lcom/android/camera/actor/MavActor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/android/camera/actor/MavActor$MavFrameCallback;-><init>(Lcom/android/camera/actor/MavActor;)V

    return-void
.end method


# virtual methods
.method public onFrame()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x19

    .line 272
    const-string v0, "MavActor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrame: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/MavActor$MavFrameCallback;->this$0:Lcom/android/camera/actor/MavActor;

    #getter for: Lcom/android/camera/actor/MavActor;->mCurrentNum:I
    invoke-static {v2}, Lcom/android/camera/actor/MavActor;->access$1100(Lcom/android/camera/actor/MavActor;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mCaptureState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/actor/MavActor$MavFrameCallback;->this$0:Lcom/android/camera/actor/MavActor;

    #getter for: Lcom/android/camera/actor/MavActor;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/actor/MavActor;->access$1200(Lcom/android/camera/actor/MavActor;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavFrameCallback;->this$0:Lcom/android/camera/actor/MavActor;

    #getter for: Lcom/android/camera/actor/MavActor;->mCaptureState:I
    invoke-static {v0}, Lcom/android/camera/actor/MavActor;->access$1200(Lcom/android/camera/actor/MavActor;)I

    move-result v0

    if-nez v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavFrameCallback;->this$0:Lcom/android/camera/actor/MavActor;

    #getter for: Lcom/android/camera/actor/MavActor;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/camera/actor/MavActor;->access$1100(Lcom/android/camera/actor/MavActor;)I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavFrameCallback;->this$0:Lcom/android/camera/actor/MavActor;

    #getter for: Lcom/android/camera/actor/MavActor;->mCaptureState:I
    invoke-static {v0}, Lcom/android/camera/actor/MavActor;->access$1200(Lcom/android/camera/actor/MavActor;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 278
    :cond_2
    const-string v0, "MavActor"

    const-string v1, "mav done"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavFrameCallback;->this$0:Lcom/android/camera/actor/MavActor;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/actor/MavActor;->mCaptureState:I
    invoke-static {v0, v1}, Lcom/android/camera/actor/MavActor;->access$1202(Lcom/android/camera/actor/MavActor;I)I

    .line 280
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavFrameCallback;->this$0:Lcom/android/camera/actor/MavActor;

    #calls: Lcom/android/camera/actor/MavActor;->onHardwareStopped(Z)V
    invoke-static {v0, v4}, Lcom/android/camera/actor/MavActor;->access$800(Lcom/android/camera/actor/MavActor;Z)V

    .line 287
    :goto_1
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavFrameCallback;->this$0:Lcom/android/camera/actor/MavActor;

    invoke-static {v0}, Lcom/android/camera/actor/MavActor;->access$1108(Lcom/android/camera/actor/MavActor;)I

    .line 288
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavFrameCallback;->this$0:Lcom/android/camera/actor/MavActor;

    #getter for: Lcom/android/camera/actor/MavActor;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/camera/actor/MavActor;->access$1100(Lcom/android/camera/actor/MavActor;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavFrameCallback;->this$0:Lcom/android/camera/actor/MavActor;

    invoke-virtual {v0, v4}, Lcom/android/camera/actor/MavActor;->stop(Z)V

    goto :goto_0

    .line 281
    :cond_3
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavFrameCallback;->this$0:Lcom/android/camera/actor/MavActor;

    #getter for: Lcom/android/camera/actor/MavActor;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/camera/actor/MavActor;->access$1100(Lcom/android/camera/actor/MavActor;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavFrameCallback;->this$0:Lcom/android/camera/actor/MavActor;

    #getter for: Lcom/android/camera/actor/MavActor;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/camera/actor/MavActor;->access$1100(Lcom/android/camera/actor/MavActor;)I

    move-result v0

    if-ge v0, v3, :cond_4

    .line 282
    iget-object v0, p0, Lcom/android/camera/actor/MavActor$MavFrameCallback;->this$0:Lcom/android/camera/actor/MavActor;

    #getter for: Lcom/android/camera/actor/MavActor;->mPanoramaView:Lcom/android/camera/manager/PanoramaViewManager;
    invoke-static {v0}, Lcom/android/camera/actor/MavActor;->access$1300(Lcom/android/camera/actor/MavActor;)Lcom/android/camera/manager/PanoramaViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/actor/MavActor$MavFrameCallback;->this$0:Lcom/android/camera/actor/MavActor;

    #getter for: Lcom/android/camera/actor/MavActor;->mCurrentNum:I
    invoke-static {v1}, Lcom/android/camera/actor/MavActor;->access$1100(Lcom/android/camera/actor/MavActor;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0x19

    invoke-virtual {v0, v1}, Lcom/android/camera/manager/PanoramaViewManager;->setProgress(I)V

    goto :goto_1

    .line 284
    :cond_4
    const-string v0, "MavActor"

    const-string v1, "onFrame is called in abnormal state"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
