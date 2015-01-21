.class public Lcom/mediatek/phone/plugin/OP09NotificationExtension;
.super Lcom/mediatek/phone/ext/NotificationExtension;
.source "OP09NotificationExtension.java"


# static fields
.field private static final HOLD_RES:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "OP09NotificationMgrExtension"

.field private static final MO_RES:I = 0x0

.field private static final MT_RES:I = 0x1

.field private static final PV_HOLD_RES:I = 0x4

.field private static final PV_MO_RES:I = 0x3


# instance fields
.field private mPluginContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mediatek/phone/ext/NotificationExtension;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/mediatek/phone/plugin/OP09NotificationExtension;->mPluginContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 174
    const-string v0, "OP09NotificationMgrExtension"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method


# virtual methods
.method public getInCallResId(Lcom/android/internal/telephony/CallManager;ZI[[I)I
    .locals 15
    .parameter "cm"
    .parameter "voicePrivacy"
    .parameter "defResId"
    .parameter "simResId"

    .prologue
    .line 87
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v7

    .line 88
    .local v7, hasRingingCall:Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v5

    .line 89
    .local v5, hasActiveCall:Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v6

    .line 92
    .local v6, hasHoldingCall:Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 93
    .local v10, ring_call:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 94
    .local v4, fg_call:Lcom/android/internal/telephony/Call;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 95
    .local v1, bg_call:Lcom/android/internal/telephony/Call;
    if-eqz v7, :cond_1

    .line 96
    move-object v3, v10

    .line 103
    .local v3, currentCall:Lcom/android/internal/telephony/Call;
    :goto_0
    if-eqz v3, :cond_0

    const/4 v13, 0x3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v14

    if-ne v13, v14, :cond_3

    .line 105
    :cond_0
    const/4 v9, -0x1

    .line 161
    :goto_1
    return v9

    .line 97
    .end local v3           #currentCall:Lcom/android/internal/telephony/Call;
    :cond_1
    if-eqz v5, :cond_2

    .line 98
    move-object v3, v4

    .restart local v3       #currentCall:Lcom/android/internal/telephony/Call;
    goto :goto_0

    .line 100
    .end local v3           #currentCall:Lcom/android/internal/telephony/Call;
    :cond_2
    move-object v3, v1

    .restart local v3       #currentCall:Lcom/android/internal/telephony/Call;
    goto :goto_0

    .line 109
    :cond_3
    move-object/from16 v0, p4

    array-length v13, v0

    const/4 v14, 0x2

    if-lt v13, v14, :cond_4

    const/4 v13, 0x0

    aget-object v13, p4, v13

    array-length v13, v13

    const/4 v14, 0x5

    if-ge v13, v14, :cond_5

    .line 110
    :cond_4
    const/4 v9, -0x1

    goto :goto_1

    .line 113
    :cond_5
    move/from16 v9, p3

    .line 114
    .local v9, pluginResId:I
    if-eqz v7, :cond_8

    .line 116
    invoke-static {v10}, Lcom/mediatek/phone/plugin/OP09PhoneUtils;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v11

    .line 117
    .local v11, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v11, :cond_7

    iget v13, v11, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-eqz v13, :cond_6

    const/4 v13, 0x1

    iget v14, v11, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ne v13, v14, :cond_7

    .line 119
    :cond_6
    iget v13, v11, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    aget-object v13, p4, v13

    const/4 v14, 0x1

    aget v9, v13, v14

    .line 160
    :cond_7
    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "pluginResId : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mediatek/phone/plugin/OP09NotificationExtension;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 121
    .end local v11           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_8
    if-nez v5, :cond_b

    if-eqz v6, :cond_b

    .line 123
    invoke-static {v1}, Lcom/mediatek/phone/plugin/OP09PhoneUtils;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v11

    .line 124
    .restart local v11       #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v11, :cond_7

    iget v13, v11, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-eqz v13, :cond_9

    const/4 v13, 0x1

    iget v14, v11, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ne v13, v14, :cond_7

    .line 126
    :cond_9
    if-eqz p2, :cond_a

    .line 127
    iget v13, v11, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    aget-object v13, p4, v13

    const/4 v14, 0x4

    aget v9, v13, v14

    goto :goto_2

    .line 129
    :cond_a
    iget v13, v11, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    aget-object v13, p4, v13

    const/4 v14, 0x2

    aget v9, v13, v14

    goto :goto_2

    .line 134
    .end local v11           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_b
    invoke-static {v4}, Lcom/mediatek/phone/plugin/OP09PhoneUtils;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v11

    .line 135
    .restart local v11       #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v11, :cond_e

    iget v13, v11, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-eqz v13, :cond_c

    const/4 v13, 0x1

    iget v14, v11, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ne v13, v14, :cond_e

    .line 137
    :cond_c
    if-eqz p2, :cond_d

    .line 138
    iget v13, v11, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    aget-object v13, p4, v13

    const/4 v14, 0x3

    aget v9, v13, v14

    goto :goto_2

    .line 140
    :cond_d
    iget v13, v11, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    aget-object v13, p4, v13

    const/4 v14, 0x0

    aget v9, v13, v14

    goto :goto_2

    .line 142
    :cond_e
    if-nez v11, :cond_7

    .line 144
    const/4 v2, 0x0

    .line 145
    .local v2, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    .line 146
    .local v8, phoneType:I
    const/4 v13, 0x2

    if-ne v8, v13, :cond_11

    .line 147
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 151
    :cond_f
    :goto_3
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v8}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberExt(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 152
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v12

    .line 153
    .local v12, slotId:I
    if-eqz v12, :cond_10

    const/4 v13, 0x1

    if-ne v13, v12, :cond_7

    .line 155
    :cond_10
    aget-object v13, p4, v12

    const/4 v14, 0x0

    aget v9, v13, v14

    goto/16 :goto_2

    .line 148
    .end local v12           #slotId:I
    :cond_11
    const/4 v13, 0x1

    if-ne v8, v13, :cond_f

    .line 149
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    goto :goto_3
.end method

.method public shouldSuppressNotification(Z)Z
    .locals 1
    .parameter "hostDefaultValue"

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method
