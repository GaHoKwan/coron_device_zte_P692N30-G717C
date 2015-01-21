.class Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail$VideoFrameTexture;
.super Lcom/android/gallery3d/ui/ExtTexture;
.source "OrdinaryVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoFrameTexture"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;


# direct methods
.method public constructor <init>(Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;I)V
    .locals 0
    .parameter
    .parameter "target"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail$VideoFrameTexture;->this$0:Lcom/mediatek/gallery3d/videothumbnail/OrdinaryVideoPlayer$VideoThumbnail;

    .line 139
    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/ExtTexture;-><init>(I)V

    .line 140
    return-void
.end method


# virtual methods
.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/ui/BasicTexture;->setSize(II)V

    .line 144
    return-void
.end method
