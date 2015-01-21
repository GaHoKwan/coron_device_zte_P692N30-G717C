.class Lcom/autonavi/xm/navigation/engine/GDBL_Poi$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$1;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_InitSearchCondition(Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$1;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    const/4 v1, 0x1

    #setter for: Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->isInitSearchConditionFinish:Z
    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->access$002(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
