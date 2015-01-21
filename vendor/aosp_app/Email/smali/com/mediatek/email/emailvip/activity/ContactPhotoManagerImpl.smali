.class Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;
.super Lcom/mediatek/email/emailvip/activity/ListPhotoManager;
.source "ListPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;,
        Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$LoaderThread;,
        Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;
    }
.end annotation


# static fields
.field private static final BITMAP_CACHE_SIZE:I = 0x1b0000

.field private static final COLUMNS:[Ljava/lang/String; = null

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final FADE_TRANSITION_DURATION:I = 0xc8

.field private static final HOLDER_CACHE_SIZE:I = 0x1e8480

.field private static final LARGE_RAM_THRESHOLD:I = 0x28000000

.field private static final LOADER_THREAD_NAME:Ljava/lang/String; = "ContactPhotoLoader"

.field private static final MESSAGE_PHOTOS_LOADED:I = 0x2

.field private static final MESSAGE_REQUEST_LOADING:I = 0x1


# instance fields
.field private final mBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mBitmapHolderCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mBitmapHolderCacheAllUnfresh:Z

.field private final mBitmapHolderCacheRedZoneBytes:I

.field private final mContext:Landroid/content/Context;

.field private final mFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLoaderThread:Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 201
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 203
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "data15"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/mediatek/email/emailvip/activity/ListPhotoManager;-><init>()V

    .line 236
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 254
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 260
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    .line 287
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 290
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v3, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 293
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    .line 295
    invoke-static {}, Lcom/mediatek/email/emailvip/utils/MemoryUtils;->getTotalMemorySize()J

    move-result-wide v3

    const-wide/32 v5, 0x28000000

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    const/high16 v1, 0x3f80

    .line 297
    .local v1, cacheSizeAdjustment:F
    :goto_0
    const/high16 v3, 0x49d8

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 298
    .local v0, bitmapCacheSize:I
    new-instance v3, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$1;

    invoke-direct {v3, p0, v0}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$1;-><init>(Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;I)V

    iput-object v3, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    .line 308
    const v3, 0x49f42400

    mul-float/2addr v3, v1

    float-to-int v2, v3

    .line 309
    .local v2, holderCacheSize:I
    new-instance v3, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$2;

    invoke-direct {v3, p0, v2}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$2;-><init>(Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;I)V

    iput-object v3, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    .line 319
    int-to-double v3, v2

    const-wide/high16 v5, 0x3fe8

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    .line 320
    const-string v3, "ListPhotoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cache adj: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void

    .line 295
    .end local v0           #bitmapCacheSize:I
    .end local v1           #cacheSizeAdjustment:F
    .end local v2           #holderCacheSize:I
    :cond_0
    const/high16 v1, 0x3f00

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;)Landroid/util/LruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 184
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 184
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static btk(I)Ljava/lang/String;
    .locals 2
    .parameter "bytes"

    .prologue
    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v1, p0, 0x3ff

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cacheBitmap(Ljava/lang/Object;[BZI)V
    .locals 2
    .parameter "key"
    .parameter "bytes"
    .parameter "preloading"
    .parameter "requestedExtent"

    .prologue
    .line 673
    new-instance v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;

    if-nez p2, :cond_1

    const/4 v1, -0x1

    :goto_0
    invoke-direct {v0, p2, v1}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;-><init>([BI)V

    .line 678
    .local v0, holder:Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;
    if-nez p3, :cond_0

    .line 679
    invoke-static {v0, p4}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->inflateBitmap(Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;I)V

    .line 682
    :cond_0
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 684
    return-void

    .line 673
    .end local v0           #holder:Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;
    :cond_1
    invoke-static {p2}, Lcom/mediatek/email/emailvip/utils/BitmapUtil;->getSmallerExtentFromBytes([B)I

    move-result v1

    goto :goto_0
.end method

.method private dumpStats()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method private static inflateBitmap(Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;I)V
    .locals 4
    .parameter "holder"
    .parameter "requestedExtent"

    .prologue
    .line 507
    iget v3, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->originalSmallerExtent:I

    invoke-static {v3, p1}, Lcom/mediatek/email/emailvip/utils/BitmapUtil;->findOptimalSampleSize(II)I

    move-result v2

    .line 509
    .local v2, sampleSize:I
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    .line 510
    .local v1, bytes:[B
    if-eqz v1, :cond_0

    array-length v3, v1

    if-nez v3, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    iget v3, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->decodedSampleSize:I

    if-ne v2, v3, :cond_2

    .line 517
    iget-object v3, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v3, :cond_2

    .line 518
    iget-object v3, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 519
    iget-object v3, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 526
    :cond_2
    :try_start_0
    invoke-static {v1, v2}, Lcom/mediatek/email/emailvip/utils/BitmapUtil;->decodeBitmapFromBytes([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 544
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iput v2, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->decodedSampleSize:I

    .line 545
    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 546
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 552
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private loadCachedPhoto(Landroid/widget/ImageView;Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;Z)Z
    .locals 10
    .parameter "view"
    .parameter "request"
    .parameter "fadeIn"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 454
    iget-object v6, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;

    .line 455
    .local v2, holder:Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;
    if-nez v2, :cond_0

    move v6, v7

    .line 498
    :goto_0
    return v6

    .line 460
    :cond_0
    iget-object v6, v2, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-nez v6, :cond_1

    .line 461
    iget-boolean v6, v2, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0

    .line 464
    :cond_1
    iget-object v6, v2, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-nez v6, :cond_2

    move-object v0, v8

    .line 465
    .local v0, cachedBitmap:Landroid/graphics/Bitmap;
    :goto_1
    if-nez v0, :cond_3

    move v6, v7

    .line 466
    goto :goto_0

    .line 464
    .end local v0           #cachedBitmap:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v6, v2, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    move-object v0, v6

    goto :goto_1

    .line 469
    .restart local v0       #cachedBitmap:Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 470
    .local v4, previousDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_6

    if-eqz v4, :cond_6

    .line 471
    const/4 v6, 0x2

    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    .line 473
    .local v3, layers:[Landroid/graphics/drawable/Drawable;
    instance-of v6, v4, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v6, :cond_5

    move-object v5, v4

    .line 474
    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    .line 476
    .local v5, previousTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v3, v7

    .line 481
    .end local v5           #previousTransitionDrawable:Landroid/graphics/drawable/TransitionDrawable;
    :goto_2
    const/4 v6, 0x1

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v9, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v7, v9, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v7, v3, v6

    .line 482
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 483
    .local v1, drawable:Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 484
    const/16 v6, 0xc8

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 491
    .end local v1           #drawable:Landroid/graphics/drawable/TransitionDrawable;
    .end local v3           #layers:[Landroid/graphics/drawable/Drawable;
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    iget-object v7, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v7}, Landroid/util/LruCache;->maxSize()I

    move-result v7

    div-int/lit8 v7, v7, 0x6

    if-ge v6, v7, :cond_4

    .line 492
    iget-object v6, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    :cond_4
    iput-object v8, v2, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 498
    iget-boolean v6, v2, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0

    .line 479
    .restart local v3       #layers:[Landroid/graphics/drawable/Drawable;
    :cond_5
    aput-object v4, v3, v7

    goto :goto_2

    .line 486
    .end local v3           #layers:[Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3
.end method

.method private loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;)V
    .locals 2
    .parameter "view"
    .parameter "request"

    .prologue
    .line 417
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;Z)Z

    move-result v0

    .line 418
    .local v0, loaded:Z
    if-eqz v0, :cond_1

    .line 419
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    iget-boolean v1, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->requestLoading()V

    goto :goto_0
.end method

.method private obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 705
    .local p1, photoIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, photoIdsAsStrings:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, uris:Ljava/util/Set;,"Ljava/util/Set<Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;>;"
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 706
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 707
    invoke-interface {p3}, Ljava/util/Set;->clear()V

    .line 709
    const/4 v2, 0x0

    .line 719
    .local v2, jpegsDecoded:Z
    iget-object v4, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 720
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 721
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;

    .line 722
    .local v3, request:Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;
    iget-object v4, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;

    .line 723
    .local v0, holder:Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 726
    :cond_1
    invoke-virtual {v3}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v4

    invoke-static {v0, v4}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->inflateBitmap(Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;I)V

    .line 727
    const/4 v2, 0x1

    goto :goto_0

    .line 729
    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v4, v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-nez v4, :cond_0

    .line 730
    :cond_3
    invoke-virtual {v3}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->isUriRequest()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 731
    invoke-interface {p3, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 733
    :cond_4
    invoke-virtual {v3}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 734
    #getter for: Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->mId:J
    invoke-static {v3}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->access$000(Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 740
    .end local v0           #holder:Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;
    .end local v3           #request:Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;
    :cond_5
    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 741
    :cond_6
    return-void
.end method

.method private processLoadedImages()V
    .locals 5

    .prologue
    .line 629
    iget-object v4, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 630
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 631
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 632
    .local v3, view:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;

    .line 633
    .local v1, key:Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;
    const/4 v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;Z)Z

    move-result v2

    .line 634
    .local v2, loaded:Z
    if-eqz v2, :cond_0

    .line 635
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 639
    .end local v1           #key:Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;
    .end local v2           #loaded:Z
    .end local v3           #view:Landroid/widget/ImageView;
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->softenCache()V

    .line 641
    iget-object v4, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 642
    invoke-direct {p0}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->requestLoading()V

    .line 644
    :cond_2
    return-void
.end method

.method private requestLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 585
    iget-boolean v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mLoadingRequested:Z

    if-nez v0, :cond_0

    .line 586
    iput-boolean v1, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mLoadingRequested:Z

    .line 587
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 589
    :cond_0
    return-void
.end method

.method private static final safeDiv(II)I
    .locals 1
    .parameter "dividend"
    .parameter "divisor"

    .prologue
    .line 333
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    div-int v0, p0, p1

    goto :goto_0
.end method

.method private softenCache()V
    .locals 3

    .prologue
    .line 651
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;

    .line 652
    .local v0, holder:Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 654
    .end local v0           #holder:Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;
    :cond_0
    return-void
.end method


# virtual methods
.method public cacheBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;[B)V
    .locals 6
    .parameter "photoUri"
    .parameter "bitmap"
    .parameter "photoBytes"

    .prologue
    const/4 v5, 0x0

    .line 688
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 691
    .local v2, smallerExtent:I
    invoke-static {p1, v2, v5}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->createFromUri(Landroid/net/Uri;IZ)Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;

    move-result-object v1

    .line 692
    .local v1, request:Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;
    new-instance v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;

    invoke-direct {v0, p3, v2}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;-><init>([BI)V

    .line 693
    .local v0, holder:Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    .line 694
    iget-object v3, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    iput-boolean v5, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 696
    iget-object v3, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 560
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 561
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 562
    return-void
.end method

.method public ensureLoaderThread()V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mLoaderThread:Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$LoaderThread;

    if-nez v0, :cond_0

    .line 619
    new-instance v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$LoaderThread;

    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$LoaderThread;-><init>(Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mLoaderThread:Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$LoaderThread;

    .line 620
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mLoaderThread:Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 622
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 596
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 614
    :cond_0
    :goto_0
    return v0

    .line 598
    :pswitch_0
    iput-boolean v1, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mLoadingRequested:Z

    .line 599
    iget-boolean v1, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    .line 600
    invoke-virtual {p0}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->ensureLoaderThread()V

    .line 601
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mLoaderThread:Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v1}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$LoaderThread;->requestLoading()V

    goto :goto_0

    .line 607
    :pswitch_1
    iget-boolean v1, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    .line 608
    invoke-direct {p0}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->processLoadedImages()V

    goto :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V
    .locals 1
    .parameter "view"
    .parameter "photoUri"
    .parameter "requestedExtent"
    .parameter "darkTheme"

    .prologue
    .line 408
    if-nez p2, :cond_0

    .line 409
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-static {p2, p3, p4}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->createFromUri(Landroid/net/Uri;IZ)Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;)V

    goto :goto_0
.end method

.method public loadThumbnail(Landroid/widget/ImageView;JZ)V
    .locals 2
    .parameter "view"
    .parameter "photoId"
    .parameter "darkTheme"

    .prologue
    .line 398
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    invoke-static {p2, p3, p4}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;->createFromThumbnailId(JZ)Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$Request;)V

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 384
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->clear()V

    .line 388
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mPaused:Z

    .line 567
    return-void
.end method

.method public preloadPhotosInBackground()V
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->ensureLoaderThread()V

    .line 393
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mLoaderThread:Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    .line 394
    return-void
.end method

.method public refreshCache()V
    .locals 3

    .prologue
    .line 437
    iget-boolean v2, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    if-eqz v2, :cond_1

    .line 446
    :cond_0
    return-void

    .line 442
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    .line 443
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;

    .line 444
    .local v0, holder:Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0
.end method

.method public removePhoto(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 431
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 432
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mPaused:Z

    .line 573
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    invoke-direct {p0}, Lcom/mediatek/email/emailvip/activity/ContactPhotoManagerImpl;->requestLoading()V

    .line 576
    :cond_0
    return-void
.end method
