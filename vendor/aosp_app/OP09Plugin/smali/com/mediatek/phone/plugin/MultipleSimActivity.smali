.class public Lcom/mediatek/phone/plugin/MultipleSimActivity;
.super Landroid/preference/PreferenceActivity;
.source "MultipleSimActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/phone/plugin/MultipleSimActivity$SIMInfoComparable;,
        Lcom/mediatek/phone/plugin/MultipleSimActivity$MultipleSimReceiver;
    }
.end annotation


# static fields
.field public static final CHAR_COUNT:I = 0x4

.field private static final DBG:Z = true

.field private static final DOUBLE_SIM_CARD:I = 0x2

.field private static final EXTRA_SLOTID:Ljava/lang/String; = "slotid"

.field public static final INIT_TITLE_NAME:Ljava/lang/String; = "INIT_TITLE_NAME"

.field public static final INIT_TITLE_NAME_STR:Ljava/lang/String; = "INIT_TITLE_NAME_STR"

.field public static final LIST_TITLE:Ljava/lang/String; = "LIST_TITLE_NAME"

.field private static final NATIVE_MCC_SIM1:Ljava/lang/String; = "460"

.field private static final NATIVE_MCC_SIM2:Ljava/lang/String; = "455"

.field private static final SETTINGS_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final SINGLE_SIM_CARD:I = 0x1

.field private static final SOLT_ID_0:I = 0x0

.field private static final SOLT_ID_1:I = 0x1

.field public static final SUB_TITLE_NAME:Ljava/lang/String; = "sub_title_name"

.field private static final TAG:Ljava/lang/String; = "OP09MultipleSimActivity"

.field public static final TARGET_CLASS:Ljava/lang/String; = "TARGET_CLASS"

.field public static final TARGET_PACKAGE:Ljava/lang/String; = "TARGET_PACKAGE"


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mListTitle:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreCheckForRunning:Lcom/mediatek/phone/plugin/PreCheckForRunning;

.field private mPref2CardSlot:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Lcom/mediatek/phone/plugin/MultipleSimActivity$MultipleSimReceiver;

.field private mSimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSimNumbers:I

.field private mTargetClass:Ljava/lang/String;

.field private mTargetPackage:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTitleName:I

.field private mTitleNameStr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mSimNumbers:I

    .line 55
    iput-object v1, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTargetPackage:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mPref2CardSlot:Ljava/util/HashMap;

    .line 71
    new-instance v0, Lcom/mediatek/phone/plugin/MultipleSimActivity$MultipleSimReceiver;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/phone/plugin/MultipleSimActivity$MultipleSimReceiver;-><init>(Lcom/mediatek/phone/plugin/MultipleSimActivity;Lcom/mediatek/phone/plugin/MultipleSimActivity$1;)V

    iput-object v0, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mReceiver:Lcom/mediatek/phone/plugin/MultipleSimActivity$MultipleSimReceiver;

    .line 101
    new-instance v0, Lcom/mediatek/phone/plugin/MultipleSimActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/plugin/MultipleSimActivity$1;-><init>(Lcom/mediatek/phone/plugin/MultipleSimActivity;)V

    iput-object v0, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 118
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/phone/plugin/MultipleSimActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->updatePreferenceEnableState()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/phone/plugin/MultipleSimActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->updatePreferenceList()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/phone/plugin/MultipleSimActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->log(Ljava/lang/String;)V

    return-void
.end method

.method private checkToStart(ILandroid/content/Intent;)V
    .locals 2
    .parameter "slotId"
    .parameter "intent"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mPreCheckForRunning:Lcom/mediatek/phone/plugin/PreCheckForRunning;

    const/16 v1, 0x12e

    invoke-virtual {v0, p2, p1, v1}, Lcom/mediatek/phone/plugin/PreCheckForRunning;->checkToRun(Landroid/content/Intent;II)V

    .line 364
    return-void
.end method

