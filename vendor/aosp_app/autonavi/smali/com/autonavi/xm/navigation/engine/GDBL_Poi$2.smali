.class Lcom/autonavi/xm/navigation/engine/GDBL_Poi$2;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

.field final synthetic val$maxItem:S

.field final synthetic val$pSearchCondition:Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;SLcom/autonavi/xm/navigation/server/poi/GSearchCondition;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$2;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    iput-short p2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$2;->val$maxItem:S

    iput-object p3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$2;->val$pSearchCondition:Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v3, 0x0

    new-instance v2, Lcom/autonavi/xm/navigation/server/poi/GGetPoiInput;

    iget-short v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$2;->val$maxItem:S

    invoke-direct {v2, v3, v0}, Lcom/autonavi/xm/navigation/server/poi/GGetPoiInput;-><init>(SS)V

    const/4 v0, 0x1

    new-array v4, v0, [Lcom/autonavi/xm/navigation/server/poi/GPoiResult;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$2;->val$pSearchCondition:Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_StartSearchPOI(Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v5, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$2;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    invoke-virtual {v0, v2, v4}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_GetPOIResult(Lcom/autonavi/xm/navigation/server/poi/GGetPoiInput;[Lcom/autonavi/xm/navigation/server/poi/GPoiResult;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    aget-object v2, v4, v3

    if-eqz v2, :cond_0

    aget-object v2, v4, v3

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/poi/GPoiResult;->pPOI:[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    if-eqz v2, :cond_0

    aget-object v1, v4, v3

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GPoiResult;->pPOI:[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    array-length v5, v1

    new-array v1, v5, [Lcom/autonavi/xmgd/e/k;

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v6, v4, v3

    iget-object v6, v6, Lcom/autonavi/xm/navigation/server/poi/GPoiResult;->pPOI:[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/autonavi/xm/navigation/server/poi/GPoi;->toUIPoi()Lcom/autonavi/xmgd/e/k;

    move-result-object v6

    aput-object v6, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$2;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->access$300(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$2$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$2$1;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Poi$2;Lcom/autonavi/xm/navigation/server/GStatus;[Lcom/autonavi/xmgd/e/k;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
