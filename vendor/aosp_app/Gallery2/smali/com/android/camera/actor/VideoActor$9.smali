.class Lcom/android/camera/actor/VideoActor$9;
.super Ljava/lang/Object;
.source "VideoActor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actor/VideoActor;->startVideoRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/VideoActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/VideoActor;)V
    .locals 0
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/camera/actor/VideoActor$9;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$9;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/VideoActor;->initializeRecorder()V

    .line 598
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$9;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/VideoActor;->pauseAudioPlayback()V

    .line 599
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$9;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/VideoActor;->startRecording()V

    .line 600
    return-void
.end method
