.class Lcom/android/camera/actor/VideoEffectsActor$2;
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
    .line 647
    iput-object p1, p0, Lcom/android/camera/actor/VideoEffectsActor$2;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 649
    const-string v0, "VideoEffectsActor"

    const-string v1, "mCancelListener"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$2;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getReviewManager()Lcom/android/camera/manager/ReviewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/manager/ViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$2;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/camera/actor/VideoActor;->mStoppingAction:I

    .line 652
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$2;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/VideoActor;->stopVideoRecordingAsync()V

    .line 674
    :goto_0
    return-void

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$2;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    #calls: Lcom/android/camera/actor/VideoEffectsActor;->releaseEffects()V
    invoke-static {v0}, Lcom/android/camera/actor/VideoEffectsActor;->access$100(Lcom/android/camera/actor/VideoEffectsActor;)V

    .line 656
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$2;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->resetLiveEffect(Z)V

    .line 657
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$2;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/actor/VideoActor;->hideOtherSettings(Z)V

    .line 658
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$2;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 660
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$2;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/actor/VideoEffectsActor$2;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    iget-object v1, v1, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    const-string v2, "pref_video_effect_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/Camera;->getListPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->notifyPreferenceChanged(Lcom/android/camera/ListPreference;)V

    .line 662
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$2;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    #calls: Lcom/android/camera/actor/VideoEffectsActor;->releaseEffectsRecorder()V
    invoke-static {v0}, Lcom/android/camera/actor/VideoEffectsActor;->access$200(Lcom/android/camera/actor/VideoEffectsActor;)V

    goto :goto_0

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$2;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    invoke-virtual {v0}, Lcom/android/camera/actor/VideoActor;->releaseActor()V

    .line 665
    iget-object v0, p0, Lcom/android/camera/actor/VideoEffectsActor$2;->this$0:Lcom/android/camera/actor/VideoEffectsActor;

    iget-object v0, v0, Lcom/android/camera/actor/VideoActor;->mVideoContext:Lcom/android/camera/Camera;

    new-instance v1, Lcom/android/camera/actor/VideoEffectsActor$2$1;

    invoke-direct {v1, p0}, Lcom/android/camera/actor/VideoEffectsActor$2$1;-><init>(Lcom/android/camera/actor/VideoEffectsActor$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
