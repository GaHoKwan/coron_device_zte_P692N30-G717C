.class Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

.field final synthetic val$Coord:Lcom/autonavi/xm/navigation/server/GCoord;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;Lcom/autonavi/xm/navigation/server/GCoord;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    iput-object p2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4;->val$Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v2, v5, [Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4;->val$Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_RequestNearestPOI(Lcom/autonavi/xm/navigation/server/GCoord;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_GetNearestPOI([Lcom/autonavi/xm/navigation/server/poi/GPoi;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v3, v2, v4

    if-eqz v3, :cond_1

    aget-object v1, v2, v4

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/server/poi/GPoi;->toUIPoi()Lcom/autonavi/xmgd/e/k;

    move-result-object v1

    :cond_1
    new-array v2, v5, [Lcom/autonavi/xmgd/e/k;

    aput-object v1, v2, v4

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->access$300(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4$1;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4;Lcom/autonavi/xm/navigation/server/GStatus;[Lcom/autonavi/xmgd/e/k;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
