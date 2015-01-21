.class public Lcom/isw/android/corp/util/GetLocationUtil;
.super Ljava/lang/Object;
.source "GetLocationUtil.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static lm:Landroid/location/LocationManager;

.field private static mTelMgr:Landroid/telephony/TelephonyManager;

.field private static timeoutConnection:I

.field private static timeoutSocket:I

.field private static wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0xbb8

    sput v0, Lcom/isw/android/corp/util/GetLocationUtil;->timeoutConnection:I

    .line 39
    const/16 v0, 0x1388

    sput v0, Lcom/isw/android/corp/util/GetLocationUtil;->timeoutSocket:I

    .line 40
    const-string v0, "GetLocationUtil"

    sput-object v0, Lcom/isw/android/corp/util/GetLocationUtil;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCellInfo()Lcom/isw/android/corp/bean/CellInfo;
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x3

    .line 99
    new-instance v3, Lcom/isw/android/corp/bean/CellInfo;

    invoke-direct {v3}, Lcom/isw/android/corp/bean/CellInfo;-><init>()V

    .line 100
    .local v3, info:Lcom/isw/android/corp/bean/CellInfo;
    const/4 v5, 0x0

    .line 101
    .local v5, mcc:Ljava/lang/String;
    const/4 v6, 0x0

    .line 102
    .local v6, mnc:Ljava/lang/String;
    const/4 v1, 0x0

    .line 103
    .local v1, cid:I
    const/4 v4, 0x0

    .line 104
    .local v4, lac:I
    sget-object v9, Lcom/isw/android/corp/util/GetLocationUtil;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v8

    .line 105
    .local v8, phoneType:I
    sget-object v9, Lcom/isw/android/corp/util/GetLocationUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "phoneType:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 108
    sget-object v9, Lcom/isw/android/corp/util/GetLocationUtil;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, operator:Ljava/lang/String;
    sget-object v9, Lcom/isw/android/corp/util/GetLocationUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "operator"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v7, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 112
    sget-object v9, Lcom/isw/android/corp/util/GetLocationUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "gsm:mcc"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "mnc"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v9, Lcom/isw/android/corp/util/GetLocationUtil;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 114
    .local v2, gsmCellLocation:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v2, :cond_1

    .line 115
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 116
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    .line 117
    sget-object v9, Lcom/isw/android/corp/util/GetLocationUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "gsm:cid"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "lac"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_0
    const-string v9, "gsm"

    iput-object v9, v3, Lcom/isw/android/corp/bean/CellInfo;->radioType:Ljava/lang/String;

    .line 136
    .end local v2           #gsmCellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .end local v7           #operator:Ljava/lang/String;
    :cond_0
    :goto_1
    iput-object v6, v3, Lcom/isw/android/corp/bean/CellInfo;->mobileNetworkCode:Ljava/lang/String;

    .line 137
    iput-object v5, v3, Lcom/isw/android/corp/bean/CellInfo;->mobileCountryCode:Ljava/lang/String;

    .line 138
    iput v1, v3, Lcom/isw/android/corp/bean/CellInfo;->cellId:I

    .line 139
    iput v4, v3, Lcom/isw/android/corp/bean/CellInfo;->locationAreaCode:I

    .line 140
    .end local v3           #info:Lcom/isw/android/corp/bean/CellInfo;
    :goto_2
    return-object v3

    .line 119
    .restart local v2       #gsmCellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v3       #info:Lcom/isw/android/corp/bean/CellInfo;
    .restart local v7       #operator:Ljava/lang/String;
    :cond_1
    sget-object v9, Lcom/isw/android/corp/util/GetLocationUtil;->TAG:Ljava/lang/String;

    const-string v10, "get gsmCellLocation failed"

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 122
    .end local v2           #gsmCellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .end local v7           #operator:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x2

    if-ne v9, v8, :cond_0

    .line 123
    sget-object v9, Lcom/isw/android/corp/util/GetLocationUtil;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 124
    .local v0, cdmaCellLocation:Landroid/telephony/cdma/CdmaCellLocation;
    if-nez v0, :cond_3

    .line 125
    sget-object v9, Lcom/isw/android/corp/util/GetLocationUtil;->TAG:Ljava/lang/String;

    const-string v10, "get cdmaCellLocation failed"

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v3, 0x0

    goto :goto_2

    .line 128
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 129
    sget-object v9, Lcom/isw/android/corp/util/GetLocationUtil;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    .line 131
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v4

    .line 132
    sget-object v9, Lcom/isw/android/corp/util/GetLocationUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "cdma:mnc:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "mcc:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "cid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "lac:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v9, "cdma"

    iput-object v9, v3, Lcom/isw/android/corp/bean/CellInfo;->radioType:Ljava/lang/String;

    goto :goto_1
