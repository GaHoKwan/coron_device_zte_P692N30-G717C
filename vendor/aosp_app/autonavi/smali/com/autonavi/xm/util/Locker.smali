.class public Lcom/autonavi/xm/util/Locker;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lcom/autonavi/xm/util/Locker;


# instance fields
.field private mLockInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/autonavi/xm/util/Locker$LockType;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xm/util/Locker;->mLockInfo:Ljava/util/Map;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/xm/util/Locker;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xm/util/Locker;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xm/util/Locker;->mLockInfo:Ljava/util/Map;

    return-object v0
.end method

.method public static destroyInstance()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/autonavi/xm/util/Locker;->instance:Lcom/autonavi/xm/util/Locker;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xm/util/Locker;->instance:Lcom/autonavi/xm/util/Locker;

    iget-object v0, v0, Lcom/autonavi/xm/util/Locker;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    sput-object v1, Lcom/autonavi/xm/util/Locker;->instance:Lcom/autonavi/xm/util/Locker;

    return-void
.end method

.method public static getInstance()Lcom/autonavi/xm/util/Locker;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/util/Locker;->instance:Lcom/autonavi/xm/util/Locker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/util/Locker;

    invoke-direct {v0}, Lcom/autonavi/xm/util/Locker;-><init>()V

    sput-object v0, Lcom/autonavi/xm/util/Locker;->instance:Lcom/autonavi/xm/util/Locker;

    :cond_0
    sget-object v0, Lcom/autonavi/xm/util/Locker;->instance:Lcom/autonavi/xm/util/Locker;

    return-object v0
.end method

.method public static shareInstance()Lcom/autonavi/xm/util/Locker;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/util/Locker;->instance:Lcom/autonavi/xm/util/Locker;

    return-object v0
.end method


# virtual methods
.method public lock(Lcom/autonavi/xm/util/Locker$LockType;Ljava/lang/String;Lcom/autonavi/xm/util/Locker$OnLockListener;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/util/Locker;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/autonavi/xm/util/Locker$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/autonavi/xm/util/Locker$1;-><init>(Lcom/autonavi/xm/util/Locker;Lcom/autonavi/xm/util/Locker$LockType;Ljava/lang/String;Lcom/autonavi/xm/util/Locker$OnLockListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public unlock(Lcom/autonavi/xm/util/Locker$LockType;Lcom/autonavi/xm/util/Locker$OnUnLockListener;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xm/util/Locker;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/autonavi/xm/util/Locker$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/autonavi/xm/util/Locker$2;-><init>(Lcom/autonavi/xm/util/Locker;Lcom/autonavi/xm/util/Locker$LockType;Lcom/autonavi/xm/util/Locker$OnUnLockListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
