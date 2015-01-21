.class public Lcom/android/mms/util/ThumbnailManager;
.super Lcom/android/mms/util/BackgroundLoaderManager;
.source "ThumbnailManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/ThumbnailManager$ImageLoaded;,
        Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;
    }
.end annotation


# static fields
.field private static final COMPRESS_JPEG_QUALITY:I = 0x5a

.field private static final DEBUG_DISABLE_CACHE:Z = false

.field private static final DEBUG_DISABLE_CALLBACK:Z = false

.field private static final DEBUG_DISABLE_LOAD:Z = false

.field private static final DEBUG_LONG_WAIT:Z = false

.field public static final FLAG_FNAME:Ljava/lang/String; = "fname="

.field private static final TAG:Ljava/lang/String; = "ThumbnailManager"

.field public static final THUMBNAIL_TARGET_SIZE:I = 0x280

.field public static final TYPE_MICROTHUMBNAIL:I = 0x2

.field public static final TYPE_THUMBNAIL:I = 0x1

.field private static mEmptyImageBitmap:Landroid/graphics/Bitmap;

.field private static mEmptyVideoBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mImageCacheService:Lcom/android/mms/util/ImageCacheService;

.field private final mThumbnailCache:Lcom/android/mms/util/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/mms/util/SimpleCache",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/mms/util/BackgroundLoaderManager;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v0, Lcom/android/mms/util/SimpleCache;

    const/16 v1, 0x8

    const/16 v2, 0x10

    const/high16 v3, 0x3f40

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/util/SimpleCache;-><init>(IIFZ)V

    iput-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mThumbnailCache:Lcom/android/mms/util/SimpleCache;

    .line 94
    iput-object p1, p0, Lcom/android/mms/util/ThumbnailManager;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/ThumbnailManager;->mEmptyImageBitmap:Landroid/graphics/Bitmap;

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d4

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/ThumbnailManager;->mEmptyVideoBitmap:Landroid/graphics/Bitmap;

    .line 101
    return-void
.end method

.method static synthetic access$200()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/mms/util/ThumbnailManager;->mEmptyVideoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$300()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/mms/util/ThumbnailManager;->mEmptyImageBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/util/ThumbnailManager;)Lcom/android/mms/util/SimpleCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mThumbnailCache:Lcom/android/mms/util/SimpleCache;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/util/ThumbnailManager;)Lcom/android/mms/util/ImageCacheService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/mms/util/ThumbnailManager;->getImageCacheService()Lcom/android/mms/util/ImageCacheService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-static {p0}, Lcom/android/mms/util/ThumbnailManager;->getRealUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/util/ThumbnailManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized getImageCacheService()Lcom/android/mms/util/ImageCacheService;
    .locals 2

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mImageCacheService:Lcom/android/mms/util/ImageCacheService;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lcom/android/mms/util/ImageCacheService;

    iget-object v1, p0, Lcom/android/mms/util/ThumbnailManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/mms/util/ImageCacheService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mImageCacheService:Lcom/android/mms/util/ImageCacheService;

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mImageCacheService:Lcom/android/mms/util/ImageCacheService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getRealUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 591
    if-nez p0, :cond_1

    .line 592
    const/4 p0, 0x0

    .line 598
    .end local p0
    .local v0, uriString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 594
    .end local v0           #uriString:Ljava/lang/String;
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 595
    .restart local v0       #uriString:Ljava/lang/String;
    const-string v1, "fname="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    const/4 v1, 0x0

    const-string v2, "fname="

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0
.end method

