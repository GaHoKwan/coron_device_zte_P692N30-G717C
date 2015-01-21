.class Lcom/mediatek/ngin3d/VideoPlayer$1;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ngin3d/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/VideoPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mediatek/ngin3d/VideoPlayer$1;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter "mediaPlayer"

    .prologue
    const/4 v3, 0x3

    .line 90
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer$1;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    const/4 v2, 0x2

    #calls: Lcom/mediatek/ngin3d/VideoPlayer;->setCurrentState(I)V
    invoke-static {v1, v2}, Lcom/mediatek/ngin3d/VideoPlayer;->access$000(Lcom/mediatek/ngin3d/VideoPlayer;I)V

    .line 91
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer$1;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    #calls: Lcom/mediatek/ngin3d/VideoPlayer;->notifyPreparedListener(Landroid/media/MediaPlayer;)Z
    invoke-static {v1, p1}, Lcom/mediatek/ngin3d/VideoPlayer;->access$100(Lcom/mediatek/ngin3d/VideoPlayer;Landroid/media/MediaPlayer;)Z

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer$1;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    #setter for: Lcom/mediatek/ngin3d/VideoPlayer;->mVideoWidth:I
    invoke-static {v1, v2}, Lcom/mediatek/ngin3d/VideoPlayer;->access$202(Lcom/mediatek/ngin3d/VideoPlayer;I)I

    .line 94
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer$1;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    #setter for: Lcom/mediatek/ngin3d/VideoPlayer;->mVideoHeight:I
    invoke-static {v1, v2}, Lcom/mediatek/ngin3d/VideoPlayer;->access$302(Lcom/mediatek/ngin3d/VideoPlayer;I)I

    .line 95
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer$1;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    #setter for: Lcom/mediatek/ngin3d/VideoPlayer;->mDuration:I
    invoke-static {v1, v2}, Lcom/mediatek/ngin3d/VideoPlayer;->access$402(Lcom/mediatek/ngin3d/VideoPlayer;I)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer$1;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    #getter for: Lcom/mediatek/ngin3d/VideoPlayer;->mVideoWidth:I
    invoke-static {v1}, Lcom/mediatek/ngin3d/VideoPlayer;->access$200(Lcom/mediatek/ngin3d/VideoPlayer;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer$1;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    #getter for: Lcom/mediatek/ngin3d/VideoPlayer;->mVideoHeight:I
    invoke-static {v1}, Lcom/mediatek/ngin3d/VideoPlayer;->access$300(Lcom/mediatek/ngin3d/VideoPlayer;)I

    move-result v1

    if-nez v1, :cond_2

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer$1;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    #getter for: Lcom/mediatek/ngin3d/VideoPlayer;->mIntentState:I
    invoke-static {v1}, Lcom/mediatek/ngin3d/VideoPlayer;->access$500(Lcom/mediatek/ngin3d/VideoPlayer;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 105
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer$1;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    iget-object v2, p0, Lcom/mediatek/ngin3d/VideoPlayer$1;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    #getter for: Lcom/mediatek/ngin3d/VideoPlayer;->mSegmentId:I
    invoke-static {v2}, Lcom/mediatek/ngin3d/VideoPlayer;->access$600(Lcom/mediatek/ngin3d/VideoPlayer;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ngin3d/VideoPlayer;->start(I)V

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "Ngin3d.VideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer object has been released. Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_2
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer$1;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    #getter for: Lcom/mediatek/ngin3d/VideoPlayer;->mIntentState:I
    invoke-static {v1}, Lcom/mediatek/ngin3d/VideoPlayer;->access$500(Lcom/mediatek/ngin3d/VideoPlayer;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 109
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer$1;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    iget-object v2, p0, Lcom/mediatek/ngin3d/VideoPlayer$1;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    #getter for: Lcom/mediatek/ngin3d/VideoPlayer;->mSegmentId:I
    invoke-static {v2}, Lcom/mediatek/ngin3d/VideoPlayer;->access$600(Lcom/mediatek/ngin3d/VideoPlayer;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ngin3d/VideoPlayer;->start(I)V

    goto :goto_0
.end method
