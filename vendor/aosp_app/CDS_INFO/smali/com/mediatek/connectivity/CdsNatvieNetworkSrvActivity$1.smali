.class Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity$1;
.super Ljava/lang/Thread;
.source "CdsNatvieNetworkSrvActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->executeShellCmd(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;

.field final synthetic val$cmdStr:Ljava/lang/String;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity$1;->this$0:Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;

    iput-object p2, p0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity$1;->val$cmdStr:Ljava/lang/String;

    iput p3, p0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 143
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 145
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity$1;->this$0:Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity$1;->val$cmdStr:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/connectivity/CdsShellExe;->execCommand(Ljava/lang/String;)I

    .line 147
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity$1;->this$0:Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;

    #getter for: Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->access$000(Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 148
    .local v1, msg:Landroid/os/Message;
    const/16 v3, 0x3001

    iput v3, v1, Landroid/os/Message;->what:I

    .line 149
    iget v3, p0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity$1;->val$id:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 150
    new-instance v2, Ljava/lang/String;

    invoke-static {}, Lcom/mediatek/connectivity/CdsShellExe;->getOutput()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 151
    .local v2, output:Ljava/lang/String;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 152
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity$1;->this$0:Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;

    #getter for: Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;->access$000(Lcom/mediatek/connectivity/CdsNatvieNetworkSrvActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    monitor-exit v4

    .line 157
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #output:Ljava/lang/String;
    :goto_0
    return-void

    .line 153
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