.method private getThumbnail(Landroid/net/Uri;ZLcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;
    .locals 10
    .parameter "uri"
    .parameter "isVideo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Z",
            "Lcom/android/mms/util/ItemLoadedCallback",
            "<",
            "Lcom/android/mms/util/ThumbnailManager$ImageLoaded;",
            ">;)",
            "Lcom/android/mms/util/ItemLoadedFuture;"
        }
    .end annotation

    .prologue
    .local p3, callback:Lcom/android/mms/util/ItemLoadedCallback;,"Lcom/android/mms/util/ItemLoadedCallback<Lcom/android/mms/util/ThumbnailManager$ImageLoaded;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 131
    if-nez p1, :cond_0

    .line 132
    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v7

    .line 135
    :cond_0
    iget-object v9, p0, Lcom/android/mms/util/ThumbnailManager;->mThumbnailCache:Lcom/android/mms/util/SimpleCache;

    invoke-virtual {v9, p1}, Lcom/android/mms/util/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 137
    .local v5, thumbnail:Landroid/graphics/Bitmap;
    if-eqz v5, :cond_3

    move v6, v7

    .line 138
    .local v6, thumbnailExists:Z
    :goto_0
    iget-object v9, p0, Lcom/android/mms/util/BackgroundLoaderManager;->mPendingTaskUris:Ljava/util/Set;

    invoke-interface {v9, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 139
    .local v4, taskExists:Z
    if-nez v6, :cond_4

    if-nez v4, :cond_4

    move v2, v7

    .line 140
    .local v2, newTaskRequired:Z
    :goto_1
    if-eqz p3, :cond_5

    move v0, v7

    .line 142
    .local v0, callbackRequired:Z
    :goto_2
    const-string v7, "Mms:thumbnailcache"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 143
    const-string v7, "ThumbnailManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getThumbnail mThumbnailCache.get for uri: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " thumbnail: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " callback: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " thumbnailExists: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " taskExists: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " newTaskRequired: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " callbackRequired: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_1
    if-eqz v6, :cond_6

    .line 151
    if-eqz v0, :cond_2

    .line 152
    new-instance v1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;

    invoke-direct {v1, v5, p2}, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 154
    .local v1, imageLoaded:Lcom/android/mms/util/ThumbnailManager$ImageLoaded;
    invoke-virtual {v1, p1}, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->setUri(Landroid/net/Uri;)V

    .line 156
    const/4 v7, 0x0

    invoke-interface {p3, v1, v7}, Lcom/android/mms/util/ItemLoadedCallback;->onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 158
    .end local v1           #imageLoaded:Lcom/android/mms/util/ThumbnailManager$ImageLoaded;
    :cond_2
    new-instance v7, Lcom/android/mms/util/NullItemLoadedFuture;

    invoke-direct {v7}, Lcom/android/mms/util/NullItemLoadedFuture;-><init>()V

    .line 170
    :goto_3
    return-object v7

    .end local v0           #callbackRequired:Z
    .end local v2           #newTaskRequired:Z
    .end local v4           #taskExists:Z
    .end local v6           #thumbnailExists:Z
    :cond_3
    move v6, v8

    .line 137
    goto/16 :goto_0

    .restart local v4       #taskExists:Z
    .restart local v6       #thumbnailExists:Z
    :cond_4
    move v2, v8

    .line 139
    goto :goto_1

    .restart local v2       #newTaskRequired:Z
    :cond_5
    move v0, v8

    .line 140
    goto :goto_2

    .line 161
    .restart local v0       #callbackRequired:Z
    :cond_6
    if-eqz v0, :cond_7

    .line 162
    invoke-virtual {p0, p1, p3}, Lcom/android/mms/util/ThumbnailManager;->addCallback(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Z

    .line 165
    :cond_7
    if-eqz v2, :cond_8

    .line 166
    iget-object v7, p0, Lcom/android/mms/util/BackgroundLoaderManager;->mPendingTaskUris:Ljava/util/Set;

    invoke-interface {v7, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v3, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;-><init>(Lcom/android/mms/util/ThumbnailManager;Landroid/net/Uri;Z)V

    .line 168
    .local v3, task:Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/android/mms/util/BackgroundLoaderManager;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v7, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 170
    .end local v3           #task:Ljava/lang/Runnable;
    :cond_8
    new-instance v7, Lcom/android/mms/util/ThumbnailManager$1;

    invoke-direct {v7, p0, p3}, Lcom/android/mms/util/ThumbnailManager$1;-><init>(Lcom/android/mms/util/ThumbnailManager;Lcom/android/mms/util/ItemLoadedCallback;)V

    goto :goto_3
.end method

.method public static getThumbnailUri(Lcom/android/mms/model/MediaModel;)Landroid/net/Uri;
    .locals 3
    .parameter "mediaModel"

    .prologue
    const/4 v1, 0x0

    .line 610
    if-nez p0, :cond_1

    .line 617
    :cond_0
    :goto_0
    return-object v1

    .line 613
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 614
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic addCallback(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/android/mms/util/BackgroundLoaderManager;->addCallback(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic cancelCallback(Lcom/android/mms/util/ItemLoadedCallback;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/mms/util/BackgroundLoaderManager;->cancelCallback(Lcom/android/mms/util/ItemLoadedCallback;)V

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lcom/android/mms/util/BackgroundLoaderManager;->clear()V

    .line 195
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mThumbnailCache:Lcom/android/mms/util/SimpleCache;

    invoke-virtual {v0}, Lcom/android/mms/util/SimpleCache;->clear()V

    .line 196
    invoke-virtual {p0}, Lcom/android/mms/util/ThumbnailManager;->clearBackingStore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearBackingStore()V
    .locals 1

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mImageCacheService:Lcom/android/mms/util/ImageCacheService;

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/util/CacheManager;->clear(Landroid/content/Context;)V

    .line 212
    :goto_0
    invoke-static {}, Lcom/android/mms/ui/UriImage;->getImageArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    .line 207
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/mms/util/ThumbnailManager;->getImageCacheService()Lcom/android/mms/util/ImageCacheService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/ImageCacheService;->clear()V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mImageCacheService:Lcom/android/mms/util/ImageCacheService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    const-string v0, "ThumbnailManager"

    return-object v0
.end method

.method public getThumbnail(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;
    .locals 1
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/android/mms/util/ItemLoadedCallback",
            "<",
            "Lcom/android/mms/util/ThumbnailManager$ImageLoaded;",
            ">;)",
            "Lcom/android/mms/util/ItemLoadedFuture;"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, callback:Lcom/android/mms/util/ItemLoadedCallback;,"Lcom/android/mms/util/ItemLoadedCallback<Lcom/android/mms/util/ThumbnailManager$ImageLoaded;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/mms/util/ThumbnailManager;->getThumbnail(Landroid/net/Uri;ZLcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v0

    return-object v0
.end method

.method public getVideoThumbnail(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;
    .locals 1
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/android/mms/util/ItemLoadedCallback",
            "<",
            "Lcom/android/mms/util/ThumbnailManager$ImageLoaded;",
            ">;)",
            "Lcom/android/mms/util/ItemLoadedFuture;"
        }
    .end annotation

    .prologue
    .line 126
    .local p2, callback:Lcom/android/mms/util/ItemLoadedCallback;,"Lcom/android/mms/util/ItemLoadedCallback<Lcom/android/mms/util/ThumbnailManager$ImageLoaded;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/mms/util/ThumbnailManager;->getThumbnail(Landroid/net/Uri;ZLcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onLowMemory()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/mms/util/BackgroundLoaderManager;->onLowMemory()V

    return-void
.end method

.method public removeThumbnail(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 219
    const-string v0, "ThumbnailManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeThumbnail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    if-eqz p1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager;->mThumbnailCache:Lcom/android/mms/util/SimpleCache;

    invoke-virtual {v0, p1}, Lcom/android/mms/util/SimpleCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_0
    return-void
.end method
