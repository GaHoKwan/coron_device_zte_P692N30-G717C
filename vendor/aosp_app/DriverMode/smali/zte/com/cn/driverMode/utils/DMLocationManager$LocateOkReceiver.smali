.class public Lzte/com/cn/driverMode/utils/DMLocationManager$LocateOkReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/utils/DMLocationManager;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/utils/DMLocationManager;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/utils/DMLocationManager$LocateOkReceiver;->a:Lzte/com/cn/driverMode/utils/DMLocationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    new-instance v0, Lzte/com/cn/driverMode/utils/d;

    invoke-direct {v0}, Lzte/com/cn/driverMode/utils/d;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "lat"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lng"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cityID"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lzte/com/cn/driverMode/service/by;

    invoke-direct {v4, p1}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    const-string v5, "cityID"

    invoke-virtual {v4, v5, v1}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "longitude"

    invoke-virtual {v4, v5, v3}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "latitude"

    invoke-virtual {v4, v5, v2}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "LocationLog"

    const-string v5, "DMLocationManager Location OK!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "LocationLog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DMLocationManager longitude"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "LocationLog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DMLocationManager latitude="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "LocationLog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DMLocationManager cityId="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lzte/com/cn/driverMode/utils/d;->b:D

    iput-wide v4, v0, Lzte/com/cn/driverMode/utils/d;->c:D

    iput-object v1, v0, Lzte/com/cn/driverMode/utils/d;->a:Ljava/lang/String;

    iget-object v1, p0, Lzte/com/cn/driverMode/utils/DMLocationManager$LocateOkReceiver;->a:Lzte/com/cn/driverMode/utils/DMLocationManager;

    const/16 v2, 0x4005

    invoke-virtual {v1, v2, v0}, Lzte/com/cn/driverMode/utils/DMLocationManager;->a(ILjava/lang/Object;)V

    return-void
.end method
