.class Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$CheckListener;
.super Ljava/lang/Object;
.source "EngineDataUpdateManager.java"

# interfaces
.implements Ltmsdk/common/module/update/ICheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$CheckListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckCanceled()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public onCheckEvent(I)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$CheckListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->access$200(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 112
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 113
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 114
    return-void
.end method

.method public onCheckFinished(Ltmsdk/common/module/update/CheckResult;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 128
    if-eqz p1, :cond_0

    iget-object v2, p1, Ltmsdk/common/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v2, p1, Ltmsdk/common/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdk/common/module/update/UpdateInfo;

    .line 134
    .local v1, info:Ltmsdk/common/module/update/UpdateInfo;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " =====UpdateInfoList======"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Ltmsdk/common/module/update/UpdateInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 137
    .end local v1           #info:Ltmsdk/common/module/update/UpdateInfo;
    :cond_2
    iget-object v2, p1, Ltmsdk/common/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 138
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$CheckListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    const/4 v3, 0x0

    #calls: Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->setIsNeedUpdate(Z)V
    invoke-static {v2, v3}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->access$300(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;Z)V

    goto :goto_0

    .line 142
    :cond_3
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$CheckListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    const/4 v3, 0x1

    #calls: Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->setIsNeedUpdate(Z)V
    invoke-static {v2, v3}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->access$300(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;Z)V

    .line 144
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$CheckListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mAlsoUpdate:Z
    invoke-static {v2}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->access$400(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$CheckListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mUpdateManager:Ltmsdk/common/module/update/UpdateManager;
    invoke-static {v2}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->access$600(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)Ltmsdk/common/module/update/UpdateManager;

    move-result-object v2

    iget-object v3, p1, Ltmsdk/common/module/update/CheckResult;->mUpdateInfoList:Ljava/util/List;

    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$CheckListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mUpdateListener:Ltmsdk/common/module/update/IUpdateListener;
    invoke-static {v4}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->access$500(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)Ltmsdk/common/module/update/IUpdateListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ltmsdk/common/module/update/UpdateManager;->update(Ljava/util/List;Ltmsdk/common/module/update/IUpdateListener;)Z

    goto :goto_0
.end method

.method public onCheckStarted()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method
