.class Lcom/mediatek/vlw/VideoScene$10$2;
.super Ljava/lang/Object;
.source "VideoScene.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/vlw/VideoScene$10;->onEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/vlw/VideoScene$10;


# direct methods
.method constructor <init>(Lcom/mediatek/vlw/VideoScene$10;)V
    .locals 0
    .parameter

    .prologue
    .line 1689
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene$10$2;->this$1:Lcom/mediatek/vlw/VideoScene$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$10$2;->this$1:Lcom/mediatek/vlw/VideoScene$10;

    iget-object v0, v0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    invoke-virtual {v0}, Lcom/mediatek/vlw/VideoScene;->updateVideoIndex()V

    .line 1694
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$10$2;->this$1:Lcom/mediatek/vlw/VideoScene$10;

    iget-object v0, v0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->saveSettings()V
    invoke-static {v0}, Lcom/mediatek/vlw/VideoScene;->access$1500(Lcom/mediatek/vlw/VideoScene;)V

    .line 1695
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$10$2;->this$1:Lcom/mediatek/vlw/VideoScene$10;

    iget-object v0, v0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    const/4 v1, 0x0

    #calls: Lcom/mediatek/vlw/VideoScene;->release(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/vlw/VideoScene;->access$200(Lcom/mediatek/vlw/VideoScene;Z)V

    .line 1696
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$10$2;->this$1:Lcom/mediatek/vlw/VideoScene$10;

    iget-object v0, v0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->openVideo()V
    invoke-static {v0}, Lcom/mediatek/vlw/VideoScene;->access$900(Lcom/mediatek/vlw/VideoScene;)V

    .line 1697
    return-void
.end method
