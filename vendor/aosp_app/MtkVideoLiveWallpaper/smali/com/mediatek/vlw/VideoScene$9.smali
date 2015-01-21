.class Lcom/mediatek/vlw/VideoScene$9;
.super Ljava/lang/Object;
.source "VideoScene.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/vlw/VideoScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/vlw/VideoScene;


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VideoScene;)V
    .locals 0
    .parameter

    .prologue
    .line 766
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene$9;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 768
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$9;->this$0:Lcom/mediatek/vlw/VideoScene;

    #setter for: Lcom/mediatek/vlw/VideoScene;->mCurrentBufferPercentage:I
    invoke-static {v0, p2}, Lcom/mediatek/vlw/VideoScene;->access$4402(Lcom/mediatek/vlw/VideoScene;I)I

    .line 770
    const-string v0, "VideoScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffering percent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mBufferWaitTimes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$9;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mBufferWaitTimes:I
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$4500(Lcom/mediatek/vlw/VideoScene;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$9;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mBufferWaitTimes:I
    invoke-static {v0}, Lcom/mediatek/vlw/VideoScene;->access$4500(Lcom/mediatek/vlw/VideoScene;)I

    move-result v0

    if-lez v0, :cond_1

    .line 774
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$9;->this$0:Lcom/mediatek/vlw/VideoScene;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/vlw/VideoScene;->access$4520(Lcom/mediatek/vlw/VideoScene;I)I

    .line 777
    const-string v0, "VideoScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBufferWaitTimes: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$9;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mBufferWaitTimes:I
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$4500(Lcom/mediatek/vlw/VideoScene;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 782
    :cond_1
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$9;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->updateBufferState(I)V
    invoke-static {v0, p2}, Lcom/mediatek/vlw/VideoScene;->access$4600(Lcom/mediatek/vlw/VideoScene;I)V

    .line 783
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$9;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v0}, Lcom/mediatek/vlw/VideoScene;->access$4700(Lcom/mediatek/vlw/VideoScene;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$9;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    invoke-static {v0}, Lcom/mediatek/vlw/VideoScene;->access$4700(Lcom/mediatek/vlw/VideoScene;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    goto :goto_0
.end method
