.class public Lcom/mediatek/contacts/util/ContactsDetailCallColor;
.super Ljava/lang/Object;
.source "ContactsDetailCallColor.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/mediatek/contacts/util/ContactsDetailCallColor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/mediatek/contacts/util/ContactsDetailCallColor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/util/ContactsDetailCallColor;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/mediatek/contacts/util/ContactsDetailCallColor;

    invoke-direct {v0}, Lcom/mediatek/contacts/util/ContactsDetailCallColor;-><init>()V

    sput-object v0, Lcom/mediatek/contacts/util/ContactsDetailCallColor;->sInstance:Lcom/mediatek/contacts/util/ContactsDetailCallColor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/mediatek/contacts/util/ContactsDetailCallColor;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/mediatek/contacts/util/ContactsDetailCallColor;->sInstance:Lcom/mediatek/contacts/util/ContactsDetailCallColor;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/mediatek/contacts/util/ContactsDetailCallColor;

    invoke-direct {v0}, Lcom/mediatek/contacts/util/ContactsDetailCallColor;-><init>()V

    .line 36
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mediatek/contacts/util/ContactsDetailCallColor;->sInstance:Lcom/mediatek/contacts/util/ContactsDetailCallColor;

    goto :goto_0
.end method


# virtual methods
.method public getDefaultSiminfo(Landroid/content/ContentResolver;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 6
    .parameter "contentResolver"

    .prologue
    .line 53
    const-string v3, "voice_call_sim_setting"

    const-wide/16 v4, -0x5

    invoke-static {p1, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 56
    .local v0, mDefaultSim:J
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v3

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoById(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v2

    .line 57
    .local v2, simInfoOfDefaultSim:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    return-object v2
.end method

.method public getDefaultSlot(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentResolver"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/util/ContactsDetailCallColor;->getDefaultSiminfo(Landroid/content/ContentResolver;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 42
    .local v0, mSimInfoOfDefaultSim:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    return v1
.end method

.method public getNotDefaultSiminfo(Landroid/content/ContentResolver;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 3
    .parameter "contentResolver"

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/util/ContactsDetailCallColor;->getDefaultSiminfo(Landroid/content/ContentResolver;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 62
    .local v0, defaultInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-nez v1, :cond_0

    .line 63
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 65
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    goto :goto_0
.end method

.method public getNotDefaultSlot(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentResolver"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/util/ContactsDetailCallColor;->getDefaultSiminfo(Landroid/content/ContentResolver;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 48
    .local v0, mSimInfoOfDefaultSim:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCDMAPhoneTypeBySlot(I)Z
    .locals 3
    .parameter "slot"

    .prologue
    .line 70
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 71
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
