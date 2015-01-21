.class Lcom/android/mms/ui/MmsMediaController$6;
.super Ljava/lang/Object;
.source "MmsMediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 713
    iput-object p1, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 728
    if-nez p3, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-object v1, v1, Lcom/android/mms/ui/MmsMediaController;->mPlayer:Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;

    invoke-interface {v1}, Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;->getDuration()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/mms/ui/MmsMediaController;->duration:J

    .line 735
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-wide v1, v1, Lcom/android/mms/ui/MmsMediaController;->duration:J

    int-to-long v3, p2

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/mms/ui/MmsMediaController;->newposition:J

    .line 737
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-boolean v0, v0, Lcom/android/mms/ui/MmsMediaController;->mDragging:Z

    if-nez v0, :cond_2

    .line 738
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-object v0, v0, Lcom/android/mms/ui/MmsMediaController;->mPlayer:Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;

    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-wide v1, v1, Lcom/android/mms/ui/MmsMediaController;->newposition:J

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;->seekTo(I)V

    .line 739
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsMediaController;->setProgress()I

    .line 740
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsMediaController;->updatePausePlay()V

    .line 741
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsMediaController;->show(I)V

    .line 742
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-object v0, v0, Lcom/android/mms/ui/MmsMediaController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 744
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-object v0, v0, Lcom/android/mms/ui/MmsMediaController;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-object v0, v0, Lcom/android/mms/ui/MmsMediaController;->mCurrentTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-object v2, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-wide v2, v2, Lcom/android/mms/ui/MmsMediaController;->newposition:J

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MmsMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    const v1, 0x36ee80

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsMediaController;->show(I)V

    .line 717
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/mms/ui/MmsMediaController;->mDragging:Z

    .line 724
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-object v0, v0, Lcom/android/mms/ui/MmsMediaController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 725
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "bar"

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/ui/MmsMediaController;->mDragging:Z

    .line 750
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-object v0, v0, Lcom/android/mms/ui/MmsMediaController;->mPlayer:Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;

    iget-object v1, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-wide v1, v1, Lcom/android/mms/ui/MmsMediaController;->newposition:J

    long-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/android/mms/ui/MmsMediaController$MediaPlayerControl;->seekTo(I)V

    .line 751
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsMediaController;->setProgress()I

    .line 752
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsMediaController;->updatePausePlay()V

    .line 753
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsMediaController;->show(I)V

    .line 758
    iget-object v0, p0, Lcom/android/mms/ui/MmsMediaController$6;->this$0:Lcom/android/mms/ui/MmsMediaController;

    iget-object v0, v0, Lcom/android/mms/ui/MmsMediaController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 759
    return-void
.end method
