.class Lcom/autonavi/xm/util/Locker$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/util/Locker;

.field final synthetic val$callerName:Ljava/lang/String;

.field final synthetic val$lockType:Lcom/autonavi/xm/util/Locker$LockType;

.field final synthetic val$onLockListener:Lcom/autonavi/xm/util/Locker$OnLockListener;


# direct methods
.method constructor <init>(Lcom/autonavi/xm/util/Locker;Lcom/autonavi/xm/util/Locker$LockType;Ljava/lang/String;Lcom/autonavi/xm/util/Locker$OnLockListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xm/util/Locker$1;->this$0:Lcom/autonavi/xm/util/Locker;

    iput-object p2, p0, Lcom/autonavi/xm/util/Locker$1;->val$lockType:Lcom/autonavi/xm/util/Locker$LockType;

    iput-object p3, p0, Lcom/autonavi/xm/util/Locker$1;->val$callerName:Ljava/lang/String;

    iput-object p4, p0, Lcom/autonavi/xm/util/Locker$1;->val$onLockListener:Lcom/autonavi/xm/util/Locker$OnLockListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xm/util/Locker$1;->this$0:Lcom/autonavi/xm/util/Locker;

    #getter for: Lcom/autonavi/xm/util/Locker;->mLockInfo:Ljava/util/Map;
    invoke-static {v0}, Lcom/autonavi/xm/util/Locker;->access$000(Lcom/autonavi/xm/util/Locker;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/util/Locker$1;->val$lockType:Lcom/autonavi/xm/util/Locker$LockType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/autonavi/xm/util/Locker$1;->val$onLockListener:Lcom/autonavi/xm/util/Locker$OnLockListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/util/Locker$1;->val$onLockListener:Lcom/autonavi/xm/util/Locker$OnLockListener;

    iget-object v1, p0, Lcom/autonavi/xm/util/Locker$1;->val$lockType:Lcom/autonavi/xm/util/Locker$LockType;

    invoke-interface {v0, v1, v2}, Lcom/autonavi/xm/util/Locker$OnLockListener;->onLock(Lcom/autonavi/xm/util/Locker$LockType;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xm/util/Locker$1;->this$0:Lcom/autonavi/xm/util/Locker;

    #getter for: Lcom/autonavi/xm/util/Locker;->mLockInfo:Ljava/util/Map;
    invoke-static {v0}, Lcom/autonavi/xm/util/Locker;->access$000(Lcom/autonavi/xm/util/Locker;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xm/util/Locker$1;->val$lockType:Lcom/autonavi/xm/util/Locker$LockType;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/autonavi/xm/util/Locker$1;->val$onLockListener:Lcom/autonavi/xm/util/Locker$OnLockListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xm/util/Locker$1;->val$onLockListener:Lcom/autonavi/xm/util/Locker$OnLockListener;

    iget-object v1, p0, Lcom/autonavi/xm/util/Locker$1;->val$lockType:Lcom/autonavi/xm/util/Locker$LockType;

    invoke-interface {v0, v1, v3}, Lcom/autonavi/xm/util/Locker$OnLockListener;->onLock(Lcom/autonavi/xm/util/Locker$LockType;Z)V

    goto :goto_0
.end method
