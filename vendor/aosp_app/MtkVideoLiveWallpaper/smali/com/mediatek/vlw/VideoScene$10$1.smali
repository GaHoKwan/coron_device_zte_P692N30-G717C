.class Lcom/mediatek/vlw/VideoScene$10$1;
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
    .line 1653
    iput-object p1, p0, Lcom/mediatek/vlw/VideoScene$10$1;->this$1:Lcom/mediatek/vlw/VideoScene$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1656
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$10$1;->this$1:Lcom/mediatek/vlw/VideoScene$10;

    iget-object v0, v0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mBucketId:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/vlw/VideoScene;->access$2500(Lcom/mediatek/vlw/VideoScene;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1657
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$10$1;->this$1:Lcom/mediatek/vlw/VideoScene$10;

    iget-object v0, v0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->handleVideoDeleted()V
    invoke-static {v0}, Lcom/mediatek/vlw/VideoScene;->access$4800(Lcom/mediatek/vlw/VideoScene;)V

    .line 1658
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$10$1;->this$1:Lcom/mediatek/vlw/VideoScene$10;

    iget-object v0, v0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->playDefaultVideoOrNextVideo()V
    invoke-static {v0}, Lcom/mediatek/vlw/VideoScene;->access$4900(Lcom/mediatek/vlw/VideoScene;)V

    .line 1659
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$10$1;->this$1:Lcom/mediatek/vlw/VideoScene$10;

    iget-object v0, v0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUriInvalid:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/vlw/VideoScene;->access$4100(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1660
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$10$1;->this$1:Lcom/mediatek/vlw/VideoScene$10;

    iget-object v0, v0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    #getter for: Lcom/mediatek/vlw/VideoScene;->mUriInvalid:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/mediatek/vlw/VideoScene;->access$4100(Lcom/mediatek/vlw/VideoScene;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1667
    :cond_0
    :goto_0
    return-void

    .line 1663
    :cond_1
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$10$1;->this$1:Lcom/mediatek/vlw/VideoScene$10;

    iget-object v0, v0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    const/4 v1, 0x0

    #calls: Lcom/mediatek/vlw/VideoScene;->release(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/vlw/VideoScene;->access$200(Lcom/mediatek/vlw/VideoScene;Z)V

    .line 1664
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$10$1;->this$1:Lcom/mediatek/vlw/VideoScene$10;

    iget-object v0, v0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->clear(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/mediatek/vlw/VideoScene;->access$1200(Lcom/mediatek/vlw/VideoScene;ZZ)V

    .line 1665
    iget-object v0, p0, Lcom/mediatek/vlw/VideoScene$10$1;->this$1:Lcom/mediatek/vlw/VideoScene$10;

    iget-object v0, v0, Lcom/mediatek/vlw/VideoScene$10;->this$0:Lcom/mediatek/vlw/VideoScene;

    #calls: Lcom/mediatek/vlw/VideoScene;->openVideo()V
    invoke-static {v0}, Lcom/mediatek/vlw/VideoScene;->access$900(Lcom/mediatek/vlw/VideoScene;)V

    goto :goto_0
.end method
