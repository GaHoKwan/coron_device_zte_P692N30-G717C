.class Lcom/android/camera/actor/MotionTrackActor$WaitMotionTrackSavingDoneThread;
.super Ljava/lang/Thread;
.source "MotionTrackActor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/MotionTrackActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitMotionTrackSavingDoneThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/MotionTrackActor;


# direct methods
.method private constructor <init>(Lcom/android/camera/actor/MotionTrackActor;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/camera/actor/MotionTrackActor$WaitMotionTrackSavingDoneThread;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/actor/MotionTrackActor;Lcom/android/camera/actor/MotionTrackActor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/camera/actor/MotionTrackActor$WaitMotionTrackSavingDoneThread;-><init>(Lcom/android/camera/actor/MotionTrackActor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "MotionTrack"

    const-string v1, "WaitSavingDoneThread, will BURST_SAVING_DONE"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$WaitMotionTrackSavingDoneThread;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFileSaver()Lcom/android/camera/FileSaver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FileSaver;->waitDone()V

    .line 109
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$WaitMotionTrackSavingDoneThread;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #getter for: Lcom/android/camera/actor/MotionTrackActor;->mMotionTrackHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$400(Lcom/android/camera/actor/MotionTrackActor;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    return-void
.end method
