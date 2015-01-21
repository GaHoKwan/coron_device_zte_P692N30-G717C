.class Lcom/mediatek/voicecommand/voiceunlock/PswPreview$ProgressRefresher;
.super Ljava/lang/Object;
.source "PswPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voicecommand/voiceunlock/PswPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressRefresher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;


# direct methods
.method constructor <init>(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$ProgressRefresher;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 222
    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$ProgressRefresher;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #getter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;
    invoke-static {v1}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$200(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$ProgressRefresher;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #getter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mSeeking:Z
    invoke-static {v1}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$100(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$ProgressRefresher;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #getter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mDuration:I
    invoke-static {v1}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$800(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$ProgressRefresher;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #getter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPlayer:Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;
    invoke-static {v1}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$200(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Lcom/mediatek/voicecommand/voiceunlock/PswPreview$PreviewPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 225
    .local v0, position:I
    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$ProgressRefresher;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProgressRefresher Position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$900(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$ProgressRefresher;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #getter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mIsComplete:Z
    invoke-static {v1}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$300(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$ProgressRefresher;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #getter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mDuration:I
    invoke-static {v1}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$800(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)I

    move-result v0

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$ProgressRefresher;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #getter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$1000(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 233
    .end local v0           #position:I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$ProgressRefresher;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #getter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mProgressRefresher:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$1100(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 235
    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$ProgressRefresher;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #getter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mPauseRefreshingProgressBar:Z
    invoke-static {v1}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$1200(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 236
    iget-object v1, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$ProgressRefresher;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    #getter for: Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->mProgressRefresher:Landroid/os/Handler;
    invoke-static {v1}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview;->access$1100(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$ProgressRefresher;

    iget-object v3, p0, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$ProgressRefresher;->this$0:Lcom/mediatek/voicecommand/voiceunlock/PswPreview;

    invoke-direct {v2, v3}, Lcom/mediatek/voicecommand/voiceunlock/PswPreview$ProgressRefresher;-><init>(Lcom/mediatek/voicecommand/voiceunlock/PswPreview;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 239
    :cond_2
    return-void
.end method
