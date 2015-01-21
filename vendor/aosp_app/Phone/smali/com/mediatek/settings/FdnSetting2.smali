.class public Lcom/mediatek/settings/FdnSetting2;
.super Landroid/preference/PreferenceActivity;
.source "FdnSetting2.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;
    }
.end annotation


# static fields
.field private static final BUTTON_CHANGE_PIN2_KEY:Ljava/lang/String; = "button_change_pin2_key"

.field private static final BUTTON_FDN_ENABLE_KEY:Ljava/lang/String; = "button_fdn_enable_key"

.field private static final BUTTON_FDN_LIST_KEY:Ljava/lang/String; = "button_fdn_list_key"

.field private static final EVENT_PIN2_ENTRY_COMPLETE:I = 0x64

.field private static final GET_SIM_RETRY_EMPTY:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/FdnSetting2"

.field private static final MAX_PIN_LENGTH:I = 0x8

.field private static final MIN_PIN_LENGTH:I = 0x4


# instance fields
.field private mButtonChangePin2:Landroid/preference/Preference;

.field private mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

.field private mButtonFDNList:Landroid/preference/Preference;

.field private mExt:Lcom/mediatek/phone/ext/SettingsExtension;

.field private mFDNHandler:Landroid/os/Handler;

.field private mFdnSupport:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryPin2New:I

.field private mRetryPin2Old:I

