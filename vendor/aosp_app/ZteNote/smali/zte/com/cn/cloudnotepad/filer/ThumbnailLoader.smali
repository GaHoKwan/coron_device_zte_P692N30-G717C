.class public final enum Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;
.super Ljava/lang/Enum;
.source "ThumbnailLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader; = null

.field public static final enum INSTANCE:Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader; = null

.field private static final MAX_CACHE_SIZE:I = 0x64

.field private static final softDrawableCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private futureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final hardDrawableCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final pool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    new-instance v0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->INSTANCE:Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;

    const/4 v0, 0x1

    new-array v0, v0, [Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;

    sget-object v1, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->INSTANCE:Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;

    aput-object v1, v0, v2

    sput-object v0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->ENUM$VALUES:[Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 40
    sput-object v0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->softDrawableCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 33
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->futureList:Ljava/util/List;

    .line 43
    new-instance v0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader$1;

    const/16 v1, 0x32

    const/high16 v2, 0x3f40

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader$1;-><init>(Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;IFZ)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->hardDrawableCache:Ljava/util/HashMap;

    .line 58
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->pool:Ljava/util/concurrent/ExecutorService;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->futureList:Ljava/util/List;

    .line 60
    return-void
.end method

.method static synthetic access$2()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->softDrawableCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$3(Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;Ljava/io/File;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->downloadDrawable(Ljava/io/File;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private downloadDrawable(Ljava/io/File;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "f"
    .parameter "ctx"

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 140
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->loadIcon(Ljava/io/File;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 144
    :goto_0
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->setCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 147
    :cond_0
    return-object v0

    .line 141
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private loadIcon(Ljava/io/File;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "file"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v2, 0x0

    .line 161
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, archiveFilePath:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 163
    .local v5, fileName:Ljava/lang/String;
    const-string v8, "."

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, end:Ljava/lang/String;
    const-string v8, "3gp"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "mp4"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 166
    :cond_0
    invoke-static {v1}, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->getVideoThumbnail(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 191
    :cond_1
    :goto_0
    return-object v2

    .line 167
    :cond_2
    const-string v8, "jpg"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "gif"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "png"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "jpeg"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "bmp"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 168
    :cond_3
    invoke-static {p2, p1}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getBitmapFromFile(Landroid/content/Context;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 169
    .local v7, srcBitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_1

    .line 170
    invoke-static {v7}, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->getImageThumbnail(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 171
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 172
    const/4 v7, 0x0

    goto :goto_0

    .line 174
    .end local v7           #srcBitmap:Landroid/graphics/Bitmap;
    :cond_4
    const-string v8, "apk"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 175
    const/4 v6, 0x0

    .line 177
    .local v6, pkgInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v1, v9}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 181
    :goto_1
    if-eqz v6, :cond_1

    .line 182
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 184
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {p2, v0, v1}, Lzte/com/cn/cloudnotepad/filer/FilerUtils;->getAppSnippet(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 178
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    .line 179
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 185
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v3

    .line 187
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "path"
    .parameter "drawable"

    .prologue
    .line 151
    if-eqz p2, :cond_0

    .line 152
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->hardDrawableCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->hardDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    monitor-exit v1

    .line 156
    :cond_0
    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;

    return-object v0
.end method

.method public static values()[Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->ENUM$VALUES:[Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;

    array-length v1, v0

    new-array v2, v1, [Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->hardDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 64
    sget-object v0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->softDrawableCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 65
    return-void
.end method

.method public getDrawableFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "url"

    .prologue
    .line 76
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->hardDrawableCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 77
    :try_start_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->hardDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 78
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 79
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->hardDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->hardDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    monitor-exit v3

    move-object v2, v0

    .line 94
    :goto_0
    return-object v2

    .line 76
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    sget-object v2, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->softDrawableCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 86
    .local v1, drawableReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    if-eqz v1, :cond_2

    .line 87
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 88
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    move-object v2, v0

    .line 89
    goto :goto_0

    .line 76
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #drawableReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 91
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v1       #drawableReference:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :cond_1
    sget-object v2, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->softDrawableCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public loadDrawable(ZLjava/io/File;Landroid/widget/ImageView;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "isBusy"
    .parameter "file"
    .parameter "imageView"
    .parameter "ctx"

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 125
    :cond_0
    const/4 v2, 0x0

    .line 134
    :goto_0
    return-object v2

    .line 127
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->getDrawableFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 129
    if-nez v0, :cond_2

    .line 130
    if-nez p1, :cond_2

    .line 131
    invoke-virtual {p0, p2, p3, p4}, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->queueJob(Ljava/io/File;Landroid/widget/ImageView;Landroid/content/Context;)V

    :cond_2
    move-object v2, v0

    .line 134
    goto :goto_0
.end method

.method public queueJob(Ljava/io/File;Landroid/widget/ImageView;Landroid/content/Context;)V
    .locals 4
    .parameter "f"
    .parameter "imageView"
    .parameter "ctx"

    .prologue
    .line 98
    new-instance v1, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader$2;

    invoke-direct {v1, p0, p2, p1}, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader$2;-><init>(Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;Landroid/widget/ImageView;Ljava/io/File;)V

    .line 110
    .local v1, handler:Landroid/os/Handler;
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader$3;

    invoke-direct {v3, p0, p1, p3, v1}, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader$3;-><init>(Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;Ljava/io/File;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 119
    .local v0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->futureList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public stopLoad()V
    .locals 3

    .prologue
    .line 68
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/filer/ThumbnailLoader;->futureList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    return-void

    .line 68
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 69
    .local v0, future:Ljava/util/concurrent/Future;,"Ljava/util/concurrent/Future<*>;"
    if-eqz v0, :cond_0

    .line 70
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0
.end method
