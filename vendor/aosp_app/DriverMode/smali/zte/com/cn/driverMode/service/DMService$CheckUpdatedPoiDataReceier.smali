.class public Lzte/com/cn/driverMode/service/DMService$CheckUpdatedPoiDataReceier;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method protected constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/DMService$CheckUpdatedPoiDataReceier;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "DMService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CheckUpdatedPoiDataReceier-->curScene=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/service/DMService$CheckUpdatedPoiDataReceier;->a:Lzte/com/cn/driverMode/service/DMService;

    iget v2, v2, Lzte/com/cn/driverMode/service/DMService;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$CheckUpdatedPoiDataReceier;->a:Lzte/com/cn/driverMode/service/DMService;

    iget v0, v0, Lzte/com/cn/driverMode/service/DMService;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$CheckUpdatedPoiDataReceier;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$CheckUpdatedPoiDataReceier;->a:Lzte/com/cn/driverMode/service/DMService;

    const/4 v1, 0x3

    iput v1, v0, Lzte/com/cn/driverMode/service/DMService;->bo:I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/DMService$CheckUpdatedPoiDataReceier;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v1, p0, Lzte/com/cn/driverMode/service/DMService$CheckUpdatedPoiDataReceier;->a:Lzte/com/cn/driverMode/service/DMService;

    iget v1, v1, Lzte/com/cn/driverMode/service/DMService;->bo:I

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/DMService;->a(I)V

    :cond_0
    return-void
.end method