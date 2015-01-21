.class Lcom/baidu/pcs/BaiduPCSFileTransferTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/pcs/BaiduPCSFileTransferTask;->abortRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/pcs/BaiduPCSFileTransferTask;


# direct methods
.method constructor <init>(Lcom/baidu/pcs/BaiduPCSFileTransferTask;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$1;->this$0:Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$1;->this$0:Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    iget-object v1, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRequestLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$1;->this$0:Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$1;->this$0:Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    iget-object v0, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    iget-object v0, p0, Lcom/baidu/pcs/BaiduPCSFileTransferTask$1;->this$0:Lcom/baidu/pcs/BaiduPCSFileTransferTask;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/baidu/pcs/BaiduPCSFileTransferTask;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "TransferTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pause--------request abort failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/pcs/BaiduPCSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
