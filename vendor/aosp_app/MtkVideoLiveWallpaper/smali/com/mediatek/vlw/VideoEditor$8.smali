.class Lcom/mediatek/vlw/VideoEditor$8;
.super Ljava/lang/Object;
.source "VideoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/vlw/VideoEditor;->startPlayback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/vlw/VideoEditor;


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VideoEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 741
    iput-object p1, p0, Lcom/mediatek/vlw/VideoEditor$8;->this$0:Lcom/mediatek/vlw/VideoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor$8;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mPlayer:Landroid/widget/VideoView;
    invoke-static {v0}, Lcom/mediatek/vlw/VideoEditor;->access$1400(Lcom/mediatek/vlw/VideoEditor;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/vlw/VideoEditor$8;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #getter for: Lcom/mediatek/vlw/VideoEditor;->mUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/mediatek/vlw/VideoEditor;->access$400(Lcom/mediatek/vlw/VideoEditor;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 744
    iget-object v0, p0, Lcom/mediatek/vlw/VideoEditor$8;->this$0:Lcom/mediatek/vlw/VideoEditor;

    #calls: Lcom/mediatek/vlw/VideoEditor;->play()V
    invoke-static {v0}, Lcom/mediatek/vlw/VideoEditor;->access$1800(Lcom/mediatek/vlw/VideoEditor;)V

    .line 745
    return-void
.end method
