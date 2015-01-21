.class Lcom/autonavi/xm/navigation/engine/GDBL_Location$MainHandler;
.super Landroid/os/Handler;


# static fields
.field private static final WHAT_SET_LOC_INFO:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;


# direct methods
.method public constructor <init>(Lcom/autonavi/xm/navigation/engine/GDBL_Location;)V
    .locals 1

    iput-object p1, p0, Lcom/autonavi/xm/navigation/engine/GDBL_Location$MainHandler;->this$0:Lcom/autonavi/xm/navigation/engine/GDBL_Location;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/autonavi/xm/util/Locker;->shareInstance()Lcom/autonavi/xm/util/Locker;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/autonavi/xm/util/Locker;->shareInstance()Lcom/autonavi/xm/util/Locker;

    move-result-object v0

    sget-object v1, Lcom/autonavi/xm/util/Locker$LockType;->LOCK_UPDATA_MAP_DATAS:Lcom/autonavi/xm/util/Locker$LockType;

    const-string v2, "UPDATE_SET_LOC_INFO_AND_MAPVIEW"

    new-instance v3, Lcom/autonavi/xm/navigation/engine/GDBL_Location$MainHandler$1;

    invoke-direct {v3, p0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location$MainHandler$1;-><init>(Lcom/autonavi/xm/navigation/engine/GDBL_Location$MainHandler;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/xm/util/Locker;->lock(Lcom/autonavi/xm/util/Locker$LockType;Ljava/lang/String;Lcom/autonavi/xm/util/Locker$OnLockListener;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Location$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xef

    invoke-virtual {p0, v0, v1, v2}, Lcom/autonavi/xm/navigation/engine/GDBL_Location$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
