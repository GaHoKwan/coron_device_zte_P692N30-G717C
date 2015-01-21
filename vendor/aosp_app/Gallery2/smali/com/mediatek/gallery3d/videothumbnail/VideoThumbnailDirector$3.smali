.class Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$3;
.super Ljava/lang/Object;
.source "VideoThumbnailDirector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->stopThumbnails(Ljava/util/List;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

.field final synthetic val$forceClose:Z

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$playerStoper:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;ZLjava/lang/String;Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$3;->this$0:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    iput-boolean p2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$3;->val$forceClose:Z

    iput-object p3, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$3;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$3;->val$playerStoper:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 313
    iget-boolean v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$3;->val$forceClose:Z

    if-eqz v2, :cond_1

    .line 314
    .local v1, shouldDelete:Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 315
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$3;->this$0:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    #getter for: Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailPlayer:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;
    invoke-static {v2}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->access$100(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$3;->val$path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->closeThumbnail(Ljava/lang/String;)Z

    .line 324
    :goto_1
    return-void

    .line 313
    .end local v1           #shouldDelete:Z
    :cond_1
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$3;->this$0:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    iget-object v3, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$3;->val$path:Ljava/lang/String;

    #calls: Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->isThumbnailInStage(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->access$200(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 318
    .restart local v1       #shouldDelete:Z
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$3;->val$playerStoper:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

    iget-object v2, v2, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;->mRunnableQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 321
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method
