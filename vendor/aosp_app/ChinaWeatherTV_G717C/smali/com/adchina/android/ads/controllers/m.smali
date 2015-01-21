.class final Lcom/adchina/android/ads/controllers/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adchina/android/ads/e;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/controllers/h;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/controllers/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/controllers/m;->a:Lcom/adchina/android/ads/controllers/h;

    iput-object p2, p0, Lcom/adchina/android/ads/controllers/m;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/m;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/m;->a:Lcom/adchina/android/ads/controllers/h;

    iget-object v1, v1, Lcom/adchina/android/ads/controllers/h;->X:Lcom/adchina/android/ads/r;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/m;->a:Lcom/adchina/android/ads/controllers/h;

    invoke-static {v1}, Lcom/adchina/android/ads/controllers/h;->a(Lcom/adchina/android/ads/controllers/h;)Lcom/adchina/android/ads/controllers/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adchina/android/ads/controllers/r;->a()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adchina/android/ads/r;->b(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    invoke-static {v3}, Lcom/adchina/android/ads/GifEngine;->a([B)Lcom/adchina/android/ads/GifEngine;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    :cond_0
    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/OutputStream;)V

    :goto_2
    return-object v0

    :cond_1
    :try_start_3
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/m;->b:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_3
    :try_start_4
    iget-object v3, p0, Lcom/adchina/android/ads/controllers/m;->a:Lcom/adchina/android/ads/controllers/h;

    const/16 v4, 0x12

    const-string v5, "Gif AdMaterial is null"

    invoke-virtual {v3, v4, v5}, Lcom/adchina/android/ads/controllers/h;->a(ILjava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/OutputStream;)V

    goto :goto_2

    :cond_2
    :try_start_5
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_4
    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/OutputStream;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v1, v0

    goto :goto_3
.end method
