.class Lcom/autonavi/xm/navigation/engine/GDBL_Location$MainHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xm/util/Locker$OnLockListener;


# instance fields
.field final synthetic this$1:Lcom/autonavi/xm/navigation/engine/GDBL_Location$MainHandler;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Location$MainHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$MainHandler$1;->this$1:Lcom/autonavi/xm/navigation/engine/GDBL_Location$MainHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLock(Lcom/autonavi/xm/util/Locker$LockType;Z)V
    .locals 2

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_SetLocInfo(J)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_LOC_IsNeedUpdateMap()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_CheckDeviate()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$MainHandler$1;->this$1:Lcom/autonavi/xm/navigation/engine/GDBL_Location$MainHandler;

    iget-object v1, v1, Lcom/autonavi/xm/navigation/engine/GDBL_Location$MainHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;
    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->access$100(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$MainHandler$1;->this$1:Lcom/autonavi/xm/navigation/engine/GDBL_Location$MainHandler;

    iget-object v1, v1, Lcom/autonavi/xm/navigation/engine/GDBL_Location$MainHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationCallback:Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;
    invoke-static {v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->access$100(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Location$GLocationCallback;->onDeviate()V

    :cond_2
    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Guide;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Guide;->recalculateRoute()V

    :cond_3
    sget-object v1, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->drawMapView()Lcom/autonavi/xm/navigation/server/GStatus;

    :cond_4
    invoke-static {}, Lcom/autonavi/xm/util/Locker;->shareInstance()Lcom/autonavi/xm/util/Locker;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xm/util/Locker;->shareInstance()Lcom/autonavi/xm/util/Locker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/autonavi/xm/util/Locker;->unlock(Lcom/autonavi/xm/util/Locker$LockType;Lcom/autonavi/xm/util/Locker$OnUnLockListener;)V

    goto :goto_0
.end method
