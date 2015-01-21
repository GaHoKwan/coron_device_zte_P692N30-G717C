.class public Lcom/zte/retrieve/service/instruct/Location;
.super Ljava/lang/Object;
.source "Location.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/retrieve/service/instruct/Location$MapInfo;,
        Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;
    }
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mLocationClient:Lcom/baidu/location/LocationClient;

.field private mapInfo:Lcom/zte/retrieve/service/instruct/Location$MapInfo;

.field public myListener:Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;

.field public resultcode:I

.field private retryCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/retrieve/service/instruct/Location;->resultcode:I

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/retrieve/service/instruct/Location;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 33
    new-instance v0, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;

    invoke-direct {v0, p0}, Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;-><init>(Lcom/zte/retrieve/service/instruct/Location;)V

    iput-object v0, p0, Lcom/zte/retrieve/service/instruct/Location;->myListener:Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/retrieve/service/instruct/Location;->retryCount:I

    .line 35
    const-string v0, "RIRH14F2M7Za5i1THIcuaHfH"

    iput-object v0, p0, Lcom/zte/retrieve/service/instruct/Location;->key:Ljava/lang/String;

    .line 38
    invoke-static {}, Lcom/zte/retrieve/controller/Controller;->getInstance()Lcom/zte/retrieve/controller/Controller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/retrieve/controller/Controller;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/retrieve/service/instruct/Location;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/zte/retrieve/service/instruct/Location;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/Location;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/zte/retrieve/service/instruct/Location;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/zte/retrieve/service/instruct/Location;->sendMapResBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/zte/retrieve/service/instruct/Location;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/zte/retrieve/service/instruct/Location;->retryCount:I

    return v0
.end method

.method static synthetic access$3(Lcom/zte/retrieve/service/instruct/Location;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput p1, p0, Lcom/zte/retrieve/service/instruct/Location;->retryCount:I

    return-void
.end method

.method private configLocationOption()Lcom/baidu/location/LocationClientOption;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 43
    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    .line 44
    .local v0, option:Lcom/baidu/location/LocationClientOption;
    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClientOption;->setOpenGps(Z)V

    .line 45
    const-string v1, "bd09ll"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    .line 47
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setPoiExtraInfo(Z)V

    .line 48
    const-string v1, "all"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setAddrType(Ljava/lang/String;)V

    .line 49
    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    .line 52
    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClientOption;->setPriority(I)V

    .line 54
    invoke-virtual {v0, v2}, Lcom/baidu/location/LocationClientOption;->disableCache(Z)V

    .line 55
    return-object v0
.end method

.method private sendMapResBroadcast(Ljava/lang/String;)V
    .locals 3
    .parameter "mapSmsContent"

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.retrieve.MAP_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "result"

    iget v2, p0, Lcom/zte/retrieve/service/instruct/Location;->resultcode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    const-string v1, "map_content"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iget-object v1, p0, Lcom/zte/retrieve/service/instruct/Location;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 170
    return-void
.end method


# virtual methods
.method public doGetUri(Lcom/zte/retrieve/service/instruct/Location$MapInfo;)V
    .locals 4
    .parameter "item"

    .prologue
    .line 127
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 129
    .local v1, urlStrBuffer:Ljava/lang/StringBuffer;
    if-nez p1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string v2, "http://api.map.baidu.com/marker?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    const-string v2, "location="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    #getter for: Lcom/zte/retrieve/service/instruct/Location$MapInfo;->latitude:D
    invoke-static {p1}, Lcom/zte/retrieve/service/instruct/Location$MapInfo;->access$1(Lcom/zte/retrieve/service/instruct/Location$MapInfo;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 136
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    #getter for: Lcom/zte/retrieve/service/instruct/Location$MapInfo;->longitude:D
    invoke-static {p1}, Lcom/zte/retrieve/service/instruct/Location$MapInfo;->access$2(Lcom/zte/retrieve/service/instruct/Location$MapInfo;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 138
    const-string v2, "&title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    :try_start_0
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/Location;->mContext:Landroid/content/Context;

    const v3, 0x7f060088

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_1
    const-string v2, "&content="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    :try_start_1
    #getter for: Lcom/zte/retrieve/service/instruct/Location$MapInfo;->address:Ljava/lang/String;
    invoke-static {p1}, Lcom/zte/retrieve/service/instruct/Location$MapInfo;->access$3(Lcom/zte/retrieve/service/instruct/Location$MapInfo;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    :goto_2
    const-string v2, "&output=html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/zte/retrieve/service/instruct/Location$MapInfo;->setMapUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 148
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 149
    .restart local v0       #e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2
.end method

.method public getMapInfo()Lcom/zte/retrieve/service/instruct/Location$MapInfo;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/Location;->mapInfo:Lcom/zte/retrieve/service/instruct/Location$MapInfo;

    return-object v0
.end method

.method public locate()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/Location;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/Location;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    :cond_0
    const-string v0, "create and start locationClient"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/baidu/location/LocationClient;

    iget-object v1, p0, Lcom/zte/retrieve/service/instruct/Location;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/retrieve/service/instruct/Location;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 63
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/Location;->mLocationClient:Lcom/baidu/location/LocationClient;

    iget-object v1, p0, Lcom/zte/retrieve/service/instruct/Location;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->setAK(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/Location;->mLocationClient:Lcom/baidu/location/LocationClient;

    iget-object v1, p0, Lcom/zte/retrieve/service/instruct/Location;->myListener:Lcom/zte/retrieve/service/instruct/Location$MyLocationListenner;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 65
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/Location;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-direct {p0}, Lcom/zte/retrieve/service/instruct/Location;->configLocationOption()Lcom/baidu/location/LocationClientOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    .line 66
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/Location;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->start()V

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_1
    const-string v0, "locationClient isStarted"

    invoke-static {v0}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/zte/retrieve/service/instruct/Location;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->requestLocation()I

    goto :goto_0
.end method

.method public sendMapResBroadcast(Ljava/lang/String;Lcom/zte/retrieve/service/instruct/Location$MapInfo;)V
    .locals 4
    .parameter "mapSmsContent"
    .parameter "mapinfo"

    .prologue
    .line 246
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.zte.retrieve.MAP_RESULT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 247
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "result"

    iget v3, p0, Lcom/zte/retrieve/service/instruct/Location;->resultcode:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    const-string v2, "map_content"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 251
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "map_info"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 252
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 254
    iget-object v2, p0, Lcom/zte/retrieve/service/instruct/Location;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 256
    return-void
.end method

.method public setMapInfo(Lcom/zte/retrieve/service/instruct/Location$MapInfo;)V
    .locals 0
    .parameter "mapInfo"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/zte/retrieve/service/instruct/Location;->mapInfo:Lcom/zte/retrieve/service/instruct/Location$MapInfo;

    .line 123
    return-void
.end method
