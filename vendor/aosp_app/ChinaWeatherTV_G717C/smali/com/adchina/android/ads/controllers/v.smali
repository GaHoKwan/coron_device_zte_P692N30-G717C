.class final Lcom/adchina/android/ads/controllers/v;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/controllers/s;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adchina/android/ads/controllers/s;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/controllers/v;->a:Lcom/adchina/android/ads/controllers/s;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/adchina/android/ads/controllers/v;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/v;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/v;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/v;->a:Lcom/adchina/android/ads/controllers/s;

    iget-object v0, v0, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "++ start to download video file"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/adchina/android/ads/controllers/v;->b:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/v;->a:Lcom/adchina/android/ads/controllers/s;

    iget-object v0, v0, Lcom/adchina/android/ads/controllers/s;->X:Lcom/adchina/android/ads/r;

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/v;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/adchina/android/ads/r;->b(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    :try_start_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/adchina/android/ads/k;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v4, Ljava/io/File;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "yyyyMMddHHmmss"

    invoke-static {v6}, Lcom/adchina/android/ads/Utils;->getNowTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const-string v6, "video.tmp"

    aput-object v6, v1, v5

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/16 v0, 0x4000

    :try_start_3
    new-array v0, v0, [B

    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_4
    :try_start_5
    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/OutputStream;)V

    :goto_3
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/v;->a:Lcom/adchina/android/ads/controllers/s;

    const/4 v1, 0x6

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/adchina/android/ads/controllers/v;->b:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/adchina/android/ads/controllers/s;->a(ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/v;->a:Lcom/adchina/android/ads/controllers/s;

    iget-object v0, v0, Lcom/adchina/android/ads/controllers/s;->X:Lcom/adchina/android/ads/r;

    invoke-static {v3}, Lcom/adchina/android/ads/r;->a(Ljava/io/InputStream;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    :try_start_6
    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/OutputStream;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    move-object v2, v3

    :goto_5
    const/4 v1, 0x2

    :try_start_7
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Failed to download video file, err = "

    aput-object v4, v1, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/v;->a:Lcom/adchina/android/ads/controllers/s;

    iget-object v1, v1, Lcom/adchina/android/ads/controllers/s;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "AdChinaError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/v;->a:Lcom/adchina/android/ads/controllers/s;

    iget-object v0, v0, Lcom/adchina/android/ads/controllers/s;->X:Lcom/adchina/android/ads/r;

    invoke-static {v2}, Lcom/adchina/android/ads/r;->a(Ljava/io/InputStream;)V

    goto/16 :goto_0

    :cond_6
    :try_start_8
    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/OutputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_6
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/v;->a:Lcom/adchina/android/ads/controllers/s;

    iget-object v1, v1, Lcom/adchina/android/ads/controllers/s;->X:Lcom/adchina/android/ads/r;

    invoke-static {v3}, Lcom/adchina/android/ads/r;->a(Ljava/io/InputStream;)V

    throw v0

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method
