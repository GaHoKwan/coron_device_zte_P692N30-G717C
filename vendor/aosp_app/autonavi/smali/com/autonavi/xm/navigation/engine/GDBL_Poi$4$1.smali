.class Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4;

.field final synthetic val$pois:[Lcom/autonavi/xmgd/e/k;

.field final synthetic val$status:Lcom/autonavi/xm/navigation/server/GStatus;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4;Lcom/autonavi/xm/navigation/server/GStatus;[Lcom/autonavi/xmgd/e/k;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4$1;->this$1:Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4;

    iput-object p2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4$1;->val$status:Lcom/autonavi/xm/navigation/server/GStatus;

    iput-object p3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4$1;->val$pois:[Lcom/autonavi/xmgd/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4$1;->this$1:Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4;

    iget-object v0, v0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mPoiCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Poi$GPoiCallback;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->access$100(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;)Lcom/autonavi/xm/navigation/engine/GDBL_Poi$GPoiCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4$1;->this$1:Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4;

    iget-object v0, v0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mPoiCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Poi$GPoiCallback;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->access$100(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;)Lcom/autonavi/xm/navigation/engine/GDBL_Poi$GPoiCallback;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4$1;->val$status:Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4$1;->val$pois:[Lcom/autonavi/xmgd/e/k;

    invoke-interface {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$GPoiCallback;->GDBL_OnPoiResult(ILcom/autonavi/xm/navigation/server/GStatus;[Lcom/autonavi/xmgd/e/k;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4$1;->this$1:Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4;

    iget-object v0, v0, Lcom/autonavi/xm/navigation/engine/GDBL_Poi$4;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Poi;

    const/4 v1, 0x0

    #setter for: Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->mIsSearching:Z
    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Poi;->access$202(Lcom/autonavi/xm/navigation/engine/GDBL_Poi;Z)Z

    return-void
.end method
