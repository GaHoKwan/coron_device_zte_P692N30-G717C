.class Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;
.super Ljava/lang/Thread;
.source "WifiOppNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifidirect/test/WifiOppNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationUpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifidirect/test/WifiOppNotification;


# direct methods
.method public constructor <init>(Lcom/android/wifidirect/test/WifiOppNotification;)V
    .locals 1
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppNotification;

    .line 160
    const-string v0, "Notification Update Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 161
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 165
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 166
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppNotification;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppNotification;

    #getter for: Lcom/android/wifidirect/test/WifiOppNotification;->mUpdateNotificationThread:Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppNotification;->access$100(Lcom/android/wifidirect/test/WifiOppNotification;)Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "multiple UpdateThreads in BluetoothOppNotification"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 176
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppNotification;

    const/4 v2, 0x0

    #setter for: Lcom/android/wifidirect/test/WifiOppNotification;->mPendingUpdate:I
    invoke-static {v0, v2}, Lcom/android/wifidirect/test/WifiOppNotification;->access$002(Lcom/android/wifidirect/test/WifiOppNotification;I)I

    .line 177
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppNotification;

    #calls: Lcom/android/wifidirect/test/WifiOppNotification;->updateActiveNotification()V
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppNotification;->access$300(Lcom/android/wifidirect/test/WifiOppNotification;)V

    .line 179
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppNotification;

    #calls: Lcom/android/wifidirect/test/WifiOppNotification;->updateCompletedNotification()V
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppNotification;->access$400(Lcom/android/wifidirect/test/WifiOppNotification;)V

    .line 180
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppNotification;

    #calls: Lcom/android/wifidirect/test/WifiOppNotification;->updateIncomingFileConfirmNotification()V
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppNotification;->access$500(Lcom/android/wifidirect/test/WifiOppNotification;)V

    .line 181
    iget-object v1, p0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppNotification;

    monitor-enter v1

    .line 182
    :try_start_2
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;->this$0:Lcom/android/wifidirect/test/WifiOppNotification;

    const/4 v2, 0x0

    #setter for: Lcom/android/wifidirect/test/WifiOppNotification;->mUpdateNotificationThread:Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;
    invoke-static {v0, v2}, Lcom/android/wifidirect/test/WifiOppNotification;->access$102(Lcom/android/wifidirect/test/WifiOppNotification;Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;)Lcom/android/wifidirect/test/WifiOppNotification$NotificationUpdateThread;

    .line 183
    monitor-exit v1

    .line 184
    return-void

    .line 183
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
