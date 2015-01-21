.class Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;
.super Landroid/telephony/PhoneStateListener;
.source "ManualNetworkSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/plugin/ManualNetworkSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged , mTargetSlot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I
    invoke-static {v2}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$200(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->updateScreen()V
    invoke-static {v0}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$400(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V

    .line 236
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 11
    .parameter "serviceState"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 240
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$1200(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I
    invoke-static {v4}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$200(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimStateGemini(I)I

    move-result v2

    .line 242
    .local v2, simStat:I
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->processCdmaSelectNextNetworkManually(Landroid/telephony/ServiceState;)V
    invoke-static {v3, p1}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$1300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Landroid/telephony/ServiceState;)V

    .line 245
    if-ne v2, v6, :cond_1

    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mPhoneSwitchingMode:I
    invoke-static {v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$100(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v3

    if-nez v3, :cond_1

    .line 247
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceStateChanged return directly, simStat = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPhoneSwitchingMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mPhoneSwitchingMode:I
    invoke-static {v5}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$100(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTargetSlot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I
    invoke-static {v5}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$200(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/String;)V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v1

    .line 254
    .local v1, regState:I
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceStateChanged: regState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPhoneSwitchingMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mPhoneSwitchingMode:I
    invoke-static {v5}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$100(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mTargetSlot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I
    invoke-static {v5}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$200(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", this = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/String;)V

    .line 257
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mPhoneSwitchingMode:I
    invoke-static {v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$100(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v3

    if-ne v3, v8, :cond_8

    if-ne v1, v8, :cond_8

    .line 259
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #setter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mPhoneSwitchingMode:I
    invoke-static {v3, v9}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$102(Lcom/mediatek/settings/plugin/ManualNetworkSelection;I)I

    .line 295
    :cond_2
    :goto_1
    if-eq v1, v6, :cond_3

    if-ne v1, v10, :cond_7

    .line 298
    :cond_3
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I
    invoke-static {v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$200(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v3

    if-nez v3, :cond_4

    .line 299
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    const-string v4, "[IRC] onServiceStateChanged blockSwitchPhone flag=false"

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/String;)V

    .line 300
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$2000(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Lcom/android/internal/telephony/gemini/GeminiPhone;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/gemini/GeminiPhone;->blockSwitchPhoneDuringManualSelection(Z)V

    .line 303
    :cond_4
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I
    invoke-static {v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$200(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->isExternalSlotInCdmaMode()Z
    invoke-static {v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$600(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mTargetSlot:I
    invoke-static {v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$200(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v3

    if-ne v3, v6, :cond_7

    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "gsm_sim2_network_selection"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 306
    :cond_6
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->updateCarrierPreferenceCheckedState()V
    invoke-static {v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$2100(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V

    .line 311
    :cond_7
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mIsDualModeCard:Z
    invoke-static {v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$2200(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->updateScreen()V
    invoke-static {v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$400(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V

    goto/16 :goto_0

    .line 260
    :cond_8
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mPhoneSwitchingMode:I
    invoke-static {v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$100(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)I

    move-result v3

    if-ne v3, v9, :cond_2

    .line 261
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->isExternalSlotInCdmaMode()Z
    invoke-static {v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$600(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Z

    move-result v0

    .line 262
    .local v0, isG2C:Z
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SEARCHING_SERVICE: regState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isG2C = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$300(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Ljava/lang/String;)V

    .line 263
    if-eq v1, v6, :cond_9

    if-ne v1, v10, :cond_c

    .line 265
    :cond_9
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #setter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mPhoneSwitchingMode:I
    invoke-static {v3, v7}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$102(Lcom/mediatek/settings/plugin/ManualNetworkSelection;I)I

    .line 266
    if-eqz v0, :cond_a

    .line 268
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    const/16 v4, 0x3e9

    invoke-virtual {v3, v4}, Landroid/app/Activity;->showDialog(I)V

    .line 269
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaNetworkSelectionDetailPref:Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;
    invoke-static {v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$1400(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->updateNetworkSearchingState(Z)V

    goto/16 :goto_1

    .line 273
    :cond_a
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #setter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mDelayRegAlertAfterGsmListLoaded:Z
    invoke-static {v3, v6}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$1502(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Z)Z

    .line 274
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mNetworkQueryService:Lcom/android/phone/INetworkQueryService;
    invoke-static {v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$1600(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Lcom/android/phone/INetworkQueryService;

    move-result-object v3

    if-nez v3, :cond_b

    .line 275
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->startAndBindNetworkQueryService()V
    invoke-static {v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$1700(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V

    goto/16 :goto_1

    .line 277
    :cond_b
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->loadGsmNetworksList()V
    invoke-static {v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$1800(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)V

    goto/16 :goto_1

    .line 280
    :cond_c
    if-nez v1, :cond_2

    .line 281
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #setter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mPhoneSwitchingMode:I
    invoke-static {v3, v7}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$102(Lcom/mediatek/settings/plugin/ManualNetworkSelection;I)I

    .line 282
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    const/16 v4, 0x3ea

    invoke-virtual {v3, v4}, Landroid/app/Activity;->showDialog(I)V

    .line 283
    if-eqz v0, :cond_d

    .line 284
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #getter for: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->mCdmaNetworkSelectionDetailPref:Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;
    invoke-static {v3}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$1400(Lcom/mediatek/settings/plugin/ManualNetworkSelection;)Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/mediatek/settings/plugin/CdmaNetworkSwitcherPreference;->updateNetworkSearchingState(Z)V

    goto/16 :goto_1

    .line 286
    :cond_d
    iget-object v3, p0, Lcom/mediatek/settings/plugin/ManualNetworkSelection$2;->this$0:Lcom/mediatek/settings/plugin/ManualNetworkSelection;

    #calls: Lcom/mediatek/settings/plugin/ManualNetworkSelection;->displayEmptyNetworkList(Z)V
    invoke-static {v3, v6}, Lcom/mediatek/settings/plugin/ManualNetworkSelection;->access$1900(Lcom/mediatek/settings/plugin/ManualNetworkSelection;Z)V

    goto/16 :goto_1
.end method
