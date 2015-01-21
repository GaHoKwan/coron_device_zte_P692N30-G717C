.class Lcom/autonavi/xmgd/controls/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/autonavi/xm/util/Locker$LockType;

.field private synthetic b:Lcom/autonavi/xmgd/controls/al;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/controls/al;Lcom/autonavi/xm/util/Locker$LockType;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/controls/am;->b:Lcom/autonavi/xmgd/controls/al;

    iput-object p2, p0, Lcom/autonavi/xmgd/controls/am;->a:Lcom/autonavi/xm/util/Locker$LockType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Map;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/controls/am;->b:Lcom/autonavi/xmgd/controls/al;

    iget-object v1, v1, Lcom/autonavi/xmgd/controls/al;->a:Lcom/autonavi/xm/navigation/server/map/GECompassData;

    invoke-virtual {v0, v1}, Lcom/autonavi/xm/navigation/engine/GDBL_Map;->GDBL_SetECompassData(Lcom/autonavi/xm/navigation/server/map/GECompassData;)Lcom/autonavi/xm/navigation/server/GStatus;

    invoke-static {}, Lcom/autonavi/xm/util/Locker;->shareInstance()Lcom/autonavi/xm/util/Locker;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xm/util/Locker;->shareInstance()Lcom/autonavi/xm/util/Locker;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/controls/am;->a:Lcom/autonavi/xm/util/Locker$LockType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xm/util/Locker;->unlock(Lcom/autonavi/xm/util/Locker$LockType;Lcom/autonavi/xm/util/Locker$OnUnLockListener;)V

    :cond_0
    return-void
.end method
