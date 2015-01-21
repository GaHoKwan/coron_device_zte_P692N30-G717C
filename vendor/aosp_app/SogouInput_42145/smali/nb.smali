.class public Lnb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I


# instance fields
.field final a:Landroid/os/Handler;

.field private a:Ljava/lang/Object;

.field private final a:Ljava/lang/String;

.field private a:Ljava/util/Map;

.field private a:Ljava/util/concurrent/ExecutorService;

.field private final a:Z

.field private b:I

.field private b:Z

.field private c:I

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const/high16 v0, 0x4248

    sget v1, Laox;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lnb;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "ExpressionGridIconSyncLoader"

    iput-object v0, p0, Lnb;->a:Ljava/lang/String;

    .line 22
    iput-boolean v1, p0, Lnb;->a:Z

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnb;->a:Ljava/lang/Object;

    .line 28
    iput-boolean v2, p0, Lnb;->b:Z

    .line 29
    iput-boolean v2, p0, Lnb;->c:Z

    .line 30
    iput v1, p0, Lnb;->b:I

    .line 31
    iput v1, p0, Lnb;->c:I

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnb;->a:Landroid/os/Handler;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lnb;->a:Ljava/util/concurrent/ExecutorService;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnb;->a:Ljava/util/Map;

    .line 40
    return-void
.end method

.method static synthetic a(Lnb;)I
    .locals 1
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lnb;->c:I

    return v0
.end method

.method static synthetic a(Lnb;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lnb;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Integer;Lng;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    .line 120
    invoke-virtual {p0, p1}, Lnb;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    .line 122
    const-string v1, "icon in the memory!!"

    invoke-direct {p0, v1}, Lnb;->a(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lnb;->a:Landroid/os/Handler;

    new-instance v2, Lnd;

    invoke-direct {v2, p0, p3, p2, v0}, Lnd;-><init>(Lnb;Lng;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    :goto_0
    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app icon require size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lnb;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnb;->a(Ljava/lang/String;)V

    .line 131
    invoke-static {p1}, Lnb;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_1

    .line 133
    const-string v1, "icon in the file system!!"

    invoke-direct {p0, v1}, Lnb;->a(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lnb;->a:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Lnb;->a:Landroid/os/Handler;

    new-instance v2, Lne;

    invoke-direct {v2, p0, p3, p2, v0}, Lne;-><init>(Lnb;Lng;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lnb;->a:Landroid/os/Handler;

    new-instance v1, Lnf;

    invoke-direct {v1, p0, p3, p2}, Lnf;-><init>(Lnb;Lng;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lnb;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lnb;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lnb;Ljava/lang/String;Ljava/lang/Integer;Lng;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lnb;->a(Ljava/lang/String;Ljava/lang/Integer;Lng;)V

    return-void
.end method

.method static synthetic a(Lnb;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-boolean v0, p0, Lnb;->b:Z

    return v0
.end method

.method static synthetic b(Lnb;)I
    .locals 1
    .parameter

    .prologue
    .line 20
    iget v0, p0, Lnb;->b:I

    return v0
.end method

.method public static b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 161
    .line 162
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    sget v1, Lnb;->a:I

    invoke-static {v0, v1}, Lays;->a(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lnb;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-boolean v0, p0, Lnb;->c:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lnb;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lnb;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 153
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 154
    if-eqz v0, :cond_0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 154
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 156
    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lnb;->b:Z

    .line 62
    iput-boolean v0, p0, Lnb;->c:Z

    .line 63
    return-void
.end method

.method public a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    if-le p1, p2, :cond_0

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    iput p1, p0, Lnb;->b:I

    .line 52
    iput p2, p0, Lnb;->c:I

    goto :goto_0
.end method

.method public a(Ljava/lang/Integer;Ljava/lang/String;Lng;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    .line 83
    :try_start_0
    iget-object v0, p0, Lnb;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lnb;->a:Ljava/util/concurrent/ExecutorService;

    .line 86
    :cond_0
    iget-object v0, p0, Lnb;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lnb;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lnc;

    invoke-direct {v1, p0, p2, p1, p3}, Lnc;-><init>(Lnb;Ljava/lang/String;Ljava/lang/Integer;Lng;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_1
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lnb;->b:Z

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnb;->b:Z

    .line 67
    iget-object v1, p0, Lnb;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    const-string v0, "notify all lock"

    invoke-direct {p0, v0}, Lnb;->a(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lnb;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 70
    monitor-exit v1

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lnb;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lnb;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lnb;->a:Ljava/util/concurrent/ExecutorService;

    .line 177
    :cond_0
    return-void
.end method

.method public d()V
    .locals 6

    .prologue
    .line 180
    iget-object v0, p0, Lnb;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 203
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v3, p0, Lnb;->a:Ljava/util/Map;

    monitor-enter v3

    .line 184
    :try_start_0
    iget-object v0, p0, Lnb;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 186
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    iget-object v1, p0, Lnb;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 190
    if-eqz v1, :cond_2

    .line 191
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 192
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 193
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 196
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    .line 198
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 199
    iget-object v1, p0, Lnb;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 201
    :cond_3
    :try_start_1
    iget-object v0, p0, Lnb;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 202
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
