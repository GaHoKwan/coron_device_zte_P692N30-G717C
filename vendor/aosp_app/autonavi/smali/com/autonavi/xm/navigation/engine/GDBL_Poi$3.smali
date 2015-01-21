.class Lcom/autonavi/xm/navigation/engine/GDBL_Poi$3;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

.field final synthetic val$maxItem:S

.field final synthetic val$pSearchCondition:Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;SLcom/autonavi/xm/navigation/server/poi/GSearchCondition;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$3;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    iput-short p2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$3;->val$maxItem:S

    iput-object p3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$3;->val$pSearchCondition:Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/autonavi/xm/navigation/server/poi/GGetPoiInput;

    iget-short v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$3;->val$maxItem:S

    invoke-direct {v2, v1, v0}, Lcom/autonavi/xm/navigation/server/poi/GGetPoiInput;-><init>(SS)V

    new-array v3, v7, [Lcom/autonavi/xm/navigation/server/poi/GPoiResult;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$3;->val$pSearchCondition:Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_StartSearchPOI(Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v5, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$3;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_GetPOIResult(Lcom/autonavi/xm/navigation/server/poi/GGetPoiInput;[Lcom/autonavi/xm/navigation/server/poi/GPoiResult;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    :cond_0
    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v2, :cond_1

    aget-object v2, v3, v1

    if-eqz v2, :cond_1

    aget-object v2, v3, v1

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/poi/GPoiResult;->pPOI:[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    array-length v2, v2

    if-lez v2, :cond_1

    aget-object v2, v3, v1

    if-eqz v2, :cond_1

    aget-object v2, v3, v1

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/poi/GPoiResult;->pPOI:[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    array-length v2, v2

    if-lez v2, :cond_1

    aget-object v2, v3, v1

    iget-object v3, v2, Lcom/autonavi/xm/navigation/server/poi/GPoiResult;->pPOI:[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    array-length v5, v3

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v6, v3, v2

    invoke-virtual {v6}, Lcom/autonavi/xm/navigation/server/poi/GPoi;->toUIPoi()Lcom/autonavi/xmgd/e/k;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_4

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$3;->val$pSearchCondition:Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;

    sget-object v2, Lcom/autonavi/xm/navigation/server/poi/GSearchType;->GSEARCH_TYPE_ADDRESS:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    iput-object v2, v0, Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;->eSearchType:Lcom/autonavi/xm/navigation/server/poi/GSearchType;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$3;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->access$300(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$3;->val$pSearchCondition:Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;

    invoke-virtual {v0, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$3;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->access$300(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$3;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->isInitSearchConditionFinish:Z
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->access$000(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;)Z

    move-result v0

    if-ne v0, v7, :cond_2

    new-instance v2, Lcom/autonavi/xm/navigation/server/poi/GGetPoiInput;

    iget-short v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$3;->val$maxItem:S

    invoke-direct {v2, v1, v0}, Lcom/autonavi/xm/navigation/server/poi/GGetPoiInput;-><init>(SS)V

    new-array v3, v7, [Lcom/autonavi/xm/navigation/server/poi/GPoiResult;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$3;->val$pSearchCondition:Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;

    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_StartSearchPOI(Lcom/autonavi/xm/navigation/server/poi/GSearchCondition;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v5, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$3;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->GDBL_GetPOIResult(Lcom/autonavi/xm/navigation/server/poi/GGetPoiInput;[Lcom/autonavi/xm/navigation/server/poi/GPoiResult;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    :cond_3
    sget-object v2, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v2, :cond_4

    aget-object v2, v3, v1

    if-eqz v2, :cond_4

    aget-object v2, v3, v1

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/poi/GPoiResult;->pPOI:[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    array-length v2, v2

    if-lez v2, :cond_4

    aget-object v2, v3, v1

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/poi/GPoiResult;->pPOI:[Lcom/autonavi/xm/navigation/server/poi/GPoi;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v5, v2, v1

    invoke-virtual {v5}, Lcom/autonavi/xm/navigation/server/poi/GPoi;->toUIPoi()Lcom/autonavi/xmgd/e/k;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object v1, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/autonavi/xmgd/e/k;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/xmgd/e/k;

    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$3;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->access$300(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$3$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$3$1;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Poi$3;Lcom/autonavi/xm/navigation/server/GStatus;[Lcom/autonavi/xmgd/e/k;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
