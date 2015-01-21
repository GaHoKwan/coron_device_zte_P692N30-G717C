.class Lcom/autonavi/xm/navigation/engine/GDBL_Guide$2;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$2;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [I

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_RouteRecalculate([I)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v1

    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$2;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    const/4 v3, 0x0

    aget v3, v0, v3

    #setter for: Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mMainRouteHanle:I
    invoke-static {v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->access$002(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;I)I

    :cond_0
    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$2;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    const/4 v3, 0x2

    const/4 v4, 0x1

    #calls: Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->handleCalculateResult(ILcom/autonavi/xm/navigation/server/GStatus;[II)V
    invoke-static {v2, v3, v1, v0, v4}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->access$100(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;ILcom/autonavi/xm/navigation/server/GStatus;[II)V

    return-void
.end method
