.class Lcom/mediatek/vlw/VideoEditor$4$3;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/vlw/VideoEditor$4;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/vlw/VideoEditor$4;

.field final synthetic val$mp:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VideoEditor$4;Landroid/media/MediaPlayer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/mediatek/vlw/VideoEditor$4$3;->this$1:Lcom/mediatek/vlw/VideoEditor$4;

    iput-object p2, p0, Lcom/mediatek/vlw/VideoEditor$4$3;->val$mp:Landroid/media/MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor$4$3;->val$mp:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 316
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor$4$3;->val$mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 317
    return-void
.end method
