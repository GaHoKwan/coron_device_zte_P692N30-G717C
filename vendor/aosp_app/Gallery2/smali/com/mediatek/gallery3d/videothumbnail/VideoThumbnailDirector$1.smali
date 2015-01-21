.class Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$1;
.super Ljava/lang/Thread;
.source "VideoThumbnailDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->pause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$1;->this$0:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "thumbnail player pauser"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$1;->this$0:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    #getter for: Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailPlayer:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;
    invoke-static {v0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->access$100(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->pause()V

    .line 70
    return-void
.end method
