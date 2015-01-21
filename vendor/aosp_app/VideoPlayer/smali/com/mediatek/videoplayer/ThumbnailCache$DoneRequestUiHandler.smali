.class Lcom/mediatek/videoplayer/ThumbnailCache$DoneRequestUiHandler;
.super Landroid/os/Handler;
.source "ThumbnailCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/videoplayer/ThumbnailCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoneRequestUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/videoplayer/ThumbnailCache;


# direct methods
.method private constructor <init>(Lcom/mediatek/videoplayer/ThumbnailCache;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/mediatek/videoplayer/ThumbnailCache$DoneRequestUiHandler;->this$0:Lcom/mediatek/videoplayer/ThumbnailCache;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/videoplayer/ThumbnailCache;Lcom/mediatek/videoplayer/ThumbnailCache$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/mediatek/videoplayer/ThumbnailCache$DoneRequestUiHandler;-><init>(Lcom/mediatek/videoplayer/ThumbnailCache;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 302
    const-string v4, "ThumbnailCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lcom/mediatek/videoplayer/Request;

    if-eqz v4, :cond_0

    .line 304
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/mediatek/videoplayer/Request;

    .line 305
    .local v2, param:Lcom/mediatek/videoplayer/Request;
    invoke-virtual {v2}, Lcom/mediatek/videoplayer/Request;->getThumbnailEntity()Lcom/mediatek/videoplayer/ThumbnailEntity;

    move-result-object v3

    .line 306
    .local v3, thumbnailEntity:Lcom/mediatek/videoplayer/ThumbnailEntity;
    iget-object v4, p0, Lcom/mediatek/videoplayer/ThumbnailCache$DoneRequestUiHandler;->this$0:Lcom/mediatek/videoplayer/ThumbnailCache;

    #getter for: Lcom/mediatek/videoplayer/ThumbnailCache;->mListeners:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/mediatek/videoplayer/ThumbnailCache;->access$600(Lcom/mediatek/videoplayer/ThumbnailCache;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/videoplayer/ThumbnailCache$ThumbnailStateListener;

    .line 307
    .local v1, listener:Lcom/mediatek/videoplayer/ThumbnailCache$ThumbnailStateListener;
    invoke-virtual {v2}, Lcom/mediatek/videoplayer/Request;->getRowId()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/mediatek/videoplayer/ThumbnailEntity;->getType()I

    move-result v6

    invoke-virtual {v3}, Lcom/mediatek/videoplayer/ThumbnailEntity;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-interface {v1, v4, v5, v6, v7}, Lcom/mediatek/videoplayer/ThumbnailCache$ThumbnailStateListener;->onChanged(JILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 310
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/mediatek/videoplayer/ThumbnailCache$ThumbnailStateListener;
    .end local v2           #param:Lcom/mediatek/videoplayer/Request;
    .end local v3           #thumbnailEntity:Lcom/mediatek/videoplayer/ThumbnailEntity;
    :cond_0
    return-void
.end method
