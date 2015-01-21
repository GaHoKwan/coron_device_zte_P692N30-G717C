.class Lcom/mediatek/vlw/VideoEditor$4$2;
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


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VideoEditor$4;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/mediatek/vlw/VideoEditor$4$2;->this$1:Lcom/mediatek/vlw/VideoEditor$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor$4$2;->this$1:Lcom/mediatek/vlw/VideoEditor$4;

    iget-object v0, v0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #calls: Lcom/mediatek/vlw/VideoEditor;->stopPlayback()V
    invoke-static {v0}, Lcom/mediatek/vlw/VideoEditor;->access$2100(Lcom/mediatek/vlw/VideoEditor;)V

    .line 307
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor$4$2;->this$1:Lcom/mediatek/vlw/VideoEditor$4;

    iget-object v0, v0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #calls: Lcom/mediatek/vlw/VideoEditor;->startPlayback()V
    invoke-static {v0}, Lcom/mediatek/vlw/VideoEditor;->access$1200(Lcom/mediatek/vlw/VideoEditor;)V

    .line 308
    return-void
.end method
