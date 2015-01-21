.class Lcom/mediatek/vlw/VideoScene$6;
.super Ljava/lang/Object;
.source "VideoScene.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


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
    .line 576
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene$6;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 578
    const/16 v2, 0x323

    if-ne p2, v2, :cond_1

    .line 579
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$6;->this$0:Lcom/mediatek/vlw/VideoScene;

    #setter for: Lcom/mediatek/vlw/VideoScene;->mCanGetMetaData:Z
    invoke-static {v1, v0}, Lcom/mediatek/vlw/VideoScene;->access$3402(Lcom/mediatek/vlw/VideoScene;Z)Z

    .line 580
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$6;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mHaveGetPreparedCallBack:Z
    invoke-static {v1}, Lcom/mediatek/vlw/VideoScene;->access$3300(Lcom/mediatek/vlw/VideoScene;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$6;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->doPrepared(Landroid/media/MediaPlayer;)V
    invoke-static {v1, p1}, Lcom/mediatek/vlw/VideoScene;->access$3500(Lcom/mediatek/vlw/VideoScene;Landroid/media/MediaPlayer;)V

    .line 593
    :cond_0
    :goto_0
    return v0

    .line 584
    :cond_1
    const/16 v2, 0x35c

    if-ne p2, v2, :cond_2

    .line 585
    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$6;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$1300(Lcom/mediatek/vlw/VideoScene;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 586
    const-string v1, "VideoScene"

    const-string v2, "OnInfoListener found MEDIA_INFO_VIDEO_NOT_SUPPORTED"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$6;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mTargetState:I
    invoke-static {v1}, Lcom/mediatek/vlw/VideoScene;->access$3600(Lcom/mediatek/vlw/VideoScene;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 589
    iget-object v1, p0, Lcom/mediatek/vlw/VideoScene$6;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v1}, Lcom/mediatek/vlw/VideoScene;->start()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 593
    goto :goto_0
.end method
