.class public Lcom/mediatek/telephony/DefaultVoiceCallSimSettings;
.super Ljava/lang/Object;
.source "DefaultVoiceCallSimSettings.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PHONE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isSimRemoved(J[JI)Z
    .locals 4
    .parameter "defSimId"
    .parameter "curSim"
    .parameter "numSim"

    .prologue
    .line 103
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gtz v2, :cond_1

    .line 104
    const/4 v1, 0x0

    .line 114
    :cond_0
    :goto_0
    return v1

    .line 107
    :cond_1
    const/4 v1, 0x1

    .line 108
    .local v1, isDefaultSimRemoved:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_0

    .line 109
    aget-wide v2, p2, v0

    cmp-long v2, p0, v2

    if-nez v2, :cond_2

    .line 110
    const/4 v1, 0x0

    .line 111
    goto :goto_0

    .line 108
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static isVoiceCallDefaultSIM(J)Z
    .locals 2
    .parameter "voiceCallSIM"

    .prologue
    .line 118
    const-wide/16 v0, -0x5

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isVoipEnabled(Landroid/content/ContentResolver;)Z
    .locals 3
    .parameter "contentResolver"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    const-string v2, "enable_internet_call_value"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 127
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DefaultVoiceCallSimSetting] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public static setVoiceCallDefaultSim(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/util/List;[JI)V
    .locals 11
    .parameter "context"
    .parameter "contentResolver"
    .parameter
    .parameter "simIdForSlot"
    .parameter "nSimCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;[JI)V"
        }
    .end annotation

    .prologue
    .local p2, simInfos:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 61
    const-wide/16 v0, -0x5

    .line 62
    .local v0, defSIM:J
    const-string v6, "voice_call_sim_setting"

    const-wide/16 v7, -0x5

    invoke-static {p1, v6, v7, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 64
    .local v2, oldVoiceCallDefaultSIM:J
    const-string v6, "ro.operator.optr"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, optr:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nSimCount = : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", optr:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", oldVoiceCallDefaultSIM:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/telephony/DefaultVoiceCallSimSettings;->logd(Ljava/lang/String;)V

    .line 66
    if-le p4, v10, :cond_3

    .line 67
    const-string v6, "OP09"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 68
    invoke-static {p0, v9}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v5

    .line 69
    .local v5, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-wide v0, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    .line 70
    invoke-static {v2, v3}, Lcom/mediatek/telephony/DefaultVoiceCallSimSettings;->isVoiceCallDefaultSIM(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setVoiceCallDefaultSim -- To : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/telephony/DefaultVoiceCallSimSettings;->logd(Ljava/lang/String;)V

    .line 72
    const-string v6, "voice_call_sim_setting"

    invoke-static {p1, v6, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 93
    .end local v5           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    :goto_0
    sget v6, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    invoke-static {v2, v3, p3, v6}, Lcom/mediatek/telephony/DefaultVoiceCallSimSettings;->isSimRemoved(J[JI)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setVoiceCallDefaultSim -- To : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/telephony/DefaultVoiceCallSimSettings;->logd(Ljava/lang/String;)V

    .line 95
    const-string v6, "voice_call_sim_setting"

    invoke-static {p1, v6, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 99
    :cond_1
    return-void

    .line 76
    :cond_2
    const-wide/16 v0, -0x1

    .line 77
    invoke-static {v2, v3}, Lcom/mediatek/telephony/DefaultVoiceCallSimSettings;->isVoiceCallDefaultSIM(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 78
    const-string v6, "setVoiceCallDefaultSim -- To : -1"

    invoke-static {v6}, Lcom/mediatek/telephony/DefaultVoiceCallSimSettings;->logd(Ljava/lang/String;)V

    .line 79
    const-string v6, "voice_call_sim_setting"

    const-wide/16 v7, -0x1

    invoke-static {p1, v6, v7, v8}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0

    .line 83
    :cond_3
    if-ne p4, v10, :cond_0

    .line 84
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-wide v0, v6, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    .line 85
    invoke-static {p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {p1}, Lcom/mediatek/telephony/DefaultVoiceCallSimSettings;->isVoipEnabled(Landroid/content/ContentResolver;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v2, v3}, Lcom/mediatek/telephony/DefaultVoiceCallSimSettings;->isVoiceCallDefaultSIM(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 87
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setVoiceCallDefaultSim -- To : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mediatek/telephony/DefaultVoiceCallSimSettings;->logd(Ljava/lang/String;)V

    .line 88
    const-string v6, "voice_call_sim_setting"

    invoke-static {p1, v6, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0
.end method
