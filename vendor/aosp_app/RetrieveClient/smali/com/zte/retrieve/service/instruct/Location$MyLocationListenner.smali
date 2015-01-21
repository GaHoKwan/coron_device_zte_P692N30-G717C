.class public Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Lcom/baidu/location/BDLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/retrieve/service/instruct/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyLocationListenner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/retrieve/service/instruct/Location;


# direct methods
.method public constructor <init>(Lcom/zte/retrieve/service/instruct/Location;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->this$0:Lcom/zte/retrieve/service/instruct/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sendSuccessMapInfoBroadcast(Lcom/baidu/location/BDLocation;Lcom/zte/retrieve/service/instruct/Location$MapInfo;)Ljava/lang/String;
    .locals 5
    .parameter "location"
    .parameter "mapinfo"

    .prologue
    const/4 v4, 0x0

    .line 218
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/zte/retrieve/service/instruct/Location$MapInfo;->setLatitude(D)V

    .line 219
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/zte/retrieve/service/instruct/Location$MapInfo;->setLongitude(D)V

    .line 220
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/zte/retrieve/service/instruct/Location$MapInfo;->setAddress(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->this$0:Lcom/zte/retrieve/service/instruct/Location;

    invoke-virtual {v1, p2}, Lcom/zte/retrieve/service/instruct/Location;->doGetUri(Lcom/zte/retrieve/service/instruct/Location$MapInfo;)V

    .line 222
    iget-object v1, p0, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->this$0:Lcom/zte/retrieve/service/instruct/Location;

    invoke-virtual {v1, p2}, Lcom/zte/retrieve/service/instruct/Location;->setMapInfo(Lcom/zte/retrieve/service/instruct/Location$MapInfo;)V

    .line 224
    iget-object v1, p0, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->this$0:Lcom/zte/retrieve/service/instruct/Location;

    iput v4, v1, Lcom/zte/retrieve/service/instruct/Location;->resultcode:I

    .line 225
    iget-object v1, p0, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->this$0:Lcom/zte/retrieve/service/instruct/Location;

    #getter for: Lcom/zte/retrieve/service/instruct/Location;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/retrieve/service/instruct/Location;->access$0(Lcom/zte/retrieve/service/instruct/Location;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060087

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getAddrStr()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    .line 226
    #getter for: Lcom/zte/retrieve/service/instruct/Location$MapInfo;->mapUrl:Ljava/lang/String;
    invoke-static {p2}, Lcom/zte/retrieve/service/instruct/Location$MapInfo;->access$0(Lcom/zte/retrieve/service/instruct/Location$MapInfo;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 225
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, mapSmsContent:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->this$0:Lcom/zte/retrieve/service/instruct/Location;

    invoke-virtual {v1, v0, p2}, Lcom/zte/retrieve/service/instruct/Location;->sendMapResBroadcast(Ljava/lang/String;Lcom/zte/retrieve/service/instruct/Location$MapInfo;)V

    .line 228
    return-object v0
.end method


# virtual methods
.method public onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    .locals 8
    .parameter "location"

    .prologue
    const v7, 0x7f060086

    const/16 v6, 0xa

    const/4 v5, 0x0

    .line 178
    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    .line 179
    .local v2, resultCode:I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getLocType:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 181
    if-eqz p1, :cond_0

    const/16 v3, 0xa2

    if-ne v2, v3, :cond_2

    .line 182
    :cond_0
    const-string v3, "server error,locate failed!"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 183
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->this$0:Lcom/zte/retrieve/service/instruct/Location;

    const/4 v4, 0x1

    iput v4, v3, Lcom/zte/retrieve/service/instruct/Location;->resultcode:I

    .line 184
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->this$0:Lcom/zte/retrieve/service/instruct/Location;

    iget-object v4, p0, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->this$0:Lcom/zte/retrieve/service/instruct/Location;

    #getter for: Lcom/zte/retrieve/service/instruct/Location;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zte/retrieve/service/instruct/Location;->access$0(Lcom/zte/retrieve/service/instruct/Location;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/zte/retrieve/service/instruct/Location;->sendMapResBroadcast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/zte/retrieve/service/instruct/Location;->access$1(Lcom/zte/retrieve/service/instruct/Location;Ljava/lang/String;)V

    .line 185
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->this$0:Lcom/zte/retrieve/service/instruct/Location;

    iget-object v3, v3, Lcom/zte/retrieve/service/instruct/Location;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v3}, Lcom/baidu/location/LocationClient;->stop()V

    .line 215
    :cond_1
    :goto_0
    return-void

    .line 188
    :cond_2
    new-instance v1, Lcom/zte/retrieve/service/instruct/Location$MapInfo;

    invoke-direct {v1}, Lcom/zte/retrieve/service/instruct/Location$MapInfo;-><init>()V

    .line 190
    .local v1, mapinfo:Lcom/zte/retrieve/service/instruct/Location$MapInfo;
    const/16 v3, 0x3d

    if-eq v2, v3, :cond_3

    const/16 v3, 0xa1

    if-ne v2, v3, :cond_4

    .line 191
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->sendSuccessMapInfoBroadcast(Lcom/baidu/location/BDLocation;Lcom/zte/retrieve/service/instruct/Location$MapInfo;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, mapSmsContent:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "locate success, addr:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 193
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->this$0:Lcom/zte/retrieve/service/instruct/Location;

    iget-object v3, v3, Lcom/zte/retrieve/service/instruct/Location;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v3}, Lcom/baidu/location/LocationClient;->stop()V

    goto :goto_0

    .line 194
    .end local v0           #mapSmsContent:Ljava/lang/String;
    :cond_4
    const/16 v3, 0x44

    if-ne v2, v3, :cond_5

    .line 195
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->this$0:Lcom/zte/retrieve/service/instruct/Location;

    #getter for: Lcom/zte/retrieve/service/instruct/Location;->retryCount:I
    invoke-static {v3}, Lcom/zte/retrieve/service/instruct/Location;->access$2(Lcom/zte/retrieve/service/instruct/Location;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    #setter for: Lcom/zte/retrieve/service/instruct/Location;->retryCount:I
    invoke-static {v3, v4}, Lcom/zte/retrieve/service/instruct/Location;->access$3(Lcom/zte/retrieve/service/instruct/Location;I)V

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getOffLineLocation, retry locate, retryCount="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->this$0:Lcom/zte/retrieve/service/instruct/Location;

    #getter for: Lcom/zte/retrieve/service/instruct/Location;->retryCount:I
    invoke-static {v4}, Lcom/zte/retrieve/service/instruct/Location;->access$2(Lcom/zte/retrieve/service/instruct/Location;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 197
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->this$0:Lcom/zte/retrieve/service/instruct/Location;

    #getter for: Lcom/zte/retrieve/service/instruct/Location;->retryCount:I
    invoke-static {v3}, Lcom/zte/retrieve/service/instruct/Location;->access$2(Lcom/zte/retrieve/service/instruct/Location;)I

    move-result v3

    if-le v3, v6, :cond_1

    .line 198
    const-string v3, "fail to connect network, stop locate"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 199
    invoke-direct {p0, p1, v1}, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->sendSuccessMapInfoBroadcast(Lcom/baidu/location/BDLocation;Lcom/zte/retrieve/service/instruct/Location$MapInfo;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .restart local v0       #mapSmsContent:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "locate off line, addr:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 201
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->this$0:Lcom/zte/retrieve/service/instruct/Location;

    iget-object v3, v3, Lcom/zte/retrieve/service/instruct/Location;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v3}, Lcom/baidu/location/LocationClient;->stop()V

    .line 202
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->this$0:Lcom/zte/retrieve/service/instruct/Location;

    #setter for: Lcom/zte/retrieve/service/instruct/Location;->retryCount:I
    invoke-static {v3, v5}, Lcom/zte/retrieve/service/instruct/Location;->access$3(Lcom/zte/retrieve/service/instruct/Location;I)V

    goto/16 :goto_0

    .line 205
    .end local v0           #mapSmsContent:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->this$0:Lcom/zte/retrieve/service/instruct/Location;

    #getter for: Lcom/zte/retrieve/service/instruct/Location;->retryCount:I
    invoke-static {v3}, Lcom/zte/retrieve/service/instruct/Location;->access$2(Lcom/zte/retrieve/service/instruct/Location;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    #setter for: Lcom/zte/retrieve/service/instruct/Location;->retryCount:I
    invoke-static {v3, v4}, Lcom/zte/retrieve/service/instruct/Location;->access$3(Lcom/zte/retrieve/service/instruct/Location;I)V

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "networkError, retry locate, retryCount="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->this$0:Lcom/zte/retrieve/service/instruct/Location;

    #getter for: Lcom/zte/retrieve/service/instruct/Location;->retryCount:I
    invoke-static {v4}, Lcom/zte/retrieve/service/instruct/Location;->access$2(Lcom/zte/retrieve/service/instruct/Location;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 207
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->this$0:Lcom/zte/retrieve/service/instruct/Location;

    #getter for: Lcom/zte/retrieve/service/instruct/Location;->retryCount:I
    invoke-static {v3}, Lcom/zte/retrieve/service/instruct/Location;->access$2(Lcom/zte/retrieve/service/instruct/Location;)I

    move-result v3

    if-le v3, v6, :cond_1

    .line 208
    const-string v3, "fail to connect network, stop locate"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 209
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->this$0:Lcom/zte/retrieve/service/instruct/Location;

    iget-object v4, p0, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->this$0:Lcom/zte/retrieve/service/instruct/Location;

    #getter for: Lcom/zte/retrieve/service/instruct/Location;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/zte/retrieve/service/instruct/Location;->access$0(Lcom/zte/retrieve/service/instruct/Location;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/zte/retrieve/service/instruct/Location;->sendMapResBroadcast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/zte/retrieve/service/instruct/Location;->access$1(Lcom/zte/retrieve/service/instruct/Location;Ljava/lang/String;)V

    .line 210
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->this$0:Lcom/zte/retrieve/service/instruct/Location;

    iget-object v3, v3, Lcom/zte/retrieve/service/instruct/Location;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v3}, Lcom/baidu/location/LocationClient;->stop()V

    .line 211
    iget-object v3, p0, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;->this$0:Lcom/zte/retrieve/service/instruct/Location;

    #setter for: Lcom/zte/retrieve/service/instruct/Location;->retryCount:I
    invoke-static {v3, v5}, Lcom/zte/retrieve/service/instruct/Location;->access$3(Lcom/zte/retrieve/service/instruct/Location;I)V

    goto/16 :goto_0
.end method

.method public onReceivePoi(Lcom/baidu/location/BDLocation;)V
    .locals 0
    .parameter "poiLocation"

    .prologue
    .line 232
    if-nez p1, :cond_0

    .line 235
    :cond_0
    return-void
.end method
