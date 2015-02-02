.class Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;
.super Ljava/lang/Object;
.source "WiFiTx6620.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/wifi/WiFiTx6620;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RateInfo"
.end annotation


# static fields
.field private static final EEPROM_RATE_GROUP_CCK:S = 0x0s

.field private static final EEPROM_RATE_GROUP_OFDM_12_18M:S = 0x2s

.field private static final EEPROM_RATE_GROUP_OFDM_24_36M:S = 0x3s

.field private static final EEPROM_RATE_GROUP_OFDM_48_54M:S = 0x4s

.field private static final EEPROM_RATE_GROUP_OFDM_6_9M:S = 0x1s

.field private static final EEPROM_RATE_GROUP_OFDM_MCS0_32:S = 0x5s


# instance fields
.field mOFDMStartIndex:I

.field private final mPszRate:[Ljava/lang/String;

.field private final mRateCfg:[I

.field mRateIndex:I

.field private final mUcRateGroupEep:[S


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x0

    const/16 v3, 0x15

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mRateIndex:I

    .line 166
    iput v4, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mOFDMStartIndex:I

    .line 168
    new-array v0, v3, [S

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mUcRateGroupEep:[S

    .line 181
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "1M"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "2M"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "5.5M"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "11M"

    aput-object v2, v0, v1

    const-string v1, "6M"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "9M"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "12M"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "18M"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "24M"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "36M"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "48M"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "54M"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "MCS0"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "MCS1"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "MCS2"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "MCS3"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "MCS4"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MCS5"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "MCS6"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "MCS7"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "MCS32"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mPszRate:[Ljava/lang/String;

    .line 189
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mRateCfg:[I

    return-void

    .line 168
    :array_0
    .array-data 0x2
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
    .end array-data

    .line 189
    nop

    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mPszRate:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method getRate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mPszRate:[Ljava/lang/String;

    iget v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mRateIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method getRateCfg()I
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mRateCfg:[I

    iget v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mRateIndex:I

    aget v0, v0, v1

    return v0
.end method

.method getRateNumber()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mPszRate:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method getUcRateGroupEep()I
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mUcRateGroupEep:[S

    iget v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mRateIndex:I

    aget-short v0, v0, v1

    return v0
.end method
