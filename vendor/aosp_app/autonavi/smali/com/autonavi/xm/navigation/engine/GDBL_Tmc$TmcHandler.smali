.class Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;


# direct methods
.method public constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mIsRunning:Z
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$500(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xmgd/utility/Tool;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_TMC_GetLoginSubUrl([Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mHttpHandler:Lcom/autonavi/xm/util/HttpHandler;
    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$700(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)Lcom/autonavi/xm/util/HttpHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    aget-object v0, v0, v2

    #calls: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->makeRequestUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$600(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/autonavi/xm/util/HttpHandler;->sendRequest(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mIsRunning:Z
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$500(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mCurAdminCode:I
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$800(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    invoke-virtual {v0, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->GDBL_SelectCity(I)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mCurAdminCode:I
    invoke-static {v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$800(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)I

    move-result v3

    invoke-static {v3, v1, v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_TMC_GetDownloadSubUrl(IZ[Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v3

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mHttpHandler:Lcom/autonavi/xm/util/HttpHandler;
    invoke-static {v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$700(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)Lcom/autonavi/xm/util/HttpHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    aget-object v0, v0, v2

    #calls: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->makeRequestUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$600(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lcom/autonavi/xm/util/HttpHandler;->sendRequest(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mIsRunning:Z
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$500(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mIsLogin:Z
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$900(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    #calls: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->download(J)V
    invoke-static {v0, v5, v6}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$300(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;J)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    #calls: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->login(J)V
    invoke-static {v0, v5, v6}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$1000(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;J)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mIsRunning:Z
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$500(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    sget-object v4, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_1
    #setter for: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mIsLogin:Z
    invoke-static {v3, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$902(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;Z)Z

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mIsLogin:Z
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$900(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    #calls: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->download(J)V
    invoke-static {v0, v5, v6}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$300(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;J)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$TmcHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    const-wide/16 v1, 0x4e20

    #calls: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->login(J)V
    invoke-static {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$1000(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;J)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
