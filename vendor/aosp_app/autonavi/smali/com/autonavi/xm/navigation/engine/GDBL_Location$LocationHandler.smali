.class Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;


# direct methods
.method public constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Location;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->access$200(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    #calls: Lcom/autonavi/xm/navigation/engine/GDBL_Location;->updateLocation()V
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->access$300(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->access$400(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->access$400(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;

    move-result-object v0

    const-wide/16 v1, 0x101

    invoke-virtual {v0, v3, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
