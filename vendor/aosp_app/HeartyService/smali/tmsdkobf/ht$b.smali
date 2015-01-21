.class final Ltmsdkobf/ht$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/ht;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/HandlerThread;)V
    .locals 1
    .parameter "ownerThread"

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 177
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "task"

    .prologue
    const/4 v1, 0x1

    .line 180
    invoke-static {p0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 181
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v1}, Ltmsdkobf/ht$b;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Ltmsdkobf/ht$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-virtual {p0, v0}, Ltmsdkobf/ht$b;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 190
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 199
    :goto_0
    return-void

    .line 193
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    .line 195
    .local v0, task:Ljava/lang/Runnable;
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, tr:Ljava/lang/Throwable;
    const-string v2, "SyncThread"

    const-string v3, "running task"

    invoke-static {v2, v3, v1}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
