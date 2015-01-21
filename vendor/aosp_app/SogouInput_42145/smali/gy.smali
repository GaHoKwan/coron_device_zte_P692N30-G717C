.class public Lgy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static b:Ljava/lang/String;


# instance fields
.field final a:Landroid/os/Handler;

.field private a:Ljava/lang/Object;

.field private final a:Ljava/lang/String;

.field private a:Ljava/util/HashMap;

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
    .line 30
    const/high16 v0, 0x4248

    sget v1, Laox;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lgy;->a:I

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lgy;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "ThemeBitmapSyncLoader"

    iput-object v0, p0, Lgy;->a:Ljava/lang/String;

    .line 28
    iput-boolean v1, p0, Lgy;->a:Z

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgy;->a:Ljava/lang/Object;

    .line 36
    iput-boolean v2, p0, Lgy;->b:Z

    .line 37
    iput-boolean v2, p0, Lgy;->c:Z

    .line 38
    iput v1, p0, Lgy;->b:I

    .line 39
    iput v1, p0, Lgy;->c:I

    .line 41
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lgy;->a:Landroid/os/Handler;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgy;->a:Ljava/util/HashMap;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lgy;->a:Ljava/util/concurrent/ExecutorService;

    .line 53
    sput-object p1, Lgy;->b:Ljava/lang/String;

    .line 54
    return-void
.end method

.method static synthetic a(Lgy;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lgy;->c:I

    return v0
.end method

.method static synthetic a(Lgy;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lgy;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x5f

    .line 239
    if-eqz p0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    const/16 v1, 0x2e

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lgy;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lgy;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lgy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lhd;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lgy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lhd;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lhd;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-static {p2}, Lgy;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------loadIcon-------key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "      mIconUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lgy;->a(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, v0}, Lgy;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 134
    if-eqz v5, :cond_0

    .line 135
    const-string v0, "icon in the memory!!"

    invoke-direct {p0, v0}, Lgy;->a(Ljava/lang/String;)V

    .line 136
    iget-object v6, p0, Lgy;->a:Landroid/os/Handler;

    new-instance v0, Lha;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lha;-><init>(Lgy;Lhd;Ljava/lang/String;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "theme icon require size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lgy;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lgy;->a(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0, v0}, Lgy;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 145
    if-eqz v5, :cond_1

    .line 146
    const-string v1, "icon in the file system!!"

    invoke-direct {p0, v1}, Lgy;->a(Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lgy;->a:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v6, p0, Lgy;->a:Landroid/os/Handler;

    new-instance v0, Lhb;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lhb;-><init>(Lgy;Lhd;Ljava/lang/String;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 154
    :cond_1
    const-string v1, "-------loadIcon-------from Internet-------------------"

    invoke-direct {p0, v1}, Lgy;->a(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0, p2, v0}, Lgy;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 158
    if-eqz v5, :cond_2

    .line 159
    const-string v1, "icon in the internet!!"

    invoke-direct {p0, v1}, Lgy;->a(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lgy;->a:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v6, p0, Lgy;->a:Landroid/os/Handler;

    new-instance v0, Lhc;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lhc;-><init>(Lgy;Lhd;Ljava/lang/String;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 167
    :cond_2
    const-string v0, "icon in the internet!! error!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-direct {p0, v0}, Lgy;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lgy;)Z
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-boolean v0, p0, Lgy;->b:Z

    return v0
.end method

.method static synthetic b(Lgy;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lgy;->b:I

    return v0
.end method

.method static synthetic b(Lgy;)Z
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-boolean v0, p0, Lgy;->c:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 179
    iget-object v0, p0, Lgy;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lgy;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 181
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 182
    if-eqz v0, :cond_0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 182
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 184
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 202
    if-nez p1, :cond_0

    move-object v0, v1

    .line 235
    :goto_0
    return-object v0

    .line 209
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lgy;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 210
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------------------------------------iconCachePath = -"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgy;->a(Ljava/lang/String;)V

    .line 212
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 213
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 215
    :try_start_2
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 216
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 217
    const/16 v5, 0x400

    :try_start_4
    new-array v5, v5, [B

    .line 219
    :goto_1
    invoke-virtual {v4, v5}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 220
    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_1

    .line 223
    :catch_0
    move-exception v5

    move-object v8, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v8

    .line 224
    :goto_2
    :try_start_5
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-static {v5}, Layw;->b(Ljava/io/File;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 231
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 232
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 233
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    :goto_3
    move-object v0, v1

    .line 235
    goto :goto_0

    .line 222
    :cond_1
    :try_start_6
    invoke-virtual {p0, p2}, Lgy;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v1

    .line 231
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 232
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 233
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 222
    goto :goto_0

    .line 226
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v0, v1

    .line 228
    :goto_4
    :try_start_7
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-static {v5}, Layw;->b(Ljava/io/File;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 231
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 232
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 233
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_3

    .line 231
    :catchall_0
    move-exception v0

    move-object v4, v1

    move-object v2, v1

    :goto_5
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 232
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 233
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 231
    throw v0

    :catchall_1
    move-exception v2

    move-object v4, v1

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_5

    :catchall_2
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_5

    :catchall_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object v2, v4

    move-object v4, v3

    goto :goto_5

    .line 226
    :catch_2
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    move-object v0, v1

    goto :goto_4

    :catch_3
    move-exception v3

    move-object v3, v1

    move-object v4, v1

    goto :goto_4

    :catch_4
    move-exception v3

    move-object v3, v1

    goto :goto_4

    :catch_5
    move-exception v5

    goto :goto_4

    .line 223
    :catch_6
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto :goto_2

    :catch_7
    move-exception v0

    move-object v0, v2

    move-object v3, v1

    move-object v4, v1

    move-object v2, v1

    goto :goto_2

    :catch_8
    move-exception v3

    move-object v3, v1

    move-object v4, v0

    move-object v0, v2

    move-object v2, v1

    goto :goto_2

    :catch_9
    move-exception v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v2

    move-object v2, v1

    goto :goto_2
.end method

.method public a()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lgy;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lgy;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lgy;->a:Ljava/util/concurrent/ExecutorService;

    .line 254
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lhd;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    .line 93
    :try_start_0
    iget-object v0, p0, Lgy;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lgy;->a:Ljava/util/concurrent/ExecutorService;

    .line 96
    :cond_0
    iget-object v0, p0, Lgy;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 97
    iget-object v6, p0, Lgy;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lgz;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lgz;-><init>(Lgy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lhd;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_1
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lgy;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    sget v0, Lgy;->a:I

    invoke-static {v1, v0}, Lays;->a(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 6

    .prologue
    .line 258
    :try_start_0
    iget-object v0, p0, Lgy;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 259
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 260
    iget-object v1, p0, Lgy;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 261
    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 263
    if-eqz v2, :cond_1

    .line 264
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recycle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgy;->a(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 268
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 275
    :goto_1
    return-void

    .line 271
    :cond_2
    iget-object v0, p0, Lgy;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
