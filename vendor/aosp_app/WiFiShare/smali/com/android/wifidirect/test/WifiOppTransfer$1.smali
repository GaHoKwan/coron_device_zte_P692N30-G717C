.class Lcom/android/wifidirect/test/WifiOppTransfer$1;
.super Ljava/lang/Thread;
.source "WifiOppTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wifidirect/test/WifiOppTransfer;->setConfirmed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifidirect/test/WifiOppTransfer;


# direct methods
.method constructor <init>(Lcom/android/wifidirect/test/WifiOppTransfer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppTransfer$1;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer$1;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mSession:Lcom/android/wifidirect/test/WifiOppObexSession;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$700(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppObexSession;

    move-result-object v1

    monitor-enter v1

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer$1;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mSession:Lcom/android/wifidirect/test/WifiOppObexSession;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$700(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppObexSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/wifidirect/test/WifiOppObexSession;->unblock()V

    .line 452
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppTransfer$1;->this$0:Lcom/android/wifidirect/test/WifiOppTransfer;

    #getter for: Lcom/android/wifidirect/test/WifiOppTransfer;->mSession:Lcom/android/wifidirect/test/WifiOppObexSession;
    invoke-static {v0}, Lcom/android/wifidirect/test/WifiOppTransfer;->access$700(Lcom/android/wifidirect/test/WifiOppTransfer;)Lcom/android/wifidirect/test/WifiOppObexSession;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 453
    monitor-exit v1

    .line 454
    return-void

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
