.class Lcom/android/camera/actor/VideoActor$19;
.super Ljava/lang/Object;
.source "VideoActor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/actor/VideoActor;
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
    .line 1488
    iput-object p1, p0, Lcom/android/camera/actor/VideoActor$19;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1490
    const-string v0, "VideoActor"

    const-string v1, "mCancelListener"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$19;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getReviewManager()Lcom/android/camera/manager/ReviewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1492
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$19;->this$0:Lcom/android/camera/actor/VideoActor;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/camera/actor/VideoActor;->mStoppingAction:I

    .line 1493
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$19;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/VideoActor;->stopVideoRecordingAsync()V

    .line 1502
    :goto_0
    return-void

    .line 1495
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$19;->this$0:Lcom/android/camera/actor/VideoActor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/actor/VideoActor;->hideOtherSettings(Z)V

    .line 1496
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$19;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1498
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$19;->this$0:Lcom/android/camera/actor/VideoActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->notifyPreferenceChanged(Lcom/android/camera/ListPreference;)V

    .line 1500
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/VideoActor$19;->this$0:Lcom/android/camera/actor/VideoActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/VideoActor;->backToLastModeIfNeed()Z

    goto :goto_0
.end method
