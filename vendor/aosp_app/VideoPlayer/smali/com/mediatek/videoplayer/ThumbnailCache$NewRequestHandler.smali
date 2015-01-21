.class Lcom/mediatek/videoplayer/ThumbnailCache$NewRequestHandler;
.super Landroid/os/Handler;
.source "ThumbnailCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/videoplayer/ThumbnailCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewRequestHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NewRequestHandler"


# instance fields
.field final synthetic this$0:Lcom/mediatek/videoplayer/ThumbnailCache;


# direct methods
.method public constructor <init>(Lcom/mediatek/videoplayer/ThumbnailCache;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/mediatek/videoplayer/ThumbnailCache$NewRequestHandler;->this$0:Lcom/mediatek/videoplayer/ThumbnailCache;

    .line 238
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 239
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 243
    const-string v10, "NewRequestHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mTaskHandler.handleMessage("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") this="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget v10, p1, Landroid/os/Message;->what:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 245
    invoke-static {}, Lcom/mediatek/videoplayer/ThumbnailCache;->access$100()Ljava/util/PriorityQueue;

    move-result-object v11

    monitor-enter v11

    .line 246
    :try_start_0
    iget-object v12, p0, Lcom/mediatek/videoplayer/ThumbnailCache$NewRequestHandler;->this$0:Lcom/mediatek/videoplayer/ThumbnailCache;

    invoke-static {}, Lcom/mediatek/videoplayer/ThumbnailCache;->access$100()Ljava/util/PriorityQueue;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/videoplayer/Request;

    #setter for: Lcom/mediatek/videoplayer/ThumbnailCache;->mCurrentRequest:Lcom/mediatek/videoplayer/Request;
    invoke-static {v12, v10}, Lcom/mediatek/videoplayer/ThumbnailCache;->access$202(Lcom/mediatek/videoplayer/ThumbnailCache;Lcom/mediatek/videoplayer/Request;)Lcom/mediatek/videoplayer/Request;

    .line 247
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    iget-object v10, p0, Lcom/mediatek/videoplayer/ThumbnailCache$NewRequestHandler;->this$0:Lcom/mediatek/videoplayer/ThumbnailCache;

    #getter for: Lcom/mediatek/videoplayer/ThumbnailCache;->mCurrentRequest:Lcom/mediatek/videoplayer/Request;
    invoke-static {v10}, Lcom/mediatek/videoplayer/ThumbnailCache;->access$200(Lcom/mediatek/videoplayer/ThumbnailCache;)Lcom/mediatek/videoplayer/Request;

    move-result-object v10

    if-nez v10, :cond_1

    .line 249
    const-string v10, "NewRequestHandler"

    const-string v11, "wrong request, has request but no task params."

    invoke-static {v10, v11}, Lcom/mediatek/videoplayer/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 247
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 252
    :cond_1
    iget-object v10, p0, Lcom/mediatek/videoplayer/ThumbnailCache$NewRequestHandler;->this$0:Lcom/mediatek/videoplayer/ThumbnailCache;

    #getter for: Lcom/mediatek/videoplayer/ThumbnailCache;->mCurrentRequest:Lcom/mediatek/videoplayer/Request;
    invoke-static {v10}, Lcom/mediatek/videoplayer/ThumbnailCache;->access$200(Lcom/mediatek/videoplayer/ThumbnailCache;)Lcom/mediatek/videoplayer/Request;

    move-result-object v6

    .line 254
    .local v6, request:Lcom/mediatek/videoplayer/Request;
    invoke-virtual {v6}, Lcom/mediatek/videoplayer/Request;->getRowId()J

    move-result-wide v3

    .line 255
    .local v3, id:J
    const/4 v8, 0x0

    .line 256
    .local v8, thumbnailEntity:Lcom/mediatek/videoplayer/ThumbnailEntity;
    iget-object v10, p0, Lcom/mediatek/videoplayer/ThumbnailCache$NewRequestHandler;->this$0:Lcom/mediatek/videoplayer/ThumbnailCache;

    #getter for: Lcom/mediatek/videoplayer/ThumbnailCache;->mThumbnailEntities:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/mediatek/videoplayer/ThumbnailCache;->access$300(Lcom/mediatek/videoplayer/ThumbnailCache;)Ljava/util/HashMap;

    move-result-object v11

    monitor-enter v11

    .line 257
    :try_start_2
    iget-object v10, p0, Lcom/mediatek/videoplayer/ThumbnailCache$NewRequestHandler;->this$0:Lcom/mediatek/videoplayer/ThumbnailCache;

    #getter for: Lcom/mediatek/videoplayer/ThumbnailCache;->mThumbnailEntities:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/mediatek/videoplayer/ThumbnailCache;->access$300(Lcom/mediatek/videoplayer/ThumbnailCache;)Ljava/util/HashMap;

    move-result-object v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/mediatek/videoplayer/ThumbnailEntity;

    move-object v8, v0

    .line 258
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 259
    if-nez v8, :cond_2

    .line 260
    const-string v10, "NewRequestHandler"

    const-string v11, "cached drawable was delete. may for clear."

    invoke-static {v10, v11}, Lcom/mediatek/videoplayer/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 258
    :catchall_1
    move-exception v10

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10

    .line 264
    :cond_2
    invoke-virtual {v8}, Lcom/mediatek/videoplayer/ThumbnailEntity;->getType()I

    move-result v10

    if-nez v10, :cond_4

    .line 265
    iget-object v10, p0, Lcom/mediatek/videoplayer/ThumbnailCache$NewRequestHandler;->this$0:Lcom/mediatek/videoplayer/ThumbnailCache;

    #getter for: Lcom/mediatek/videoplayer/ThumbnailCache;->mThumbnailBuilder:Lcom/mediatek/videoplayer/ThumbnailBuilder;
    invoke-static {v10}, Lcom/mediatek/videoplayer/ThumbnailCache;->access$400(Lcom/mediatek/videoplayer/ThumbnailCache;)Lcom/mediatek/videoplayer/ThumbnailBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Lcom/mediatek/videoplayer/ThumbnailBuilder;->getThumbnailFromDb(J)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 266
    .local v5, originThumbnail:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_5

    .line 267
    iget-object v10, p0, Lcom/mediatek/videoplayer/ThumbnailCache$NewRequestHandler;->this$0:Lcom/mediatek/videoplayer/ThumbnailCache;

    #getter for: Lcom/mediatek/videoplayer/ThumbnailCache;->mThumbnailBuilder:Lcom/mediatek/videoplayer/ThumbnailBuilder;
    invoke-static {v10}, Lcom/mediatek/videoplayer/ThumbnailCache;->access$400(Lcom/mediatek/videoplayer/ThumbnailCache;)Lcom/mediatek/videoplayer/ThumbnailBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/videoplayer/ThumbnailBuilder;->getmDefaultThumbnail()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 268
    .local v9, width:I
    iget-object v10, p0, Lcom/mediatek/videoplayer/ThumbnailCache$NewRequestHandler;->this$0:Lcom/mediatek/videoplayer/ThumbnailCache;

    #getter for: Lcom/mediatek/videoplayer/ThumbnailCache;->mThumbnailBuilder:Lcom/mediatek/videoplayer/ThumbnailBuilder;
    invoke-static {v10}, Lcom/mediatek/videoplayer/ThumbnailCache;->access$400(Lcom/mediatek/videoplayer/ThumbnailCache;)Lcom/mediatek/videoplayer/ThumbnailBuilder;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/videoplayer/ThumbnailBuilder;->getmDefaultThumbnail()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 269
    .local v2, height:I
    const/4 v10, 0x1

    invoke-static {v5, v9, v2, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 270
    .local v7, thumbnail:Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Lcom/mediatek/videoplayer/ThumbnailEntity;->isSupport3D()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 272
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 273
    iget-object v10, p0, Lcom/mediatek/videoplayer/ThumbnailCache$NewRequestHandler;->this$0:Lcom/mediatek/videoplayer/ThumbnailCache;

    #getter for: Lcom/mediatek/videoplayer/ThumbnailCache;->mThumbnailBuilder:Lcom/mediatek/videoplayer/ThumbnailBuilder;
    invoke-static {v10}, Lcom/mediatek/videoplayer/ThumbnailCache;->access$400(Lcom/mediatek/videoplayer/ThumbnailCache;)Lcom/mediatek/videoplayer/ThumbnailBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/mediatek/videoplayer/ThumbnailBuilder;->overlay3DImpl(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 275
    :cond_3
    invoke-virtual {v8, v7}, Lcom/mediatek/videoplayer/ThumbnailEntity;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 276
    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Lcom/mediatek/videoplayer/ThumbnailEntity;->setType(I)V

    .line 282
    .end local v2           #height:I
    .end local v5           #originThumbnail:Landroid/graphics/Bitmap;
    .end local v7           #thumbnail:Landroid/graphics/Bitmap;
    .end local v9           #width:I
    :cond_4
    :goto_1
    iget-object v10, p0, Lcom/mediatek/videoplayer/ThumbnailCache$NewRequestHandler;->this$0:Lcom/mediatek/videoplayer/ThumbnailCache;

    #getter for: Lcom/mediatek/videoplayer/ThumbnailCache;->mCurrentRequest:Lcom/mediatek/videoplayer/Request;
    invoke-static {v10}, Lcom/mediatek/videoplayer/ThumbnailCache;->access$200(Lcom/mediatek/videoplayer/ThumbnailCache;)Lcom/mediatek/videoplayer/Request;

    move-result-object v10

    if-eq v6, v10, :cond_6

    .line 283
    const-string v10, "NewRequestHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "current request was changed by other thread. task="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", currentRequest="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/videoplayer/ThumbnailCache$NewRequestHandler;->this$0:Lcom/mediatek/videoplayer/ThumbnailCache;

    #getter for: Lcom/mediatek/videoplayer/ThumbnailCache;->mCurrentRequest:Lcom/mediatek/videoplayer/Request;
    invoke-static {v12}, Lcom/mediatek/videoplayer/ThumbnailCache;->access$200(Lcom/mediatek/videoplayer/ThumbnailCache;)Lcom/mediatek/videoplayer/Request;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/videoplayer/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 278
    .restart local v5       #originThumbnail:Landroid/graphics/Bitmap;
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/mediatek/videoplayer/ThumbnailEntity;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 279
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/mediatek/videoplayer/ThumbnailEntity;->setType(I)V

    goto :goto_1

    .line 287
    .end local v5           #originThumbnail:Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {v6, v8}, Lcom/mediatek/videoplayer/Request;->setThumbnailEntity(Lcom/mediatek/videoplayer/ThumbnailEntity;)V

    .line 288
    iget-object v10, p0, Lcom/mediatek/videoplayer/ThumbnailCache$NewRequestHandler;->this$0:Lcom/mediatek/videoplayer/ThumbnailCache;

    #getter for: Lcom/mediatek/videoplayer/ThumbnailCache;->mDoneRequestUiHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/mediatek/videoplayer/ThumbnailCache;->access$500(Lcom/mediatek/videoplayer/ThumbnailCache;)Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 289
    .local v1, doneMessage:Landroid/os/Message;
    iput-object v6, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 290
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 291
    const-string v10, "NewRequestHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mTaskHandler.handleMessage() send done. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/mediatek/videoplayer/ThumbnailCache$NewRequestHandler;->this$0:Lcom/mediatek/videoplayer/ThumbnailCache;

    #getter for: Lcom/mediatek/videoplayer/ThumbnailCache;->mCurrentRequest:Lcom/mediatek/videoplayer/Request;
    invoke-static {v12}, Lcom/mediatek/videoplayer/ThumbnailCache;->access$200(Lcom/mediatek/videoplayer/ThumbnailCache;)Lcom/mediatek/videoplayer/Request;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " this="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static {}, Lcom/mediatek/videoplayer/ThumbnailCache;->access$100()Ljava/util/PriorityQueue;

    move-result-object v11

    monitor-enter v11

    .line 293
    :try_start_4
    iget-object v10, p0, Lcom/mediatek/videoplayer/ThumbnailCache$NewRequestHandler;->this$0:Lcom/mediatek/videoplayer/ThumbnailCache;

    const/4 v12, 0x0

    #setter for: Lcom/mediatek/videoplayer/ThumbnailCache;->mCurrentRequest:Lcom/mediatek/videoplayer/Request;
    invoke-static {v10, v12}, Lcom/mediatek/videoplayer/ThumbnailCache;->access$202(Lcom/mediatek/videoplayer/ThumbnailCache;Lcom/mediatek/videoplayer/Request;)Lcom/mediatek/videoplayer/Request;

    .line 294
    monitor-exit v11

    goto/16 :goto_0

    :catchall_2
    move-exception v10

    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v10
.end method