.field private mSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    .line 138
    new-instance v0, Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/settings/FdnSetting2$FdnSetting2BroadcastReceiver;-><init>(Lcom/mediatek/settings/FdnSetting2;Lcom/mediatek/settings/FdnSetting2$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 272
    new-instance v0, Lcom/mediatek/settings/FdnSetting2$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/FdnSetting2$1;-><init>(Lcom/mediatek/settings/FdnSetting2;)V

    iput-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mFDNHandler:Landroid/os/Handler;

    .line 573
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/FdnSetting2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2Count()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/FdnSetting2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/FdnSetting2;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/settings/FdnSetting2;->displayMessage(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/settings/FdnSetting2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateFDNPreference()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/settings/FdnSetting2;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/settings/FdnSetting2;->resetFDNDialog(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/settings/FdnSetting2;)Lcom/android/phone/EditPinPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/settings/FdnSetting2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateEnableFDN()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/settings/FdnSetting2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/settings/FdnSetting2;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput p1, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/settings/FdnSetting2;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/settings/FdnSetting2;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/mediatek/settings/FdnSetting2;->updateMenuEnableState(Z)V

    return-void
.end method

.method private displayMessage(I)V
    .locals 3
    .parameter "strId"

    .prologue
    .line 307
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, text:Ljava/lang/String;
    const v1, 0x7f080293

    if-ne p1, v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mExt:Lcom/mediatek/phone/ext/SettingsExtension;

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/phone/ext/SettingsExtension;->replaceSimBySlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 311
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 314
    return-void
.end method

.method private getRetryPin2()Ljava/lang/String;
    .locals 6

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2Count()I

    move-result v0

    .line 161
    .local v0, retryCount:I
    iput v0, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    .line 162
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRetryPin2 retryCount ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    packed-switch v0, :pswitch_data_0

    .line 170
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f08014b

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 165
    :pswitch_1
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "getRetryPin2,GET_SIM_RETRY_EMPTY"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, " "

    goto :goto_0

    .line 168
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f08014a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 163
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getRetryPin2Count()I
    .locals 3

    .prologue
    .line 151
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    sget-object v1, Lcom/mediatek/phone/gemini/GeminiUtils;->GEMINI_PIN2_RETRY:[Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    aget-object v0, v1, v2

    .line 156
    .local v0, pin2RetryString:Ljava/lang/String;
    :goto_0
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 154
    .end local v0           #pin2RetryString:Ljava/lang/String;
    :cond_0
    const-string v0, "gsm.sim.retry.pin2"

    .restart local v0       #pin2RetryString:Ljava/lang/String;
    goto :goto_0
.end method

.method private getRetryPuk2Count()I
    .locals 3

    .prologue
    .line 141
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    sget-object v1, Lcom/mediatek/phone/gemini/GeminiUtils;->GEMINI_PUK2_RETRY:[Ljava/lang/String;

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    aget-object v0, v1, v2

    .line 146
    .local v0, puk2RetryStr:Ljava/lang/String;
    :goto_0
    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 144
    .end local v0           #puk2RetryStr:Ljava/lang/String;
    :cond_0
    const-string v0, "gsm.sim.retry.puk2"

    .restart local v0       #puk2RetryStr:Ljava/lang/String;
    goto :goto_0
.end method

.method private initSlotId()V
    .locals 4

    .prologue
    .line 634
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 635
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "simId"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    .line 636
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mSlotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    iget v1, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    invoke-static {p0, v1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 638
    .local v0, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 639
    iget-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 642
    .end local v0           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->registerCallBacks()V

    .line 643
    return-void
.end method

.method private initUIState()V
    .locals 4

    .prologue
    .line 619
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0xa

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/EditPinPreference;->initFdnModeData(Lcom/android/internal/telephony/Phone;II)V

    .line 620
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateFDNPreference()V

    .line 621
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2Count()I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    .line 622
    const-string v0, "Settings/FdnSetting2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate,  mRetryPin2Old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->setFDNSupport()V

    .line 626
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->isPhoneBookReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    const-string v0, "Settings/FdnSetting2"

    const-string v1, "PHB is not ready, can not enable fdn"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 631
    :cond_0
    return-void
.end method

.method private isPhoneBookReady()Z
    .locals 3

    .prologue
    .line 557
    const/4 v0, 0x0

    .line 558
    .local v0, isPhoneBookReady:Z
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 559
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->isPhbReady()Z

    move-result v0

    .line 563
    :goto_0
    if-nez v0, :cond_0

    .line 564
    const v1, 0x7f0800ba

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f080086

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/settings/FdnSetting2;->showTipToast(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :cond_0
    return v0

    .line 561
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->isPhbReady()Z

    move-result v0

    goto :goto_0
.end method

.method private registerCallBacks()V
    .locals 2

    .prologue
    .line 607
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 609
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 613
    :cond_0
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 615
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 616
    return-void
.end method

.method private resetFDNDialog(I)V
    .locals 4
    .parameter "strId"

    .prologue
    const v3, 0x7f080287

    .line 211
    if-eqz p1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 220
    :goto_0
    return-void

    .line 216
    :cond_0
    const-string v0, "Settings/FdnSetting2"

    const-string v1, "resetFDNDialog 0"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setFDNSupport()V
    .locals 3

    .prologue
    .line 546
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 551
    .local v0, iccCard:Lcom/android/internal/telephony/IccCard;
    :goto_0
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->isFDNExist()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    .line 552
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    iget-boolean v2, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 553
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    iget-boolean v2, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 554
    return-void

    .line 549
    .end local v0           #iccCard:Lcom/android/internal/telephony/IccCard;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .restart local v0       #iccCard:Lcom/android/internal/telephony/IccCard;
    goto :goto_0
.end method

.method private toggleFDNEnable(Z)V
    .locals 8
    .parameter "positiveResult"

    .prologue
    const/4 v5, 0x0

    .line 226
    const-string v4, "Settings/FdnSetting2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleFDNEnable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    if-nez p1, :cond_0

    .line 229
    const-string v4, "Settings/FdnSetting2"

    const-string v6, "toggleFDNEnable positiveResult is false"

    invoke-static {v4, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-direct {p0, v5}, Lcom/mediatek/settings/FdnSetting2;->resetFDNDialog(I)V

    .line 231
    iget v4, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    iput v4, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    .line 232
    const-string v4, "Settings/FdnSetting2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggleFDNEnable mRetryPin2Old="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :goto_0
    return-void

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->isPhoneBookReady()Z

    move-result v4

    if-nez v4, :cond_1

    .line 239
    const-string v4, "Settings/FdnSetting2"

    const-string v5, "PHB is not ready, can not enable fdn"

    invoke-static {v4, v5}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_1
    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, password:Ljava/lang/String;
    invoke-direct {p0, v3, v5}, Lcom/mediatek/settings/FdnSetting2;->validatePin(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 249
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 250
    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v6, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 254
    .local v0, iccCard:Lcom/android/internal/telephony/IccCard;
    :goto_1
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    .line 255
    .local v1, isEnabled:Z
    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mFDNHandler:Landroid/os/Handler;

    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 258
    .local v2, onComplete:Landroid/os/Message;
    if-nez v1, :cond_3

    const/4 v4, 0x1

    :goto_2
    invoke-interface {v0, v4, v3, v2}, Lcom/android/internal/telephony/IccCard;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 266
    .end local v0           #iccCard:Lcom/android/internal/telephony/IccCard;
    .end local v1           #isEnabled:Z
    .end local v2           #onComplete:Landroid/os/Message;
    :goto_3
    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    :cond_2
    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .restart local v0       #iccCard:Lcom/android/internal/telephony/IccCard;
    goto :goto_1

    .restart local v1       #isEnabled:Z
    .restart local v2       #onComplete:Landroid/os/Message;
    :cond_3
    move v4, v5

    .line 258
    goto :goto_2

    .line 261
    .end local v0           #iccCard:Lcom/android/internal/telephony/IccCard;
    .end local v1           #isEnabled:Z
    .end local v2           #onComplete:Landroid/os/Message;
    :cond_4
    const v4, 0x7f08028e

    invoke-direct {p0, v4}, Lcom/mediatek/settings/FdnSetting2;->resetFDNDialog(I)V

    .line 262
    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 263
    iget-object v4, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v4}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    goto :goto_3
.end method

.method private updateEnableFDN()V
    .locals 3

    .prologue
    .line 337
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 342
    .local v0, iccCard:Lcom/android/internal/telephony/IccCard;
    :goto_0
    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "updateEnableFDN is FdnEnabled=2131231313"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f080253

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 345
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f08024e

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 346
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f080251

    invoke-virtual {v1, v2}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 353
    :goto_1
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "updateEnableFDN"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/settings/FdnSetting2;->resetFDNDialog(I)V

    .line 355
    return-void

    .line 340
    .end local v0           #iccCard:Lcom/android/internal/telephony/IccCard;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .restart local v0       #iccCard:Lcom/android/internal/telephony/IccCard;
    goto :goto_0

    .line 348
    :cond_1
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "updateEnableFDN is not FdnEnabled=2131231312"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f080254

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 350
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f08024f

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 351
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    const v2, 0x7f080250

    invoke-virtual {v1, v2}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    goto :goto_1
.end method

.method private updateFDNPreference()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 358
    const/4 v0, 0x0

    .line 362
    .local v0, dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v2, v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    if-eqz v2, :cond_0

    .line 363
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    .end local v0           #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    check-cast v0, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 365
    .restart local v0       #dualPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_0
    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 366
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 367
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 368
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 439
    :goto_0
    return-void

    .line 370
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPin2Count()I

    move-result v2

    if-nez v2, :cond_3

    .line 371
    iput v5, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    .line 372
    const-string v2, "Settings/FdnSetting2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFDNPreference, mRetryPin2New="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 374
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 375
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const v3, 0x7f08014d

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 377
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->getRetryPuk2Count()I

    move-result v2

    if-nez v2, :cond_2

    .line 378
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 379
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mExt:Lcom/mediatek/phone/ext/SettingsExtension;

    const v3, 0x7f08014e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/phone/ext/SettingsExtension;->replaceSimBySlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 380
    .local v1, textMsg:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 387
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateEnableFDN()V

    goto :goto_0

    .line 382
    .end local v1           #textMsg:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 383
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mExt:Lcom/mediatek/phone/ext/SettingsExtension;

    const v3, 0x7f080286

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/phone/ext/SettingsExtension;->replaceSimBySlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 384
    .restart local v1       #textMsg:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 389
    .end local v1           #textMsg:Ljava/lang/String;
    :cond_3
    const-string v2, "Settings/FdnSetting2"

    const-string v3, "updateFDNPreference"

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    iget-boolean v3, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 391
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 392
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const v3, 0x7f080252

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 393
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    const v3, 0x7f080256

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 394
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    iget-boolean v3, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 395
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateEnableFDN()V

    goto/16 :goto_0
.end method

.method private updateMenuEnableState(Z)V
    .locals 4
    .parameter "bEnable"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 601
    iget-object v3, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    iget-boolean v0, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 602
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    iget-boolean v3, p0, Lcom/mediatek/settings/FdnSetting2;->mFdnSupport:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 603
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 604
    return-void

    :cond_0
    move v0, v2

    .line 601
    goto :goto_0

    :cond_1
    move v1, v2

    .line 602
    goto :goto_1
.end method

.method private validatePin(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "pin"
    .parameter "isPUK"

    .prologue
    const/16 v1, 0x8

    .line 326
    if-eqz p2, :cond_0

    move v0, v1

    .line 329
    .local v0, pinMinimum:I
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 326
    .end local v0           #pinMinimum:I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 329
    .restart local v0       #pinMinimum:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 443
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 445
    const v2, 0x7f06000e

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 447
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 449
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/ext/ExtensionManager;->getSettingsExtension()Lcom/mediatek/phone/ext/SettingsExtension;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mExt:Lcom/mediatek/phone/ext/SettingsExtension;

    .line 452
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 453
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "button_fdn_enable_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/EditPinPreference;

    iput-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    .line 454
    const-string v2, "button_change_pin2_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    .line 455
    const-string v2, "button_fdn_list_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    .line 457
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    if-eqz v2, :cond_0

    .line 458
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 459
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Lcom/mediatek/settings/FdnSetting2$2;

    invoke-direct {v3, p0}, Lcom/mediatek/settings/FdnSetting2$2;-><init>(Lcom/mediatek/settings/FdnSetting2;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 483
    :cond_0
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    .line 484
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 486
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    if-eqz v2, :cond_2

    .line 487
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 490
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 491
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_3

    .line 493
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 495
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->initSlotId()V

    .line 496
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->initUIState()V

    .line 497
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 539
    const-string v0, "Settings/FdnSetting2"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 541
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 542
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 526
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 527
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 534
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 529
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 530
    const/4 v1, 0x1

    goto :goto_0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .locals 2
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    if-ne p1, v0, :cond_0

    .line 205
    const-string v0, "Settings/FdnSetting2"

    const-string v1, "onPinEntered"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0, p2}, Lcom/mediatek/settings/FdnSetting2;->toggleFDNEnable(Z)V

    .line 208
    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 175
    const-string v2, "Settings/FdnSetting2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceClick"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonChangePin2:Landroid/preference/Preference;

    if-ne p1, v2, :cond_1

    .line 177
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 178
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "pin2"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 179
    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    if-ltz v2, :cond_0

    .line 180
    const-string v2, "simId"

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    :cond_0
    const-class v2, Lcom/android/phone/ChangeIccPinScreen;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 183
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 186
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonFDNList:Landroid/preference/Preference;

    if-ne p1, v2, :cond_2

    .line 187
    const-string v2, "Settings/FdnSetting2"

    const-string v3, "onPreferenceClick mButtonFDNList"

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->isPhoneBookReady()Z

    move-result v2

    if-nez v2, :cond_3

    .line 189
    const/4 v1, 0x0

    .line 197
    :cond_2
    :goto_0
    return v1

    .line 191
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/FdnList;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .restart local v0       #intent:Landroid/content/Intent;
    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    if-ltz v2, :cond_4

    .line 193
    const-string v2, "simId"

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mSlotId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    :cond_4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 501
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 502
    invoke-direct {p0}, Lcom/mediatek/settings/FdnSetting2;->updateFDNPreference()V

    .line 503
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 505
    .local v0, fdnDialog:Landroid/app/Dialog;
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, mRetryPin2New= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRetryPin2Old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget v1, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    iget v2, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    if-eq v1, v2, :cond_1

    .line 509
    iget v1, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    iput v1, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    .line 510
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, fdnDialog= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    if-eqz v0, :cond_0

    .line 512
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, fdnDialog.isShowing()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_0
    const-string v1, "Settings/FdnSetting2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, second mRetryPin2New= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2New:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRetryPin2Old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/FdnSetting2;->mRetryPin2Old:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 518
    const-string v1, "Settings/FdnSetting2"

    const-string v2, "onResume, isShowing"

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v1, p0, Lcom/mediatek/settings/FdnSetting2;->mButtonEnableFDN:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 522
    :cond_1
    return-void
.end method

.method public showTipToast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 570
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 571
    return-void
.end method
