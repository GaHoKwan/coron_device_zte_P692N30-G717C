.class Lcom/android/wifidirect/test/WifiOppObexServerSession$1;
.super Ljava/lang/Thread;
.source "WifiOppObexServerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wifidirect/test/WifiOppObexServerSession;->unblock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifidirect/test/WifiOppObexServerSession;


# direct methods
.method constructor <init>(Lcom/android/wifidirect/test/WifiOppObexServerSession;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession$1;->this$0:Lcom/android/wifidirect/test/WifiOppObexServerSession;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession$1;->this$0:Lcom/android/wifidirect/test/WifiOppObexServerSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexServerSession;->mRunningThread:Lcom/android/wifidirect/test/SessionThread;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppObexServerSession;->access$000(Lcom/android/wifidirect/test/WifiOppObexServerSession;)Lcom/android/wifidirect/test/SessionThread;

    move-result-object v1

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession$1;->this$0:Lcom/android/wifidirect/test/WifiOppObexServerSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexServerSession;->mRunningThread:Lcom/android/wifidirect/test/SessionThread;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppObexServerSession;->access$000(Lcom/android/wifidirect/test/WifiOppObexServerSession;)Lcom/android/wifidirect/test/SessionThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifidirect/test/SessionThread;->unblock()V

    .line 91
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppObexServerSession$1;->this$0:Lcom/android/wifidirect/test/WifiOppObexServerSession;

    #getter for: Lcom/android/wifidirect/test/WifiOppObexServerSession;->mRunningThread:Lcom/android/wifidirect/test/SessionThread;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppObexServerSession;->access$000(Lcom/android/wifidirect/test/WifiOppObexServerSession;)Lcom/android/wifidirect/test/SessionThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
