.class public Lcom/zte/heartyservice/power/RemainingTimeCalculate;
.super Ljava/lang/Object;
.source "RemainingTimeCalculate.java"


# static fields
.field private static final COMSUMPTION_KEY:Ljava/lang/String; = "powersaving_consumption"

.field private static CONSUMPTION_AUTOSYNC:D = 0.0

.field private static CONSUMPTION_BACKLIGHT_0:D = 0.0

.field private static CONSUMPTION_BACKLIGHT_100:D = 0.0

.field private static CONSUMPTION_BLUETOOTH:D = 0.0

.field private static CONSUMPTION_CALL:D = 0.0

.field private static CONSUMPTION_FEEDBACK:D = 0.0

.field private static CONSUMPTION_GPS:D = 0.0

.field private static CONSUMPTION_IDLE:D = 0.0

.field private static CONSUMPTION_INTERNET:D = 0.0

.field private static CONSUMPTION_LOCKWAITING_RATIO:D = 0.0

.field private static CONSUMPTION_MOBILEDATA:D = 0.0

.field private static CONSUMPTION_MUSIC:D = 0.0

.field private static CONSUMPTION_NETWORK:D = 0.0

.field private static CONSUMPTION_VIDEO:D = 0.0

.field private static CONSUMPTION_WIFI:D = 0.0

.field public static OPERATION_CALL:I = 0x0

.field public static OPERATION_IDLE:I = 0x0

.field public static OPERATION_INTERNET:I = 0x0

.field public static OPERATION_MUSIC:I = 0x0

.field public static OPERATION_VIDEO:I = 0x0

.field public static final POWER_MODE_1:I = 0x0

.field public static final POWER_MODE_2:I = 0x1

.field public static final POWER_MODE_3:I = 0x2

.field public static final POWER_MODE_4:I = 0x3

.field private static final TAG:Ljava/lang/String; = "RemainingTimeCalculate"

.field private static awakeRatio:D = 0.0

