.class public Lcom/zte/feedback/sdk/ClientInfoReader;
.super Ljava/lang/Object;
.source "ClientInfoReader.java"


# static fields
.field private static final JS_ACCOUNT:Ljava/lang/String; = "account"

.field private static final JS_APPUID:Ljava/lang/String; = "appUid"

.field private static final JS_APPVERCODE:Ljava/lang/String; = "appVerCode"

.field private static final JS_APPVERNAME:Ljava/lang/String; = "appVerName"

.field private static final JS_BRAND:Ljava/lang/String; = "brand"

.field private static final JS_DEVICEID:Ljava/lang/String; = "deviceId"

.field private static final JS_MOBILE_SW_VER:Ljava/lang/String; = "mobileSWVer"

.field private static final JS_MODEL:Ljava/lang/String; = "model"

.field private static final JS_NETWORKTYPE:Ljava/lang/String; = "netType"

.field private static final JS_OPERATOR:Ljava/lang/String; = "operator"

.field private static final JS_OSVERSION:Ljava/lang/String; = "osVer"

.field private static final JS_SUBSCRIBERID:Ljava/lang/String; = "sId"

.field private static final JS_UID:Ljava/lang/String; = "uid"

.field private static account:Ljava/lang/String;

.field private static uid:Ljava/lang/String;


# instance fields
.field private SubscriberId:Ljava/lang/String;

.field private appUid:Ljava/lang/String;

.field private appVersionCode:I

.field private appVersionName:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private networkType:Ljava/lang/String;

