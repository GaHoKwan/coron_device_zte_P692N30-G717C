.class Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$DirectorSecretary;
.super Ljava/lang/Thread;
.source "VideoThumbnailDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectorSecretary"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;


# direct methods
.method private constructor <init>(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$DirectorSecretary;->this$0:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 413
    invoke-direct {p0, p1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$DirectorSecretary;-><init>(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 415
    const-string v1, "pretty secretary"

    invoke-virtual {p0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 416
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$DirectorSecretary;->this$0:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    #getter for: Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mLockSecretaryBeauty:Ljava/lang/Object;
    invoke-static {v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->access$600(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 418
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$DirectorSecretary;->this$0:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    #getter for: Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mIsStageUpdated:Z
    invoke-static {v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->access$700(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 420
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$DirectorSecretary;->this$0:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    #getter for: Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mLockSecretaryBeauty:Ljava/lang/Object;
    invoke-static {v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->access$600(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 421
    :catch_0
    move-exception v0

    .line 423
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 424
    monitor-exit v2

    .line 439
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    :goto_2
    return-void

    .line 427
    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 428
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$DirectorSecretary;->this$0:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    #getter for: Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->mStageContext:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$StageContext;
    invoke-static {v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->access$300(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$StageContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailSourceWindow$StageContext;->isStageChanging()Z

    move-result v1

    if-nez v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$DirectorSecretary;->this$0:Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;

    #calls: Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->respondToStageUpdate()V
    invoke-static {v1}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;->access$800(Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector;)V

    .line 431
    const-wide/16 v1, 0x50

    :try_start_3
    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/videothumbnail/VideoThumbnailDirector$DirectorSecretary;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 432
    :catch_1
    move-exception v0

    .line 434
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 427
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
