.class Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$2;
.super Ljava/lang/Object;
.source "OrdinaryVideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->prepare()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$2;->this$0:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v2, 0x0

    .line 53
    const-string v0, "Gallery2/VideoThumbnailPlayInfo"

    const-string v1, "error happened in video thumbnail\'s internal player. \n\tmay triggered by video deletion"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$2;->this$0:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;

    iget-object v0, v0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->renderTarget:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;

    iput-boolean v2, v0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->isWorking:Z

    .line 57
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$2;->this$0:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;

    iget-object v0, v0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer;->renderTarget:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;

    iput-boolean v2, v0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;->isReadyForRender:Z

    .line 58
    return v2
.end method
