.class final Lcom/farben/faq/e/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/farben/faq/e/a;


# direct methods
.method constructor <init>(Lcom/farben/faq/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/e/b;->a:Lcom/farben/faq/e/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/farben/faq/e/b;->a:Lcom/farben/faq/e/a;

    invoke-static {v0}, Lcom/farben/faq/e/a;->a(Lcom/farben/faq/e/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "DownloadTask"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/farben/faq/e/b;->a:Lcom/farben/faq/e/a;

    invoke-static {v0}, Lcom/farben/faq/e/a;->b(Lcom/farben/faq/e/a;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/farben/faq/e/b;->a:Lcom/farben/faq/e/a;

    invoke-static {v0}, Lcom/farben/faq/e/a;->c(Lcom/farben/faq/e/a;)J

    move-result-wide v2

    cmp-long v0, v2, v7

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/farben/faq/e/b;->a:Lcom/farben/faq/e/a;

    invoke-static {v0}, Lcom/farben/faq/e/a;->d(Lcom/farben/faq/e/a;)J

    move-result-wide v2

    cmp-long v0, v2, v7

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/farben/faq/e/b;->a:Lcom/farben/faq/e/a;

    invoke-static {v0}, Lcom/farben/faq/e/a;->e(Lcom/farben/faq/e/a;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v0, v2

    const/high16 v2, 0x447a

    div-float/2addr v0, v2

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/farben/faq/e/b;->a:Lcom/farben/faq/e/a;

    invoke-static {v2}, Lcom/farben/faq/e/a;->f(Lcom/farben/faq/e/a;)J

    move-result-wide v2

    long-to-float v2, v2

    div-float v0, v2, v0

    :goto_1
    iget-object v2, p0, Lcom/farben/faq/e/b;->a:Lcom/farben/faq/e/a;

    invoke-static {v2}, Lcom/farben/faq/e/a;->d(Lcom/farben/faq/e/a;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/farben/faq/e/b;->a:Lcom/farben/faq/e/a;

    invoke-static {v4}, Lcom/farben/faq/e/a;->c(Lcom/farben/faq/e/a;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmpl-float v4, v0, v1

    if-eqz v4, :cond_3

    long-to-float v2, v2

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    :goto_2
    const/4 v3, 0x4

    new-array v3, v3, [F

    const/high16 v4, 0x4480

    div-float/2addr v0, v4

    aput v0, v3, v6

    const/4 v0, 0x1

    aput v2, v3, v0

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/farben/faq/e/b;->a:Lcom/farben/faq/e/a;

    invoke-static {v2}, Lcom/farben/faq/e/a;->c(Lcom/farben/faq/e/a;)J

    move-result-wide v4

    long-to-float v2, v4

    aput v2, v3, v0

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/farben/faq/e/b;->a:Lcom/farben/faq/e/a;

    invoke-static {v2}, Lcom/farben/faq/e/a;->d(Lcom/farben/faq/e/a;)J

    move-result-wide v4

    long-to-float v2, v4

    aput v2, v3, v0

    iget-object v0, p0, Lcom/farben/faq/e/b;->a:Lcom/farben/faq/e/a;

    invoke-static {v0, v6, v3}, Lcom/farben/faq/e/a;->a(Lcom/farben/faq/e/a;I[F)V

    iget-object v0, p0, Lcom/farben/faq/e/b;->a:Lcom/farben/faq/e/a;

    invoke-static {v0}, Lcom/farben/faq/e/a;->c(Lcom/farben/faq/e/a;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/farben/faq/e/b;->a:Lcom/farben/faq/e/a;

    invoke-static {v0}, Lcom/farben/faq/e/a;->d(Lcom/farben/faq/e/a;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    :cond_1
    const-wide/16 v2, 0xbb8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v2, "DownloadTask"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_2
    return-void

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method
