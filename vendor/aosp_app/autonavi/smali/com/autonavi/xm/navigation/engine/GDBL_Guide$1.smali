.class Lcom/autonavi/xm/navigation/engine/GDBL_Guide$1;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

.field final synthetic val$bMultiRoute:Z


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;Z)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$1;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    iput-boolean p2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$1;->val$bMultiRoute:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v5, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v2, v5, [I

    new-array v3, v0, [I

    iget-boolean v4, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$1;->val$bMultiRoute:Z

    invoke-static {v4, v2, v3, v5}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_StartRouteCalculation(Z[I[II)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v4

    sget-object v5, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v4, v5, :cond_0

    iget-object v5, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$1;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    aget v6, v2, v1

    #setter for: Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mMainRouteHanle:I
    invoke-static {v5, v6}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->access$002(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;I)I

    :cond_0
    iget-object v5, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$1;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    iget-boolean v6, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$1;->val$bMultiRoute:Z

    if-eqz v6, :cond_1

    :goto_0
    aget v1, v3, v1

    #calls: Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->handleCalculateResult(ILcom/autonavi/xm/navigation/server/GStatus;[II)V
    invoke-static {v5, v0, v4, v2, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->access$100(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;ILcom/autonavi/xm/navigation/server/GStatus;[II)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