.field private static consumptionArray:[D = null

.field private static final consumptionCount:I = 0x11

.field private static consumptionValues:Ljava/lang/String; = null

.field private static continuationRatio:D = 0.0

.field private static final debug:Z = true

.field private static instance:Lcom/zte/heartyservice/power/RemainingTimeCalculate;


# instance fields
.field private batteryCapacity:I

.field private idleConsumption:D

.field private mContext:Landroid/content/Context;

.field private powerMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/high16 v6, 0x4024

    const-wide/high16 v4, 0x4018

    const-wide/high16 v2, 0x402e

    .line 17
    sput v8, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->OPERATION_CALL:I

    .line 18
    sput v9, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->OPERATION_MUSIC:I

    .line 19
    const/4 v0, 0x2

    sput v0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->OPERATION_INTERNET:I

    .line 20
    const/4 v0, 0x3

    sput v0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->OPERATION_VIDEO:I

    .line 21
    const/4 v0, 0x4

    sput v0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->OPERATION_IDLE:I

    .line 28
    const-wide/high16 v0, 0x4069

    sput-wide v0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_CALL:D

    .line 29
    const-wide v0, 0x4045800000000000L

    sput-wide v0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_MUSIC:D

    .line 30
    const-wide v0, 0x406ec00000000000L

    sput-wide v0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_INTERNET:D

    .line 31
    const-wide v0, 0x4071b00000000000L

    sput-wide v0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_VIDEO:D

    .line 32
    sput-wide v4, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_IDLE:D

    .line 34
    sput-wide v4, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_NETWORK:D

    .line 35
    sput-wide v6, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_MOBILEDATA:D

    .line 36
    sput-wide v2, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_WIFI:D

    .line 37
    sput-wide v2, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_GPS:D

    .line 38
    const-wide/high16 v0, 0x403e

    sput-wide v0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_BACKLIGHT_0:D

    .line 39
    const-wide/high16 v0, 0x4079

    sput-wide v0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_BACKLIGHT_100:D

    .line 40
    const-wide/high16 v0, 0x3ff0

    sput-wide v0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_LOCKWAITING_RATIO:D

    .line 41
    const-wide/high16 v0, 0x4014

    sput-wide v0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_FEEDBACK:D

    .line 42
    sput-wide v2, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_BLUETOOTH:D

    .line 43
    sput-wide v6, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_AUTOSYNC:D

    .line 45
    const-wide v0, 0x3fa999999999999aL

    sput-wide v0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->continuationRatio:D

    .line 46
    const-wide v0, 0x3fd3333333333333L

    sput-wide v0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->awakeRatio:D

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->consumptionValues:Ljava/lang/String;

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [D

    sget-wide v1, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_CALL:D

    aput-wide v1, v0, v8

    sget-wide v1, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_MUSIC:D

    aput-wide v1, v0, v9

    const/4 v1, 0x2

    sget-wide v2, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_INTERNET:D

    aput-wide v2, v0, v1

    const/4 v1, 0x3

    sget-wide v2, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_VIDEO:D

    aput-wide v2, v0, v1

    const/4 v1, 0x4

    sget-wide v2, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_IDLE:D

    aput-wide v2, v0, v1

    sput-object v0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->consumptionArray:[D

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v1, 0x708

    iput v1, p0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->batteryCapacity:I

    .line 66
    const/4 v1, -0x1

    iput v1, p0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->powerMode:I

    .line 67
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->idleConsumption:D

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->mContext:Landroid/content/Context;

    .line 71
    new-instance v1, Lcom/android/internal/os/PowerProfile;

    iget-object v2, p0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v1

    double-to-int v0, v1

    .line 72
    .local v0, capacity:I
    iget v1, p0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->batteryCapacity:I

    if-le v0, v1, :cond_0

    .line 73
    iput v0, p0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->batteryCapacity:I

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->initConsumption()V

    .line 76
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/power/RemainingTimeCalculate;
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    sget-object v0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->instance:Lcom/zte/heartyservice/power/RemainingTimeCalculate;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/power/RemainingTimeCalculate;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->instance:Lcom/zte/heartyservice/power/RemainingTimeCalculate;

    .line 82
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->instance:Lcom/zte/heartyservice/power/RemainingTimeCalculate;

    return-object v0
.end method

.method private initConsumption()V
    .locals 3

    .prologue
    .line 86
    sget-object v1, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->consumptionValues:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 87
    const-string v1, "powersaving_consumption"

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->parseCustomizeFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->consumptionValues:Ljava/lang/String;

    .line 89
    :cond_0
    sget-object v1, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->consumptionValues:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 92
    :cond_2
    sget-object v1, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->consumptionValues:Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, cValues:[Ljava/lang/String;
    array-length v1, v0

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    .line 95
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sput-wide v1, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_CALL:D

    .line 96
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sput-wide v1, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_MUSIC:D

    .line 97
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sput-wide v1, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_INTERNET:D

    .line 98
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sput-wide v1, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_VIDEO:D

    .line 99
    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sput-wide v1, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_IDLE:D

    .line 100
    const/4 v1, 0x5

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sput-wide v1, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_NETWORK:D

    .line 101
    const/4 v1, 0x6

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sput-wide v1, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_MOBILEDATA:D

    .line 102
    const/4 v1, 0x7

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sput-wide v1, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_WIFI:D

    .line 103
    const/16 v1, 0x8

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sput-wide v1, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_GPS:D

    .line 104
    const/16 v1, 0x9

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sput-wide v1, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_BACKLIGHT_0:D

    .line 105
    const/16 v1, 0xa

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sput-wide v1, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_BACKLIGHT_100:D

    .line 106
    const/16 v1, 0xb

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sput-wide v1, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_LOCKWAITING_RATIO:D

    .line 107
    const/16 v1, 0xc

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sput-wide v1, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_FEEDBACK:D

    .line 108
    const/16 v1, 0xd

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sput-wide v1, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_BLUETOOTH:D

    .line 109
    const/16 v1, 0xe

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sput-wide v1, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_AUTOSYNC:D

    .line 110
    const/16 v1, 0xf

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sput-wide v1, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->continuationRatio:D

    .line 111
    const/16 v1, 0x10

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sput-wide v1, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->awakeRatio:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 112
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method


# virtual methods
.method public getConsumption()D
    .locals 20

    .prologue
    .line 149
    sget-wide v9, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_IDLE:D

    .line 151
    .local v9, consumption:D
    const/4 v13, 0x0

    .line 153
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/zte/heartyservice/power/Modes$ModeColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 155
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->powerMode:I

    if-le v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->powerMode:I

    if-gez v2, :cond_1

    .line 156
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->loadPowerMode()V

    .line 158
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->powerMode:I

    invoke-interface {v13, v2}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_3

    .line 227
    if-eqz v13, :cond_2

    .line 228
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    move-wide v11, v9

    .end local v9           #consumption:D
    .local v11, consumption:D
    :goto_0
    return-wide v11

    .line 162
    .end local v11           #consumption:D
    .restart local v9       #consumption:D
    :cond_3
    :try_start_1
    const-string v2, "base_net"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 163
    sget-wide v2, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_NETWORK:D

    add-double/2addr v9, v2

    .line 164
    const-string v2, "RemainingTimeCalculate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consumption + CONSUMPTION_NETWORK:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_NETWORK:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_4
    const-string v2, "net_data"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 168
    sget-wide v2, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_MOBILEDATA:D

    add-double/2addr v9, v2

    .line 169
    const-string v2, "RemainingTimeCalculate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consumption + CONSUMPTION_MOBILEDATA:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_MOBILEDATA:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_5
    const-string v2, "wifi"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 173
    sget-wide v2, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_WIFI:D

    add-double/2addr v9, v2

    .line 174
    const-string v2, "RemainingTimeCalculate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consumption + CONSUMPTION_WIFI:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_WIFI:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_6
    const-string v2, "gps"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 178
    sget-wide v2, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_GPS:D

    add-double/2addr v9, v2

    .line 179
    const-string v2, "RemainingTimeCalculate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consumption + CONSUMPTION_GPS:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_GPS:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_7
    const-string v2, "timeout"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 183
    .local v15, timeout:I
    const-wide/16 v16, 0x0

    .line 184
    .local v16, timeoutRatio:D
    const-string v2, "RemainingTimeCalculate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consumption timeout:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    if-lez v15, :cond_8

    const v2, 0x1b7740

    if-gt v15, v2, :cond_8

    .line 186
    sget-wide v2, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_LOCKWAITING_RATIO:D

    int-to-double v4, v15

    mul-double/2addr v2, v4

    const-wide v4, 0x413b774000000000L

    sget-wide v6, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->awakeRatio:D

    mul-double/2addr v4, v6

    div-double v16, v2, v4

    .line 187
    const-wide/high16 v2, 0x3ff0

    cmpl-double v2, v16, v2

    if-lez v2, :cond_8

    .line 188
    const-wide/high16 v16, 0x3ff0

    .line 192
    :cond_8
    const-string v2, "brightness"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 193
    .local v8, backLight:I
    const-string v2, "RemainingTimeCalculate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consumption backLight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const-string v2, "brightness_auto"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_e

    .line 195
    sget-wide v2, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_BACKLIGHT_0:D

    sget-wide v4, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_BACKLIGHT_100:D

    sget-wide v6, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_BACKLIGHT_0:D

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4000

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double v2, v2, v16

    add-double/2addr v9, v2

    .line 196
    const-string v2, "RemainingTimeCalculate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consumption + CONSUMPTION_BACKLIGHT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_BACKLIGHT_0:D

    sget-wide v6, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_BACKLIGHT_100:D

    sget-wide v18, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_BACKLIGHT_0:D

    sub-double v6, v6, v18

    const-wide/high16 v18, 0x4000

    div-double v6, v6, v18

    add-double/2addr v4, v6

    mul-double v4, v4, v16

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_9
    :goto_1
    const-string v2, "feedback"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 208
    sget-wide v2, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_FEEDBACK:D

    add-double/2addr v9, v2

    .line 209
    const-string v2, "RemainingTimeCalculate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consumption + CONSUMPTION_FEEDBACK:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_FEEDBACK:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_a
    const-string v2, "bluetooth"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 213
    sget-wide v2, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_BLUETOOTH:D

    add-double/2addr v9, v2

    .line 214
    const-string v2, "RemainingTimeCalculate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consumption + CONSUMPTION_BLUETOOTH:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_BLUETOOTH:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_b
    const-string v2, "sync"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 218
    sget-wide v2, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_AUTOSYNC:D

    add-double/2addr v9, v2

    .line 219
    const-string v2, "RemainingTimeCalculate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consumption + CONSUMPTION_AUTOSYNC:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_AUTOSYNC:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_c
    const-string v2, "RemainingTimeCalculate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "liuji debug consumption:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 227
    if-eqz v13, :cond_d

    .line 228
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_d
    move-wide v11, v9

    .end local v9           #consumption:D
    .restart local v11       #consumption:D
    goto/16 :goto_0

    .line 197
    .end local v11           #consumption:D
    .restart local v9       #consumption:D
    :cond_e
    if-ltz v8, :cond_9

    .line 198
    :try_start_2
    sget-wide v2, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_BACKLIGHT_0:D

    sget-wide v4, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_BACKLIGHT_100:D

    sget-wide v6, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_BACKLIGHT_0:D

    sub-double/2addr v4, v6

    int-to-double v6, v8

    mul-double/2addr v4, v6

    const-wide v6, 0x406fe00000000000L

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    mul-double v2, v2, v16

    add-double/2addr v9, v2

    .line 202
    const-string v2, "RemainingTimeCalculate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "consumption + CONSUMPTION_BACKLIGHT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_BACKLIGHT_0:D

    sget-wide v6, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_BACKLIGHT_100:D

    sget-wide v18, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_BACKLIGHT_0:D

    sub-double v6, v6, v18

    int-to-double v0, v8

    move-wide/from16 v18, v0

    mul-double v6, v6, v18

    const-wide v18, 0x406fe00000000000L

    div-double v6, v6, v18

    add-double/2addr v4, v6

    mul-double v4, v4, v16

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 223
    .end local v8           #backLight:I
    .end local v15           #timeout:I
    .end local v16           #timeoutRatio:D
    :catch_0
    move-exception v14

    .line 224
    .local v14, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    if-eqz v13, :cond_f

    .line 228
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_f
    move-wide v11, v9

    .end local v9           #consumption:D
    .restart local v11       #consumption:D
    goto/16 :goto_0

    .line 227
    .end local v11           #consumption:D
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v9       #consumption:D
    :catchall_0
    move-exception v2

    if-eqz v13, :cond_10

    .line 228
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v2
.end method

.method public getOperationTime(II)D
    .locals 8
    .parameter "batteryLevel"
    .parameter "operation"

    .prologue
    const-wide/16 v4, 0x0

    .line 133
    iget v6, p0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->batteryCapacity:I

    mul-int/2addr v6, p1

    div-int/lit8 v6, v6, 0x64

    int-to-double v2, v6

    .line 134
    .local v2, currentPower:D
    const-wide/16 v0, 0x0

    .line 135
    .local v0, consumption:D
    sget v6, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->OPERATION_IDLE:I

    if-eq p2, v6, :cond_0

    .line 136
    sget-object v6, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->consumptionArray:[D

    aget-wide v0, v6, p2

    .line 138
    :cond_0
    iget-wide v6, p0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->idleConsumption:D

    cmpg-double v6, v6, v4

    if-gtz v6, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->getConsumption()D

    move-result-wide v6

    iput-wide v6, p0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->idleConsumption:D

    .line 141
    :cond_1
    iget-wide v6, p0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->idleConsumption:D

    add-double/2addr v0, v6

    .line 142
    cmpl-double v6, v0, v4

    if-lez v6, :cond_2

    .line 143
    div-double v4, v2, v0

    .line 145
    :cond_2
    return-wide v4
.end method

.method public getRemainingTime(I)D
    .locals 8
    .parameter "batteryLevel"

    .prologue
    const-wide/16 v2, 0x0

    .line 234
    iget v4, p0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->batteryCapacity:I

    mul-int/2addr v4, p1

    div-int/lit8 v4, v4, 0x64

    int-to-double v0, v4

    .line 235
    .local v0, currentPower:D
    iget-wide v4, p0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->idleConsumption:D

    cmpg-double v4, v4, v2

    if-gtz v4, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->getConsumption()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->idleConsumption:D

    .line 238
    :cond_0
    iget-wide v4, p0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->idleConsumption:D

    cmpl-double v4, v4, v2

    if-lez v4, :cond_1

    .line 239
    iget-wide v2, p0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->idleConsumption:D

    sget-wide v4, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_CALL:D

    sget-wide v6, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_MUSIC:D

    add-double/2addr v4, v6

    sget-wide v6, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_INTERNET:D

    add-double/2addr v4, v6

    sget-wide v6, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->CONSUMPTION_VIDEO:D

    add-double/2addr v4, v6

    sget-wide v6, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->continuationRatio:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    div-double v2, v0, v2

    .line 244
    :cond_1
    return-wide v2
.end method

.method public loadPowerMode()V
    .locals 4

    .prologue
    .line 127
    iget-object v1, p0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->mContext:Landroid/content/Context;

    const-string v2, "powermanager"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 129
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "current_mode_id"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->powerMode:I

    .line 130
    return-void
.end method

.method public setBatteryCapacity(I)V
    .locals 0
    .parameter "capacity"

    .prologue
    .line 118
    iput p1, p0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->batteryCapacity:I

    .line 119
    return-void
.end method

.method public setPowerMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 122
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->powerMode:I

    .line 123
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->getConsumption()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/heartyservice/power/RemainingTimeCalculate;->idleConsumption:D

    .line 124
    return-void
.end method
