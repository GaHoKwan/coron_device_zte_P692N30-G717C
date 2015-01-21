.class Lcom/autonavi/xm/navigation/engine/GDBL_Location$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

.field final synthetic val$lastStatus:I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Location;II)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$2;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    iput p2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$2;->val$lastStatus:I

    iput p3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$2;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$2;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->access$100(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$2;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->access$100(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$2;->val$lastStatus:I

    iget v2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$2;->val$status:I

    invoke-interface {v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;->onStatusChanged(II)V

    :cond_0
    return-void
.end method
