.class Lcom/autonavi/xm/navigation/engine/GDBL_Location$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

.field final synthetic val$location:Landroid/location/Location;

.field final synthetic val$lockType:Lcom/autonavi/xm/util/Locker$LockType;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Location;Landroid/location/Location;Lcom/autonavi/xm/util/Locker$LockType;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$3;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    iput-object p2, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$3;->val$location:Landroid/location/Location;

    iput-object p3, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$3;->val$lockType:Lcom/autonavi/xm/util/Locker$LockType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$3;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$3;->val$location:Landroid/location/Location;

    #calls: Lcom/autonavi/xm/navigation/engine/GDBL_Location;->updateMidGpsInfo(Landroid/location/Location;)V
    invoke-static {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Location;->access$500(Lcom/autonavi/xm/navigation/engine/GDBL_Location;Landroid/location/Location;)V

    invoke-static {}, Lcom/autonavi/xm/util/Locker;->shareInstance()Lcom/autonavi/xm/util/Locker;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xm/util/Locker;->shareInstance()Lcom/autonavi/xm/util/Locker;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$3;->val$lockType:Lcom/autonavi/xm/util/Locker$LockType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/util/Locker;->unlock(Lcom/autonavi/xm/util/Locker$LockType;Lcom/autonavi/xm/util/Locker$OnUnLockListener;)V

    :cond_0
    return-void
.end method
