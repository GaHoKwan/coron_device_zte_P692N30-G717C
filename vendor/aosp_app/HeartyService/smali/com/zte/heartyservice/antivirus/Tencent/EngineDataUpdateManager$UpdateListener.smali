.class Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$UpdateListener;
.super Ljava/lang/Object;
.source "EngineDataUpdateManager.java"

# interfaces
.implements Ltmsdk/common/module/update/IUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$UpdateListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Ltmsdk/common/module/update/UpdateInfo;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 153
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$UpdateListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->access$200(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 154
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 155
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 156
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 157
    return-void
.end method

.method public onUpdateCanceled()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public onUpdateEvent(Ltmsdk/common/module/update/UpdateInfo;I)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 161
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$UpdateListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->access$200(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 162
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 163
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 164
    return-void
.end method

.method public onUpdateFinished()V
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$UpdateListener;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->access$200(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 169
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 170
    return-void
.end method

.method public onUpdateStarted()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method
