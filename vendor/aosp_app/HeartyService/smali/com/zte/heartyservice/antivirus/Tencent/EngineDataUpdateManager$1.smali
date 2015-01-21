.class Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$1;
.super Landroid/os/Handler;
.source "EngineDataUpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;
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
    .line 73
    iput-object p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 76
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->mUpdateState:I
    invoke-static {v2}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->access$000(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 79
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setIsNeedUpdate(Z)V

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    #calls: Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->notifyChange(II)V
    invoke-static {v2, v1, v1}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->access$100(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;II)V

    goto :goto_0

    .line 86
    :pswitch_2
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->notifyChange(II)V
    invoke-static {v1, v3, v2}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->access$100(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;II)V

    goto :goto_0

    .line 89
    :pswitch_3
    const-string v2, "EngineDataUpdateManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v2, p0, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->notifyChange(II)V
    invoke-static {v2, v1, v3}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->access$100(Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;II)V

    goto :goto_0

    .line 93
    :pswitch_4
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_1

    .line 94
    .local v0, flag:Z
    :goto_1
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->setIsNeedUpdate(Z)V

    goto :goto_0

    .end local v0           #flag:Z
    :cond_1
    move v0, v1

    .line 93
    goto :goto_1

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
