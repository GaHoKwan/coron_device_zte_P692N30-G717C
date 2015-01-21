.class public Lcom/mediatek/videoplayer/ThumbnailCache;
.super Ljava/lang/Object;
.source "ThumbnailCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/videoplayer/ThumbnailCache$1;,
        Lcom/mediatek/videoplayer/ThumbnailCache$DoneRequestUiHandler;,
        Lcom/mediatek/videoplayer/ThumbnailCache$NewRequestHandler;,
        Lcom/mediatek/videoplayer/ThumbnailCache$ThumbnailStateListener;
    }
.end annotation


# static fields
.field private static final REQUEST_QUEUE:Ljava/util/PriorityQueue; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/mediatek/videoplayer/Request;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ThumbnailCache"

.field private static final TASK_REQUEST_DONE:I = 0x1

.field private static final TASK_REQUEST_NEW:I = 0x2

.field private static sLooper:Landroid/os/Looper;


# instance fields
.field private mCurrentRequest:Lcom/mediatek/videoplayer/Request;

.field private final mDoneRequestUiHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/videoplayer/ThumbnailCache$ThumbnailStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNewRequestHandler:Landroid/os/Handler;

.field private mPrioritySeed:J

.field private mThumbnailBuilder:Lcom/mediatek/videoplayer/ThumbnailBuilder;

.field private final mThumbnailEntities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/mediatek/videoplayer/ThumbnailEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0xa

    invoke-static {}, Lcom/mediatek/videoplayer/Request;->getComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    sput-object v0, Lcom/mediatek/videoplayer/ThumbnailCache;->REQUEST_QUEUE:Ljava/util/PriorityQueue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mThumbnailEntities:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mListeners:Ljava/util/ArrayList;

    .line 56
    iput-object v2, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mNewRequestHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Lcom/mediatek/videoplayer/ThumbnailCache$DoneRequestUiHandler;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/videoplayer/ThumbnailCache$DoneRequestUiHandler;-><init>(Lcom/mediatek/videoplayer/ThumbnailCache;Lcom/mediatek/videoplayer/ThumbnailCache$1;)V

    iput-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mDoneRequestUiHandler:Landroid/os/Handler;

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mPrioritySeed:J

    .line 64
    iput-object v2, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mCurrentRequest:Lcom/mediatek/videoplayer/Request;

    .line 65
    iput-object v2, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mThumbnailBuilder:Lcom/mediatek/videoplayer/ThumbnailBuilder;

    .line 69
    new-instance v0, Lcom/mediatek/videoplayer/ThumbnailBuilder;

    invoke-direct {v0, p1}, Lcom/mediatek/videoplayer/ThumbnailBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mThumbnailBuilder:Lcom/mediatek/videoplayer/ThumbnailBuilder;

    .line 70
    invoke-direct {p0}, Lcom/mediatek/videoplayer/ThumbnailCache;->initTask()V

    .line 71
    return-void
.end method

