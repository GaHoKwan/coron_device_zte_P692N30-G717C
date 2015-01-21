.class public Lcom/mediatek/settings/plugin/OP09DateTimeSettingsExtImp;
.super Lcom/mediatek/settings/ext/DefaultDateTimeSettingsExt;
.source "OP09DateTimeSettingsExtImp.java"


# static fields
.field private static final ACTION_TIME_MODE:Ljava/lang/String; = "com.mediatek.settings.intent.action.CT_TIME_ROAMING_SETTING"

.field private static final AUTO_TIME_NETWORK_INDEX:I = 0x0

.field private static final DOUBLE_SIM_CARD:I = 0x2

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.mediatek.op09.plugin"

.field private static final SINGLE_SIM_CARD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DateTimeSettingsExtImp"

.field private static final TIMEZONECLASS_NAME:Ljava/lang/String; = "com.mediatek.settings.plugin.TimeZoneActivity"

.field private static isFlyModeEnabled:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/settings/plugin/OP09DateTimeSettingsExtImp;->isFlyModeEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mediatek/settings/ext/DefaultDateTimeSettingsExt;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/mediatek/settings/plugin/OP09DateTimeSettingsExtImp;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method private getSimInfo(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 289
    const-string v4, "DateTimeSettingsExtImp"

    const-string v5, "getSimInfo()"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v3, siminfoList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-static {p1}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 292
    .local v1, simList:Ljava/util/List;,"Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    const/4 v2, 0x0

    .line 293
    .local v2, simSlot:I
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 294
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 295
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    iget v5, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/Telephony$SIMInfo;

    iget v4, v4, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-le v5, v4, :cond_0

    .line 296
    invoke-static {v1, v6, v7}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 298
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 299
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    .end local v0           #i:I
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 302
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_2
    return-object v3
.end method

.method private isEnableDateTime(ZILjava/lang/String;)Z
    .locals 6
    .parameter "isEnabled"
    .parameter "phoneType"
    .parameter "defaultValue"

    .prologue
    .line 170
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    .line 171
    const-string v3, "gsm.nitz.time"

    invoke-static {v3, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, sim1Nitz:Ljava/lang/String;
    const-string v3, "gsm.nitz.time.2"

    invoke-static {v3, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, sim2Nitz:Ljava/lang/String;
    const-string v3, "DateTimeSettingsExtImp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GG dual stand by, sim1Nitz is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; sim2Nitz is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 175
    const/4 p1, 0x0

    .line 176
    const-string v3, "DateTimeSettingsExtImp"

    const-string v4, "Both network support NITZ"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v1           #sim1Nitz:Ljava/lang/String;
    .end local v2           #sim2Nitz:Ljava/lang/String;
    :goto_0
    return p1

    .line 178
    .restart local v1       #sim1Nitz:Ljava/lang/String;
    .restart local v2       #sim2Nitz:Ljava/lang/String;
    :cond_0
    const-string v3, "DateTimeSettingsExtImp"

    const-string v4, "One of not support NITZ so enabled"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    .end local v1           #sim1Nitz:Ljava/lang/String;
    .end local v2           #sim2Nitz:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 183
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/settings/plugin/OP09DateTimeSettingsExtImp;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/ITelephony;->getServiceStateGemini(I)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "state"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    const/4 p1, 0x1

    .line 196
    :goto_1
    const-string v3, "DateTimeSettingsExtImp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM1 registered CDMA network isEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    .line 192
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DateTimeSettingsExtImp"

    const-string v4, "iTelephony fail"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 198
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    const-string v3, "DateTimeSettingsExtImp"

    const-string v4, "None type"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isEnableSingleDateTime(ZILjava/lang/String;Ljava/util/ArrayList;)Z
    .locals 8
    .parameter "isEnabled"
    .parameter "phoneType"
    .parameter "defaultValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/provider/Telephony$SIMInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p4, simInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/provider/Telephony$SIMInfo;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 120
    const-string v4, "DateTimeSettingsExtImp"

    const-string v5, "getDateTimeStatus One sim!"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/Telephony$SIMInfo;

    .line 122
    .local v3, simInfo:Landroid/provider/Telephony$SIMInfo;
    iget v4, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v4, :cond_5

    .line 123
    const-string v4, "DateTimeSettingsExtImp"

    const-string v5, "Only SIM1 inserted"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-ne p2, v7, :cond_2

    .line 125
    const-string v4, "gsm.nitz.time"

    invoke-static {v4, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, sim1Nitz:Ljava/lang/String;
    const-string v4, "DateTimeSettingsExtImp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim1Nitz is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 128
    const/4 p1, 0x0

    .line 129
    const-string v4, "DateTimeSettingsExtImp"

    const-string v5, "Support NITZ disabled for single G mode"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v1           #sim1Nitz:Ljava/lang/String;
    :cond_0
    :goto_0
    return p1

    .line 131
    .restart local v1       #sim1Nitz:Ljava/lang/String;
    :cond_1
    const-string v4, "DateTimeSettingsExtImp"

    const-string v5, "Not support NITZ"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    .end local v1           #sim1Nitz:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x2

    if-ne p2, v4, :cond_4

    .line 136
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/settings/plugin/OP09DateTimeSettingsExtImp;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/ITelephony;->getServiceStateGemini(I)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "state"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_3

    .line 138
    const/4 p1, 0x1

    .line 150
    :goto_1
    const-string v4, "DateTimeSettingsExtImp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM1 registered CDMA with isEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 142
    :cond_3
    const/4 p1, 0x0

    goto :goto_1

    .line 145
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DateTimeSettingsExtImp"

    const-string v5, "iTelephony fail"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 152
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const-string v4, "DateTimeSettingsExtImp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "None type phoneType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_5
    iget v4, v3, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ne v4, v7, :cond_0

    .line 155
    const-string v4, "DateTimeSettingsExtImp"

    const-string v5, "Only SIM2 inserted"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v4, "gsm.nitz.time.2"

    invoke-static {v4, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, sim2Nitz:Ljava/lang/String;
    const-string v4, "DateTimeSettingsExtImp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim2Nitz is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 159
    const/4 p1, 0x0

    .line 160
    const-string v4, "DateTimeSettingsExtImp"

    const-string v5, "SIM2 network supports NITZ"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isRadioInOnForTime(I)Z
    .locals 5
    .parameter "slotId"

    .prologue
    .line 100
    const-string v2, "DateTimeSettingsExtImp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRadioInOn with slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v1, 0x0

    .line 106
    .local v1, isRadioInOn:Z
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/settings/plugin/OP09DateTimeSettingsExtImp;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 113
    :goto_0
    const-string v2, "DateTimeSettingsExtImp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRadioInOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DateTimeSettingsExtImp"

    const-string v3, "mTelephony exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPrefEnableState(Landroid/content/Context;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V
    .locals 12
    .parameter "context"
    .parameter "timeZone"
    .parameter "timeMode"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 230
    invoke-virtual {p2, v10}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 231
    invoke-virtual {p3, v10}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 232
    new-instance v5, Lcom/mediatek/op09/plugin/SimInformation;

    invoke-direct {v5, p1}, Lcom/mediatek/op09/plugin/SimInformation;-><init>(Landroid/content/Context;)V

    .line 233
    .local v5, simInformation:Lcom/mediatek/op09/plugin/SimInformation;
    invoke-virtual {v5}, Lcom/mediatek/op09/plugin/SimInformation;->isInternationalRoamingStatus()Z

    move-result v1

    .line 234
    .local v1, isRoaming:Z
    const-string v6, "DateTimeSettingsExtImp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isRoaming = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    if-nez v1, :cond_1

    .line 236
    invoke-virtual {p3, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 237
    invoke-virtual {p2, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-virtual {v5}, Lcom/mediatek/op09/plugin/SimInformation;->getSlot1PhoneTypeGemini()I

    move-result v2

    .line 240
    .local v2, phoneType:I
    const-string v6, "DateTimeSettingsExtImp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phoneType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v3, ""

    .line 242
    .local v3, sim1Nitz:Ljava/lang/String;
    const-string v4, ""

    .line 243
    .local v4, sim2Nitz:Ljava/lang/String;
    const-string v0, ""

    .line 244
    .local v0, defaultValue:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/mediatek/op09/plugin/SimInformation;->insertedSimSlot()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 245
    const-string v6, "DateTimeSettingsExtImp"

    const-string v7, "timezone status: two sim insearted"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    if-ne v2, v10, :cond_2

    .line 247
    const-string v6, "gsm.nitz.time"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    const-string v6, "gsm.nitz.time.2"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 251
    const-string v6, "DateTimeSettingsExtImp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GG dual stand by, sim1Nitz is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; sim2Nitz is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 253
    invoke-virtual {p2, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 254
    const-string v6, "DateTimeSettingsExtImp"

    const-string v7, "sim1 and sim2 setEnabled false"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :cond_2
    if-ne v2, v11, :cond_0

    .line 257
    invoke-virtual {p2, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 258
    const-string v6, "DateTimeSettingsExtImp"

    const-string v7, "SIM1 registered CDMA network."

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 260
    :cond_3
    invoke-virtual {v5}, Lcom/mediatek/op09/plugin/SimInformation;->insertedSimSlot()I

    move-result v6

    if-ne v6, v11, :cond_6

    .line 261
    const-string v6, "DateTimeSettingsExtImp"

    const-string v7, "timezone status: only Slot1 one sim insearted"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    if-ne v2, v10, :cond_4

    .line 263
    const-string v6, "gsm.nitz.time"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 265
    const-string v6, "DateTimeSettingsExtImp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Only inserted SIM1, sim1Nitz is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 267
    invoke-virtual {p2, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 268
    const-string v6, "DateTimeSettingsExtImp"

    const-string v7, "Slot1 registered GSM, and supports NITZ"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 270
    :cond_4
    if-ne v2, v11, :cond_5

    .line 271
    invoke-virtual {p2, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 272
    const-string v6, "DateTimeSettingsExtImp"

    const-string v7, "tstatus: Slot1 registered CDMA supports NITZ"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 274
    :cond_5
    const-string v6, "DateTimeSettingsExtImp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phoneType :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 276
    :cond_6
    invoke-virtual {v5}, Lcom/mediatek/op09/plugin/SimInformation;->insertedSimSlot()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 277
    const-string v6, "gsm.nitz.time.2"

    invoke-static {v6, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 279
    const-string v6, "DateTimeSettingsExtImp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Only Slot2 insearted, sim2Nitz is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 281
    invoke-virtual {p2, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 282
    const-string v6, "DateTimeSettingsExtImp"

    const-string v7, "timezone status: Slot2 support NITZ"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public customizeDateTimePreferenceStatus(Landroid/content/Context;Landroid/preference/ListPreference;Landroid/preference/CheckBoxPreference;)V
    .locals 11
    .parameter "context"
    .parameter "listPreference"
    .parameter "checkBoxPreference"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 60
    const/4 v1, 0x1

    .line 61
    .local v1, isEnabled:Z
    const/4 v2, 0x0

    .line 62
    .local v2, phoneType:I
    const-string v3, ""

    .line 63
    .local v3, sim1Nitz:Ljava/lang/String;
    const-string v4, ""

    .line 64
    .local v4, sim2Nitz:Ljava/lang/String;
    const-string v0, ""

    .line 65
    .local v0, defaultValue:Ljava/lang/String;
    const-string v6, "DateTimeSettingsExtImp"

    const-string v9, "op09 getDateTimeStatus"

    invoke-static {v6, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-direct {p0, p1}, Lcom/mediatek/settings/plugin/OP09DateTimeSettingsExtImp;->getSimInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 67
    .local v5, simInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "airplane_mode_on"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_0
    sput-boolean v6, Lcom/mediatek/settings/plugin/OP09DateTimeSettingsExtImp;->isFlyModeEnabled:Z

    .line 69
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/settings/plugin/OP09DateTimeSettingsExtImp;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 70
    const-string v6, "DateTimeSettingsExtImp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "customizeDateTimePreferenceStatus isFlyModeEnabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/mediatek/settings/plugin/OP09DateTimeSettingsExtImp;->isFlyModeEnabled:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v6, p0, Lcom/mediatek/settings/plugin/OP09DateTimeSettingsExtImp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v6, :cond_0

    .line 72
    const-string v6, "phone"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/mediatek/settings/plugin/OP09DateTimeSettingsExtImp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 75
    :cond_0
    iget-object v6, p0, Lcom/mediatek/settings/plugin/OP09DateTimeSettingsExtImp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, v8}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v2

    .line 77
    const-string v6, "DateTimeSettingsExtImp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sim slot 1 phoneType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v9, 0x2

    if-ne v6, v9, :cond_3

    .line 79
    invoke-direct {p0, v1, v2, v0}, Lcom/mediatek/settings/plugin/OP09DateTimeSettingsExtImp;->isEnableDateTime(ZILjava/lang/String;)Z

    move-result v1

    .line 86
    :goto_1
    if-nez v1, :cond_1

    .line 87
    invoke-virtual {p2, v8}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 88
    invoke-virtual {p2, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 89
    invoke-virtual {p3, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 90
    invoke-virtual {p3, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 92
    :cond_1
    return-void

    :cond_2
    move v6, v8

    .line 67
    goto :goto_0

    .line 80
    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v7, :cond_4

    .line 81
    invoke-direct {p0, v1, v2, v0, v5}, Lcom/mediatek/settings/plugin/OP09DateTimeSettingsExtImp;->isEnableSingleDateTime(ZILjava/lang/String;Ljava/util/ArrayList;)Z

    move-result v1

    goto :goto_1

    .line 84
    :cond_4
    const-string v6, "DateTimeSettingsExtImp"

    const-string v9, "getDateTimeStatus Error: no SIM inserted"

    invoke-static {v6, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public customizePreferenceScreen(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 8
    .parameter "context"
    .parameter "pref"

    .prologue
    const/4 v7, 0x0

    .line 208
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 209
    .local v2, prefCategory:Landroid/preference/PreferenceCategory;
    iget-object v5, p0, Lcom/mediatek/settings/plugin/OP09DateTimeSettingsExtImp;->mContext:Landroid/content/Context;

    const v6, 0x7f09012b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 211
    new-instance v4, Landroid/preference/PreferenceScreen;

    invoke-direct {v4, p1, v7}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 212
    .local v4, timeZonePref:Landroid/preference/PreferenceScreen;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 213
    .local v1, intentTimeZone:Landroid/content/Intent;
    const-string v5, "com.mediatek.op09.plugin"

    const-string v6, "com.mediatek.settings.plugin.TimeZoneActivity"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 215
    iget-object v5, p0, Lcom/mediatek/settings/plugin/OP09DateTimeSettingsExtImp;->mContext:Landroid/content/Context;

    const v6, 0x7f090013

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 217
    new-instance v3, Landroid/preference/PreferenceScreen;

    invoke-direct {v3, p1, v7}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 218
    .local v3, timeModePref:Landroid/preference/PreferenceScreen;
    iget-object v5, p0, Lcom/mediatek/settings/plugin/OP09DateTimeSettingsExtImp;->mContext:Landroid/content/Context;

    const v6, 0x7f090014

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 219
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 220
    .local v0, intentTimeMode:Landroid/content/Intent;
    const-string v5, "com.mediatek.settings.intent.action.CT_TIME_ROAMING_SETTING"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 222
    invoke-direct {p0, p1, v4, v3}, Lcom/mediatek/settings/plugin/OP09DateTimeSettingsExtImp;->setPrefEnableState(Landroid/content/Context;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen;)V

    .line 223
    invoke-virtual {p2, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 224
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 225
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 226
    return-void
.end method