.field private operater:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    sput-object v0, Lcom/zte/feedback/sdk/ClientInfoReader;->account:Ljava/lang/String;

    .line 55
    sput-object v0, Lcom/zte/feedback/sdk/ClientInfoReader;->uid:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v6, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->deviceId:Ljava/lang/String;

    .line 47
    iput-object v6, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->SubscriberId:Ljava/lang/String;

    .line 48
    iput-object v6, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->operater:Ljava/lang/String;

    .line 49
    iput-object v6, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->networkType:Ljava/lang/String;

    .line 50
    iput-object v6, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->appUid:Ljava/lang/String;

    .line 51
    iput v7, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->appVersionCode:I

    .line 52
    iput-object v6, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->appVersionName:Ljava/lang/String;

    .line 53
    iput-object v6, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->ip:Ljava/lang/String;

    .line 60
    :try_start_0
    const-string v6, "phone"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 62
    .local v5, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->deviceId:Ljava/lang/String;

    .line 63
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->SubscriberId:Ljava/lang/String;

    .line 64
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->operater:Ljava/lang/String;

    .line 65
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/zte/feedback/sdk/ClientInfoReader;->getNetWorkType(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->networkType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v5           #tm:Landroid/telephony/TelephonyManager;
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 72
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, packageName:Ljava/lang/String;
    const/16 v6, 0x80

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 74
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "appuid"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->appUid:Ljava/lang/String;

    .line 75
    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 76
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v6, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->appVersionName:Ljava/lang/String;

    .line 77
    iget v6, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v6, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->appVersionCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :goto_1
    return-void

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "read phone state failed! exception:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/feedback/sdk/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 79
    .restart local v1       #e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "read appuid failed! exception:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/zte/feedback/sdk/LogHelper;->i(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getNetWorkType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 226
    packed-switch p1, :pswitch_data_0

    .line 256
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 228
    :pswitch_0
    const-string v0, "GPRS"

    goto :goto_0

    .line 230
    :pswitch_1
    const-string v0, "EDGE"

    goto :goto_0

    .line 232
    :pswitch_2
    const-string v0, "UMTS"

    goto :goto_0

    .line 234
    :pswitch_3
    const-string v0, "CDMA"

    goto :goto_0

    .line 236
    :pswitch_4
    const-string v0, "EVDO revision 0"

    goto :goto_0

    .line 238
    :pswitch_5
    const-string v0, "EVDO revision A"

    goto :goto_0

    .line 240
    :pswitch_6
    const-string v0, "EVDO revision B"

    goto :goto_0

    .line 242
    :pswitch_7
    const-string v0, "HSDPA"

    goto :goto_0

    .line 244
    :pswitch_8
    const-string v0, "HSPA"

    goto :goto_0

    .line 246
    :pswitch_9
    const-string v0, "HSUPA"

    goto :goto_0

    .line 248
    :pswitch_a
    const-string v0, "iDen"

    goto :goto_0

    .line 250
    :pswitch_b
    const-string v0, "LTE"

    goto :goto_0

    .line 252
    :pswitch_c
    const-string v0, "eHRPD"

    goto :goto_0

    .line 254
    :pswitch_d
    const-string v0, "1xRTT"

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static setAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 192
    sput-object p0, Lcom/zte/feedback/sdk/ClientInfoReader;->account:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public static setUid(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 196
    sput-object p0, Lcom/zte/feedback/sdk/ClientInfoReader;->uid:Ljava/lang/String;

    .line 197
    return-void
.end method


# virtual methods
.method public readAndroidVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public readAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->appUid:Ljava/lang/String;

    return-object v0
.end method

.method public readAppVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->appVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public readDeviceBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public readDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public readDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public readHandsetSWVersion()Ljava/lang/String;
    .locals 10

    .prologue
    .line 128
    const-string v4, "unknown"

    .line 129
    .local v4, version1:Ljava/lang/String;
    const-string v5, "unknown"

    .line 132
    .local v5, version2:Ljava/lang/String;
    :try_start_0
    const-string v6, "android.os.SystemProperties"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 133
    .local v1, classRef:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v6, "get"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 135
    .local v3, method:Ljava/lang/reflect/Method;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "apps.setting.product.release"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "unknown"

    aput-object v8, v6, v7

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 136
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "ro.build.display.id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "unknown"

    aput-object v8, v6, v7

    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 149
    .end local v1           #classRef:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #method:Ljava/lang/reflect/Method;
    :goto_0
    const-string v6, "unknown"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .end local v4           #version1:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 137
    .restart local v4       #version1:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 138
    .local v2, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 140
    .local v2, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 141
    .end local v2           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 142
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 143
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 144
    .local v2, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 145
    .end local v2           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v2

    .line 146
    .local v2, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .end local v2           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_0
    move-object v4, v5

    .line 149
    goto :goto_1
.end method

.method public readIpAddress()Ljava/lang/String;
    .locals 6

    .prologue
    .line 166
    iget-object v5, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->ip:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 168
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_2

    .line 188
    .end local v1           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->ip:Ljava/lang/String;

    return-object v5

    .line 169
    .restart local v1       #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 170
    .local v4, intf:Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 172
    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_3

    .line 179
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->ip:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 183
    .end local v1           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #intf:Ljava/net/NetworkInterface;
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0
.end method

.method public readSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->SubscriberId:Ljava/lang/String;

    return-object v0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 200
    const/4 v2, 0x0

    .line 201
    .local v2, s:Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 203
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "deviceId"

    iget-object v4, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string v3, "appUid"

    iget-object v4, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->appUid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    const-string v3, "appVerCode"

    iget v4, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->appVersionCode:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 206
    const-string v3, "appVerName"

    iget-object v4, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->appVersionName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    const-string v3, "sId"

    iget-object v4, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->SubscriberId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string v3, "operator"

    iget-object v4, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->operater:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    const-string v3, "netType"

    iget-object v4, p0, Lcom/zte/feedback/sdk/ClientInfoReader;->networkType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    const-string v3, "model"

    invoke-virtual {p0}, Lcom/zte/feedback/sdk/ClientInfoReader;->readDeviceModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string v3, "brand"

    invoke-virtual {p0}, Lcom/zte/feedback/sdk/ClientInfoReader;->readDeviceBrand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string v3, "osVer"

    invoke-virtual {p0}, Lcom/zte/feedback/sdk/ClientInfoReader;->readAndroidVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v3, "mobileSWVer"

    invoke-virtual {p0}, Lcom/zte/feedback/sdk/ClientInfoReader;->readHandsetSWVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    const-string v3, "account"

    sget-object v4, Lcom/zte/feedback/sdk/ClientInfoReader;->account:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string v3, "uid"

    sget-object v4, Lcom/zte/feedback/sdk/ClientInfoReader;->uid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 222
    :goto_0
    return-object v2

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
