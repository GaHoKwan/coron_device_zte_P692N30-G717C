.class Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;
.super Ljava/lang/Thread;
.source "VideoThumbnailMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoHandler"
.end annotation


# instance fields
.field private mCurrentItem:Lcom/android/gallery3d/data/LocalMediaItem;

.field private final mMediaItemQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/gallery3d/data/LocalMediaItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "threadName"

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DynamicThumbnailRequestHandler-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;->mMediaItemQueue:Ljava/util/concurrent/BlockingQueue;

    .line 135
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;Lcom/android/gallery3d/data/LocalMediaItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;->submit(Lcom/android/gallery3d/data/LocalMediaItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;->cancelAllTranscode()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;->cancelPendingTranscode()V

    return-void
.end method

.method private cancelAllTranscode()V
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;->cancelPendingTranscode()V

    .line 202
    invoke-direct {p0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;->cancelCurrentTranscode()V

    .line 203
    invoke-static {}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->access$000()Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 204
    return-void
.end method

.method private cancelCurrentTranscode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 173
    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;->mCurrentItem:Lcom/android/gallery3d/data/LocalMediaItem;

    .line 175
    .local v0, currentItem:Lcom/android/gallery3d/data/LocalMediaItem;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    if-eqz v0, :cond_0

    .line 177
    iget-object v2, v0, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    .line 178
    .local v2, videoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;
    invoke-virtual {v2, v0, v4}, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->onCancelRequested(Lcom/android/gallery3d/data/LocalMediaItem;I)V

    .line 180
    iget-object v3, v2, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoPath:[Ljava/lang/String;

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    .line 181
    invoke-static {v0, v4}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailHelper;->getTempFileForMediaItem(Lcom/android/gallery3d/data/LocalMediaItem;I)Ljava/io/File;

    move-result-object v1

    .line 184
    .local v1, unCompleteDynThumb:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 189
    .end local v1           #unCompleteDynThumb:Ljava/io/File;
    .end local v2           #videoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;
    :cond_0
    return-void

    .line 175
    .end local v0           #currentItem:Lcom/android/gallery3d/data/LocalMediaItem;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private cancelPendingTranscode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 193
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;->mMediaItemQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 194
    .local v1, mediaItem:Lcom/android/gallery3d/data/LocalMediaItem;
    iget-object v2, v1, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    iget-object v2, v2, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoState:[I

    aput v3, v2, v3

    goto :goto_0

    .line 197
    .end local v1           #mediaItem:Lcom/android/gallery3d/data/LocalMediaItem;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;->mMediaItemQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 198
    return-void
.end method

.method private cancelPendingTranscode(Lcom/android/gallery3d/data/LocalMediaItem;)Z
    .locals 2
    .parameter "video"

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p1, Lcom/android/gallery3d/data/LocalMediaItem;->mVideoGenerator:Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;

    iget-object v0, v0, Lcom/mediatek/gallery3d/videothumbnail/AbstractVideoGenerator;->videoState:[I

    aput v1, v0, v1

    .line 168
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;->mMediaItemQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private submit(Lcom/android/gallery3d/data/LocalMediaItem;)V
    .locals 3
    .parameter "mediaItem"

    .prologue
    .line 155
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->needGenDynThumb(Lcom/android/gallery3d/data/LocalMediaItem;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "Gallery2/VideoThumbnailMaker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submit transcoding request for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;->mMediaItemQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    const-string v0, "Gallery2/VideoThumbnailMaker"

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


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 140
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;->mMediaItemQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/LocalMediaItem;

    .line 142
    .local v0, currentItem:Lcom/android/gallery3d/data/LocalMediaItem;
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :try_start_1
    iput-object v0, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;->mCurrentItem:Lcom/android/gallery3d/data/LocalMediaItem;

    .line 144
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :try_start_2
    const-string v2, "Gallery2/VideoThumbnailMaker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle transcoding request for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;->mCurrentItem:Lcom/android/gallery3d/data/LocalMediaItem;

    iget-object v4, v4, Lcom/android/gallery3d/data/LocalMediaItem;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker$VideoHandler;->mCurrentItem:Lcom/android/gallery3d/data/LocalMediaItem;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailMaker;->makeVideo(Lcom/android/gallery3d/data/LocalMediaItem;I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 148
    .end local v0           #currentItem:Lcom/android/gallery3d/data/LocalMediaItem;
    :catch_0
    move-exception v1

    .line 149
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v2, "Gallery2/VideoThumbnailMaker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Terminating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 152
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void

    .line 144
    .restart local v0       #currentItem:Lcom/android/gallery3d/data/LocalMediaItem;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
.end method
