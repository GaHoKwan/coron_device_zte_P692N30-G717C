.class public Lni;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I


# instance fields
.field final a:Landroid/os/Handler;

.field private a:Ljava/lang/Object;

.field private a:Ljava/util/HashMap;

.field private a:Ljava/util/List;

.field private final a:Z

.field private b:I

.field private b:Z

.field private c:I

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const/high16 v0, 0x4240

    sget v1, Laox;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lni;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v1, p0, Lni;->a:Z

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lni;->a:Ljava/lang/Object;

    .line 40
    iput-boolean v2, p0, Lni;->b:Z

    .line 41
    iput-boolean v2, p0, Lni;->c:Z

    .line 42
    iput v1, p0, Lni;->b:I

    .line 43
    iput v1, p0, Lni;->c:I

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lni;->a:Landroid/os/Handler;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lni;->a:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lni;->a:Ljava/util/List;

    .line 50
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 182
    .line 188
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laox;->av:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 189
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 194
    :try_start_2
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 195
    :try_start_3
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 196
    const/16 v5, 0x400

    :try_start_4
    new-array v5, v5, [B

    .line 198
    :goto_0
    invoke-virtual {v4, v5}, Ljava/io/DataInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 199
    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_0

    .line 202
    :catch_0
    move-exception v5

    move-object v8, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v0

    move-object v0, v8

    .line 203
    :goto_1
    :try_start_5
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-static {v5}, Layw;->b(Ljava/io/File;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 214
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 215
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    .line 216
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    :goto_2
    move-object v0, v1

    .line 218
    :goto_3
    return-object v0

    .line 201
    :cond_0
    :try_start_6
    invoke-static {p1}, Lni;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v1

    .line 214
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 215
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 216
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 201
    goto :goto_3

    .line 205
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v0, v1

    .line 207
    :goto_4
    :try_start_7
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-static {v5}, Layw;->b(Ljava/io/File;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 214
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 215
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 216
    :goto_5
    invoke-static {v3}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_2

    .line 209
    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v0, v1

    .line 211
    :goto_6
    :try_start_8
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-static {v5}, Layw;->b(Ljava/io/File;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 214
    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    .line 215
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_5

    .line 214
    :catchall_0
    move-exception v0

    move-object v4, v1

    move-object v2, v1

    :goto_7
    invoke-static {v2}, Lazd;->a(Ljava/io/Closeable;)V

    .line 215
    invoke-static {v4}, Lazd;->a(Ljava/io/Closeable;)V

    .line 216
    invoke-static {v1}, Lazd;->a(Ljava/io/Closeable;)V

    .line 214
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

    .line 209
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

    .line 205
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

    .line 202
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

.method static synthetic a(Lni;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lni;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    return-void
.end method

.method static synthetic a(Lni;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lno;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lni;->b(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lno;)V

    return-void
.end method

.method static synthetic a(Lni;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lni;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lni;)Z
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-boolean v0, p0, Lni;->b:Z

    return v0
.end method

.method public static b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laox;->av:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    sget v0, Lni;->a:I

    invoke-static {v1, v0}, Lays;->a(Ljava/io/File;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lno;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-virtual {p0, p2}, Lni;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    const-string v1, "icon in the memory!!"

    invoke-direct {p0, v1}, Lni;->a(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lni;->a:Landroid/os/Handler;

    new-instance v2, Lnk;

    invoke-direct {v2, p0, p4, p1, v0}, Lnk;-><init>(Lni;Lno;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    :goto_0
    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app icon require size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lni;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lni;->a(Ljava/lang/String;)V

    .line 127
    invoke-static {p2}, Lni;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_1

    .line 129
    const-string v1, "icon in the file system!!"

    invoke-direct {p0, v1}, Lni;->a(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lni;->a:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lni;->a:Landroid/os/Handler;

    new-instance v2, Lnl;

    invoke-direct {v2, p0, p4, p1, v0}, Lnl;-><init>(Lni;Lno;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 138
    :cond_1
    invoke-static {p3, p2}, Lni;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_2

    .line 140
    const-string v1, "icon in the internet!!"

    invoke-direct {p0, v1}, Lni;->a(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lni;->a:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v1, p0, Lni;->a:Landroid/os/Handler;

    new-instance v2, Lnm;

    invoke-direct {v2, p0, p4, p1, v0}, Lnm;-><init>(Lni;Lno;Ljava/lang/Integer;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 148
    :cond_2
    iget-object v0, p0, Lni;->a:Landroid/os/Handler;

    new-instance v1, Lnn;

    invoke-direct {v1, p0, p4, p1}, Lnn;-><init>(Lni;Lno;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lni;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    iget-object v0, p0, Lni;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 161
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 162
    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 162
    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 164
    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lni;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 224
    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 229
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lno;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    .line 91
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lnj;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnj;-><init>(Lni;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lno;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 110
    iget-object v0, p0, Lni;->a:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 113
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    .line 233
    :try_start_0
    iget-object v0, p0, Lni;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 234
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

    .line 235
    iget-object v1, p0, Lni;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 236
    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 238
    if-eqz v2, :cond_1

    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recycle "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lni;->a(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 243
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->clear()V

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 250
    :goto_1
    return-void

    .line 246
    :cond_2
    iget-object v0, p0, Lni;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
