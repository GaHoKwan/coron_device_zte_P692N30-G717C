.class public Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;
.super Ljava/lang/Object;
.source "LeftChargingTimeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/power/LeftChargingTimeCalculator$1;,
        Lcom/zte/heartyservice/power/LeftChargingTimeCalculator$ChargingReceiver;
    }
.end annotation


# static fields
.field private static final CHARGING_PER_LEVEL_TIME_PREFERENCES:Ljava/lang/String; = "charging_per_level_time"

.field private static final TAG:Ljava/lang/String; = "LeftChargingTimeCalculator"

.field private static sChargingNextLevelup:Z

.field private static sLastBatteryStatus:I

.field private static sLastChargingLevel:I

.field private static sLastChargingTime:J

.field private static sLastChargingType:I

.field private static sReceiver:Lcom/zte/heartyservice/power/LeftChargingTimeCalculator$ChargingReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 19
    sput-boolean v3, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->sChargingNextLevelup:Z

    .line 20
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->sLastChargingTime:J

    .line 21
    sput v3, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->sLastChargingType:I

    .line 22
    sput v2, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->sLastChargingLevel:I

    .line 23
    sput v2, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->sLastBatteryStatus:I

    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->sReceiver:Lcom/zte/heartyservice/power/LeftChargingTimeCalculator$ChargingReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->sLastBatteryStatus:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    sput p0, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->sLastBatteryStatus:I

    return p0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->sLastChargingLevel:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    sput p0, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->sLastChargingLevel:I

    return p0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->sLastChargingType:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    sput p0, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->sLastChargingType:I

    return p0
.end method

.method static synthetic access$300()J
    .locals 2

    .prologue
    .line 17
    sget-wide v0, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->sLastChargingTime:J

    return-wide v0
.end method

.method static synthetic access$302(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    sput-wide p0, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->sLastChargingTime:J

    return-wide p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->sChargingNextLevelup:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    sput-boolean p0, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->sChargingNextLevelup:Z

    return p0
.end method

.method public static getLeftChargingTime(Landroid/content/Context;II)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "plugType"
    .parameter "curlevel"

    .prologue
    const/4 v8, 0x0

    const/16 v12, 0x3c

    const/4 v11, 0x0

    .line 125
    const-string v9, "charging_per_level_time"

    invoke-virtual {p0, v9, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 128
    .local v6, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 130
    .local v1, chargingPerLevelTime:I
    if-gtz v1, :cond_1

    .line 131
    invoke-static {}, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->startLeftChargingTimeCalculator()V

    .line 168
    :cond_0
    :goto_0
    return-object v8

    .line 135
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "statistics"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 137
    .local v7, statistics:I
    const/16 v9, 0x2710

    if-ge v7, v9, :cond_2

    .line 138
    invoke-static {}, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->startLeftChargingTimeCalculator()V

    .line 141
    :cond_2
    if-ltz p2, :cond_0

    const/16 v9, 0x64

    if-ge p2, v9, :cond_0

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 143
    .local v4, res:Landroid/content/res/Resources;
    rsub-int/lit8 v8, p2, 0x64

    mul-int v5, v8, v1

    .line 144
    .local v5, seconds:I
    const/4 v3, 0x1

    .line 145
    .local v3, minutes:I
    const/4 v2, 0x0

    .line 146
    .local v2, hours:I
    if-le v5, v12, :cond_3

    .line 147
    div-int/lit8 v8, v5, 0x3c

    add-int/lit8 v3, v8, 0x1

    .line 150
    :cond_3
    if-lt v3, v12, :cond_4

    .line 151
    div-int/lit8 v2, v3, 0x3c

    .line 152
    rem-int/lit8 v3, v3, 0x3c

    .line 155
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const v8, 0x7f0a051e

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, builder:Ljava/lang/StringBuilder;
    if-lez v2, :cond_5

    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0a051b

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_5
    if-lez v3, :cond_6

    .line 163
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0a051c

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method private static startLeftChargingTimeCalculator()V
    .locals 3

    .prologue
    .line 108
    sget-object v1, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->sReceiver:Lcom/zte/heartyservice/power/LeftChargingTimeCalculator$ChargingReceiver;

    if-nez v1, :cond_0

    .line 109
    new-instance v1, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator$ChargingReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator$ChargingReceiver;-><init>(Lcom/zte/heartyservice/power/LeftChargingTimeCalculator$1;)V

    sput-object v1, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->sReceiver:Lcom/zte/heartyservice/power/LeftChargingTimeCalculator$ChargingReceiver;

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, filter:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    sget-object v2, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->sReceiver:Lcom/zte/heartyservice/power/LeftChargingTimeCalculator$ChargingReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    :cond_0
    return-void
.end method

.method public static stopLeftChargingTimeCalculator()V
    .locals 2

    .prologue
    .line 117
    sget-object v0, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->sReceiver:Lcom/zte/heartyservice/power/LeftChargingTimeCalculator$ChargingReceiver;

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    sget-object v1, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->sReceiver:Lcom/zte/heartyservice/power/LeftChargingTimeCalculator$ChargingReceiver;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->sReceiver:Lcom/zte/heartyservice/power/LeftChargingTimeCalculator$ChargingReceiver;

    .line 121
    :cond_0
    return-void
.end method
