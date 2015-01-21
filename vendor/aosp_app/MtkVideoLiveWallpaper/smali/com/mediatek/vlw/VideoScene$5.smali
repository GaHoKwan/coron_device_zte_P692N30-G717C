.class Lcom/mediatek/vlw/VideoScene$5;
.super Ljava/lang/Object;
.source "VideoScene.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 563
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene$5;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$5;->this$0:Lcom/mediatek/vlw/VideoScene;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/vlw/VideoScene;->mHaveGetPreparedCallBack:Z
    invoke-static {v0, v1}, Lcom/mediatek/vlw/VideoScene;->access$3302(Lcom/mediatek/vlw/VideoScene;Z)Z

    .line 566
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$5;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mCanGetMetaData:Z
    invoke-static {v0}, Lcom/mediatek/vlw/VideoScene;->access$3400(Lcom/mediatek/vlw/VideoScene;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$5;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->doPrepared(Landroid/media/MediaPlayer;)V
    invoke-static {v0, p1}, Lcom/mediatek/vlw/VideoScene;->access$3500(Lcom/mediatek/vlw/VideoScene;Landroid/media/MediaPlayer;)V

    .line 571
    :cond_0
    const-string v0, "VideoScene"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared, can get metadata:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/vlw/VideoScene$5;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mCanGetMetaData:Z
    invoke-static {v2}, Lcom/mediatek/vlw/VideoScene;->access$3400(Lcom/mediatek/vlw/VideoScene;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return-void
.end method
