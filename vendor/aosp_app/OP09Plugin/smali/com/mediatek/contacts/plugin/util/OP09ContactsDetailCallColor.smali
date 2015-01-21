.class public Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;
.super Ljava/lang/Object;
.source "OP09ContactsDetailCallColor.java"


# static fields
.field private static final SLOT_ID1:I = 0x0

.field private static final SLOT_ID2:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;


# instance fields
.field DEFAULT_SIM_PHOTO_ID:I

.field DEFAULT_SIM_PHOTO_ID_SDN:I

.field DEFAULT_SIM_PHOTO_URI:Ljava/lang/String;

.field DEFAULT_SIM_PHOTO_URI_SDN:Ljava/lang/String;

.field SIM_PHOTO_ID_1_ORANGE:I

.field SIM_PHOTO_ID_1_ORANGE_SDN:I

.field SIM_PHOTO_ID_2_BLUE:I

.field SIM_PHOTO_ID_2_BLUE_SDN:I

.field SIM_PHOTO_URI_1_ORANGE:Ljava/lang/String;

.field SIM_PHOTO_URI_1_ORANGE_SDN:Ljava/lang/String;

.field SIM_PHOTO_URI_2_BLUE:Ljava/lang/String;

.field SIM_PHOTO_URI_2_BLUE_SDN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;

    invoke-direct {v0}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;-><init>()V

    sput-object v0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->instance:Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->DEFAULT_SIM_PHOTO_ID:I

    .line 20
    const/16 v0, -0x9

    iput v0, p0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->DEFAULT_SIM_PHOTO_ID_SDN:I

    .line 22
    const-string v0, "content://sdn"

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->DEFAULT_SIM_PHOTO_URI_SDN:Ljava/lang/String;

    .line 23
    const-string v0, "content://sim"

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->DEFAULT_SIM_PHOTO_URI:Ljava/lang/String;

    .line 26
    const/16 v0, -0x1f

    iput v0, p0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->SIM_PHOTO_ID_1_ORANGE_SDN:I

    .line 27
    const/16 v0, -0x20

    iput v0, p0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->SIM_PHOTO_ID_2_BLUE_SDN:I

    .line 29
    const/16 v0, -0x21

    iput v0, p0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->SIM_PHOTO_ID_1_ORANGE:I

    .line 30
    const/16 v0, -0x22

    iput v0, p0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->SIM_PHOTO_ID_2_BLUE:I

    .line 32
    const-string v0, "content://sdn-31"

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->SIM_PHOTO_URI_1_ORANGE_SDN:Ljava/lang/String;

    .line 33
    const-string v0, "content://sdn-32"

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->SIM_PHOTO_URI_2_BLUE_SDN:Ljava/lang/String;

    .line 35
    const-string v0, "content://sdn-33"

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->SIM_PHOTO_URI_1_ORANGE:Ljava/lang/String;

    .line 36
    const-string v0, "content://sdn-34"

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->SIM_PHOTO_URI_2_BLUE:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static getInstance()Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->instance:Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;

    invoke-direct {v0}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;-><init>()V

    .line 52
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->instance:Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;

    goto :goto_0
.end method


