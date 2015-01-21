.class Lcom/mediatek/ngin3d/VideoPlayer$2;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 115
    iput-object p1, p0, Lcom/mediatek/ngin3d/VideoPlayer$2;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mediaPlayer"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer$2;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    const/4 v1, 0x5

    #calls: Lcom/mediatek/ngin3d/VideoPlayer;->setAllState(I)V
    invoke-static {v0, v1}, Lcom/mediatek/ngin3d/VideoPlayer;->access$700(Lcom/mediatek/ngin3d/VideoPlayer;I)V

    .line 118
    iget-object v0, p0, Lcom/mediatek/ngin3d/VideoPlayer$2;->this$0:Lcom/mediatek/ngin3d/VideoPlayer;

    #calls: Lcom/mediatek/ngin3d/VideoPlayer;->notifyCompletionListener(Landroid/media/MediaPlayer;)Z
    invoke-static {v0, p1}, Lcom/mediatek/ngin3d/VideoPlayer;->access$800(Lcom/mediatek/ngin3d/VideoPlayer;Landroid/media/MediaPlayer;)Z

    .line 119
    return-void
.end method
