.class Lcom/hf/UI/MapWeatherActivity$1;
.super Landroid/os/Handler;
.source "MapWeatherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/MapWeatherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/MapWeatherActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/MapWeatherActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MapWeatherActivity$1;->this$0:Lcom/hf/UI/MapWeatherActivity;

    .line 65
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const-wide v10, 0x412e848000000000L

    .line 67
    iget v6, p1, Landroid/os/Message;->what:I

    .line 68
    .local v6, what:I
    packed-switch v6, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 70
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    .local v0, bundle:Landroid/os/Bundle;
    const-string v7, "lat"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 72
    .local v1, lat:D
    const-string v7, "lng"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 74
    .local v3, lng:D
    sget-boolean v7, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v7, :cond_0

    .line 75
    const-string v7, "queryWeathers"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "lat = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; lng = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    new-instance v5, Lcom/baidu/mapapi/GeoPoint;

    mul-double v7, v1, v10

    double-to-int v7, v7

    mul-double v8, v3, v10

    double-to-int v8, v8

    invoke-direct {v5, v7, v8}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    .line 79
    .local v5, point:Lcom/baidu/mapapi/GeoPoint;
    iget-object v7, p0, Lcom/hf/UI/MapWeatherActivity$1;->this$0:Lcom/hf/UI/MapWeatherActivity;

    #getter for: Lcom/hf/UI/MapWeatherActivity;->mMapController:Lcom/baidu/mapapi/MapController;
    invoke-static {v7}, Lcom/hf/UI/MapWeatherActivity;->access$0(Lcom/hf/UI/MapWeatherActivity;)Lcom/baidu/mapapi/MapController;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/baidu/mapapi/MapController;->setCenter(Lcom/baidu/mapapi/GeoPoint;)V

    goto :goto_0

    .line 83
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #lat:D
    .end local v3           #lng:D
    .end local v5           #point:Lcom/baidu/mapapi/GeoPoint;
    :pswitch_1
    iget-object v7, p0, Lcom/hf/UI/MapWeatherActivity$1;->this$0:Lcom/hf/UI/MapWeatherActivity;

    const v8, 0x7f080112

    invoke-static {v7, v8}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 84
    iget-object v7, p0, Lcom/hf/UI/MapWeatherActivity$1;->this$0:Lcom/hf/UI/MapWeatherActivity;

    #calls: Lcom/hf/UI/MapWeatherActivity;->queryWeathers()V
    invoke-static {v7}, Lcom/hf/UI/MapWeatherActivity;->access$1(Lcom/hf/UI/MapWeatherActivity;)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
