.class Lcom/android/wifidirect/test/WifiOppTcpListener$1;
.super Ljava/lang/Thread;
.source "WifiOppTcpListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wifidirect/test/WifiOppTcpListener;->start(Landroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifidirect/test/WifiOppTcpListener;


# direct methods
.method constructor <init>(Lcom/android/wifidirect/test/WifiOppTcpListener;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppTcpListener$1;->this$0:Lcom/android/wifidirect/test/WifiOppTcpListener;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 57
    :try_start_0
    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppTcpListener$1;->this$0:Lcom/android/wifidirect/test/WifiOppTcpListener;

    new-instance v5, Ljava/net/ServerSocket;

    const/16 v6, 0x1f2e

    invoke-direct {v5, v6}, Ljava/net/ServerSocket;-><init>(I)V

    #setter for: Lcom/android/wifidirect/test/WifiOppTcpListener;->mTcpServerSocket:Ljava/net/ServerSocket;
    invoke-static {v4, v5}, Lcom/android/wifidirect/test/WifiOppTcpListener;->access$002(Lcom/android/wifidirect/test/WifiOppTcpListener;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    :goto_0
    const-string v4, "<==>WifiOppTcpListener"

    const-string v5, "start ServerSocket"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_1
    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppTcpListener$1;->this$0:Lcom/android/wifidirect/test/WifiOppTcpListener;

    #getter for: Lcom/android/wifidirect/test/WifiOppTcpListener;->mInterrupted:Z
    invoke-static {v4}, Lcom/android/wifidirect/test/WifiOppTcpListener;->access$100(Lcom/android/wifidirect/test/WifiOppTcpListener;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 66
    :try_start_1
    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppTcpListener$1;->this$0:Lcom/android/wifidirect/test/WifiOppTcpListener;

    #getter for: Lcom/android/wifidirect/test/WifiOppTcpListener;->mTcpServerSocket:Ljava/net/ServerSocket;
    invoke-static {v4}, Lcom/android/wifidirect/test/WifiOppTcpListener;->access$000(Lcom/android/wifidirect/test/WifiOppTcpListener;)Ljava/net/ServerSocket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 68
    .local v0, clientSocket:Ljava/net/Socket;
    const-string v4, "<==>WifiOppTcpListener"

    const-string v5, "Socket connected!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v3, Lcom/android/wifidirect/test/WifiTcpTransport;

    invoke-direct {v3, v0}, Lcom/android/wifidirect/test/WifiTcpTransport;-><init>(Ljava/net/Socket;)V

    .line 71
    .local v3, transport:Lcom/android/wifidirect/test/WifiTcpTransport;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 72
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppTcpListener$1;->this$0:Lcom/android/wifidirect/test/WifiOppTcpListener;

    #getter for: Lcom/android/wifidirect/test/WifiOppTcpListener;->mCallback:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/wifidirect/test/WifiOppTcpListener;->access$200(Lcom/android/wifidirect/test/WifiOppTcpListener;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 73
    const/16 v4, 0x64

    iput v4, v2, Landroid/os/Message;->what:I

    .line 74
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 77
    .end local v0           #clientSocket:Ljava/net/Socket;
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #transport:Lcom/android/wifidirect/test/WifiTcpTransport;
    :catch_0
    move-exception v1

    .line 78
    .local v1, e:Ljava/io/IOException;
    const-string v4, "<==>WifiOppTcpListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error accept connection "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 58
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 59
    .restart local v1       #e:Ljava/io/IOException;
    const-string v4, "<==>WifiOppTcpListener"

    const-string v5, "Error listing on port7982"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v4, p0, Lcom/android/wifidirect/test/WifiOppTcpListener$1;->this$0:Lcom/android/wifidirect/test/WifiOppTcpListener;

    const/4 v5, 0x1

    #setter for: Lcom/android/wifidirect/test/WifiOppTcpListener;->mInterrupted:Z
    invoke-static {v4, v5}, Lcom/android/wifidirect/test/WifiOppTcpListener;->access$102(Lcom/android/wifidirect/test/WifiOppTcpListener;Z)Z

    goto :goto_0

    .line 81
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    const-string v4, "<==>WifiOppTcpListener"

    const-string v5, "TCP listen thread finished"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method
