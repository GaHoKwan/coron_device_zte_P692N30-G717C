.class Lcom/android/camera/actor/MotionTrackActor$3;
.super Ljava/lang/Object;
.source "MotionTrackActor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actor/MotionTrackActor;->showMotionFailedAlterDialog()V
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
    .line 379
    iput-object p1, p0, Lcom/android/camera/actor/MotionTrackActor$3;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$3;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #calls: Lcom/android/camera/actor/MotionTrackActor;->captureFailed()V
    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$1300(Lcom/android/camera/actor/MotionTrackActor;)V

    .line 383
    return-void
.end method