.method static synthetic access$100()Ljava/util/PriorityQueue;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/mediatek/videoplayer/ThumbnailCache;->REQUEST_QUEUE:Ljava/util/PriorityQueue;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/videoplayer/ThumbnailCache;)Lcom/mediatek/videoplayer/Request;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mCurrentRequest:Lcom/mediatek/videoplayer/Request;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/videoplayer/ThumbnailCache;Lcom/mediatek/videoplayer/Request;)Lcom/mediatek/videoplayer/Request;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mCurrentRequest:Lcom/mediatek/videoplayer/Request;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/videoplayer/ThumbnailCache;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mThumbnailEntities:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/videoplayer/ThumbnailCache;)Lcom/mediatek/videoplayer/ThumbnailBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mThumbnailBuilder:Lcom/mediatek/videoplayer/ThumbnailBuilder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/videoplayer/ThumbnailCache;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mDoneRequestUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/videoplayer/ThumbnailCache;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method private clearTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    const-string v0, "ThumbnailCache"

    const-string v1, "clearTask()"

    invoke-static {v0, v1}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mPrioritySeed:J

    .line 90
    sget-object v1, Lcom/mediatek/videoplayer/ThumbnailCache;->REQUEST_QUEUE:Ljava/util/PriorityQueue;

    monitor-enter v1

    .line 91
    :try_start_0
    sget-object v0, Lcom/mediatek/videoplayer/ThumbnailCache;->REQUEST_QUEUE:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->clear()V

    .line 92
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mDoneRequestUiHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    iget-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mNewRequestHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 95
    iput-object v2, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mNewRequestHandler:Landroid/os/Handler;

    .line 96
    iget-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mThumbnailBuilder:Lcom/mediatek/videoplayer/ThumbnailBuilder;

    invoke-virtual {v0}, Lcom/mediatek/videoplayer/ThumbnailBuilder;->cancelThumbnailFromDb()V

    .line 97
    sget-object v0, Lcom/mediatek/videoplayer/ThumbnailCache;->sLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/mediatek/videoplayer/ThumbnailCache;->sLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 99
    sput-object v2, Lcom/mediatek/videoplayer/ThumbnailCache;->sLooper:Landroid/os/Looper;

    .line 101
    :cond_0
    return-void

    .line 92
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private createNewRequest(JJZ)Lcom/mediatek/videoplayer/ThumbnailEntity;
    .locals 7
    .parameter "id"
    .parameter "dateModified"
    .parameter "support3D"

    .prologue
    .line 161
    const-string v1, "ThumbnailCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createNewRequest() id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",dateModified:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", support3D:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/videoplayer/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    sget-object v6, Lcom/mediatek/videoplayer/ThumbnailCache;->REQUEST_QUEUE:Ljava/util/PriorityQueue;

    monitor-enter v6

    .line 163
    :try_start_0
    iget-wide v1, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mPrioritySeed:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mPrioritySeed:J

    .line 164
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/videoplayer/ThumbnailCache;->createThumbnailEntity(JJZ)Lcom/mediatek/videoplayer/ThumbnailEntity;

    move-result-object v5

    .line 165
    .local v5, thumbnailEntity:Lcom/mediatek/videoplayer/ThumbnailEntity;
    iget-object v1, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mThumbnailEntities:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v0, Lcom/mediatek/videoplayer/Request;

    iget-wide v1, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mPrioritySeed:J

    neg-long v3, v1

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/videoplayer/Request;-><init>(JJLcom/mediatek/videoplayer/ThumbnailEntity;)V

    .line 167
    .local v0, request:Lcom/mediatek/videoplayer/Request;
    sget-object v1, Lcom/mediatek/videoplayer/ThumbnailCache;->REQUEST_QUEUE:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v1, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mNewRequestHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 170
    monitor-exit v6

    return-object v5

    .line 171
    .end local v0           #request:Lcom/mediatek/videoplayer/Request;
    .end local v5           #thumbnailEntity:Lcom/mediatek/videoplayer/ThumbnailEntity;
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createThumbnailEntity(JJZ)Lcom/mediatek/videoplayer/ThumbnailEntity;
    .locals 6
    .parameter "id"
    .parameter "dateModified"
    .parameter "support3D"

    .prologue
    .line 175
    new-instance v0, Lcom/mediatek/videoplayer/ThumbnailEntity;

    iget-object v1, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mThumbnailBuilder:Lcom/mediatek/videoplayer/ThumbnailBuilder;

    invoke-virtual {v1, p5}, Lcom/mediatek/videoplayer/ThumbnailBuilder;->getDefaultThumbnailWith3D(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/videoplayer/ThumbnailEntity;-><init>(Landroid/graphics/Bitmap;IJZ)V

    .line 177
    .local v0, thumbnailEntity:Lcom/mediatek/videoplayer/ThumbnailEntity;
    const-string v1, "ThumbnailCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createThumbnailEntity("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-object v0
.end method

.method private getOldRequest(J)Lcom/mediatek/videoplayer/Request;
    .locals 6
    .parameter "id"

    .prologue
    .line 182
    const/4 v1, 0x0

    .line 183
    .local v1, oldRequest:Lcom/mediatek/videoplayer/Request;
    sget-object v3, Lcom/mediatek/videoplayer/ThumbnailCache;->REQUEST_QUEUE:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/videoplayer/Request;

    .line 184
    .local v2, one:Lcom/mediatek/videoplayer/Request;
    invoke-virtual {v2}, Lcom/mediatek/videoplayer/Request;->getRowId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 185
    move-object v1, v2

    .line 189
    .end local v2           #one:Lcom/mediatek/videoplayer/Request;
    :cond_1
    const-string v3, "ThumbnailCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOldRequest("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-object v1
.end method

.method private initTask()V
    .locals 4

    .prologue
    .line 74
    const-string v1, "ThumbnailCache"

    const-string v2, "initTask()"

    invoke-static {v1, v2}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mPrioritySeed:J

    .line 76
    const-class v2, Lcom/mediatek/videoplayer/ThumbnailCache;

    monitor-enter v2

    .line 77
    :try_start_0
    sget-object v1, Lcom/mediatek/videoplayer/ThumbnailCache;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 78
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "cached-thumbnail-thread"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 80
    .local v0, t:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 81
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/mediatek/videoplayer/ThumbnailCache;->sLooper:Landroid/os/Looper;

    .line 83
    .end local v0           #t:Landroid/os/HandlerThread;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    new-instance v1, Lcom/mediatek/videoplayer/ThumbnailCache$NewRequestHandler;

    sget-object v2, Lcom/mediatek/videoplayer/ThumbnailCache;->sLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/mediatek/videoplayer/ThumbnailCache$NewRequestHandler;-><init>(Lcom/mediatek/videoplayer/ThumbnailCache;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mNewRequestHandler:Landroid/os/Handler;

    .line 85
    return-void

    .line 83
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isProcessing(JJ)Z
    .locals 5
    .parameter "id"
    .parameter "dateModified"

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, processing:Z
    iget-object v1, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mCurrentRequest:Lcom/mediatek/videoplayer/Request;

    if-eqz v1, :cond_1

    .line 196
    iget-object v2, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mCurrentRequest:Lcom/mediatek/videoplayer/Request;

    monitor-enter v2

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mCurrentRequest:Lcom/mediatek/videoplayer/Request;

    invoke-virtual {v1}, Lcom/mediatek/videoplayer/Request;->getRowId()J

    move-result-wide v3

    cmp-long v1, v3, p1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mCurrentRequest:Lcom/mediatek/videoplayer/Request;

    invoke-virtual {v1}, Lcom/mediatek/videoplayer/Request;->getThumbnailEntity()Lcom/mediatek/videoplayer/ThumbnailEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/videoplayer/ThumbnailEntity;->getDateModified()J

    move-result-wide v3

    cmp-long v1, v3, p3

    if-nez v1, :cond_0

    .line 198
    const/4 v0, 0x1

    .line 200
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :cond_1
    const-string v1, "ThumbnailCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isProcessing("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return v0

    .line 200
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateRequest(JJZLcom/mediatek/videoplayer/ThumbnailEntity;)V
    .locals 6
    .parameter "id"
    .parameter "dateModified"
    .parameter "support3D"
    .parameter "thumbnailEntity"

    .prologue
    .line 132
    const-string v1, "ThumbnailCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRequest() id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dateModified: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", thumbnailEntity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/videoplayer/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz p6, :cond_1

    invoke-virtual {p6}, Lcom/mediatek/videoplayer/ThumbnailEntity;->getDateModified()J

    move-result-wide v1

    cmp-long v1, v1, p3

    if-nez v1, :cond_0

    invoke-virtual {p6}, Lcom/mediatek/videoplayer/ThumbnailEntity;->isSupport3D()Z

    move-result v1

    if-eq v1, p5, :cond_1

    .line 135
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p6, v1}, Lcom/mediatek/videoplayer/ThumbnailEntity;->setType(I)V

    .line 139
    :cond_1
    invoke-virtual {p6}, Lcom/mediatek/videoplayer/ThumbnailEntity;->getType()I

    move-result v1

    if-nez v1, :cond_3

    .line 140
    iget-wide v1, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mPrioritySeed:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mPrioritySeed:J

    .line 141
    sget-object v2, Lcom/mediatek/videoplayer/ThumbnailCache;->REQUEST_QUEUE:Ljava/util/PriorityQueue;

    monitor-enter v2

    .line 143
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/videoplayer/ThumbnailCache;->isProcessing(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/mediatek/videoplayer/ThumbnailCache;->getOldRequest(J)Lcom/mediatek/videoplayer/Request;

    move-result-object v0

    .line 145
    .local v0, oldRequestParam:Lcom/mediatek/videoplayer/Request;
    if-eqz v0, :cond_2

    .line 146
    const-string v1, "ThumbnailCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRequest() updateOldRequest priority:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mPrioritySeed:J

    neg-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/videoplayer/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-wide v3, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mPrioritySeed:J

    neg-long v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/videoplayer/Request;->setPriority(J)V

    .line 148
    invoke-virtual {v0}, Lcom/mediatek/videoplayer/Request;->getThumbnailEntity()Lcom/mediatek/videoplayer/ThumbnailEntity;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Lcom/mediatek/videoplayer/ThumbnailEntity;->setDateModified(J)V

    .line 149
    invoke-virtual {v0}, Lcom/mediatek/videoplayer/Request;->getThumbnailEntity()Lcom/mediatek/videoplayer/ThumbnailEntity;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/mediatek/videoplayer/ThumbnailEntity;->setSupport3D(Z)V

    .line 150
    sget-object v1, Lcom/mediatek/videoplayer/ThumbnailCache;->REQUEST_QUEUE:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    sget-object v1, Lcom/mediatek/videoplayer/ThumbnailCache;->REQUEST_QUEUE:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v0           #oldRequestParam:Lcom/mediatek/videoplayer/Request;
    :cond_2
    monitor-exit v2

    .line 157
    :cond_3
    return-void

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addListener(Lcom/mediatek/videoplayer/ThumbnailCache$ThumbnailStateListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 207
    const-string v4, "ThumbnailCache"

    const-string v5, "clear()"

    invoke-static {v4, v5}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-direct {p0}, Lcom/mediatek/videoplayer/ThumbnailCache;->clearTask()V

    .line 209
    iget-object v4, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 210
    iget-object v5, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mThumbnailEntities:Ljava/util/HashMap;

    monitor-enter v5

    .line 211
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mThumbnailEntities:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 212
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 213
    .local v1, key:Ljava/lang/Long;
    iget-object v4, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mThumbnailEntities:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/videoplayer/ThumbnailEntity;

    .line 214
    .local v3, thumbnailEntity:Lcom/mediatek/videoplayer/ThumbnailEntity;
    iget-object v4, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mThumbnailBuilder:Lcom/mediatek/videoplayer/ThumbnailBuilder;

    invoke-virtual {v4, v3}, Lcom/mediatek/videoplayer/ThumbnailBuilder;->recycle(Lcom/mediatek/videoplayer/ThumbnailEntity;)V

    goto :goto_0

    .line 217
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/Long;
    .end local v2           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v3           #thumbnailEntity:Lcom/mediatek/videoplayer/ThumbnailEntity;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 216
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mThumbnailEntities:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 217
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    const-string v4, "ThumbnailCache"

    const-string v5, "clear() finished"

    invoke-static {v4, v5}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method public getCachedThumbnail(JJZZ)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "id"
    .parameter "dateModified"
    .parameter "support3D"
    .parameter "request"

    .prologue
    .line 106
    const-string v1, "ThumbnailCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCachedThumbnail("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v7, 0x0

    .line 108
    .local v7, thumbnailEntity:Lcom/mediatek/videoplayer/ThumbnailEntity;
    iget-object v2, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mThumbnailEntities:Ljava/util/HashMap;

    monitor-enter v2

    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mThumbnailEntities:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/mediatek/videoplayer/ThumbnailEntity;

    move-object v7, v0

    .line 110
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    if-eqz p6, :cond_0

    .line 112
    if-nez v7, :cond_2

    .line 113
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/videoplayer/ThumbnailCache;->createNewRequest(JJZ)Lcom/mediatek/videoplayer/ThumbnailEntity;

    move-result-object v7

    .line 117
    :goto_0
    const-string v1, "ThumbnailCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCachedThumbnail() async load the drawable for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/videoplayer/ThumbnailCache;->REQUEST_QUEUE:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    const/4 v8, 0x0

    .line 121
    .local v8, result:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/mediatek/videoplayer/ThumbnailEntity;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_3

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mThumbnailBuilder:Lcom/mediatek/videoplayer/ThumbnailBuilder;

    invoke-virtual {v1, p5}, Lcom/mediatek/videoplayer/ThumbnailBuilder;->getDefaultThumbnailWith3D(Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 126
    :goto_1
    const-string v1, "ThumbnailCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCachedThumbnail() id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/videoplayer/ThumbnailCache;->REQUEST_QUEUE:Ljava/util/PriorityQueue;

    invoke-virtual {v3}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/videoplayer/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-object v8

    .line 110
    .end local v8           #result:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 115
    invoke-direct/range {v1 .. v7}, Lcom/mediatek/videoplayer/ThumbnailCache;->updateRequest(JJZLcom/mediatek/videoplayer/ThumbnailEntity;)V

    goto :goto_0

    .line 124
    .restart local v8       #result:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {v7}, Lcom/mediatek/videoplayer/ThumbnailEntity;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_1
.end method

.method public getDefaultThumbnailHeight()I
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mThumbnailBuilder:Lcom/mediatek/videoplayer/ThumbnailBuilder;

    invoke-virtual {v0}, Lcom/mediatek/videoplayer/ThumbnailBuilder;->getmDefaultThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getDefaultThumbnailWidth()I
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mThumbnailBuilder:Lcom/mediatek/videoplayer/ThumbnailBuilder;

    invoke-virtual {v0}, Lcom/mediatek/videoplayer/ThumbnailBuilder;->getmDefaultThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public removeListener(Lcom/mediatek/videoplayer/ThumbnailCache$ThumbnailStateListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/mediatek/videoplayer/ThumbnailCache;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
