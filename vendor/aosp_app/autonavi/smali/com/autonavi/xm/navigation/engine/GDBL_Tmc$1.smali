.class Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

.field final synthetic val$bufferResult:[B

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;I[B)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$1;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    iput p2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$1;->val$requestCode:I

    iput-object p3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$1;->val$bufferResult:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$1;->val$requestCode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$1;->val$bufferResult:[B

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$1;->val$bufferResult:[B

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_TMC_CheckLoginData([BI)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$1;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    #calls: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->onLoginResult(Lcom/autonavi/xm/navigation/server/GStatus;)V
    invoke-static {v1, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$000(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;Lcom/autonavi/xm/navigation/server/GStatus;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$1;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$100(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$1;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$100(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;->onLoginFailed()V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$1;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->GDBL_Close()Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$1;->val$bufferResult:[B

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$1;->val$bufferResult:[B

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_TMC_ParseDownloadedData([BI)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_TMC_Update()Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_2
    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$1;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$1;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mUpdatePeriod:J
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$200(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)J

    move-result-wide v0

    :goto_1
    #calls: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->download(J)V
    invoke-static {v2, v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$300(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;J)V

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x4e20

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$1;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$100(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$1;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$100(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;->onUpdateFailed()V

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$1;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->GDBL_Close()Lcom/autonavi/xm/navigation/server/GStatus;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
