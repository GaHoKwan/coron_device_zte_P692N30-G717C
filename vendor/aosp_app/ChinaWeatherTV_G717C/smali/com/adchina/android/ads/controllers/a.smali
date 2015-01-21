.class final Lcom/adchina/android/ads/controllers/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adchina/android/ads/e;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/controllers/AdViewController;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/controllers/AdViewController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/controllers/a;->a:Lcom/adchina/android/ads/controllers/AdViewController;

    iput-object p2, p0, Lcom/adchina/android/ads/controllers/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/a;->a:Lcom/adchina/android/ads/controllers/AdViewController;

    iget-object v0, v0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "++ onSendActevt"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/a;->a:Lcom/adchina/android/ads/controllers/AdViewController;

    iget-object v2, v2, Lcom/adchina/android/ads/controllers/AdViewController;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/a;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, ",0,0,0"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/adchina/android/ads/controllers/a;->a:Lcom/adchina/android/ads/controllers/AdViewController;

    invoke-virtual {v2}, Lcom/adchina/android/ads/controllers/AdViewController;->n()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/a;->a:Lcom/adchina/android/ads/controllers/AdViewController;

    iget-object v1, v1, Lcom/adchina/android/ads/controllers/AdViewController;->L:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/adchina/android/ads/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/a;->a:Lcom/adchina/android/ads/controllers/AdViewController;

    iget-object v1, v1, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "send Actevt to "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/a;->a:Lcom/adchina/android/ads/controllers/AdViewController;

    iget-object v0, v0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendActevt"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Exceptions in onSendActevt, err = "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/adchina/android/ads/Utils;->concatString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/a;->a:Lcom/adchina/android/ads/controllers/AdViewController;

    iget-object v1, v1, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    const-string v1, "\u5f02\u5e38  onSendActevt------------->"

    invoke-static {v1}, Lcom/adchina/android/ads/LogUtil;->addLog(Ljava/lang/String;)V

    const-string v1, "AdChinaError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/a;->a:Lcom/adchina/android/ads/controllers/AdViewController;

    iget-object v0, v0, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v1, "-- onSendActevt"

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adchina/android/ads/controllers/a;->a:Lcom/adchina/android/ads/controllers/AdViewController;

    iget-object v1, v1, Lcom/adchina/android/ads/controllers/AdViewController;->Z:Lcom/adchina/android/ads/h;

    const-string v2, "-- onSendActevt"

    invoke-virtual {v1, v2}, Lcom/adchina/android/ads/h;->c(Ljava/lang/String;)V

    throw v0
.end method
