.class public Lcom/mediatek/bluetooth/map/util/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# static fields
.field public static MAX_SLOT_NUM:I

.field public static SIM1:I

.field public static SIM2:I

.field public static SIM3:I

.field public static SIM4:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->SIM1:I

    .line 53
    const/4 v0, 0x1

    sput v0, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->SIM2:I

    .line 54
    const/4 v0, 0x2

    sput v0, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->SIM3:I

    .line 55
    const/4 v0, 0x3

    sput v0, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->SIM4:I

    .line 56
    sget v0, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->SIM4:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->MAX_SLOT_NUM:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultSlot()I
    .locals 1

    .prologue
    .line 152
    sget v0, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->SIM1:I

    return v0
.end method

.method public static getGeminiNetworkType(I)I
    .locals 1
    .parameter "slotId"

    .prologue
    .line 68
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getPhoneType(I)I

    move-result v0

    return v0
.end method

.method public static getGeminiSmsType(I)I
    .locals 2
    .parameter "slotId"

    .prologue
    .line 83
    invoke-static {p0}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getGeminiNetworkType(I)I

    move-result v0

    .line 84
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 90
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 86
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 88
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getNetworkType()I
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public static getPhoneNumber(I)Ljava/lang/String;
    .locals 1
    .parameter "sim"

    .prologue
    .line 95
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSimIdBySlotId(Landroid/content/Context;I)J
    .locals 3
    .parameter "context"
    .parameter "slot"

    .prologue
    .line 103
    const-wide/16 v1, -0x1

    .line 105
    .local v1, simId:J
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 106
    .local v0, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 107
    iget-wide v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    .line 109
    :cond_0
    return-wide v1
.end method

.method public static getSlotBySimId(Landroid/content/Context;J)I
    .locals 1
    .parameter "context"
    .parameter "simId"

    .prologue
    .line 114
    invoke-static {p0, p1, p2}, Lcom/mediatek/telephony/SimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v0

    return v0
.end method

.method public static getSmsType()I
    .locals 2

    .prologue
    .line 72
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getNetworkType()I

    move-result v0

    .line 73
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 79
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 75
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 77
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getTotalSlotCount()I
    .locals 1

    .prologue
    .line 141
    sget v0, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->SIM2:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isDefaultSlot(I)Z
    .locals 1
    .parameter "slot"

    .prologue
    .line 148
    sget v0, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->SIM1:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGeminiSupport()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public static isPhoneRadioReady()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->isGeminiSupport()Z

    move-result v3

    if-ne v3, v2, :cond_2

    .line 119
    const/4 v0, 0x0

    .local v0, slot:I
    :goto_0
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getTotalSlotCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 121
    invoke-static {v0}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getGeminiNetworkType(I)I

    move-result v3

    if-nez v3, :cond_1

    .line 131
    .end local v0           #slot:I
    :cond_0
    :goto_1
    return v1

    .line 119
    .restart local v0       #slot:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v0           #slot:I
    :cond_2
    invoke-static {}, Lcom/mediatek/bluetooth/map/util/NetworkUtil;->getNetworkType()I

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 131
    goto :goto_1
.end method
