.class Lain;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Laia;


# direct methods
.method constructor <init>(Laia;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lain;->a:Laia;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lain;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lain;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 298
    :try_start_0
    iget-object v0, p0, Lain;->a:Laia;

    invoke-static {v0}, Laia;->b(Laia;)V

    .line 299
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    iget-object v0, p0, Lain;->a:Laia;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laia;->a(Laia;Z)Z

    .line 301
    iget-object v0, p0, Lain;->a:Laia;

    invoke-static {v0}, Laia;->a(Laia;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 302
    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    .line 303
    const/16 v1, 0xc8

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 304
    iget-object v1, p0, Lain;->a:Laia;

    invoke-static {v1}, Laia;->a(Laia;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 310
    :goto_0
    return-void

    .line 299
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 306
    :cond_0
    iget-object v0, p0, Lain;->a:Laia;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laia;->a(Laia;Z)Z

    .line 307
    iget-object v0, p0, Lain;->a:Laia;

    invoke-static {v0}, Laia;->c(Laia;)V

    goto :goto_0
.end method
