.class final Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;
.super Ljava/lang/Object;
.source "SlotUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/simcontact/SlotUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SlotInfo"
.end annotation


# static fields
.field private static final ICC_ADN_URI_FOR_SINGLE_SLOT:Ljava/lang/String; = "content://icc/adn"

.field private static final ICC_PBR_URI_FOR_SINGLE_SLOT:Ljava/lang/String; = "content://icc/pbr"

.field private static final ICC_SDN_URI_FOR_SINGLE_SLOT:Ljava/lang/String; = "content://icc/sdn"

.field private static final SIM_PHONE_BOOK_SERVICE_NAME_FOR_SINGLE_SLOT:Ljava/lang/String; = "simphonebook"


# instance fields
.field mIccUri:Landroid/net/Uri;

.field mIccUsimUri:Landroid/net/Uri;

.field mIsSlotServiceRunning:Z

.field mPhbInfo:Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;

.field mResId:I

.field mSdnUri:Landroid/net/Uri;

.field mSimPhoneBookServiceName:Ljava/lang/String;

.field mSlotId:I

.field mVoiceMailNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "slotId"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mIsSlotServiceRunning:Z

    .line 57
    iput p1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSlotId:I

    .line 58
    invoke-direct {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->generateIccUri()V

    .line 59
    invoke-direct {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->generateIccUsimUri()V

    .line 60
    invoke-direct {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->generateSdnUri()V

    .line 61
    invoke-direct {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->generateSimPhoneBook()V

    .line 62
    invoke-virtual {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->updateVoiceMailNumber()V

    .line 63
    invoke-direct {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->generateResId()V

    .line 64
    new-instance v0, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;

    invoke-direct {v0, p1}, Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mPhbInfo:Lcom/mediatek/contacts/simcontact/SlotUtils$PhbInfoWrapper;

    .line 65
    return-void
.end method

.method private generateIccUri()V
    .locals 3

    .prologue
    .line 125
    const-string v0, "content://icc/adn"

    .line 126
    .local v0, str:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSlotId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mIccUri:Landroid/net/Uri;

    .line 131
    return-void
.end method

.method private generateIccUsimUri()V
    .locals 3

    .prologue
    .line 134
    const-string v0, "content://icc/pbr"

    .line 135
    .local v0, str:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSlotId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mIccUsimUri:Landroid/net/Uri;

    .line 140
    return-void
.end method

.method private generateResId()V
    .locals 3

    .prologue
    .line 71
    iget v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSlotId:I

    packed-switch v0, :pswitch_data_0

    .line 85
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateResId, no res for slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return-void

    .line 73
    :pswitch_0
    const v0, 0x7f0c0012

    iput v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mResId:I

    goto :goto_0

    .line 76
    :pswitch_1
    const v0, 0x7f0c0013

    iput v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mResId:I

    goto :goto_0

    .line 79
    :pswitch_2
    const v0, 0x7f0c00f7

    iput v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mResId:I

    goto :goto_0

    .line 82
    :pswitch_3
    const v0, 0x7f0c00f8

    iput v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mResId:I

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private generateSdnUri()V
    .locals 3

    .prologue
    .line 116
    const-string v0, "content://icc/sdn"

    .line 117
    .local v0, str:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSlotId:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSdnUri:Landroid/net/Uri;

    .line 122
    return-void
.end method

.method private generateSimPhoneBook()V
    .locals 2

    .prologue
    .line 93
    const-string v0, "simphonebook"

    iput-object v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSimPhoneBookServiceName:Ljava/lang/String;

    .line 94
    iget v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSlotId:I

    if-lez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSimPhoneBookServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSlotId:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSimPhoneBookServiceName:Ljava/lang/String;

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public getIccUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSlotId:I

    invoke-static {v0}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimUsimType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mIccUsimUri:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mIccUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public getResId()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mResId:I

    return v0
.end method

.method public getSdnUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSdnUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSimPhoneBookServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSimPhoneBookServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mVoiceMailNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isSimServiceRunning()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mIsSlotServiceRunning:Z

    return v0
.end method

.method public updateSimServiceRunningState(Z)V
    .locals 3
    .parameter "isRunning"

    .prologue
    .line 143
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " service running state changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mIsSlotServiceRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iput-boolean p1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mIsSlotServiceRunning:Z

    .line 146
    return-void
.end method

.method public updateVoiceMailNumber()V
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mSlotId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/telephony/TelephonyManagerEx;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mVoiceMailNumber:Ljava/lang/String;

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/simcontact/SlotUtils$SlotInfo;->mVoiceMailNumber:Ljava/lang/String;

    goto :goto_0
.end method
