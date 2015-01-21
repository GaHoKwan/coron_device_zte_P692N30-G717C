.class Lcom/android/server/am/d;
.super Landroid/os/Handler;


# static fields
.field public static final CLEAN_TASK:I = 0x1


# instance fields
.field final synthetic a:Lcom/android/server/am/c;


# direct methods
.method constructor <init>(Lcom/android/server/am/c;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/d;->a:Lcom/android/server/am/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/d;->a:Lcom/android/server/am/c;

    invoke-static {v0}, Lcom/android/server/am/c;->a(Lcom/android/server/am/c;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/d;->a:Lcom/android/server/am/c;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Lcom/android/server/am/c;->i(I)Lcom/android/server/am/b;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/server/am/b;->a(Ljava/lang/String;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/d;->a:Lcom/android/server/am/c;

    invoke-static {v0}, Lcom/android/server/am/c;->b(Lcom/android/server/am/c;)Lcom/android/server/am/d;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/d;->a:Lcom/android/server/am/c;

    invoke-static {v1}, Lcom/android/server/am/c;->b(Lcom/android/server/am/c;)Lcom/android/server/am/d;

    move-result-object v1

    const/4 v2, 0x1

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/am/d;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/d;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
