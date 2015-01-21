.class Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$2;
.super Ljava/lang/Object;
.source "VideoThumbnailDirector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->startThumbnails(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

.field final synthetic val$item:Lcom/android/gallery3d/data/LocalMediaItem;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$playerStarter:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;Ljava/lang/String;Lcom/android/gallery3d/data/LocalMediaItem;Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$2;->this$0:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    iput-object p2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$2;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$2;->val$item:Lcom/android/gallery3d/data/LocalMediaItem;

    iput-object p4, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$2;->val$playerStarter:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 260
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$2;->this$0:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    #getter for: Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailPlayer:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;
    invoke-static {v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->access$100(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$2;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->isThumbnailPlaying(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$2;->this$0:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$2;->val$path:Ljava/lang/String;

    #calls: Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->isThumbnailInStage(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->access$200(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$2;->this$0:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    #getter for: Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mStageContext:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$StageContext;
    invoke-static {v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->access$300(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$StageContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$StageContext;->isStageChanging()Z

    move-result v1

    if-nez v1, :cond_2

    .line 263
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$2;->this$0:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    #getter for: Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mPlayingPathLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->access$400(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$2;->this$0:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    #getter for: Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mPlayingPaths:Ljava/util/Set;
    invoke-static {v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->access$500(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)Ljava/util/Set;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$2;->val$path:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    monitor-exit v2

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$2;->this$0:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    #getter for: Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mThumbnailPlayer:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;
    invoke-static {v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->access$100(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$2;->val$path:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$2;->val$item:Lcom/android/gallery3d/data/LocalMediaItem;

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$VideoThumbnailPlayer;->openThumbnail(Ljava/lang/String;Lcom/android/gallery3d/data/LocalMediaItem;)Z

    move-result v0

    .line 270
    .local v0, isOpenSuc:Z
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$2;->this$0:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    #getter for: Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mPlayingPathLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->access$400(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 271
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$2;->this$0:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    #getter for: Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mPlayingPaths:Ljava/util/Set;
    invoke-static {v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->access$500(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)Ljava/util/Set;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$2;->val$path:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 272
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 273
    if-nez v0, :cond_0

    .line 278
    .end local v0           #isOpenSuc:Z
    :cond_2
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$2;->val$playerStarter:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;

    invoke-virtual {v1, p0}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$PlayerHandler;->submit(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 272
    .restart local v0       #isOpenSuc:Z
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
