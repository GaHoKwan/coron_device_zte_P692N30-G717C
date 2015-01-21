.class public Lahr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I


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
    const/high16 v0, 0x422c

    sget v1, Laox;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lahr;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "AppIconSyncLoader"

    iput-object v0, p0, Lahr;->a:Ljava/lang/String;

    .line 28
    iput-boolean v1, p0, Lahr;->a:Z

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lahr;->a:Ljava/lang/Object;

    .line 34
    iput-boolean v2, p0, Lahr;->b:Z

    .line 35
    iput-boolean v2, p0, Lahr;->c:Z

    .line 36
    iput v1, p0, Lahr;->b:I

    .line 37
    iput v1, p0, Lahr;->c:I

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lahr;->a:Landroid/os/Handler;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lahr;->a:Ljava/util/HashMap;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lahr;->a:Ljava/util/concurrent/ExecutorService;

    .line 44
    return-void
.end method

.method static synthetic a(Lahr;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lahr;->c:I

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 190
    if-nez p0, :cond_0

    move-object v0, v1

    .line 224
    :goto_0
    return-object v0

    .line 197
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->ad:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 199
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 202
    :try_start_2
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 203
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 204
    const/16 v5, 0x400

    :try_start_4
    new-array v5, v5, [B

    .line 206
    :goto_1
    invoke-virtual {v4, v5}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 207
    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_1

    .line 210
    :catch_0
    move-exception v5

    move-object v8, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v8

    .line 211
    :goto_2
    :try_start_5
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-static {v5}, Layw;->b(Ljava/io/File;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 220
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 221
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 222
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    :goto_3
    move-object v0, v1

    .line 224
    goto :goto_0

    .line 209
    :cond_1
    :try_start_6
    invoke-static {p1}, Lahr;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result-object v1

    .line 220
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 221
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 222
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 209
    goto :goto_0

    .line 213
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v0, v1

    .line 215
    :goto_4
    :try_start_7
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-static {v5}, Layw;->b(Ljava/io/File;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 220
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 221
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 222
    :goto_5
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_3

    .line 220
    :catchall_0
    move-exception v0

    move-object v4, v1

    move-object v2, v1

    :goto_6
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 221
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 222
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 220
    throw v0

    .line 217
    :catch_2
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    move-object v0, v1

    .line 220
    :goto_7
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 221
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_5

    .line 220
    :catchall_1
    move-exception v2

    move-object v4, v1

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_6

    :catchall_2
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_6

    :catchall_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object v2, v4

    move-object v4, v3

    goto :goto_6

    .line 217
    :catch_3
    move-exception v2

    move-object v3, v1

    move-object v4, v1

    goto :goto_7

    :catch_4
    move-exception v2

    move-object v3, v1

    goto :goto_7

    :catch_5
    move-exception v2

    goto :goto_7

    .line 213
    :catch_6
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    move-object v0, v1

    goto :goto_4

    :catch_7
    move-exception v3

    move-object v3, v1

    move-object v4, v1

    goto :goto_4

    :catch_8
    move-exception v3

    move-object v3, v1

    goto :goto_4

    :catch_9
    move-exception v5

    goto :goto_4

    .line 210
    :catch_a
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto/16 :goto_2

    :catch_b
    move-exception v0

    move-object v0, v2

    move-object v3, v1

    move-object v4, v1

    move-object v2, v1

    goto/16 :goto_2

    :catch_c
    move-exception v3

    move-object v3, v1

    move-object v4, v0

    move-object v0, v2

    move-object v2, v1

    goto/16 :goto_2

    :catch_d
    move-exception v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v2

    move-object v2, v1

    goto/16 :goto_2
.end method

.method static synthetic a(Lahr;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lahr;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 228
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lahr;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lahr;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lahr;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lahx;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct/range {p0 .. p5}, Lahr;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lahx;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lahx;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0, p3}, Lahr;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {p0, v0}, Lahr;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_0

    .line 126
    const-string v0, "icon in the memory!!"

    invoke-direct {p0, v0}, Lahr;->a(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lahr;->a:Landroid/os/Handler;

    new-instance v2, Laht;

    invoke-direct {v2, p0, p5, p4, v1}, Laht;-><init>(Lahr;Lahx;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app icon require size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lahr;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lahr;->a(Ljava/lang/String;)V

    .line 135
    invoke-static {v0}, Lahr;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_1

    .line 137
    const-string v2, "icon in the file system!!"

    invoke-direct {p0, v2}, Lahr;->a(Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lahr;->a:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lahr;->a:Landroid/os/Handler;

    new-instance v2, Lahu;

    invoke-direct {v2, p0, p5, p4, v1}, Lahu;-><init>(Lahr;Lahx;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 146
    :cond_1
    invoke-static {p3, v0}, Lahr;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 147
    if-eqz v1, :cond_2

    .line 148
    const-string v2, "icon in the internet!!"

    invoke-direct {p0, v2}, Lahr;->a(Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lahr;->a:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lahr;->a:Landroid/os/Handler;

    new-instance v2, Lahv;

    invoke-direct {v2, p0, p5, p4, v1}, Lahv;-><init>(Lahr;Lahx;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lahr;->a:Landroid/os/Handler;

    new-instance v1, Lahw;

    invoke-direct {v1, p0, p5, p4}, Lahw;-><init>(Lahr;Lahx;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lahr;)Z
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-boolean v0, p0, Lahr;->b:Z

    return v0
.end method

.method static synthetic b(Lahr;)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget v0, p0, Lahr;->b:I

    return v0
.end method

.method public static b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->ad:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    sget v0, Lahr;->a:I

    invoke-static {v1, v0}, Lays;->a(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lahr;)Z
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-boolean v0, p0, Lahr;->c:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Lahr;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lahr;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 169
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 170
    if-eqz v0, :cond_0

    .line 172
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 170
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 172
    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lahr;->b:Z

    .line 64
    iput-boolean v0, p0, Lahr;->c:Z

    .line 65
    return-void
.end method

.method public a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    if-le p1, p2, :cond_0

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iput p1, p0, Lahr;->b:I

    .line 54
    iput p2, p0, Lahr;->c:I

    goto :goto_0
.end method

.method public a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lahx;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    .line 87
    :try_start_0
    iget-object v0, p0, Lahr;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lahr;->a:Ljava/util/concurrent/ExecutorService;

    .line 90
    :cond_0
    iget-object v0, p0, Lahr;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    iget-object v7, p0, Lahr;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lahs;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p2

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lahs;-><init>(Lahr;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Lahx;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_1
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lahr;->b:Z

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lahr;->b:Z

    .line 69
    iget-object v1, p0, Lahr;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 70
    :try_start_0
    const-string v0, "notify all lock"

    invoke-direct {p0, v0}, Lahr;->a(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lahr;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 72
    monitor-exit v1

    .line 73
    return-void

    .line 72
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
    .line 238
    iget-object v0, p0, Lahr;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lahr;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lahr;->a:Ljava/util/concurrent/ExecutorService;

    .line 242
    :cond_0
    return-void
.end method

.method public d()V
    .locals 6

    .prologue
    .line 246
    :try_start_0
    iget-object v0, p0, Lahr;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 247
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

    .line 248
    iget-object v1, p0, Lahr;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 249
    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 251
    if-eqz v2, :cond_1

    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recycle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lahr;->a(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 256
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 263
    :goto_1
    return-void

    .line 259
    :cond_2
    iget-object v0, p0, Lahr;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
