.class public Lcom/hf/location/HFLocationManager$MyLocationListenner;
.super Ljava/lang/Object;
.source "HFLocationManager.java"

# interfaces
.implements Lcom/baidu/location/BDLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/location/HFLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyLocationListenner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/location/HFLocationManager;


# direct methods
.method public constructor <init>(Lcom/hf/location/HFLocationManager;)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/hf/location/HFLocationManager$MyLocationListenner;->this$0:Lcom/hf/location/HFLocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .locals 10
    .parameter "location"

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xc9

    .line 312
    if-nez p1, :cond_0

    .line 313
    iget-object v4, p0, Lcom/hf/location/HFLocationManager$MyLocationListenner;->this$0:Lcom/hf/location/HFLocationManager;

    #calls: Lcom/hf/location/HFLocationManager;->end(ILcom/hf/model/CityModel;)V
    invoke-static {v4, v8, v9}, Lcom/hf/location/HFLocationManager;->access$0(Lcom/hf/location/HFLocationManager;ILcom/hf/model/CityModel;)V

    .line 332
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    .line 317
    .local v2, locationType:I
    const/16 v4, 0xa1

    if-ne v2, v4, :cond_1

    .line 318
    iget-object v4, p0, Lcom/hf/location/HFLocationManager$MyLocationListenner;->this$0:Lcom/hf/location/HFLocationManager;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/hf/location/HFLocationManager;->mLat:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/hf/location/HFLocationManager;->access$1(Lcom/hf/location/HFLocationManager;Ljava/lang/String;)V

    .line 319
    iget-object v4, p0, Lcom/hf/location/HFLocationManager$MyLocationListenner;->this$0:Lcom/hf/location/HFLocationManager;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/hf/location/HFLocationManager;->mLng:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/hf/location/HFLocationManager;->access$2(Lcom/hf/location/HFLocationManager;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getProvince()Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, province:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, city:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getDistrict()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, district:Ljava/lang/String;
    iget-object v4, p0, Lcom/hf/location/HFLocationManager$MyLocationListenner;->this$0:Lcom/hf/location/HFLocationManager;

    #calls: Lcom/hf/location/HFLocationManager;->findCity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v1, v0, v3}, Lcom/hf/location/HFLocationManager;->access$3(Lcom/hf/location/HFLocationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 329
    .end local v0           #city:Ljava/lang/String;
    .end local v1           #district:Ljava/lang/String;
    .end local v3           #province:Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/hf/location/HFLocationManager;->access$4()Landroid/content/Context;

    move-result-object v4

    const-string v5, "location.txt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/hf/data/LogTag;->writeToSDcard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v4, p0, Lcom/hf/location/HFLocationManager$MyLocationListenner;->this$0:Lcom/hf/location/HFLocationManager;

    #calls: Lcom/hf/location/HFLocationManager;->end(ILcom/hf/model/CityModel;)V
    invoke-static {v4, v8, v9}, Lcom/hf/location/HFLocationManager;->access$0(Lcom/hf/location/HFLocationManager;ILcom/hf/model/CityModel;)V

    goto :goto_0
.end method

.method public onReceivePoi(Lcom/baidu/location/BDLocation;)V
    .locals 0
    .parameter "poiLocation"

    .prologue
    .line 336
    return-void
.end method
