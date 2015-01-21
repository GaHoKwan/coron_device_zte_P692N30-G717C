.class public final Ltmsdk/common/utils/PhoneInfoUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/common/utils/PhoneInfoUtil$SizeInfo;,
        Ltmsdk/common/utils/PhoneInfoUtil$CPUScaleListener;
    }
.end annotation


# static fields
.field public static final CHINA_MOBILE:I = 0x0

.field public static final CHINA_TELECOM:I = 0x2

.field public static final CHINA_UNICOM:I = 0x1

.field private static Ef:Ljava/lang/String; = null

.field private static Eg:Ljava/lang/String; = null

.field private static Eh:Ljava/lang/Boolean; = null

.field public static final NO_NETOP:I = -0x2

.field public static final OTHER:I = -0x1

.field private static TELEPHONY_SERVICE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 450
    const-string v0, "tms_"

    sput-object v0, Ltmsdk/common/utils/PhoneInfoUtil;->Ef:Ljava/lang/String;

    .line 452
    const-string v0, "[com.android.internal.telephony.ITelephony]"

    sput-object v0, Ltmsdk/common/utils/PhoneInfoUtil;->TELEPHONY_SERVICE:Ljava/lang/String;

    .line 454
    const-string v0, "[com.android.internal.telephony.ITelephonyRegistry]"

    sput-object v0, Ltmsdk/common/utils/PhoneInfoUtil;->Eg:Ljava/lang/String;

    .line 456
    const/4 v0, 0x0

    sput-object v0, Ltmsdk/common/utils/PhoneInfoUtil;->Eh:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    return-void
.end method

