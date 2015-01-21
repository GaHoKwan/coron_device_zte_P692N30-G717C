.class Lcom/android/wifidirect/test/WifiOppNotification$1;
.super Landroid/os/Handler;
.source "WifiOppNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifidirect/test/WifiOppNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifidirect/test/WifiOppNotification;


# direct methods
.method constructor <init>(Lcom/android/wifidirect/test/WifiOppNotification;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppNotification$1;->this$0:Lcom/android/wifidirect/test/WifiOppNotification;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 138
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppNotification$1;->this$0:Lcom/android/wifidirect/test/WifiOppNotification;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification$1;->this$0:Lcom/android/wifidirect/test/WifiOppNotification;

    #getter for: Lcom/android/wifidirect/test/WifiOppNotification;->mPendingUpdate:I
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppNotification;->access$000(Lcom/android/wifidirect/test/WifiOppNotification;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification$1;->this$0:Lcom/android/wifidirect/test/WifiOppNotification;

    #getter for: Lcom/android/wifidirect/test/WifiOppNotification;->mUpdateNotificationThread:Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppNotification;->access$100(Lcom/android/wifidirect/test/WifiOppNotification;)Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;

    move-result-object v0

    if-nez v0, :cond_1

    .line 142
    const-string v0, "WifiOppNotification"

    const-string v2, "new notify threadi!"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification$1;->this$0:Lcom/android/wifidirect/test/WifiOppNotification;

    new-instance v2, Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;

    iget-object v3, p0, Lcom/android/wifidirect/test/WifiOppNotification$1;->this$0:Lcom/android/wifidirect/test/WifiOppNotification;

    invoke-direct {v2, v3}, Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;-><init>(Lcom/android/wifidirect/test/WifiOppNotification;)V

    #setter for: Lcom/android/wifidirect/test/WifiOppNotification;->mUpdateNotificationThread:Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;
    invoke-static {v0, v2}, Lcom/android/wifidirect/test/WifiOppNotification;->access$102(Lcom/android/wifidirect/test/WifiOppNotification;Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;)Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;

    .line 144
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification$1;->this$0:Lcom/android/wifidirect/test/WifiOppNotification;

    #getter for: Lcom/android/wifidirect/test/WifiOppNotification;->mUpdateNotificationThread:Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppNotification;->access$100(Lcom/android/wifidirect/test/WifiOppNotification;)Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;->start()V

    .line 145
    const-string v0, "WifiOppNotification"

    const-string v2, "send delay message"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification$1;->this$0:Lcom/android/wifidirect/test/WifiOppNotification;

    #getter for: Lcom/android/wifidirect/test/WifiOppNotification;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppNotification;->access$200(Lcom/android/wifidirect/test/WifiOppNotification;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppNotification$1;->this$0:Lcom/android/wifidirect/test/WifiOppNotification;

    #getter for: Lcom/android/wifidirect/test/WifiOppNotification;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/wifidirect/test/WifiOppNotification;->access$200(Lcom/android/wifidirect/test/WifiOppNotification;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 151
    :cond_0
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 147
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification$1;->this$0:Lcom/android/wifidirect/test/WifiOppNotification;

    #getter for: Lcom/android/wifidirect/test/WifiOppNotification;->mPendingUpdate:I
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppNotification;->access$000(Lcom/android/wifidirect/test/WifiOppNotification;)I

    move-result v0

    if-lez v0, :cond_0

    .line 148
    const-string v0, "WifiOppNotification"

    const-string v2, "previous thread is not finished yet"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification$1;->this$0:Lcom/android/wifidirect/test/WifiOppNotification;

    #getter for: Lcom/android/wifidirect/test/WifiOppNotification;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppNotification;->access$200(Lcom/android/wifidirect/test/WifiOppNotification;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wifidirect/test/WifiOppNotification$1;->this$0:Lcom/android/wifidirect/test/WifiOppNotification;

    #getter for: Lcom/android/wifidirect/test/WifiOppNotification;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/wifidirect/test/WifiOppNotification;->access$200(Lcom/android/wifidirect/test/WifiOppNotification;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
