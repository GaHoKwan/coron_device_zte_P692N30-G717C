.class Lcom/android/camera/actor/VideoEffectsActor$1;
.super Ljava/lang/Object;
.source "VideoEffectsActor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/VideoEffectsActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actor/VideoEffectsActor;


# direct methods
.method constructor <init>(Lcom/android/camera/actor/VideoEffectsActor;)V
    .locals 0
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/camera/actor/VideoEffectsActor$1;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 632
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$1;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/VideoActor;->deleteCurrentVideo()V

    .line 633
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$1;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->hideReview()V

    .line 634
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$1;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->switchShutter(I)V

    .line 635
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$1;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ShutterManager;->setCancelButtonEnabled(Z)V

    .line 636
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$1;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShutterManager()Lcom/android/camera/manager/ShutterManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/manager/ShutterManager;->setVideoShutterEnabled(Z)V

    .line 637
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$1;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    #getter for: Lcom/android/camera/actor/VideoEffectsActor;->mNeedReLearningEffect:Z
    invoke-static {v0}, Lcom/android/camera/actor/VideoEffectsActor;->access$000(Lcom/android/camera/actor/VideoEffectsActor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$1;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    #setter for: Lcom/android/camera/actor/VideoEffectsActor;->mNeedReLearningEffect:Z
    invoke-static {v0, v2}, Lcom/android/camera/actor/VideoEffectsActor;->access$002(Lcom/android/camera/actor/VideoEffectsActor;Z)Z

    .line 642
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$1;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    iput-boolean v2, v0, Lcom/android/camera/actor/VideoActor;->mVideoCameraClosed:Z

    .line 643
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$1;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/VideoActor;->startPreview()V

    .line 645
    :cond_0
    return-void
.end method