.method public static Call(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "number"

    .prologue
    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 190
    .local v1, telUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 191
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 193
    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "dipValue"

    .prologue
    .line 431
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 432
    .local v0, scale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getAndoidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string v0, "android_id"

    return-object v0
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getCPUscale(Ltmsdk/common/utils/PhoneInfoUtil$CPUScaleListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 305
    const-class v1, Ltmsdk/common/utils/PhoneInfoUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ltmsdkobf/ig;->cN()Ltmsdkobf/ij;

    move-result-object v0

    new-instance v2, Ltmsdk/common/utils/PhoneInfoUtil$1;

    invoke-direct {v2, p0}, Ltmsdk/common/utils/PhoneInfoUtil$1;-><init>(Ltmsdk/common/utils/PhoneInfoUtil$CPUScaleListener;)V

    const-string v3, "getCPUscaleThread"

    invoke-virtual {v0, v2, v3}, Ltmsdkobf/ij;->c(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    monitor-exit v1

    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getICCID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 125
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 126
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, number:Ljava/lang/String;
    return-object v0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 65
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 66
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, imei:Ljava/lang/String;
    return-object v0
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 79
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 80
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, imsi:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 82
    const-string v0, "000000000000000"

    .line 85
    .end local v0           #imsi:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getMAC(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 108
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 109
    .local v2, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 110
    .local v0, info:Landroid/net/wifi/WifiInfo;
    const/4 v1, 0x0

    .line 111
    .local v1, mac:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 114
    :cond_0
    return-object v1
.end method

.method public static getMSISDN(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 96
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 97
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, number:Ljava/lang/String;
    return-object v0
.end method

.method public static getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkOperatorCode(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, -0x2

    .line 219
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 220
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Ltmsdk/common/utils/PhoneInfoUtil;->hasSIM(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, networdoperator:Ljava/lang/String;
    const-string v3, "46000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46007"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    :cond_0
    const/4 v2, 0x0

    .line 241
    .end local v0           #networdoperator:Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 224
    .restart local v0       #networdoperator:Ljava/lang/String;
    :cond_2
    const-string v3, "46001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 225
    const/4 v2, 0x1

    goto :goto_0

    .line 226
    :cond_3
    const-string v3, "46003"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 227
    const/4 v2, 0x2

    goto :goto_0

    .line 228
    :cond_4
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 229
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getOper(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 537
    invoke-static {p0}, Ltmsdk/common/utils/PhoneInfoUtil;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, imsi:Ljava/lang/String;
    invoke-static {v0}, Ltmsdk/common/utils/SimUtil;->getMccMncType(Ljava/lang/String;)I

    move-result v1

    .line 539
    .local v1, mmcMnc:I
    return v1
.end method

.method public static getPhoneStorageSize(Ltmsdk/common/utils/PhoneInfoUtil$SizeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 283
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Ltmsdk/common/utils/PhoneInfoUtil;->getSizeInfo(Ljava/io/File;Ltmsdk/common/utils/PhoneInfoUtil$SizeInfo;)V

    .line 284
    return-void
.end method

.method public static getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 178
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 166
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method public static getSizeInfo(Ljava/io/File;Ltmsdk/common/utils/PhoneInfoUtil$SizeInfo;)V
    .locals 5
    .parameter "path"
    .parameter "info"

    .prologue
    .line 382
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 384
    .local v2, statfs:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v0, v3

    .line 385
    .local v0, blockSize:J
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v0

    iput-wide v3, p1, Ltmsdk/common/utils/PhoneInfoUtil$SizeInfo;->availdSize:J

    .line 386
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v0

    iput-wide v3, p1, Ltmsdk/common/utils/PhoneInfoUtil$SizeInfo;->totalSize:J

    .line 387
    return-void
.end method

.method public static getStorageCardSize(Ltmsdk/common/utils/PhoneInfoUtil$SizeInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    const-wide/16 v1, 0x0

    .line 268
    invoke-static {}, Ltmsdkobf/jv;->hasStorageCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Ltmsdk/common/utils/PhoneInfoUtil;->getSizeInfo(Ljava/io/File;Ltmsdk/common/utils/PhoneInfoUtil$SizeInfo;)V

    .line 274
    :goto_0
    return-void

    .line 271
    :cond_0
    iput-wide v1, p0, Ltmsdk/common/utils/PhoneInfoUtil$SizeInfo;->availdSize:J

    .line 272
    iput-wide v1, p0, Ltmsdk/common/utils/PhoneInfoUtil$SizeInfo;->totalSize:J

    goto :goto_0
.end method

.method public static getVersionIncremental()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersionRelease()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static hasSIM(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 256
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 257
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eq v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDualSimDevice()Z
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 465
    sget-object v8, Ltmsdk/common/utils/PhoneInfoUtil;->Eh:Ljava/lang/Boolean;

    if-nez v8, :cond_5

    .line 467
    const/4 v8, 0x2

    :try_start_0
    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "service"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "list"

    aput-object v10, v8, v9

    invoke-static {v8}, Ltmsdk/common/utils/ScriptHelper;->exec([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 468
    .local v5, resultCode:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 469
    .local v7, telephonyServiceCounter:I
    const/4 v6, 0x0

    .line 470
    .local v6, telephonyRegistryCounter:I
    if-eqz v5, :cond_8

    array-length v8, v5

    if-lez v8, :cond_8

    .line 471
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 472
    .local v4, line:Ljava/lang/String;
    sget-object v8, Ltmsdk/common/utils/PhoneInfoUtil;->Ef:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 471
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 474
    :cond_1
    sget-object v8, Ltmsdk/common/utils/PhoneInfoUtil;->TELEPHONY_SERVICE:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 475
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 476
    :cond_2
    sget-object v8, Ltmsdk/common/utils/PhoneInfoUtil;->Eg:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 477
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 480
    .end local v4           #line:Ljava/lang/String;
    :cond_3
    if-gt v7, v12, :cond_4

    if-le v6, v12, :cond_7

    .line 482
    :cond_4
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    sput-object v8, Ltmsdk/common/utils/PhoneInfoUtil;->Eh:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_5
    :goto_2
    sget-object v8, Ltmsdk/common/utils/PhoneInfoUtil;->Eh:Ljava/lang/Boolean;

    if-nez v8, :cond_6

    .line 495
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    sput-object v8, Ltmsdk/common/utils/PhoneInfoUtil;->Eh:Ljava/lang/Boolean;

    .line 497
    :cond_6
    sget-object v8, Ltmsdk/common/utils/PhoneInfoUtil;->Eh:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    return v8

    .line 484
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_7
    const/4 v8, 0x0

    :try_start_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    sput-object v8, Ltmsdk/common/utils/PhoneInfoUtil;->Eh:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 490
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catch_0
    move-exception v1

    .line 491
    .local v1, e:Ljava/lang/Exception;
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    sput-object v8, Ltmsdk/common/utils/PhoneInfoUtil;->Eh:Ljava/lang/Boolean;

    goto :goto_2

    .line 488
    .end local v1           #e:Ljava/lang/Exception;
    :cond_8
    const/4 v8, 0x0

    :try_start_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    sput-object v8, Ltmsdk/common/utils/PhoneInfoUtil;->Eh:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public static isPhoneCallActive()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 200
    invoke-static {}, Ltmsdk/common/DualSimTelephonyManager;->getDefaultTelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 201
    .local v0, defaultTelephony:Lcom/android/internal/telephony/ITelephony;
    invoke-static {}, Ltmsdk/common/DualSimTelephonyManager;->getSecondTelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 203
    .local v2, secondTelephony:Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 207
    :cond_1
    :goto_0
    return v3

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "PhoneInfoUtil"

    const-string v5, "isPhoneCallActive"

    invoke-static {v4, v5, v1}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "pxValue"

    .prologue
    .line 445
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 446
    .local v0, scale:F
    div-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method
