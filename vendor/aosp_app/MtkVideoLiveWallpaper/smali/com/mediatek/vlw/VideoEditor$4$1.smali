.class Lcom/mediatek/vlw/VideoEditor$4$1;
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
    .line 289
    iput-object p1, p0, Lcom/mediatek/vlw/VideoEditor$4$1;->this$1:Lcom/mediatek/vlw/VideoEditor$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor$4$1;->this$1:Lcom/mediatek/vlw/VideoEditor$4;

    iget-object v0, v0, Lcom/mediatek/vlw/VideoEditor$4;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #calls: Lcom/mediatek/vlw/VideoEditor;->play()V
    invoke-static {v0}, Lcom/mediatek/vlw/VideoEditor;->access$1800(Lcom/mediatek/vlw/VideoEditor;)V

    .line 294
    const-string v0, "VideoEditor"

    const-string v1, "Play single video in folder mode."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void
.end method
