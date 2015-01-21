.class final Lcom/android/camera/actor/MotionTrackActor$MTPanoramaMVCallback;
.super Ljava/lang/Object;
.source "MotionTrackActor.java"

# interfaces
.implements Landroid/hardware/Camera$AUTORAMAMVCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/MotionTrackActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MTPanoramaMVCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/MotionTrackActor;


# direct methods
.method private constructor <init>(Lcom/android/camera/actor/MotionTrackActor;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaMVCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/actor/MotionTrackActor;Lcom/android/camera/actor/MotionTrackActor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaMVCallback;-><init>(Lcom/android/camera/actor/MotionTrackActor;)V

    return-void
.end method


# virtual methods
.method public onFrame(II)V
    .locals 0
    .parameter "xy"
    .parameter "dir"

    .prologue
    .line 228
    return-void
.end method

.method public onFrame(III)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "direction"

    .prologue
    .line 208
    const-string v0, "MotionTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFrame,direction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaMVCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$500(Lcom/android/camera/actor/MotionTrackActor;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaMVCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mCurrentNum:I
    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$500(Lcom/android/camera/actor/MotionTrackActor;)I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 219
    :cond_0
    const-string v0, "MotionTrack"

    const-string v1, "will return ,not update the MovingUI"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$MTPanoramaMVCallback;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackView:Lcom/android/camera/manager/MotionTrackViewManager;
    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$600(Lcom/android/camera/actor/MotionTrackActor;)Lcom/android/camera/manager/MotionTrackViewManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/camera/manager/MotionTrackViewManager;->updateMovingUI(IIZ)V

    goto :goto_0
.end method
