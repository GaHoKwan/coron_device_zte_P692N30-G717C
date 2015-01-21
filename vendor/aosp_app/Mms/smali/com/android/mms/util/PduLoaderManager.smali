.class public Lcom/android/mms/util/PduLoaderManager;
.super Lcom/android/mms/util/BackgroundLoaderManager;
.source "PduLoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/PduLoaderManager$PduLoaded;,
        Lcom/android/mms/util/PduLoaderManager$PduTask;
    }
.end annotation


# static fields
.field private static final DEBUG_DISABLE_CACHE:Z = false

.field private static final DEBUG_DISABLE_PDUS:Z = false

.field private static final DEBUG_LONG_WAIT:Z = false

.field private static final TAG:Ljava/lang/String; = "Mms:PduLoaderManager"

.field private static mPduCache:Lcom/google/android/mms/util/PduCache;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPduPersister:Lcom/google/android/mms/pdu/PduPersister;

.field private final mSlideshowCache:Lcom/android/mms/util/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mms/util/SimpleCache",
            "<",
            "Landroid/net/Uri;",
            "Lcom/android/mms/model/SlideshowModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/mms/util/BackgroundLoaderManager;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Lcom/android/mms/util/SimpleCache;

    const/16 v1, 0x8

    const/16 v2, 0x10

    const/high16 v3, 0x3f40

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/util/SimpleCache;-><init>(IIFZ)V

    iput-object v0, p0, Lcom/android/mms/util/PduLoaderManager;->mSlideshowCache:Lcom/android/mms/util/SimpleCache;

    .line 69
    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/PduLoaderManager;->mPduCache:Lcom/google/android/mms/util/PduCache;

    .line 70
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/PduLoaderManager;->mPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 71
    iput-object p1, p0, Lcom/android/mms/util/PduLoaderManager;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/PduLoaderManager;)Lcom/google/android/mms/pdu/PduPersister;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/mms/util/PduLoaderManager;->mPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/util/PduLoaderManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/mms/util/PduLoaderManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/util/PduLoaderManager;)Lcom/android/mms/util/SimpleCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/mms/util/PduLoaderManager;->mSlideshowCache:Lcom/android/mms/util/SimpleCache;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic addCallback(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/android/mms/util/BackgroundLoaderManager;->addCallback(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic cancelCallback(Lcom/android/mms/util/ItemLoadedCallback;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/mms/util/BackgroundLoaderManager;->cancelCallback(Lcom/android/mms/util/ItemLoadedCallback;)V

    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Lcom/android/mms/util/BackgroundLoaderManager;->clear()V

    .line 135
    sget-object v1, Lcom/android/mms/util/PduLoaderManager;->mPduCache:Lcom/google/android/mms/util/PduCache;

    monitor-enter v1

    .line 136
    :try_start_0
    sget-object v0, Lcom/android/mms/util/PduLoaderManager;->mPduCache:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0}, Lcom/google/android/mms/util/PduCache;->purgeAll()V

    .line 137
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    iget-object v0, p0, Lcom/android/mms/util/PduLoaderManager;->mSlideshowCache:Lcom/android/mms/util/SimpleCache;

    invoke-virtual {v0}, Lcom/android/mms/util/SimpleCache;->clear()V

    .line 139
    return-void

    .line 137
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPdu(Landroid/net/Uri;ZLcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;
    .locals 12
    .parameter "uri"
    .parameter "requestSlideshow"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Z",
            "Lcom/android/mms/util/ItemLoadedCallback",
            "<",
            "Lcom/android/mms/util/PduLoaderManager$PduLoaded;",
            ">;)",
            "Lcom/android/mms/util/ItemLoadedFuture;"
        }
    .end annotation

    .prologue
    .line 76
    .local p3, callback:Lcom/android/mms/util/ItemLoadedCallback;,"Lcom/android/mms/util/ItemLoadedCallback<Lcom/android/mms/util/PduLoaderManager$PduLoaded;>;"
    if-nez p1, :cond_0

    .line 77
    new-instance v10, Ljava/lang/NullPointerException;

    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    throw v10

    .line 80
    :cond_0
    const/4 v1, 0x0

    .line 81
    .local v1, cacheEntry:Lcom/google/android/mms/util/PduCacheEntry;
    sget-object v11, Lcom/android/mms/util/PduLoaderManager;->mPduCache:Lcom/google/android/mms/util/PduCache;

    monitor-enter v11

    .line 82
    :try_start_0
    sget-object v10, Lcom/android/mms/util/PduLoaderManager;->mPduCache:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v10, p1}, Lcom/google/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 83
    sget-object v10, Lcom/android/mms/util/PduLoaderManager;->mPduCache:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v10, p1}, Lcom/google/android/mms/util/AbstractCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/google/android/mms/util/PduCacheEntry;

    move-object v1, v0

    .line 85
    :cond_1
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    if-eqz p2, :cond_5

    iget-object v10, p0, Lcom/android/mms/util/PduLoaderManager;->mSlideshowCache:Lcom/android/mms/util/SimpleCache;

    invoke-virtual {v10, p1}, Lcom/android/mms/util/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/model/SlideshowModel;

    move-object v6, v10

    .line 89
    .local v6, slideshow:Lcom/android/mms/model/SlideshowModel;
    :goto_0
    if-eqz p2, :cond_2

    if-eqz v6, :cond_6

    :cond_2
    const/4 v7, 0x1

    .line 90
    .local v7, slideshowExists:Z
    :goto_1
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/google/android/mms/util/PduCacheEntry;->getPdu()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v10

    if-eqz v10, :cond_7

    const/4 v4, 0x1

    .line 91
    .local v4, pduExists:Z
    :goto_2
    iget-object v10, p0, Lcom/android/mms/util/BackgroundLoaderManager;->mPendingTaskUris:Ljava/util/Set;

    invoke-interface {v10, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 92
    .local v9, taskExists:Z
    if-eqz v4, :cond_3

    if-nez v7, :cond_8

    :cond_3
    if-nez v9, :cond_8

    const/4 v3, 0x1

    .line 93
    .local v3, newTaskRequired:Z
    :goto_3
    if-eqz p3, :cond_9

    const/4 v2, 0x1

    .line 95
    .local v2, callbackRequired:Z
    :goto_4
    if-eqz v4, :cond_a

    if-eqz v7, :cond_a

    .line 96
    if-eqz v2, :cond_4

    .line 97
    new-instance v5, Lcom/android/mms/util/PduLoaderManager$PduLoaded;

    invoke-virtual {v1}, Lcom/google/android/mms/util/PduCacheEntry;->getPdu()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v10

    invoke-direct {v5, v10, v6}, Lcom/android/mms/util/PduLoaderManager$PduLoaded;-><init>(Lcom/google/android/mms/pdu/GenericPdu;Lcom/android/mms/model/SlideshowModel;)V

    .line 98
    .local v5, pduLoaded:Lcom/android/mms/util/PduLoaderManager$PduLoaded;
    const/4 v10, 0x0

    invoke-interface {p3, v5, v10}, Lcom/android/mms/util/ItemLoadedCallback;->onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 100
    .end local v5           #pduLoaded:Lcom/android/mms/util/PduLoaderManager$PduLoaded;
    :cond_4
    new-instance v10, Lcom/android/mms/util/NullItemLoadedFuture;

    invoke-direct {v10}, Lcom/android/mms/util/NullItemLoadedFuture;-><init>()V

    .line 112
    :goto_5
    return-object v10

    .line 85
    .end local v2           #callbackRequired:Z
    .end local v3           #newTaskRequired:Z
    .end local v4           #pduExists:Z
    .end local v6           #slideshow:Lcom/android/mms/model/SlideshowModel;
    .end local v7           #slideshowExists:Z
    .end local v9           #taskExists:Z
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 86
    :cond_5
    const/4 v6, 0x0

    goto :goto_0

    .line 89
    .restart local v6       #slideshow:Lcom/android/mms/model/SlideshowModel;
    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    .line 90
    .restart local v7       #slideshowExists:Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 92
    .restart local v4       #pduExists:Z
    .restart local v9       #taskExists:Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    .line 93
    .restart local v3       #newTaskRequired:Z
    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    .line 103
    .restart local v2       #callbackRequired:Z
    :cond_a
    if-eqz v2, :cond_b

    .line 104
    invoke-virtual {p0, p1, p3}, Lcom/android/mms/util/PduLoaderManager;->addCallback(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Z

    .line 107
    :cond_b
    if-eqz v3, :cond_c

    .line 108
    iget-object v10, p0, Lcom/android/mms/util/BackgroundLoaderManager;->mPendingTaskUris:Ljava/util/Set;

    invoke-interface {v10, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v8, Lcom/android/mms/util/PduLoaderManager$PduTask;

    invoke-direct {v8, p0, p1, p2}, Lcom/android/mms/util/PduLoaderManager$PduTask;-><init>(Lcom/android/mms/util/PduLoaderManager;Landroid/net/Uri;Z)V

    .line 110
    .local v8, task:Ljava/lang/Runnable;
    iget-object v10, p0, Lcom/android/mms/util/BackgroundLoaderManager;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v10, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 112
    .end local v8           #task:Ljava/lang/Runnable;
    :cond_c
    new-instance v10, Lcom/android/mms/util/PduLoaderManager$1;

    invoke-direct {v10, p0, p3}, Lcom/android/mms/util/PduLoaderManager$1;-><init>(Lcom/android/mms/util/PduLoaderManager;Lcom/android/mms/util/ItemLoadedCallback;)V

    goto :goto_5
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-string v0, "Mms:PduLoaderManager"

    return-object v0
.end method

.method public bridge synthetic onLowMemory()V
    .locals 0

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/mms/util/BackgroundLoaderManager;->onLowMemory()V

    return-void
.end method

.method public removePdu(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 142
    const-string v0, "Mms:PduLoaderManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "Mms:PduLoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removePdu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    if-eqz p1, :cond_1

    .line 146
    sget-object v1, Lcom/android/mms/util/PduLoaderManager;->mPduCache:Lcom/google/android/mms/util/PduCache;

    monitor-enter v1

    .line 147
    :try_start_0
    sget-object v0, Lcom/android/mms/util/PduLoaderManager;->mPduCache:Lcom/google/android/mms/util/PduCache;

    invoke-virtual {v0, p1}, Lcom/google/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google/android/mms/util/PduCacheEntry;

    .line 148
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    iget-object v0, p0, Lcom/android/mms/util/PduLoaderManager;->mSlideshowCache:Lcom/android/mms/util/SimpleCache;

    invoke-virtual {v0, p1}, Lcom/android/mms/util/SimpleCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_1
    return-void

    .line 148
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
