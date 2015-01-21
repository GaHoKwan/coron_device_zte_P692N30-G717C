.class Lcom/ant/liao/d;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic E:Lcom/ant/liao/GifView;


# direct methods
.method private constructor <init>(Lcom/ant/liao/GifView;)V
    .locals 0

    iput-object p1, p0, Lcom/ant/liao/d;->E:Lcom/ant/liao/GifView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ant/liao/GifView;Lcom/ant/liao/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ant/liao/d;-><init>(Lcom/ant/liao/GifView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/ant/liao/GifView;->ak()Lcom/ant/liao/e;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :goto_1
    invoke-static {}, Lcom/ant/liao/GifView;->al()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ant/liao/d;->E:Lcom/ant/liao/GifView;

    invoke-static {v0}, Lcom/ant/liao/GifView;->a(Lcom/ant/liao/GifView;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v1, Lcom/ant/liao/GifView;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/ant/liao/GifView;->ak()Lcom/ant/liao/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ant/liao/e;->aJ()Lcom/ant/liao/a;

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/ant/liao/d;->E:Lcom/ant/liao/GifView;

    invoke-virtual {v0}, Lcom/ant/liao/a;->l()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ant/liao/GifView;->a(Lcom/ant/liao/GifView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget v0, v0, Lcom/ant/liao/a;->delay:I

    int-to-long v2, v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/ant/liao/d;->E:Lcom/ant/liao/GifView;

    invoke-static {v0}, Lcom/ant/liao/GifView;->b(Lcom/ant/liao/GifView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ant/liao/d;->E:Lcom/ant/liao/GifView;

    invoke-static {v0}, Lcom/ant/liao/GifView;->b(Lcom/ant/liao/GifView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/ant/liao/d;->E:Lcom/ant/liao/GifView;

    invoke-static {v1}, Lcom/ant/liao/GifView;->b(Lcom/ant/liao/GifView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ant/liao/GifView;->e(Z)Z

    goto :goto_0
.end method
