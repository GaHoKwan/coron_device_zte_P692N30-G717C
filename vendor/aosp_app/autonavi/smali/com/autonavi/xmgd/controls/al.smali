.class Lcom/autonavi/xmgd/controls/al;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xm/util/Locker$OnLockListener;


# instance fields
.field final synthetic a:Lcom/autonavi/xm/navigation/server/map/GECompassData;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/controls/ak;Lcom/autonavi/xm/navigation/server/map/GECompassData;)V
    .locals 0

    iput-object p2, p0, Lcom/autonavi/xmgd/controls/al;->a:Lcom/autonavi/xm/navigation/server/map/GECompassData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLock(Lcom/autonavi/xm/util/Locker$LockType;Z)V
    .locals 2

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/autonavi/xmgd/controls/am;

    invoke-direct {v1, p0, p1}, Lcom/autonavi/xmgd/controls/am;-><init>(Lcom/autonavi/xmgd/controls/al;Lcom/autonavi/xm/util/Locker$LockType;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
