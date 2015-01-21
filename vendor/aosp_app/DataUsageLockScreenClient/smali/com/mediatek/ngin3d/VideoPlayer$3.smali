.class Lcom/mediatek/ngin3d/VideoPlayer$3;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 122
    iput-object p1, p0, Lcom/mediatek/ngin3d/VideoPlayer$3;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 4
    .parameter "mediaPlayer"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer$3;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    #setter for: Lcom/mediatek/ngin3d/VideoPlayer;->mVideoWidth:I
    invoke-static {v1, v2}, Lcom/mediatek/ngin3d/VideoPlayer;->access$202(Lcom/mediatek/ngin3d/VideoPlayer;I)I

    .line 126
    iget-object v1, p0, Lcom/mediatek/ngin3d/VideoPlayer$3;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    #setter for: Lcom/mediatek/ngin3d/VideoPlayer;->mVideoHeight:I
    invoke-static {v1, v2}, Lcom/mediatek/ngin3d/VideoPlayer;->access$302(Lcom/mediatek/ngin3d/VideoPlayer;I)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
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
.end method
