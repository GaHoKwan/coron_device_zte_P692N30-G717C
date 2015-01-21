.class Lcom/android/camera/actor/MotionTrackActor$1;
.super Ljava/lang/Object;
.source "MotionTrackActor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/MotionTrackActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/MotionTrackActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/MotionTrackActor;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/camera/actor/MotionTrackActor$1;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$1;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 71
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$1;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    iget-object v0, v0, Lcom/android/camera/actor/PhotoActor;->mCamera:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 72
    return-void
.end method
