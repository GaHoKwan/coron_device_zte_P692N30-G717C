.class Lcom/autonavi/xm/navigation/engine/GDBL_Location$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$1;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$1;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mIsLocationUpdating:Z
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->access$000(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$1;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->access$100(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$1;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->access$100(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;->onLocationUpdate()V

    goto :goto_0
.end method
