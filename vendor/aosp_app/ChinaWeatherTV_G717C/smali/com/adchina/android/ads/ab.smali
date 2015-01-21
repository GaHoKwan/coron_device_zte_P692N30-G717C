.class final Lcom/adchina/android/ads/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adchina/android/ads/e;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/aa;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:J

.field private final synthetic d:Lcom/adchina/android/ads/n;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/aa;Landroid/content/Context;JLcom/adchina/android/ads/n;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/ab;->a:Lcom/adchina/android/ads/aa;

    iput-object p2, p0, Lcom/adchina/android/ads/ab;->b:Landroid/content/Context;

    iput-wide p3, p0, Lcom/adchina/android/ads/ab;->c:J

    iput-object p5, p0, Lcom/adchina/android/ads/ab;->d:Lcom/adchina/android/ads/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lcom/adchina/android/ads/ab;->b:Landroid/content/Context;

    iget-wide v1, p0, Lcom/adchina/android/ads/ab;->c:J

    iget-object v3, p0, Lcom/adchina/android/ads/ab;->d:Lcom/adchina/android/ads/n;

    invoke-static {v0}, Lcom/adchina/android/ads/Utils;->getActiveNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    :try_start_0
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/adchina/android/ads/n;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    const-string v6, "?args="

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string v6, "%s|||%s|||android"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v4, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v3

    invoke-static {v5}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/adchina/android/ads/r;

    invoke-direct {v2, v0}, Lcom/adchina/android/ads/r;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/adchina/android/ads/r;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
