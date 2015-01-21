.class Lcom/mediatek/vlw/VLWMediaController$1;
.super Ljava/lang/Object;
.source "VLWMediaController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/vlw/VLWMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/vlw/VLWMediaController;


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VLWMediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/mediatek/vlw/VLWMediaController$1;->this$0:Lcom/mediatek/vlw/VLWMediaController;

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
    .line 140
    if-nez p3, :cond_1

    .line 164
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 145
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$1;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v0}, Lcom/mediatek/vlw/VLWMediaController;->access$200(Lcom/mediatek/vlw/VLWMediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$1;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$1;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v1}, Lcom/mediatek/vlw/VLWMediaController;->access$200(Lcom/mediatek/vlw/VLWMediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v1

    #setter for: Lcom/mediatek/vlw/VLWMediaController;->mDuration:I
    invoke-static {v0, v1}, Lcom/mediatek/vlw/VLWMediaController;->access$302(Lcom/mediatek/vlw/VLWMediaController;I)I

    .line 147
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$1;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$1;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mDuration:I
    invoke-static {v1}, Lcom/mediatek/vlw/VLWMediaController;->access$300(Lcom/mediatek/vlw/VLWMediaController;)I

    move-result v1

    int-to-long v1, v1

    int-to-long v3, p2

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    #setter for: Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I
    invoke-static {v0, v1}, Lcom/mediatek/vlw/VLWMediaController;->access$402(Lcom/mediatek/vlw/VLWMediaController;I)I

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$1;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mDragging:Z
    invoke-static {v0}, Lcom/mediatek/vlw/VLWMediaController;->access$000(Lcom/mediatek/vlw/VLWMediaController;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$1;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v0}, Lcom/mediatek/vlw/VLWMediaController;->access$200(Lcom/mediatek/vlw/VLWMediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$1;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I
    invoke-static {v1}, Lcom/mediatek/vlw/VLWMediaController;->access$400(Lcom/mediatek/vlw/VLWMediaController;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 151
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$1;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    invoke-virtual {v0}, Lcom/mediatek/vlw/VLWMediaController;->setProgress()I

    .line 152
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$1;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mMyHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/vlw/VLWMediaController;->access$100(Lcom/mediatek/vlw/VLWMediaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$1;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/vlw/VLWMediaController;->access$500(Lcom/mediatek/vlw/VLWMediaController;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$1;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mCurrentTime:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/vlw/VLWMediaController;->access$500(Lcom/mediatek/vlw/VLWMediaController;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$1;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    iget-object v2, p0, Lcom/mediatek/vlw/VLWMediaController$1;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I
    invoke-static {v2}, Lcom/mediatek/vlw/VLWMediaController;->access$400(Lcom/mediatek/vlw/VLWMediaController;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/vlw/VLWMediaController;->stringForTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :cond_4
    instance-of v0, p1, Lcom/mediatek/vlw/VLWSeekBar;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/mediatek/vlw/VLWSeekBar;

    invoke-virtual {v0}, Lcom/mediatek/vlw/VLWSeekBar;->fromKeyEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$1;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #calls: Lcom/mediatek/vlw/VLWMediaController;->updateUIWhenProgressChanged(I)V
    invoke-static {v0, p2}, Lcom/mediatek/vlw/VLWMediaController;->access$600(Lcom/mediatek/vlw/VLWMediaController;I)V

    .line 162
    check-cast p1, Lcom/mediatek/vlw/VLWSeekBar;

    .end local p1
    invoke-virtual {p1}, Lcom/mediatek/vlw/VLWSeekBar;->resetFromKeyEvent()V

    goto/16 :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$1;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/vlw/VLWMediaController;->mDragging:Z
    invoke-static {v0, v1}, Lcom/mediatek/vlw/VLWMediaController;->access$002(Lcom/mediatek/vlw/VLWMediaController;Z)Z

    .line 135
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$1;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mMyHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/vlw/VLWMediaController;->access$100(Lcom/mediatek/vlw/VLWMediaController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "bar"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$1;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    const/4 v1, -0x1

    #calls: Lcom/mediatek/vlw/VLWMediaController;->updateUIWhenProgressChanged(I)V
    invoke-static {v0, v1}, Lcom/mediatek/vlw/VLWMediaController;->access$600(Lcom/mediatek/vlw/VLWMediaController;I)V

    .line 168
    iget-object v0, p0, Lcom/mediatek/vlw/VLWMediaController$1;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    iget-object v1, p0, Lcom/mediatek/vlw/VLWMediaController$1;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I
    invoke-static {v1}, Lcom/mediatek/vlw/VLWMediaController;->access$400(Lcom/mediatek/vlw/VLWMediaController;)I

    move-result v1

    #calls: Lcom/mediatek/vlw/VLWMediaController;->updateFrame(I)V
    invoke-static {v0, v1}, Lcom/mediatek/vlw/VLWMediaController;->access$700(Lcom/mediatek/vlw/VLWMediaController;I)V

    .line 169
    return-void
.end method
