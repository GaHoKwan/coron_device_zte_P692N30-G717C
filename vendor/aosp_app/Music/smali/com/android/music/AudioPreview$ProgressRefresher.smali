.class Lcom/android/music/AudioPreview$ProgressRefresher;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressRefresher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/android/music/AudioPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/android/music/AudioPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 416
    iget-object v1, p0, Lcom/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;
    invoke-static {v1}, Lcom/android/music/AudioPreview;->access$400(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mSeeking:Z
    invoke-static {v1}, Lcom/android/music/AudioPreview;->access$900(Lcom/android/music/AudioPreview;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mDuration:I
    invoke-static {v1}, Lcom/android/music/AudioPreview;->access$1000(Lcom/android/music/AudioPreview;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;
    invoke-static {v1}, Lcom/android/music/AudioPreview;->access$400(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 420
    .local v0, position:I
    const-string v1, "AudioPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProgressRefresher Position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v1, p0, Lcom/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mIsComplete:Z
    invoke-static {v1}, Lcom/android/music/AudioPreview;->access$1100(Lcom/android/music/AudioPreview;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mDuration:I
    invoke-static {v1}, Lcom/android/music/AudioPreview;->access$1000(Lcom/android/music/AudioPreview;)I

    move-result v0

    .line 426
    :cond_0
    iget-object v1, p0, Lcom/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/music/AudioPreview;->access$1200(Lcom/android/music/AudioPreview;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 428
    .end local v0           #position:I
    :cond_1
    iget-object v1, p0, Lcom/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/music/AudioPreview;->access$1300(Lcom/android/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 430
    iget-object v1, p0, Lcom/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mPauseRefreshingProgressBar:Z
    invoke-static {v1}, Lcom/android/music/AudioPreview;->access$1400(Lcom/android/music/AudioPreview;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 431
    iget-object v1, p0, Lcom/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mProgressRefresher:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/music/AudioPreview;->access$1300(Lcom/android/music/AudioPreview;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/music/AudioPreview$ProgressRefresher;

    iget-object v3, p0, Lcom/android/music/AudioPreview$ProgressRefresher;->this$0:Lcom/android/music/AudioPreview;

    invoke-direct {v2, v3}, Lcom/android/music/AudioPreview$ProgressRefresher;-><init>(Lcom/android/music/AudioPreview;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 434
    :cond_2
    return-void
.end method
