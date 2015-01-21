.class public Lpc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I


# instance fields
.field final a:Landroid/os/Handler;

.field private a:Ljava/lang/Object;

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
    .line 34
    const/high16 v0, 0x432a

    sget v1, Laox;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lpc;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v1, p0, Lpc;->a:Z

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lpc;->a:Ljava/lang/Object;

    .line 38
    iput-boolean v2, p0, Lpc;->b:Z

    .line 39
    iput-boolean v2, p0, Lpc;->c:Z

    .line 40
    iput v1, p0, Lpc;->b:I

    .line 41
    iput v1, p0, Lpc;->c:I

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lpc;->a:Landroid/os/Handler;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lpc;->a:Ljava/util/concurrent/ExecutorService;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lpc;->a:Ljava/util/Map;

    .line 51
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->aw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Layw;->a(Ljava/lang/String;ZZ)V

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->aw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    sget v0, Lpc;->a:I

    invoke-static {v1, v0}, Lays;->a(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 220
    .line 226
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->aw:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 227
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 230
    :try_start_2
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 231
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 232
    const/16 v5, 0x400

    :try_start_4
    new-array v5, v5, [B

    .line 234
    :goto_0
    invoke-virtual {v4, v5}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 235
    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_0

    .line 238
    :catch_0
    move-exception v5

    move-object v8, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v8

    .line 239
    :goto_1
    :try_start_5
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-static {v5}, Layw;->b(Ljava/io/File;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 250
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 251
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 252
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    :goto_2
    move-object v0, v1

    .line 254
    :goto_3
    return-object v0

    .line 237
    :cond_0
    :try_start_6
    invoke-static {p1, p2}, Lpc;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v1

    .line 250
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 251
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 252
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 237
    goto :goto_3

    .line 241
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v0, v1

    .line 243
    :goto_4
    :try_start_7
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-static {v5}, Layw;->b(Ljava/io/File;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 250
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 251
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 252
    :goto_5
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_2

    .line 245
    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v0, v1

    .line 247
    :goto_6
    :try_start_8
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-static {v5}, Layw;->b(Ljava/io/File;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 250
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 251
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_5

    .line 250
    :catchall_0
    move-exception v0

    move-object v4, v1

    move-object v2, v1

    :goto_7
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 251
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 252
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 250
    throw v0

    :catchall_1
    move-exception v2

    move-object v4, v1

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_7

    :catchall_2
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_7

    :catchall_3
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object v2, v4

    move-object v4, v3

    goto :goto_7

    .line 245
    :catch_3
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    move-object v0, v1

    goto :goto_6

    :catch_4
    move-exception v3

    move-object v3, v1

    move-object v4, v1

    goto :goto_6

    :catch_5
    move-exception v3

    move-object v3, v1

    goto :goto_6

    :catch_6
    move-exception v5

    goto :goto_6

    .line 241
    :catch_7
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    move-object v0, v1

    goto :goto_4

    :catch_8
    move-exception v3

    move-object v3, v1

    move-object v4, v1

    goto :goto_4

    :catch_9
    move-exception v3

    move-object v3, v1

    goto :goto_4

    :catch_a
    move-exception v5

    goto :goto_4

    .line 238
    :catch_b
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    goto/16 :goto_1

    :catch_c
    move-exception v0

    move-object v0, v2

    move-object v3, v1

    move-object v4, v1

    move-object v2, v1

    goto/16 :goto_1

    :catch_d
    move-exception v3

    move-object v3, v1

    move-object v4, v0

    move-object v0, v2

    move-object v2, v1

    goto/16 :goto_1

    :catch_e
    move-exception v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v2

    move-object v2, v1

    goto/16 :goto_1
.end method

.method static synthetic a(Lpc;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lpc;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    return-void
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->aw:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 198
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 200
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 201
    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    move v0, v1

    .line 202
    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_3

    move v2, v1

    .line 203
    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_2

    .line 204
    aget-object v5, v4, v0

    aget-object v6, p1, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    array-length v2, p1

    .line 207
    :cond_0
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_1

    .line 208
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 210
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 203
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 202
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_3
    return-void
.end method

.method static synthetic a(Lpc;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lpi;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct/range {p0 .. p5}, Lpc;->b(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lpi;)V

    return-void
.end method

.method static synthetic a(Lpc;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lpc;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lpc;)Z
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-boolean v0, p0, Lpc;->b:Z

    return v0
.end method

.method private b(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lpi;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-virtual {p0, p3}, Lpc;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 128
    if-eqz v4, :cond_0

    .line 129
    const-string v0, "Preview in the memory!!"

    invoke-direct {p0, v0}, Lpc;->a(Ljava/lang/String;)V

    .line 130
    iget-object v6, p0, Lpc;->a:Landroid/os/Handler;

    new-instance v0, Lpe;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lpe;-><init>(Lpc;Lpi;Ljava/lang/Integer;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 167
    :goto_0
    return-void

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app Preview require size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lpc;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lpc;->a(Ljava/lang/String;)V

    .line 138
    invoke-static {p2, p3}, Lpc;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 139
    if-eqz v4, :cond_1

    .line 140
    const-string v0, "Preview in the file system!!"

    invoke-direct {p0, v0}, Lpc;->a(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lpc;->a:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v6, p0, Lpc;->a:Landroid/os/Handler;

    new-instance v0, Lpf;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lpf;-><init>(Lpc;Lpi;Ljava/lang/Integer;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 149
    :cond_1
    invoke-static {p4, p2, p3}, Lpc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 150
    if-eqz v4, :cond_2

    .line 151
    const-string v0, "Preview in the internet!!"

    invoke-direct {p0, v0}, Lpc;->a(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lpc;->a:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v6, p0, Lpc;->a:Landroid/os/Handler;

    new-instance v0, Lpg;

    move-object v1, p0

    move-object v2, p5

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lpg;-><init>(Lpc;Lpi;Ljava/lang/Integer;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p0, Lpc;->a:Landroid/os/Handler;

    new-instance v1, Lph;

    invoke-direct {v1, p0, p5, p1}, Lph;-><init>(Lpc;Lpi;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v0, p0, Lpc;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lpc;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 172
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 173
    if-eqz v0, :cond_0

    .line 175
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 173
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 175
    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lpc;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lpc;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lpc;->a:Ljava/util/concurrent/ExecutorService;

    .line 263
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lpi;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    .line 95
    :try_start_0
    iget-object v0, p0, Lpc;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lpc;->a:Ljava/util/concurrent/ExecutorService;

    .line 98
    :cond_0
    iget-object v0, p0, Lpc;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v7, p0, Lpc;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lpd;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lpd;-><init>(Lpc;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lpi;)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()V
    .locals 5

    .prologue
    .line 266
    iget-object v0, p0, Lpc;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 288
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v3, p0, Lpc;->a:Ljava/util/Map;

    monitor-enter v3

    .line 270
    :try_start_0
    iget-object v0, p0, Lpc;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 271
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 272
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 274
    iget-object v1, p0, Lpc;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 275
    if-eqz v1, :cond_2

    .line 276
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 277
    if-eqz v2, :cond_1

    .line 278
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 281
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    .line 283
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 284
    iget-object v1, p0, Lpc;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 286
    :cond_3
    :try_start_1
    iget-object v0, p0, Lpc;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 287
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
