.class public final Lcom/zte/heartyservice/intercept/Tencent/PhoneInfoUtil;
.super Ljava/lang/Object;
.source "PhoneInfoUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/intercept/Tencent/PhoneInfoUtil$SizeInfo;
    }
.end annotation


# static fields
.field public static final CHINA_MOBILE:I = 0x0

.field public static final CHINA_TELECOM:I = 0x2

.field public static final CHINA_UNICOM:I = 0x1

.field private static ESCAPE_SERVICE:Ljava/lang/String; = null

.field public static final NO_NETOP:I = -0x2

.field public static final OTHER:I = -0x1

.field private static TELEPHONY_REGISTRY:Ljava/lang/String;

.field private static TELEPHONY_SERVICE:Ljava/lang/String;

.field private static sDualSimDevice:Ljava/lang/Boolean;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "tms_"

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/PhoneInfoUtil;->ESCAPE_SERVICE:Ljava/lang/String;

    .line 29
    const-string v0, "[com.android.internal.telephony.ITelephony]"

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/PhoneInfoUtil;->TELEPHONY_SERVICE:Ljava/lang/String;

    .line 31
    const-string v0, "[com.android.internal.telephony.ITelephonyRegistry]"

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/PhoneInfoUtil;->TELEPHONY_REGISTRY:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/PhoneInfoUtil;->sDualSimDevice:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    return-void
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 43
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 44
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, imei:Ljava/lang/String;
    return-object v0
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 69
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 70
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, imsi:Ljava/lang/String;
    return-object v0
.end method

.method public static getLine1Number(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 57
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 58
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, line1Number:Ljava/lang/String;
    return-object v0
.end method

.method public static getMSISDN(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 80
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 81
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, number:Ljava/lang/String;
    return-object v0
.end method

.method public static getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getPhoneStorageSize(Lcom/zte/heartyservice/intercept/Tencent/PhoneInfoUtil$SizeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 225
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/zte/heartyservice/intercept/Tencent/PhoneInfoUtil;->getSizeInfo(Ljava/io/File;Lcom/zte/heartyservice/intercept/Tencent/PhoneInfoUtil$SizeInfo;)V

    .line 226
    return-void
.end method

.method public static getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 112
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v1
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 101
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method public static getSizeInfo(Ljava/io/File;Lcom/zte/heartyservice/intercept/Tencent/PhoneInfoUtil$SizeInfo;)V
    .locals 5
    .parameter "path"
    .parameter "info"

    .prologue
    .line 236
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 238
    .local v2, statfs:Landroid/os/StatFs;
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v0, v3

    .line 239
    .local v0, blockSize:J
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v0

    iput-wide v3, p1, Lcom/zte/heartyservice/intercept/Tencent/PhoneInfoUtil$SizeInfo;->availdSize:J

    .line 240
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v0

    iput-wide v3, p1, Lcom/zte/heartyservice/intercept/Tencent/PhoneInfoUtil$SizeInfo;->totalSize:J

    .line 241
    return-void
.end method

.method public static getSystemStorageSize(Lcom/zte/heartyservice/intercept/Tencent/PhoneInfoUtil$SizeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 232
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/zte/heartyservice/intercept/Tencent/PhoneInfoUtil;->getSizeInfo(Ljava/io/File;Lcom/zte/heartyservice/intercept/Tencent/PhoneInfoUtil$SizeInfo;)V

    .line 233
    return-void
.end method

.method public static hasSIM(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 164
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 165
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
