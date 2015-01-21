.class Lcom/android/camera/actor/MotionTrackActor$2;
.super Ljava/lang/Object;
.source "MotionTrackActor.java"

# interfaces
.implements Lcom/android/camera/Camera$OnFullScreenChangedListener;


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
    .line 149
    iput-object p1, p0, Lcom/android/camera/actor/MotionTrackActor$2;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFullScreenChanged(Z)V
    .locals 3
    .parameter "full"

    .prologue
    .line 152
    const-string v0, "MotionTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFullScreenChanged full = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    if-eqz p1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/camera/actor/MotionTrackActor$2;->this$0:Lcom/android/camera/actor/MotionTrackActor;

    #calls: Lcom/android/camera/actor/MotionTrackActor;->lockOrientation()V
    invoke-static {v0}, Lcom/android/camera/actor/MotionTrackActor;->access$200(Lcom/android/camera/actor/MotionTrackActor;)V

    .line 157
    :cond_0
    return-void
.end method
