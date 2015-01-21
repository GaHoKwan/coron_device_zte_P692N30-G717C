.class Lcom/android/music/AudioPreview$3;
.super Ljava/lang/Object;
.source "AudioPreview.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/android/music/AudioPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/music/AudioPreview$3;->this$0:Lcom/android/music/AudioPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 457
    if-nez p3, :cond_1

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/android/music/AudioPreview$3;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mSeeking:Z
    invoke-static {v0}, Lcom/android/music/AudioPreview;->access$900(Lcom/android/music/AudioPreview;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/AudioPreview$3;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/android/music/AudioPreview;->access$400(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/AudioPreview$3;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mMediaCanSeek:Z
    invoke-static {v0}, Lcom/android/music/AudioPreview;->access$1500(Lcom/android/music/AudioPreview;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/music/AudioPreview$3;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/android/music/AudioPreview;->access$400(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/music/AudioPreview$3;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mMediaCanSeek:Z
    invoke-static {v0}, Lcom/android/music/AudioPreview;->access$1500(Lcom/android/music/AudioPreview;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/music/AudioPreview$3;->this$0:Lcom/android/music/AudioPreview;

    const/4 v1, 0x1

    #setter for: Lcom/android/music/AudioPreview;->mSeeking:Z
    invoke-static {v0, v1}, Lcom/android/music/AudioPreview;->access$902(Lcom/android/music/AudioPreview;Z)Z

    .line 455
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "bar"

    .prologue
    const/4 v2, 0x0

    .line 467
    iget-object v0, p0, Lcom/android/music/AudioPreview$3;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/android/music/AudioPreview;->access$400(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/AudioPreview$3;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mMediaCanSeek:Z
    invoke-static {v0}, Lcom/android/music/AudioPreview;->access$1500(Lcom/android/music/AudioPreview;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/music/AudioPreview$3;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mPlayer:Lcom/android/music/AudioPreview$PreviewPlayer;
    invoke-static {v0}, Lcom/android/music/AudioPreview;->access$400(Lcom/android/music/AudioPreview;)Lcom/android/music/AudioPreview$PreviewPlayer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/music/AudioPreview$3;->this$0:Lcom/android/music/AudioPreview;

    #setter for: Lcom/android/music/AudioPreview;->mSeeking:Z
    invoke-static {v0, v2}, Lcom/android/music/AudioPreview;->access$902(Lcom/android/music/AudioPreview;Z)Z

    .line 471
    iget-object v0, p0, Lcom/android/music/AudioPreview$3;->this$0:Lcom/android/music/AudioPreview;

    #setter for: Lcom/android/music/AudioPreview;->mIsComplete:Z
    invoke-static {v0, v2}, Lcom/android/music/AudioPreview;->access$1102(Lcom/android/music/AudioPreview;Z)Z

    .line 472
    return-void
.end method
