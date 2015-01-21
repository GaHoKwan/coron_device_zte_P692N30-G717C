.class Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$2;
.super Ljava/lang/Object;
.source "EngineDataUpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->check(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 262
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mUpdateManager:Ltmsdk/common/module/update/UpdateManager;
    invoke-static {v2}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->access$600(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)Ltmsdk/common/module/update/UpdateManager;

    move-result-object v2

    const-wide v3, 0x3e0000006L

    iget-object v5, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mCheckListener:Ltmsdk/common/module/update/ICheckListener;
    invoke-static {v5}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->access$700(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)Ltmsdk/common/module/update/ICheckListener;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Ltmsdk/common/module/update/UpdateManager;->check(JLtmsdk/common/module/update/ICheckListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->access$200(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 275
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 277
    :goto_0
    return-void

    .line 271
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "EngineDataUpdateManager"

    const-string v3, "error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->access$200(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 275
    .restart local v1       #msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 274
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->access$200(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 275
    .restart local v1       #msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 276
    throw v2
.end method
