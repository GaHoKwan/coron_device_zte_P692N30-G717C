.class Lcom/autonavi/xm/navigation/engine/GDBL_Location$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xm/util/Locker$OnLockListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$4;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLock(Lcom/autonavi/xm/util/Locker$LockType;Z)V
    .locals 4

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$4;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Location;->gpsLocationList:Ljava/util/List;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->access$600(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$4;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Location;->gpsLocationList:Ljava/util/List;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->access$600(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$4;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Location;->gpsLocationList:Ljava/util/List;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->access$600(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/autonavi/xm/util/Locker;->shareInstance()Lcom/autonavi/xm/util/Locker;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xm/util/Locker;->shareInstance()Lcom/autonavi/xm/util/Locker;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/autonavi/xm/util/Locker;->unlock(Lcom/autonavi/xm/util/Locker$LockType;Lcom/autonavi/xm/util/Locker$OnUnLockListener;)V

    :cond_0
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$4;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    #calls: Lcom/autonavi/xm/navigation/engine/GDBL_Location;->updateMidGpsInfo(Landroid/location/Location;Lcom/autonavi/xm/util/Locker$LockType;)V
    invoke-static {v1, v0, p1}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->access$700(Lcom/autonavi/xm/navigation/engine/GDBL_Location;Landroid/location/Location;Lcom/autonavi/xm/util/Locker$LockType;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$4;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->access$400(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$4;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    #getter for: Lcom/autonavi/xm/navigation/engine/GDBL_Location;->mLocationHandler:Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;
    invoke-static {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->access$400(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;

    move-result-object v0

    new-instance v1, Lcom/autonavi/xm/navigation/engine/GDBL_Location$4$1;

    invoke-direct {v1, p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location$4$1;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Location$4;)V

    const-wide/16 v2, 0x65

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/xm/navigation/engine/GDBL_Location$LocationHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
