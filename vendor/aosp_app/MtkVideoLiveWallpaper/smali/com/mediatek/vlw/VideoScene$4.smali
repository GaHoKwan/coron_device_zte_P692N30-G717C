.class Lcom/mediatek/vlw/VideoScene$4;
.super Ljava/lang/Object;
.source "VideoScene.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 543
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene$4;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .parameter "mp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 545
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 547
    const-string v0, "VideoScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnVideoSizeChangedListener, width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mVideoWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$4;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mVideoWidth:I
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$3000(Lcom/mediatek/vlw/VideoScene;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mVideoHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$4;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mVideoHeight:I
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$3100(Lcom/mediatek/vlw/VideoScene;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$4;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mVideoWidth:I
    invoke-static {v0}, Lcom/mediatek/vlw/VideoScene;->access$3000(Lcom/mediatek/vlw/VideoScene;)I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$4;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mVideoHeight:I
    invoke-static {v0}, Lcom/mediatek/vlw/VideoScene;->access$3100(Lcom/mediatek/vlw/VideoScene;)I

    move-result v0

    if-eq v0, p3, :cond_1

    .line 552
    :cond_0
    const-string v0, "VideoScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video size changed ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$4;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mVideoWidth:I
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$3000(Lcom/mediatek/vlw/VideoScene;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$4;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mVideoHeight:I
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$3100(Lcom/mediatek/vlw/VideoScene;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")->("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), relayout surface"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$4;->this$0:Lcom/mediatek/vlw/VideoScene;

    #setter for: Lcom/mediatek/vlw/VideoScene;->mVideoWidth:I
    invoke-static {v0, p2}, Lcom/mediatek/vlw/VideoScene;->access$3002(Lcom/mediatek/vlw/VideoScene;I)I

    .line 556
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$4;->this$0:Lcom/mediatek/vlw/VideoScene;

    #setter for: Lcom/mediatek/vlw/VideoScene;->mVideoHeight:I
    invoke-static {v0, p3}, Lcom/mediatek/vlw/VideoScene;->access$3102(Lcom/mediatek/vlw/VideoScene;I)I

    .line 557
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$4;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->relayout(II)V
    invoke-static {v0, p2, p3}, Lcom/mediatek/vlw/VideoScene;->access$3200(Lcom/mediatek/vlw/VideoScene;II)V

    .line 560
    :cond_1
    return-void
.end method
