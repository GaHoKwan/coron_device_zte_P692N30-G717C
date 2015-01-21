.class Lcom/autonavi/xm/navigation/engine/GDBL_Guide$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

.field final synthetic val$result:Lcom/autonavi/xm/navigation/server/GStatus;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;Lcom/autonavi/xm/navigation/server/GStatus;I)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$3;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    iput-object p2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$3;->val$result:Lcom/autonavi/xm/navigation/server/GStatus;

    iput p3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$3;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$3;->val$result:Lcom/autonavi/xm/navigation/server/GStatus;

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$3;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_StopGuide()Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$3;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$3;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mMainRouteHanle:I
    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->access$000(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_AddGuideRoute(I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$3;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$3;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mMainRouteHanle:I
    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->access$000(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_SelectGuideRoute(I)Lcom/autonavi/xm/navigation/server/GStatus;

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$3;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$3;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mMainRouteHanle:I
    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->access$000(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->GDBL_GuideTheRoute(I)Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$3;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mGuideCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->access$200(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$3;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mGuideCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->access$200(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;)Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$3;->val$type:I

    iget-object v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$3;->val$result:Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-interface {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$GGuideCallback;->GDBL_OnRouteCalculateResult(ILcom/autonavi/xm/navigation/server/GStatus;)V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Guide$3;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    const/4 v1, 0x0

    #setter for: Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->mIsCalculating:Z
    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->access$302(Lcom/autonavi/xm/navigation/engine/GDBL_Guide;Z)Z

    return-void
.end method
