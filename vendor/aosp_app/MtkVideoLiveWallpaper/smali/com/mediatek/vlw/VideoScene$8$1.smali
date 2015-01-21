.class Lcom/mediatek/vlw/VideoScene$8$1;
.super Ljava/lang/Object;
.source "VideoScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/vlw/VideoScene$8;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/vlw/VideoScene$8;


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VideoScene$8;)V
    .locals 0
    .parameter

    .prologue
    .line 686
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene$8$1;->this$1:Lcom/mediatek/vlw/VideoScene$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$8$1;->this$1:Lcom/mediatek/vlw/VideoScene$8;

    iget-object v0, v0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    const/4 v1, 0x1

    #calls: Lcom/mediatek/vlw/VideoScene;->release(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/vlw/VideoScene;->access$200(Lcom/mediatek/vlw/VideoScene;Z)V

    .line 690
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$8$1;->this$1:Lcom/mediatek/vlw/VideoScene$8;

    iget-object v0, v0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->openVideo()V
    invoke-static {v0}, Lcom/mediatek/vlw/VideoScene;->access$900(Lcom/mediatek/vlw/VideoScene;)V

    .line 691
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$8$1;->this$1:Lcom/mediatek/vlw/VideoScene$8;

    iget-object v0, v0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mVisible:Z
    invoke-static {v0}, Lcom/mediatek/vlw/VideoScene;->access$1000(Lcom/mediatek/vlw/VideoScene;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$8$1;->this$1:Lcom/mediatek/vlw/VideoScene$8;

    iget-object v0, v0, Lcom/mediatek/vlw/VideoScene$8;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v0}, Lcom/mediatek/vlw/VideoScene;->start()V

    .line 694
    :cond_0
    return-void
.end method
