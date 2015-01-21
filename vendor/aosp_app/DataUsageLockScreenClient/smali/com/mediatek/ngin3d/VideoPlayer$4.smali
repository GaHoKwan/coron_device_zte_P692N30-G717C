.class Lcom/mediatek/ngin3d/VideoPlayer$4;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 134
    iput-object p1, p0, Lcom/mediatek/ngin3d/VideoPlayer$4;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .parameter "mediaPlayer"
    .parameter "frameworkErr"
    .parameter "implErr"

    .prologue
    const/4 v2, 0x1

    .line 136
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer$4;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    const/4 v1, -0x1

    #calls: Lcom/mediatek/ngin3d/VideoPlayer;->setAllState(I)V
    invoke-static {v0, v1}, Lcom/mediatek/ngin3d/VideoPlayer;->access$700(Lcom/mediatek/ngin3d/VideoPlayer;I)V

    .line 137
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer$4;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    #calls: Lcom/mediatek/ngin3d/VideoPlayer;->notifyErrorListener(Landroid/media/MediaPlayer;II)Z
    invoke-static {v0, p1, p2, p3}, Lcom/mediatek/ngin3d/VideoPlayer;->access$900(Lcom/mediatek/ngin3d/VideoPlayer;Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    :cond_0
    return v2
.end method