.end method

.method private static getCriteria()Landroid/location/Criteria;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 291
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 292
    .local v0, criteria:Landroid/location/Criteria;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 293
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 294
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 295
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 296
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 297
    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 298
    return-object v0
.end method

.method private static getLocByCell(Landroid/content/Context;)Landroid/location/Location;
    .locals 3
    .parameter "context"

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 85
    .local v1, loc:Landroid/location/Location;
    :try_start_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    sput-object v2, Lcom/isw/android/corp/util/GetLocationUtil;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 86
    invoke-static {}, Lcom/isw/android/corp/util/GetLocationUtil;->getCellInfo()Lcom/isw/android/corp/bean/CellInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/isw/android/corp/util/GetLocationUtil;->getLocFromCellInfo(Lcom/isw/android/corp/bean/CellInfo;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 90
    :goto_0
    return-object v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getLocByGps(Landroid/content/Context;)Landroid/location/Location;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    .line 245
    const/4 v1, 0x0

    .line 246
    .local v1, location:Landroid/location/Location;
    invoke-static {}, Lcom/isw/android/corp/util/GetLocationUtil;->getCriteria()Landroid/location/Criteria;

    move-result-object v0

    .line 247
    .local v0, criteria:Landroid/location/Criteria;
    sget-object v5, Lcom/isw/android/corp/util/GetLocationUtil;->lm:Landroid/location/LocationManager;

    invoke-virtual {v5, v0, v8}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, provider:Ljava/lang/String;
    sget-object v5, Lcom/isw/android/corp/util/GetLocationUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getBestProvider:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    if-eqz v3, :cond_1

    .line 250
    sget-object v5, Lcom/isw/android/corp/util/GetLocationUtil;->lm:Landroid/location/LocationManager;

    invoke-virtual {v5, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 287
    :cond_0
    :goto_0
    return-object v1

    .line 252
    :cond_1
    sget-object v5, Lcom/isw/android/corp/util/GetLocationUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getAllProviders:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/isw/android/corp/util/GetLocationUtil;->lm:Landroid/location/LocationManager;

    invoke-virtual {v7}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    sget-object v5, Lcom/isw/android/corp/util/GetLocationUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getProviders:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/isw/android/corp/util/GetLocationUtil;->lm:Landroid/location/LocationManager;

    invoke-virtual {v7, v8}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget-object v5, Lcom/isw/android/corp/util/GetLocationUtil;->lm:Landroid/location/LocationManager;

    invoke-virtual {v5}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v4

    .line 255
    .local v4, providers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 256
    .local v2, pro:Ljava/lang/String;
    move-object v3, v2

    .line 257
    sget-object v6, Lcom/isw/android/corp/util/GetLocationUtil;->lm:Landroid/location/LocationManager;

    invoke-virtual {v6, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 258
    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method public static getLocByWifi(Landroid/content/Context;)Landroid/location/Location;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 303
    sget-object v7, Lcom/isw/android/corp/util/GetLocationUtil;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, wifiMac:Ljava/lang/String;
    sget-object v7, Lcom/isw/android/corp/util/GetLocationUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "WIFI MAC is:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 306
    :cond_0
    sget-object v7, Lcom/isw/android/corp/util/GetLocationUtil;->TAG:Ljava/lang/String;

    const-string v8, "get wifi MAC failed"

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v6

    .line 330
    :goto_0
    return-object v2

    .line 310
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 311
    .local v1, holder:Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 313
    .local v2, loc:Landroid/location/Location;
    :try_start_0
    const-string v7, "version"

    const-string v8, "1.1.0"

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    const-string v7, "host"

    const-string v8, "maps.google.com"

    invoke-virtual {v1, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 317
    .local v3, tower:Lorg/json/JSONObject;
    const-string v7, "mac_address"

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string v7, "signal_strength"

    const/16 v8, 0x8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 319
    const-string v7, "age"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 320
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 321
    .local v4, towerarray:Lorg/json/JSONArray;
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 322
    const-string v7, "wifi_towers"

    invoke-virtual {v1, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    sget-object v7, Lcom/isw/android/corp/util/GetLocationUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "wifi request json:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {v1}, Lcom/isw/android/corp/util/GetLocationUtil;->getLocationFromResponse(Lorg/json/JSONObject;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 326
    .end local v3           #tower:Lorg/json/JSONObject;
    .end local v4           #towerarray:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 327
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v6

    .line 328
    goto :goto_0
.end method

.method private static getLocFromCellInfo(Lcom/isw/android/corp/bean/CellInfo;)Landroid/location/Location;
    .locals 6
    .parameter "cellInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    if-nez p0, :cond_0

    .line 152
    const/4 v3, 0x0

    .line 179
    :goto_0
    return-object v3

    .line 154
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 155
    .local v0, holder:Lorg/json/JSONObject;
    const-string v3, "version"

    const-string v4, "1.1.0"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v3, "host"

    const-string v4, "maps.google.com"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v3, "460"

    iget-object v4, p0, Lcom/isw/android/corp/bean/CellInfo;->mobileCountryCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    const-string v3, "address_language"

    const-string v4, "zh_CN"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    :goto_1
    const-string v3, "request_address"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 163
    const-string v3, "radio_type"

    iget-object v4, p0, Lcom/isw/android/corp/bean/CellInfo;->radioType:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string v3, "home_mobile_country_code"

    iget-object v4, p0, Lcom/isw/android/corp/bean/CellInfo;->mobileCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v3, "home_mobile_network_code"

    iget-object v4, p0, Lcom/isw/android/corp/bean/CellInfo;->mobileNetworkCode:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 168
    .local v1, tower:Lorg/json/JSONObject;
    const-string v3, "mobile_network_code"

    iget-object v4, p0, Lcom/isw/android/corp/bean/CellInfo;->mobileNetworkCode:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string v3, "mobile_country_code"

    iget-object v4, p0, Lcom/isw/android/corp/bean/CellInfo;->mobileCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v3, "cell_id"

    iget v4, p0, Lcom/isw/android/corp/bean/CellInfo;->cellId:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 171
    const-string v3, "location_area_code"

    iget v4, p0, Lcom/isw/android/corp/bean/CellInfo;->locationAreaCode:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    const-string v3, "age"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 173
    const-string v3, "signal_strength"

    const/16 v4, -0x3c

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 174
    const-string v3, "timing_advance"

    const/16 v4, 0x15b3

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 175
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 176
    .local v2, towerarray:Lorg/json/JSONArray;
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 177
    const-string v3, "cell_towers"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    sget-object v3, Lcom/isw/android/corp/util/GetLocationUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cell request json:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {v0}, Lcom/isw/android/corp/util/GetLocationUtil;->getLocationFromResponse(Lorg/json/JSONObject;)Landroid/location/Location;

    move-result-object v3

    goto/16 :goto_0

    .line 160
    .end local v1           #tower:Lorg/json/JSONObject;
    .end local v2           #towerarray:Lorg/json/JSONArray;
    :cond_1
    const-string v3, "address_language"

    const-string v4, "en_US"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_1
.end method

.method public static getLocation(Landroid/content/Context;)Landroid/location/Location;
    .locals 8
    .parameter "context"

    .prologue
    .line 46
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    sput-object v5, Lcom/isw/android/corp/util/GetLocationUtil;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 47
    sget-object v5, Lcom/isw/android/corp/util/GetLocationUtil;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    .line 48
    .local v2, isWifiOn:Z
    const-string v5, "location"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationManager;

    sput-object v5, Lcom/isw/android/corp/util/GetLocationUtil;->lm:Landroid/location/LocationManager;

    .line 49
    sget-object v5, Lcom/isw/android/corp/util/GetLocationUtil;->lm:Landroid/location/LocationManager;

    const-string v6, "gps"

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 50
    .local v0, isGpsOn:Z
    sget-object v5, Lcom/isw/android/corp/util/GetLocationUtil;->lm:Landroid/location/LocationManager;

    const-string v6, "network"

    invoke-virtual {v5, v6}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    .line 51
    .local v1, isNetWorkOn:Z
    sget-object v5, Lcom/isw/android/corp/util/GetLocationUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isWifiOn:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",isGpsOn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",isNetWorkOn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v3, 0x0

    .line 54
    .local v3, loc:Landroid/location/Location;
    invoke-static {p0}, Lcom/isw/android/corp/util/GetLocationUtil;->getLocByCell(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v3

    .line 55
    if-eqz v3, :cond_0

    .line 56
    sget-object v5, Lcom/isw/android/corp/util/GetLocationUtil;->TAG:Ljava/lang/String;

    const-string v6, "get location from cell success!"

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .line 73
    .end local v3           #loc:Landroid/location/Location;
    .local v4, loc:Landroid/location/Location;
    :goto_0
    return-object v4

    .line 59
    .end local v4           #loc:Landroid/location/Location;
    .restart local v3       #loc:Landroid/location/Location;
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    .line 60
    :cond_1
    invoke-static {p0}, Lcom/isw/android/corp/util/GetLocationUtil;->getLocByGps(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v3

    .line 61
    if-eqz v3, :cond_2

    .line 62
    sget-object v5, Lcom/isw/android/corp/util/GetLocationUtil;->TAG:Ljava/lang/String;

    const-string v6, "get location from gps success!"

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .line 63
    .end local v3           #loc:Landroid/location/Location;
    .restart local v4       #loc:Landroid/location/Location;
    goto :goto_0

    .line 66
    .end local v4           #loc:Landroid/location/Location;
    .restart local v3       #loc:Landroid/location/Location;
    :cond_2
    if-eqz v2, :cond_3

    .line 67
    invoke-static {p0}, Lcom/isw/android/corp/util/GetLocationUtil;->getLocByWifi(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v3

    .line 68
    if-eqz v3, :cond_3

    .line 69
    sget-object v5, Lcom/isw/android/corp/util/GetLocationUtil;->TAG:Ljava/lang/String;

    const-string v6, "get location from wifi success!"

    invoke-static {v5, v6}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .line 70
    .end local v3           #loc:Landroid/location/Location;
    .restart local v4       #loc:Landroid/location/Location;
    goto :goto_0

    .end local v4           #loc:Landroid/location/Location;
    .restart local v3       #loc:Landroid/location/Location;
    :cond_3
    move-object v4, v3

    .line 73
    .end local v3           #loc:Landroid/location/Location;
    .restart local v4       #loc:Landroid/location/Location;
    goto :goto_0
.end method

.method private static getLocationFromResponse(Lorg/json/JSONObject;)Landroid/location/Location;
    .locals 22
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 183
    const/4 v9, 0x0

    .line 185
    .local v9, loc:Landroid/location/Location;
    :try_start_0
    new-instance v5, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v5}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 186
    .local v5, httpParameters:Lorg/apache/http/params/BasicHttpParams;
    sget v19, Lcom/isw/android/corp/util/GetLocationUtil;->timeoutConnection:I

    move/from16 v0, v19

    invoke-static {v5, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 187
    sget v19, Lcom/isw/android/corp/util/GetLocationUtil;->timeoutSocket:I

    move/from16 v0, v19

    invoke-static {v5, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 188
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 189
    .local v6, httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    const-string v19, "http://www.google.com/loc/json"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 191
    .local v12, post:Lorg/apache/http/client/methods/HttpPost;
    new-instance v13, Lorg/apache/http/entity/StringEntity;

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 192
    .local v13, query:Lorg/apache/http/entity/StringEntity;
    sget-object v19, Lcom/isw/android/corp/util/GetLocationUtil;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Location send"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v12, v13}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 195
    invoke-virtual {v6, v12}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 196
    .local v14, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    .line 197
    .local v16, state:I
    const/16 v19, 0xc8

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 198
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 199
    .local v4, entity:Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_0

    .line 200
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    .line 201
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 200
    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 202
    .local v2, buffReader:Ljava/io/BufferedReader;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 203
    .local v17, strBuff:Ljava/lang/StringBuffer;
    const/4 v15, 0x0

    .line 204
    .local v15, result:Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_1

    .line 209
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 210
    .local v7, json:Lorg/json/JSONObject;
    new-instance v18, Lorg/json/JSONObject;

    const-string v19, "location"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 212
    .local v18, subjosn:Lorg/json/JSONObject;
    const-string v19, "latitude"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 213
    .local v8, latitude:Ljava/lang/String;
    const-string v19, "longitude"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 214
    .local v11, longitude:Ljava/lang/String;
    sget-object v19, Lcom/isw/android/corp/util/GetLocationUtil;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "latitude:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "longitude"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v10, Landroid/location/Location;

    const-string v19, "network"

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 216
    .end local v9           #loc:Landroid/location/Location;
    .local v10, loc:Landroid/location/Location;
    :try_start_1
    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v10, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 217
    invoke-static {v11}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v10, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 218
    const-string v19, "accuracy"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v10, v0, v1}, Landroid/location/Location;->setTime(J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-object v9, v10

    .end local v2           #buffReader:Ljava/io/BufferedReader;
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #httpParameters:Lorg/apache/http/params/BasicHttpParams;
    .end local v6           #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v7           #json:Lorg/json/JSONObject;
    .end local v8           #latitude:Ljava/lang/String;
    .end local v10           #loc:Landroid/location/Location;
    .end local v11           #longitude:Ljava/lang/String;
    .end local v12           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v13           #query:Lorg/apache/http/entity/StringEntity;
    .end local v14           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #result:Ljava/lang/String;
    .end local v16           #state:I
    .end local v17           #strBuff:Ljava/lang/StringBuffer;
    .end local v18           #subjosn:Lorg/json/JSONObject;
    .restart local v9       #loc:Landroid/location/Location;
    :cond_0
    :goto_1
    move-object/from16 v19, v9

    .line 235
    :goto_2
    return-object v19

    .line 205
    .restart local v2       #buffReader:Ljava/io/BufferedReader;
    .restart local v4       #entity:Lorg/apache/http/HttpEntity;
    .restart local v5       #httpParameters:Lorg/apache/http/params/BasicHttpParams;
    .restart local v6       #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v12       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #query:Lorg/apache/http/entity/StringEntity;
    .restart local v14       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #result:Ljava/lang/String;
    .restart local v16       #state:I
    .restart local v17       #strBuff:Ljava/lang/StringBuffer;
    :cond_1
    :try_start_2
    sget-object v19, Lcom/isw/android/corp/util/GetLocationUtil;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Locaiton reseive"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    .line 222
    .end local v2           #buffReader:Ljava/io/BufferedReader;
    .end local v4           #entity:Lorg/apache/http/HttpEntity;
    .end local v5           #httpParameters:Lorg/apache/http/params/BasicHttpParams;
    .end local v6           #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v12           #post:Lorg/apache/http/client/methods/HttpPost;
    .end local v13           #query:Lorg/apache/http/entity/StringEntity;
    .end local v14           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #result:Ljava/lang/String;
    .end local v16           #state:I
    .end local v17           #strBuff:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v3

    .line 223
    .local v3, e:Lorg/json/JSONException;
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 224
    const/16 v19, 0x0

    goto :goto_2

    .line 225
    .end local v3           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v3

    .line 226
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    :goto_4
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 227
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v3

    .line 228
    .local v3, e:Lorg/apache/http/client/ClientProtocolException;
    :goto_5
    invoke-virtual {v3}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 229
    .end local v3           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_3
    move-exception v3

    .line 230
    .local v3, e:Ljava/io/IOException;
    :goto_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 231
    .end local v3           #e:Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 232
    .local v3, e:Ljava/lang/Exception;
    :goto_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    throw v3

    .line 231
    .end local v3           #e:Ljava/lang/Exception;
    .end local v9           #loc:Landroid/location/Location;
    .restart local v2       #buffReader:Ljava/io/BufferedReader;
    .restart local v4       #entity:Lorg/apache/http/HttpEntity;
    .restart local v5       #httpParameters:Lorg/apache/http/params/BasicHttpParams;
    .restart local v6       #httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .restart local v7       #json:Lorg/json/JSONObject;
    .restart local v8       #latitude:Ljava/lang/String;
    .restart local v10       #loc:Landroid/location/Location;
    .restart local v11       #longitude:Ljava/lang/String;
    .restart local v12       #post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #query:Lorg/apache/http/entity/StringEntity;
    .restart local v14       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #result:Ljava/lang/String;
    .restart local v16       #state:I
    .restart local v17       #strBuff:Ljava/lang/StringBuffer;
    .restart local v18       #subjosn:Lorg/json/JSONObject;
    :catch_5
    move-exception v3

    move-object v9, v10

    .end local v10           #loc:Landroid/location/Location;
    .restart local v9       #loc:Landroid/location/Location;
    goto :goto_7

    .line 229
    .end local v9           #loc:Landroid/location/Location;
    .restart local v10       #loc:Landroid/location/Location;
    :catch_6
    move-exception v3

    move-object v9, v10

    .end local v10           #loc:Landroid/location/Location;
    .restart local v9       #loc:Landroid/location/Location;
    goto :goto_6

    .line 227
    .end local v9           #loc:Landroid/location/Location;
    .restart local v10       #loc:Landroid/location/Location;
    :catch_7
    move-exception v3

    move-object v9, v10

    .end local v10           #loc:Landroid/location/Location;
    .restart local v9       #loc:Landroid/location/Location;
    goto :goto_5

    .line 225
    .end local v9           #loc:Landroid/location/Location;
    .restart local v10       #loc:Landroid/location/Location;
    :catch_8
    move-exception v3

    move-object v9, v10

    .end local v10           #loc:Landroid/location/Location;
    .restart local v9       #loc:Landroid/location/Location;
    goto :goto_4

    .line 222
    .end local v9           #loc:Landroid/location/Location;
    .restart local v10       #loc:Landroid/location/Location;
    :catch_9
    move-exception v3

    move-object v9, v10

    .end local v10           #loc:Landroid/location/Location;
    .restart local v9       #loc:Landroid/location/Location;
    goto :goto_3
.end method