.method private getProperOperatorNumber(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)Ljava/lang/String;
    .locals 3
    .parameter "info"

    .prologue
    const/4 v2, 0x4

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, res:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 318
    iget-object v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    .line 319
    iget v1, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDispalyNumberFormat:I

    packed-switch v1, :pswitch_data_0

    .line 334
    const-string v0, ""

    .line 338
    :cond_0
    :goto_0
    return-object v0

    .line 321
    :pswitch_0
    const-string v0, ""

    .line 322
    goto :goto_0

    .line 324
    :pswitch_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 325
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 329
    :pswitch_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 330
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initPreferenceScreen()V
    .locals 6

    .prologue
    .line 258
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 259
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mSimNumbers:I

    if-ge v0, v3, :cond_0

    .line 260
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/phone/plugin/SimPreference;

    .line 261
    .local v1, p:Lcom/mediatek/phone/plugin/SimPreference;
    iget-object v3, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-object v3, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v3, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v3, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {v1, v3}, Lcom/mediatek/phone/plugin/SimPreference;->setSimColor(I)V

    .line 263
    invoke-virtual {v1, v0}, Lcom/mediatek/phone/plugin/SimPreference;->setSimSlot(I)V

    .line 264
    iget-object v3, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-object v3, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mediatek/phone/plugin/SimPreference;->setSimName(Ljava/lang/String;)V

    .line 265
    iget-object v3, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-object v3, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mediatek/phone/plugin/SimPreference;->setSimNumber(Ljava/lang/String;)V

    .line 266
    iget-object v3, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    invoke-direct {p0, v3}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->getProperOperatorNumber(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mediatek/phone/plugin/SimPreference;->setSimIconNumber(Ljava/lang/String;)V

    .line 267
    iget-object v4, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mPref2CardSlot:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    iget-object v3, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v3, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    .end local v1           #p:Lcom/mediatek/phone/plugin/SimPreference;
    :cond_0
    return-void
.end method

.method private isCdmaPhone()Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 377
    iget-object v4, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v0

    .line 378
    .local v0, sim0Type:I
    iget-object v4, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getPhoneTypeGemini(I)I

    move-result v1

    .line 379
    .local v1, sim1Type:I
    if-eq v0, v5, :cond_0

    if-ne v1, v5, :cond_1

    :cond_0
    move v2, v3

    .line 382
    :cond_1
    return v2
.end method

.method private isCdmaRoaming()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 272
    const/4 v2, 0x0

    .line 273
    .local v2, res:Z
    const-string v3, "OP09MultipleSimActivity"

    const-string v4, "in isCdmaRoaming"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v3, "gsm.sim.operator.numeric"

    const-string v4, "-1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, numeric:Ljava/lang/String;
    const-string v3, "OP09MultipleSimActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCdmaRoaming numeric :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v6, :cond_1

    .line 277
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, mcc:Ljava/lang/String;
    const-string v3, "OP09MultipleSimActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mcc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v3, "460"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "455"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 280
    :cond_0
    const/4 v2, 0x0

    .line 285
    .end local v0           #mcc:Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 282
    .restart local v0       #mcc:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isRadioOn(I)Z
    .locals 1
    .parameter "simId"

    .prologue
    .line 373
    const/4 v0, 0x1

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 128
    const-string v0, "OP09MultipleSimActivity"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method private skipUsIfNeeded()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 221
    invoke-direct {p0}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->isCdmaPhone()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 222
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 223
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    iget-object v4, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v3, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 225
    .local v3, slotId:I
    iget-object v4, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-wide v1, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    .line 226
    .local v1, simId:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skipUsIfNeeded slotId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v4, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 227
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skipUsIfNeeded simId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-wide v6, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 229
    iget-object v4, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTargetPackage:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTargetPackage:Ljava/lang/String;

    const-string v5, "com.android.settings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    const-string v4, "slotid"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    :goto_0
    iget-object v4, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTargetPackage:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget v4, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mSimNumbers:I

    if-ne v4, v8, :cond_0

    .line 239
    invoke-direct {p0, v3, v0}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->checkToStart(ILandroid/content/Intent;)V

    .line 240
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 255
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #simId:J
    .end local v3           #slotId:I
    :cond_0
    :goto_1
    return-void

    .line 232
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #simId:J
    .restart local v3       #slotId:I
    :cond_1
    const-string v4, "simId"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 242
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #simId:J
    .end local v3           #slotId:I
    :cond_2
    iget v4, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mSimNumbers:I

    if-ne v4, v8, :cond_0

    iget-object v4, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 243
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 244
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    iget-object v4, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v3, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 246
    .restart local v3       #slotId:I
    iget-object v4, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTargetPackage:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTargetPackage:Ljava/lang/String;

    const-string v5, "com.android.settings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 247
    const-string v4, "slotid"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    :goto_2
    iget-object v4, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTargetPackage:Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-direct {p0, v3, v0}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->checkToStart(ILandroid/content/Intent;)V

    .line 253
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 249
    :cond_3
    const-string v4, "simId"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method

.method private updatePreferenceEnableState()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 350
    const-string v4, "---------updatePreferenceEnableState---------"

    invoke-direct {p0, v4}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 354
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    iget-object v4, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-nez v4, :cond_0

    move v1, v5

    .line 355
    .local v1, isIdle:Z
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v4, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mSimNumbers:I

    if-ge v0, v4, :cond_2

    .line 356
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 357
    .local v2, p:Landroid/preference/Preference;
    iget-object v4, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mPref2CardSlot:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->isRadioOn(I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    move v4, v5

    :goto_2
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 355
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #isIdle:Z
    .end local v2           #p:Landroid/preference/Preference;
    :cond_0
    move v1, v6

    .line 354
    goto :goto_0

    .restart local v0       #i:I
    .restart local v1       #isIdle:Z
    .restart local v2       #p:Landroid/preference/Preference;
    :cond_1
    move v4, v6

    .line 357
    goto :goto_2

    .line 359
    .end local v2           #p:Landroid/preference/Preference;
    :cond_2
    const-string v4, "---------updatePreferenceEnableState  end---------"

    invoke-direct {p0, v4}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method private updatePreferenceList()V
    .locals 2

    .prologue
    .line 367
    const-string v1, "---------[update mutiple list views]---------"

    invoke-direct {p0, v1}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 368
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 369
    .local v0, listView:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 370
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, -0x1

    .line 134
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    const v1, 0x7f04000b

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 137
    new-instance v1, Lcom/mediatek/phone/plugin/PreCheckForRunning;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/plugin/PreCheckForRunning;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mPreCheckForRunning:Lcom/mediatek/phone/plugin/PreCheckForRunning;

    .line 138
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 139
    iget-object v1, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "TARGET_CLASS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "TARGET_PACKAGE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTargetPackage:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "INIT_TITLE_NAME_STR"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTitleNameStr:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "INIT_TITLE_NAME"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTitleName:I

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "LIST_TITLE_NAME"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mListTitle:I

    .line 148
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mSimList:Ljava/util/List;

    .line 149
    iget-object v1, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mSimNumbers:I

    .line 151
    iget-object v1, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mSimList:Ljava/util/List;

    new-instance v2, Lcom/mediatek/phone/plugin/MultipleSimActivity$SIMInfoComparable;

    invoke-direct {v2, p0}, Lcom/mediatek/phone/plugin/MultipleSimActivity$SIMInfoComparable;-><init>(Lcom/mediatek/phone/plugin/MultipleSimActivity;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 152
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 153
    iget-object v1, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->skipUsIfNeeded()V

    .line 162
    invoke-direct {p0}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->initPreferenceScreen()V

    .line 163
    iget-object v1, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mReceiver:Lcom/mediatek/phone/plugin/MultipleSimActivity$MultipleSimReceiver;

    iget-object v2, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 165
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 167
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 169
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 342
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 343
    iget-object v0, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mPreCheckForRunning:Lcom/mediatek/phone/plugin/PreCheckForRunning;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mPreCheckForRunning:Lcom/mediatek/phone/plugin/PreCheckForRunning;

    invoke-virtual {v0}, Lcom/mediatek/phone/plugin/PreCheckForRunning;->deRegister()V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mReceiver:Lcom/mediatek/phone/plugin/MultipleSimActivity$MultipleSimReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 347
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 188
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 189
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 196
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 191
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 192
    const/4 v1, 0x1

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 290
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 292
    .local v2, prefSet:Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 293
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    if-ne p2, v6, :cond_0

    iget-object v6, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 294
    iget-object v6, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mPref2CardSlot:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 295
    .local v5, slotId:I
    iget-object v6, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-wide v3, v6, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    .line 296
    .local v3, simId:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceTreeClick slotId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mPref2CardSlot:Ljava/util/HashMap;

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 297
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceTreeClick simId"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mSimList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-wide v8, v6, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 298
    invoke-direct {p0, v5}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->isRadioOn(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 299
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 300
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    iget-object v6, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTargetPackage:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTargetPackage:Ljava/lang/String;

    const-string v7, "com.android.settings"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 302
    const-string v6, "slotid"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    :goto_1
    const-string v6, "sub_title_name"

    invoke-static {p0, v5}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v7

    iget-object v7, v7, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    iget-object v6, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTargetPackage:Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    invoke-direct {p0, v5, v1}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->checkToStart(ILandroid/content/Intent;)V

    .line 292
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #simId:J
    .end local v5           #slotId:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 304
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v3       #simId:J
    .restart local v5       #slotId:I
    :cond_1
    const-string v6, "simId"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 312
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #simId:J
    .end local v5           #slotId:I
    :cond_2
    const/4 v6, 0x0

    return v6
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, -0x1

    .line 214
    const-string v0, "-----------[onRestoreInstanceState]-----------"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 215
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 216
    const-string v0, "INIT_TITLE_NAME"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTitleName:I

    .line 217
    const-string v0, "LIST_TITLE_NAME"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mListTitle:I

    .line 218
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 174
    invoke-direct {p0}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->updatePreferenceList()V

    .line 175
    const-string v0, "OP09MultipleSimActivity"

    const-string v1, "onResume start"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->updatePreferenceEnableState()V

    .line 177
    const-string v0, "OP09MultipleSimActivity"

    const-string v1, "onResume start"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget v0, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTitleName:I

    if-lez v0, :cond_0

    .line 179
    iget v0, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTitleName:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTitleNameStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTitleNameStr:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 206
    const-string v0, "-----------[onSaveInstanceState]-----------"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/plugin/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 207
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 208
    const-string v0, "INIT_TITLE_NAME"

    iget v1, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mTitleName:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    const-string v0, "LIST_TITLE_NAME"

    iget v1, p0, Lcom/mediatek/phone/plugin/MultipleSimActivity;->mListTitle:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    return-void
.end method
