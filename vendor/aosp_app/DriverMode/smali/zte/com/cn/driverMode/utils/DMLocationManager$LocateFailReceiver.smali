.class public Lzte/com/cn/driverMode/utils/DMLocationManager$LocateFailReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/utils/DMLocationManager;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/utils/DMLocationManager;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/utils/DMLocationManager$LocateFailReceiver;->a:Lzte/com/cn/driverMode/utils/DMLocationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "DMLocationManager"

    const-string v1, " Location Fail!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/utils/DMLocationManager$LocateFailReceiver;->a:Lzte/com/cn/driverMode/utils/DMLocationManager;

    const/16 v1, 0x4006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/utils/DMLocationManager;->a(ILjava/lang/Object;)V

    return-void
.end method
