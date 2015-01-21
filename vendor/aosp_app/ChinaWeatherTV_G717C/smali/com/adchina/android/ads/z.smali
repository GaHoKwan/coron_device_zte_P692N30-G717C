.class final Lcom/adchina/android/ads/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adchina/android/ads/e;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/y;

.field private final synthetic b:Lcom/adchina/android/ads/r;

.field private final synthetic c:Lcom/adchina/android/ads/n;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/y;Lcom/adchina/android/ads/r;Lcom/adchina/android/ads/n;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/z;->a:Lcom/adchina/android/ads/y;

    iput-object p2, p0, Lcom/adchina/android/ads/z;->b:Lcom/adchina/android/ads/r;

    iput-object p3, p0, Lcom/adchina/android/ads/z;->c:Lcom/adchina/android/ads/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_0
    iget-object v1, p0, Lcom/adchina/android/ads/z;->b:Lcom/adchina/android/ads/r;

    iget-object v1, p0, Lcom/adchina/android/ads/z;->c:Lcom/adchina/android/ads/n;

    invoke-virtual {v1}, Lcom/adchina/android/ads/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adchina/android/ads/r;->b(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    iget-object v0, p0, Lcom/adchina/android/ads/z;->b:Lcom/adchina/android/ads/r;

    invoke-static {v1}, Lcom/adchina/android/ads/r;->a(Ljava/io/InputStream;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    iget-object v2, p0, Lcom/adchina/android/ads/z;->b:Lcom/adchina/android/ads/r;

    invoke-static {v1}, Lcom/adchina/android/ads/r;->a(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    iget-object v2, p0, Lcom/adchina/android/ads/z;->b:Lcom/adchina/android/ads/r;

    invoke-static {v1}, Lcom/adchina/android/ads/r;->a(Ljava/io/InputStream;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method
