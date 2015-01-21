.class Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

.field final synthetic val$requestCode:I

.field final synthetic val$responseCode:I


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;II)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$2;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    iput p2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$2;->val$requestCode:I

    iput p3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$2;->val$responseCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$2;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$100(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$2;->val$requestCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$2;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$100(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$2;->val$responseCode:I

    invoke-interface {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;->onLoginNetError(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$2;->val$requestCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$2;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->mTmcCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$100(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;)Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$2;->val$responseCode:I

    invoke-interface {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$GTmcCallback;->onUpdateNetError(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc$2;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;

    const-wide/16 v1, 0x4e20

    #calls: Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->process(J)V
    invoke-static {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;->access$400(Lcom/autonavi/xm/navigation/engine/GDBL_Tmc;J)V

    goto :goto_0
.end method
