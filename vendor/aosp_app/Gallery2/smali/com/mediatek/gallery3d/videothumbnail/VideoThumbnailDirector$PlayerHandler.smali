.class Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;
.super Ljava/lang/Thread;
.source "VideoThumbnailDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayerHandler"
.end annotation


# instance fields
.field private mCurrentRunnable:Ljava/lang/Runnable;

.field private volatile mPausing:Z

.field public final mRunnableQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 371
    const-string v0, "Player handler"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 372
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;->mRunnableQueue:Ljava/util/concurrent/BlockingQueue;

    .line 373
    return-void
.end method


# virtual methods
.method public cancelPendingRunnables()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;->mRunnableQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 410
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 377
    const/16 v1, 0xa

    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 378
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_1
    :try_start_1
    iget-boolean v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;->mPausing:Z

    if-eqz v1, :cond_1

    .line 381
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 384
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 396
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void

    .line 383
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;->mRunnableQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;->mCurrentRunnable:Ljava/lang/Runnable;

    .line 384
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 385
    :try_start_4
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;->mCurrentRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method

.method public submit(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "runnable"

    .prologue
    .line 399
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;->mRunnableQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    const-string v0, "Gallery2/VideoThumbnailDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be started before submitting tasks."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
