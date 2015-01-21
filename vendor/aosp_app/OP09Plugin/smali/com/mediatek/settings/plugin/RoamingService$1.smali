.class Lcom/mediatek/settings/plugin/RoamingService$1;
.super Landroid/telephony/PhoneStateListener;
.source "RoamingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/plugin/RoamingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/RoamingService;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/RoamingService;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 14
    .parameter "serviceState"

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 110
    const-string v7, "RoamingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onServiceStateChanged serviceState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v7, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    #setter for: Lcom/mediatek/settings/plugin/RoamingService;->mServiceState:I
    invoke-static {v7, v8}, Lcom/mediatek/settings/plugin/RoamingService;->access$002(Lcom/mediatek/settings/plugin/RoamingService;I)I

    .line 112
    iget-object v7, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    iget-object v8, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    #getter for: Lcom/mediatek/settings/plugin/RoamingService;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v8}, Lcom/mediatek/settings/plugin/RoamingService;->access$300(Lcom/mediatek/settings/plugin/RoamingService;)Landroid/telephony/TelephonyManager;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    #getter for: Lcom/mediatek/settings/plugin/RoamingService;->mEVDOModemSlot:I
    invoke-static {v9}, Lcom/mediatek/settings/plugin/RoamingService;->access$200(Lcom/mediatek/settings/plugin/RoamingService;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v8

    #setter for: Lcom/mediatek/settings/plugin/RoamingService;->mSimStat:I
    invoke-static {v7, v8}, Lcom/mediatek/settings/plugin/RoamingService;->access$102(Lcom/mediatek/settings/plugin/RoamingService;I)I

    .line 113
    const-string v7, "RoamingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onServiceStateChanged mSimStat="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    #getter for: Lcom/mediatek/settings/plugin/RoamingService;->mSimStat:I
    invoke-static {v9}, Lcom/mediatek/settings/plugin/RoamingService;->access$100(Lcom/mediatek/settings/plugin/RoamingService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v7, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    #getter for: Lcom/mediatek/settings/plugin/RoamingService;->mSimStat:I
    invoke-static {v7}, Lcom/mediatek/settings/plugin/RoamingService;->access$100(Lcom/mediatek/settings/plugin/RoamingService;)I

    move-result v7

    if-ne v7, v11, :cond_1

    .line 115
    const-string v7, "RoamingService"

    const-string v8, "Sim absent .."

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    #getter for: Lcom/mediatek/settings/plugin/RoamingService;->mITelephony:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v7}, Lcom/mediatek/settings/plugin/RoamingService;->access$400(Lcom/mediatek/settings/plugin/RoamingService;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 120
    iget-object v7, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    iget-object v8, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    #getter for: Lcom/mediatek/settings/plugin/RoamingService;->mITelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;
    invoke-static {v8}, Lcom/mediatek/settings/plugin/RoamingService;->access$600(Lcom/mediatek/settings/plugin/RoamingService;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    #getter for: Lcom/mediatek/settings/plugin/RoamingService;->mEVDOModemSlot:I
    invoke-static {v9}, Lcom/mediatek/settings/plugin/RoamingService;->access$200(Lcom/mediatek/settings/plugin/RoamingService;)I

    move-result v9

    invoke-interface {v8, v9}, Lcom/mediatek/common/telephony/ITelephonyEx;->getInternationalCardType(I)I

    move-result v8

    #setter for: Lcom/mediatek/settings/plugin/RoamingService;->mCardType:I
    invoke-static {v7, v8}, Lcom/mediatek/settings/plugin/RoamingService;->access$502(Lcom/mediatek/settings/plugin/RoamingService;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_2
    const-string v7, "RoamingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onServiceStateChanged mCardType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    #getter for: Lcom/mediatek/settings/plugin/RoamingService;->mCardType:I
    invoke-static {v9}, Lcom/mediatek/settings/plugin/RoamingService;->access$500(Lcom/mediatek/settings/plugin/RoamingService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v7, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    #getter for: Lcom/mediatek/settings/plugin/RoamingService;->mCardType:I
    invoke-static {v7}, Lcom/mediatek/settings/plugin/RoamingService;->access$500(Lcom/mediatek/settings/plugin/RoamingService;)I

    move-result v7

    if-eq v7, v11, :cond_3

    .line 130
    const-string v7, "RoamingService"

    const-string v8, "Only works for dual-mode SIM card..return"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, ex:Landroid/os/RemoteException;
    const-string v7, "RoamingService"

    const-string v8, "error to getInternationalCardType "

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v7

    if-eq v7, v11, :cond_4

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v7

    if-ne v7, v13, :cond_0

    .line 137
    :cond_4
    const-string v7, "RoamingService"

    const-string v8, "Registered on network..."

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v7, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    #setter for: Lcom/mediatek/settings/plugin/RoamingService;->mRegisteredNetwork:Z
    invoke-static {v7, v11}, Lcom/mediatek/settings/plugin/RoamingService;->access$702(Lcom/mediatek/settings/plugin/RoamingService;Z)Z

    .line 139
    iget-object v7, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    #calls: Lcom/mediatek/settings/plugin/RoamingService;->removeNoServiceDialog()V
    invoke-static {v7}, Lcom/mediatek/settings/plugin/RoamingService;->access$800(Lcom/mediatek/settings/plugin/RoamingService;)V

    .line 140
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, mccMnc:Ljava/lang/String;
    const-string v7, "RoamingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "serviceState.getOperatorNumeric(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v13, :cond_0

    const-string v7, "00000"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 143
    invoke-virtual {v5, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, mcc:Ljava/lang/String;
    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, mnc:Ljava/lang/String;
    const-string v7, "RoamingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "serviceState.getOperatorNumeric() mcc: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mnc: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v7, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "ct_latest_mccmnc"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, latestMCCMNC:Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string v8, "ct_latest_mccmnc"

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    iget-object v7, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    #getter for: Lcom/mediatek/settings/plugin/RoamingService;->mIsFirstBoot:Z
    invoke-static {v7}, Lcom/mediatek/settings/plugin/RoamingService;->access$900(Lcom/mediatek/settings/plugin/RoamingService;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    #getter for: Lcom/mediatek/settings/plugin/RoamingService;->mCardType:I
    invoke-static {v7}, Lcom/mediatek/settings/plugin/RoamingService;->access$500(Lcom/mediatek/settings/plugin/RoamingService;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    iget-object v7, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    #calls: Lcom/mediatek/settings/plugin/RoamingService;->isInternationalRoamingStatus()Z
    invoke-static {v7}, Lcom/mediatek/settings/plugin/RoamingService;->access$1000(Lcom/mediatek/settings/plugin/RoamingService;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 156
    const-string v7, "RoamingService"

    const-string v8, "the device is registered to CDMA network..."

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v7, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    #calls: Lcom/mediatek/settings/plugin/RoamingService;->notifyTimeZoneRecommend(Z)V
    invoke-static {v7, v10}, Lcom/mediatek/settings/plugin/RoamingService;->access$1100(Lcom/mediatek/settings/plugin/RoamingService;Z)V

    .line 158
    iget-object v7, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    #setter for: Lcom/mediatek/settings/plugin/RoamingService;->mIsFirstBoot:Z
    invoke-static {v7, v10}, Lcom/mediatek/settings/plugin/RoamingService;->access$902(Lcom/mediatek/settings/plugin/RoamingService;Z)Z

    goto/16 :goto_0

    .line 161
    :cond_5
    if-eqz v1, :cond_6

    iget-object v7, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    #calls: Lcom/mediatek/settings/plugin/RoamingService;->isSupportNitz()Z
    invoke-static {v7}, Lcom/mediatek/settings/plugin/RoamingService;->access$1200(Lcom/mediatek/settings/plugin/RoamingService;)Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    #calls: Lcom/mediatek/settings/plugin/RoamingService;->isGgStandBy()Z
    invoke-static {v7}, Lcom/mediatek/settings/plugin/RoamingService;->access$1300(Lcom/mediatek/settings/plugin/RoamingService;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 162
    const-string v7, "RoamingService"

    const-string v8, "Register g network and don\'t support Nitz..."

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v1, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, latestMcc:Ljava/lang/String;
    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, latestMnc:Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 166
    const-string v7, "RoamingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MCC isn\'t changed mcc: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 169
    iget-object v7, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    #calls: Lcom/mediatek/settings/plugin/RoamingService;->showTimeZoneRecommendInNotificationBar()V
    invoke-static {v7}, Lcom/mediatek/settings/plugin/RoamingService;->access$1400(Lcom/mediatek/settings/plugin/RoamingService;)V

    .line 186
    .end local v2           #latestMcc:Ljava/lang/String;
    .end local v3           #latestMnc:Ljava/lang/String;
    :cond_6
    :goto_1
    const-string v7, "RoamingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Latest MCCMNC: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", new mccmnc: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 172
    .restart local v2       #latestMcc:Ljava/lang/String;
    .restart local v3       #latestMnc:Ljava/lang/String;
    :cond_7
    const-string v7, "RoamingService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MCC is changed, last mccmnc: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", new mccmnc: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v7, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    #calls: Lcom/mediatek/settings/plugin/RoamingService;->isMultipltTimeZone(I)Z
    invoke-static {v7, v8}, Lcom/mediatek/settings/plugin/RoamingService;->access$1500(Lcom/mediatek/settings/plugin/RoamingService;I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 178
    iget-object v7, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    #calls: Lcom/mediatek/settings/plugin/RoamingService;->notifyTimeZoneRecommend(Z)V
    invoke-static {v7, v10}, Lcom/mediatek/settings/plugin/RoamingService;->access$1100(Lcom/mediatek/settings/plugin/RoamingService;Z)V

    goto :goto_1

    .line 182
    :cond_8
    iget-object v7, p0, Lcom/mediatek/settings/plugin/RoamingService$1;->this$0:Lcom/mediatek/settings/plugin/RoamingService;

    invoke-static {v7, v5}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
