.class Lcom/mediatek/vlw/VLWMediaController$7;
.super Landroid/os/Handler;
.source "VLWMediaController.java"


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
    .line 759
    iput-object p1, p0, Lcom/mediatek/vlw/VLWMediaController$7;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const-wide/16 v7, 0x3e8

    const/4 v6, 0x2

    .line 762
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 787
    const-string v5, "VLWMediaController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 764
    :pswitch_0
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController$7;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    invoke-virtual {v5}, Lcom/mediatek/vlw/VLWMediaController;->hide()V

    goto :goto_0

    .line 768
    :pswitch_1
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 769
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController$7;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    invoke-virtual {v5}, Lcom/mediatek/vlw/VLWMediaController;->setProgress()I

    move-result v5

    int-to-long v3, v5

    .line 770
    .local v3, pos:J
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController$7;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mDragging:Z
    invoke-static {v5}, Lcom/mediatek/vlw/VLWMediaController;->access$000(Lcom/mediatek/vlw/VLWMediaController;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController$7;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v5}, Lcom/mediatek/vlw/VLWMediaController;->access$200(Lcom/mediatek/vlw/VLWMediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 771
    invoke-virtual {p0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 772
    .local v2, message:Landroid/os/Message;
    rem-long v5, v3, v7

    sub-long v5, v7, v5

    invoke-virtual {p0, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 774
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController$7;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I
    invoke-static {v5}, Lcom/mediatek/vlw/VLWMediaController;->access$400(Lcom/mediatek/vlw/VLWMediaController;)I

    move-result v5

    add-int/lit8 v5, v5, 0x32

    int-to-long v0, v5

    .line 775
    .local v0, limit:J
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController$7;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mEndPosition:I
    invoke-static {v5}, Lcom/mediatek/vlw/VLWMediaController;->access$1500(Lcom/mediatek/vlw/VLWMediaController;)I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-gez v5, :cond_1

    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController$7;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mDuration:I
    invoke-static {v5}, Lcom/mediatek/vlw/VLWMediaController;->access$300(Lcom/mediatek/vlw/VLWMediaController;)I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-ltz v5, :cond_0

    .line 776
    :cond_1
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController$7;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    iget-object v6, p0, Lcom/mediatek/vlw/VLWMediaController$7;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mStartPosition:I
    invoke-static {v6}, Lcom/mediatek/vlw/VLWMediaController;->access$900(Lcom/mediatek/vlw/VLWMediaController;)I

    move-result v6

    #setter for: Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I
    invoke-static {v5, v6}, Lcom/mediatek/vlw/VLWMediaController;->access$402(Lcom/mediatek/vlw/VLWMediaController;I)I

    .line 777
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController$7;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mPlayer:Landroid/widget/MediaController$MediaPlayerControl;
    invoke-static {v5}, Lcom/mediatek/vlw/VLWMediaController;->access$200(Lcom/mediatek/vlw/VLWMediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/vlw/VLWMediaController$7;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    #getter for: Lcom/mediatek/vlw/VLWMediaController;->mNewPosition:I
    invoke-static {v6}, Lcom/mediatek/vlw/VLWMediaController;->access$400(Lcom/mediatek/vlw/VLWMediaController;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/widget/MediaController$MediaPlayerControl;->seekTo(I)V

    .line 778
    iget-object v5, p0, Lcom/mediatek/vlw/VLWMediaController$7;->this$0:Lcom/mediatek/vlw/VLWMediaController;

    invoke-virtual {v5}, Lcom/mediatek/vlw/VLWMediaController;->play()V

    .line 780
    const-string v5, "VLWMediaController"

    const-string v6, "playback completed, loop again"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 762
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
