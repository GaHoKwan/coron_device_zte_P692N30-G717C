.class Lcom/android/mms/ui/MmsMediaController$4;
.super Landroid/os/Handler;
.source "MmsMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsMediaController;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsMediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/mms/ui/MmsMediaController$4;->this$0:Lcom/android/mms/ui/MmsMediaController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 541
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 543
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController$4;->this$0:Lcom/android/mms/ui/MmsMediaController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsMediaController;->hide()V

    goto :goto_0

    .line 546
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController$4;->this$0:Lcom/android/mms/ui/MmsMediaController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsMediaController;->setProgress()I

    move-result v0

    .line 547
    .local v0, pos:I
    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController$4;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-boolean v1, v1, Lcom/android/mms/ui/MmsMediaController;->mDragging:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController$4;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-boolean v1, v1, Lcom/android/mms/ui/MmsMediaController;->mShowing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController$4;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-object v1, v1, Lcom/android/mms/ui/MmsMediaController;->mPlayer:Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;

    invoke-interface {v1}, Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 549
    rem-int/lit16 v1, v0, 0x3e8

    rsub-int v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 541
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
