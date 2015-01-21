.class Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer$MyHandler;
.super Landroid/os/Handler;
.source "PanoramaVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;


# direct methods
.method public constructor <init>(Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer$MyHandler;->this$0:Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;

    .line 65
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer$MyHandler;->this$0:Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;

    #calls: Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->autoPanoramaPlayback()V
    invoke-static {v0}, Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;->access$000(Lcom/mediatek/gallery3d/videothumbnail/PanoramaVideoPlayer;)V

    .line 71
    return-void
.end method
