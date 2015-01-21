.class Lcom/mediatek/ngin3d/Video$VideoPlayerInitializer;
.super Ljava/lang/Object;
.source "Video.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoPlayerInitializer"
.end annotation


# instance fields
.field private final mVideoPlayer:Lcom/mediatek/ngin3d/VideoPlayer;

.field final synthetic this$0:Lcom/mediatek/ngin3d/Video;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/Video;Lcom/mediatek/ngin3d/VideoPlayer;)V
    .locals 0
    .parameter
    .parameter "src"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/mediatek/ngin3d/Video$VideoPlayerInitializer;->this$0:Lcom/mediatek/ngin3d/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p2, p0, Lcom/mediatek/ngin3d/Video$VideoPlayerInitializer;->mVideoPlayer:Lcom/mediatek/ngin3d/VideoPlayer;

    .line 189
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 201
    iget-object v1, p0, Lcom/mediatek/ngin3d/Video$VideoPlayerInitializer;->mVideoPlayer:Lcom/mediatek/ngin3d/VideoPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/ngin3d/Video$VideoPlayerInitializer;->this$0:Lcom/mediatek/ngin3d/Video;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Video;->getPresentation()Lcom/mediatek/ngin3d/presentation/VideoDisplay;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/mediatek/ngin3d/Video$VideoPlayerInitializer;->this$0:Lcom/mediatek/ngin3d/Video;

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Video;->getPresentation()Lcom/mediatek/ngin3d/presentation/VideoDisplay;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/ngin3d/presentation/VideoDisplay;->getTexName()I

    move-result v0

    .line 203
    .local v0, textureName:I
    if-lez v0, :cond_1

    .line 204
    iget-object v1, p0, Lcom/mediatek/ngin3d/Video$VideoPlayerInitializer;->mVideoPlayer:Lcom/mediatek/ngin3d/VideoPlayer;

    invoke-virtual {v1, v0}, Lcom/mediatek/ngin3d/VideoPlayer;->initialize(I)V

    .line 209
    .end local v0           #textureName:I
    :cond_0
    :goto_0
    return-void

    .line 206
    .restart local v0       #textureName:I
    :cond_1
    const-string v1, "Ngin3d"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Video Texture texture name is invalid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
