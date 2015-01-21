.class public Lcom/mediatek/phone/plugin/OP09PhoneUtils;
.super Ljava/lang/Object;
.source "OP09PhoneUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSimInfoByCall(Lcom/android/internal/telephony/Call;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 7
    .parameter "call"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x2

    .line 18
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_0
    move-object v0, v4

    .line 40
    :cond_1
    :goto_0
    return-object v0

    .line 22
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 24
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 25
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v4

    invoke-static {v6}, Lcom/mediatek/phone/plugin/OP09PhoneUtils;->getSlotByPhoneType(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    goto :goto_0

    .line 29
    :cond_3
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v3

    .line 30
    .local v3, serialNumber:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 31
    .local v0, info:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_4

    iget-object v5, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 35
    :cond_4
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 36
    .local v1, info2:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v1, :cond_5

    iget-object v5, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v0, v1

    .line 37
    goto :goto_0

    :cond_5
    move-object v0, v4

    .line 40
    goto :goto_0
.end method

.method public static getSlotByPhoneType(I)I
    .locals 5
    .parameter "phontType"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 44
    const/4 v0, 0x0

    .line 45
    .local v0, slot:I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 46
    .local v1, telephony:Landroid/telephony/TelephonyManager;
    if-ne p0, v4, :cond_2

    .line 47
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 48
    const/4 v0, 0x0

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 50
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :cond_2
    if-ne p0, v3, :cond_0

    .line 53
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 54
    const/4 v0, 0x0

    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 56
    const/4 v0, 0x1

    goto :goto_0
.end method