# virtual methods
.method public getCallUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "number"

    .prologue
    .line 76
    const-string v0, "tel"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSiminfo(Landroid/content/ContentResolver;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 6
    .parameter "contentResolver"

    .prologue
    .line 92
    const-string v3, "voice_call_sim_setting"

    const-wide/16 v4, -0x5

    invoke-static {p1, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 95
    .local v0, mDefaultSim:J
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v3

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoById(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v2

    .line 96
    .local v2, simInfoOfDefaultSim:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    return-object v2
.end method

.method public getDefaultSlot(Landroid/content/ContentResolver;)I
    .locals 2
    .parameter "contentResolver"

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getDefaultSiminfo(Landroid/content/ContentResolver;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 58
    .local v0, mSimInfoOfDefaultSim:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    return v1
.end method

.method public getDrawableCorG(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I
    .locals 2
    .parameter "simInfo"

    .prologue
    .line 82
    iget v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 83
    .local v0, slot:I
    if-nez v0, :cond_0

    .line 84
    const v1, 0x7f02007f

    .line 86
    :goto_0
    return v1

    :cond_0
    const v1, 0x7f020080

    goto :goto_0
.end method

.method public getEnhancementAccountSimIndicator(IILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "i"
    .parameter "slot"
    .parameter "mPluginContext"

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, photoId:I
    if-nez p2, :cond_1

    .line 118
    const v0, 0x7f020075

    .line 122
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 123
    const/4 v1, 0x0

    .line 125
    :goto_1
    return-object v1

    .line 119
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 120
    const v0, 0x7f020076

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method

.method public getEnhancementPhotoId(III)J
    .locals 8
    .parameter "isSdnContact"
    .parameter "colorId"
    .parameter "slot"

    .prologue
    const/4 v4, 0x1

    .line 132
    invoke-virtual {p0, p3}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->isCDMAPhoneTypeBySlot(I)Z

    move-result v0

    .line 133
    .local v0, isCDMA:Z
    const-wide/16 v2, 0x0

    .line 135
    .local v2, photoId:J
    if-lez p1, :cond_1

    move v1, v4

    .line 136
    .local v1, isSdn:Z
    :goto_0
    sget-object v5, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[getSimType] i = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | isSdn : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-nez p3, :cond_3

    .line 139
    if-eqz v1, :cond_2

    .line 140
    iget v4, p0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->SIM_PHOTO_ID_1_ORANGE_SDN:I

    int-to-long v2, v4

    .line 158
    :cond_0
    :goto_1
    return-wide v2

    .line 135
    .end local v1           #isSdn:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 142
    .restart local v1       #isSdn:Z
    :cond_2
    iget v4, p0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->SIM_PHOTO_ID_1_ORANGE:I

    int-to-long v2, v4

    goto :goto_1

    .line 144
    :cond_3
    if-ne p3, v4, :cond_0

    .line 145
    if-eqz v1, :cond_4

    .line 146
    iget v4, p0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->SIM_PHOTO_ID_2_BLUE_SDN:I

    int-to-long v2, v4

    goto :goto_1

    .line 148
    :cond_4
    iget v4, p0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->SIM_PHOTO_ID_2_BLUE:I

    int-to-long v2, v4

    goto :goto_1
.end method

.method public getEnhancementPhotoUri(III)Ljava/lang/String;
    .locals 7
    .parameter "isSdnContact"
    .parameter "colorId"
    .parameter "slot"

    .prologue
    const/4 v3, 0x1

    .line 162
    invoke-virtual {p0, p3}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->isCDMAPhoneTypeBySlot(I)Z

    move-result v0

    .line 163
    .local v0, isCDMA:Z
    const/4 v2, 0x0

    .line 166
    .local v2, photoUri:Ljava/lang/String;
    if-lez p1, :cond_1

    move v1, v3

    .line 167
    .local v1, isSdn:Z
    :goto_0
    sget-object v4, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onLoadFinished] i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | isSdn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-nez p3, :cond_3

    .line 170
    if-eqz v1, :cond_2

    .line 171
    iget-object v2, p0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->SIM_PHOTO_URI_1_ORANGE_SDN:Ljava/lang/String;

    .line 189
    :cond_0
    :goto_1
    return-object v2

    .line 166
    .end local v1           #isSdn:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 173
    .restart local v1       #isSdn:Z
    :cond_2
    iget-object v2, p0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->SIM_PHOTO_URI_1_ORANGE:Ljava/lang/String;

    goto :goto_1

    .line 175
    :cond_3
    if-ne p3, v3, :cond_0

    .line 176
    if-eqz v1, :cond_4

    .line 177
    iget-object v2, p0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->SIM_PHOTO_URI_2_BLUE_SDN:Ljava/lang/String;

    goto :goto_1

    .line 179
    :cond_4
    iget-object v2, p0, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->SIM_PHOTO_URI_2_BLUE:Ljava/lang/String;

    goto :goto_1
.end method

.method public getNotDefaultSiminfo(Landroid/content/ContentResolver;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 3
    .parameter "contentResolver"

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getDefaultSiminfo(Landroid/content/ContentResolver;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 101
    .local v0, defaultInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-nez v1, :cond_0

    .line 102
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 104
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
    .line 62
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getDefaultSiminfo(Landroid/content/ContentResolver;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 64
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
    .line 109
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 110
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
