.class final Lcom/adchina/android/ads/controllers/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adchina/android/ads/e;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/controllers/h;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/controllers/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/controllers/k;->a:Lcom/adchina/android/ads/controllers/h;

    iput-object p2, p0, Lcom/adchina/android/ads/controllers/k;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/adchina/android/ads/controllers/k;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/k;->a:Lcom/adchina/android/ads/controllers/h;

    iget-object v1, v1, Lcom/adchina/android/ads/controllers/h;->X:Lcom/adchina/android/ads/r;

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/k;->a:Lcom/adchina/android/ads/controllers/h;

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

    move-result-object v1

    :goto_0
    :try_start_1
    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->convertStreamToBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/InputStream;)V

    :goto_1
    return-object v0

    :cond_0
    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/k;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_2
    :try_start_3
    iget-object v2, p0, Lcom/adchina/android/ads/controllers/k;->a:Lcom/adchina/android/ads/controllers/h;

    const/16 v3, 0x12

    const-string v4, "Gif AdMaterial is null"

    invoke-virtual {v2, v3, v4}, Lcom/adchina/android/ads/controllers/h;->a(ILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/InputStream;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_3
    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->closeStream(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_2
.end method
