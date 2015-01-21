.class public Lcom/mediatek/settings/NetworkEditor;
.super Landroid/preference/PreferenceActivity;
.source "NetworkEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/NetworkEditor$NetworkInfo;
    }
.end annotation


# static fields
.field private static final BUTTON_NETWORK_ID_KEY:Ljava/lang/String; = "network_id_key"

.field private static final BUTTON_NEWWORK_MODE_KEY:Ljava/lang/String; = "network_mode_key"

.field private static final BUTTON_PRIORITY_KEY:Ljava/lang/String; = "priority_key"

.field private static final DIALOG_NETWORK_ID:I = 0x0

.field private static final DUAL_MODE:I = 0x2

.field private static final GSM:I = 0x0

.field private static final MENU_DELETE:I = 0x1

.field private static final MENU_DISCARD:I = 0x3

.field private static final MENU_SAVE:I = 0x2

.field public static final PLMN_ADD:Ljava/lang/String; = "plmn_add"

.field public static final PLMN_CODE:Ljava/lang/String; = "plmn_code"

.field public static final PLMN_NAME:Ljava/lang/String; = "plmn_name"

.field public static final PLMN_PRIORITY:Ljava/lang/String; = "plmn_priority"

.field public static final PLMN_SERVICE:Ljava/lang/String; = "plmn_service"

.field public static final PLMN_SIZE:Ljava/lang/String; = "plmn_size"

.field public static final PLMN_SLOT:Ljava/lang/String; = "plmn_slot"

.field public static final RESULT_DELETE:I = 0xc8

.field public static final RESULT_MODIFY:I = 0x64

.field private static final RIL_2G:I = 0x1

.field private static final RIL_2G_3G:I = 0x5

.field private static final RIL_3G:I = 0x4

.field private static final TAG:Ljava/lang/String; = "NetworkEditor"

.field private static final WCDMA_TDSCDMA:I = 0x1


# instance fields
.field private m3GSlotId:I

.field private mActSupport:Z

.field private mAirplaneModeEnabled:Z

.field private mDualSimMode:I

.field private mIdDialog:Landroid/app/AlertDialog;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNetworkId:Landroid/preference/Preference;

.field private mNetworkIdListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNetworkIdText:Landroid/widget/EditText;

.field private mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

.field private mNetworkMode:Landroid/preference/ListPreference;

.field private mNotSet:Ljava/lang/String;

.field private mPLMNName:Ljava/lang/String;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPriority:Landroid/preference/EditTextPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 73
    iput-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkId:Landroid/preference/Preference;

    .line 74
    iput-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mPriority:Landroid/preference/EditTextPreference;

    .line 75
    iput-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkMode:Landroid/preference/ListPreference;

    .line 77
    iput-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNotSet:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/NetworkEditor;->mAirplaneModeEnabled:Z

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/settings/NetworkEditor;->mDualSimMode:I

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/NetworkEditor;->mActSupport:Z

    .line 87
    iput-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mIdDialog:Landroid/app/AlertDialog;

    .line 91
    new-instance v0, Lcom/mediatek/settings/NetworkEditor$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/NetworkEditor$1;-><init>(Lcom/mediatek/settings/NetworkEditor;)V

    iput-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 105
    new-instance v0, Lcom/mediatek/settings/NetworkEditor$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/NetworkEditor$2;-><init>(Lcom/mediatek/settings/NetworkEditor;)V

    iput-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    new-instance v0, Lcom/mediatek/settings/NetworkEditor$3;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/NetworkEditor$3;-><init>(Lcom/mediatek/settings/NetworkEditor;)V

    iput-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkIdListener:Landroid/content/DialogInterface$OnClickListener;

    .line 482
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/NetworkEditor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/mediatek/settings/NetworkEditor;->setScreenEnabled()V

    return-void
.end method

.method static synthetic access$102(Lcom/mediatek/settings/NetworkEditor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/mediatek/settings/NetworkEditor;->mAirplaneModeEnabled:Z

    return p1
.end method

.method static synthetic access$202(Lcom/mediatek/settings/NetworkEditor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/mediatek/settings/NetworkEditor;->mDualSimMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/settings/NetworkEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/mediatek/settings/NetworkEditor;->mSlotId:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/NetworkEditor;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkIdText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/settings/NetworkEditor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/mediatek/settings/NetworkEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/settings/NetworkEditor;)Lcom/mediatek/settings/NetworkEditor$NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/settings/NetworkEditor;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkId:Landroid/preference/Preference;

    return-object v0
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 336
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    :cond_0
    const-string p1, ""

    .line 339
    .end local p1
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 344
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 345
    :cond_0
    iget-object p1, p0, Lcom/mediatek/settings/NetworkEditor;->mNotSet:Ljava/lang/String;

    .line 347
    .end local p1
    :cond_1
    return-object p1
.end method

.method private commitPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 424
    const-string v2, "com.android.phone_preferences"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 426
    .local v1, mPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 427
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 428
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 429
    return-void
.end method

.method public static covertApNW2Ril(I)I
    .locals 2
    .parameter "mode"

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, result:I
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 320
    const/4 v0, 0x5

    .line 326
    :goto_0
    return v0

    .line 321
    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 322
    const/4 v0, 0x4

    goto :goto_0

    .line 324
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static covertRilNW2Ap(I)I
    .locals 2
    .parameter "mode"

    .prologue
    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, result:I
    const/4 v1, 0x5

    if-lt p0, v1, :cond_0

    .line 308
    const/4 v0, 0x2

    .line 314
    :goto_0
    return v0

    .line 309
    :cond_0
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_1

    .line 310
    const/4 v0, 0x1

    goto :goto_0

    .line 312
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createNetworkInfo(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 330
    const-string v0, "plmn_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mPLMNName:Ljava/lang/String;

    .line 331
    invoke-direct {p0, p1}, Lcom/mediatek/settings/NetworkEditor;->updateNetWorkInfo(Landroid/content/Intent;)V

    .line 332
    const-string v0, "plmn_slot"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/NetworkEditor;->mSlotId:I

    .line 333
    return-void
.end method

.method private genNetworkInfo(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 268
    const-string v3, "plmn_name"

    iget-object v4, p0, Lcom/mediatek/settings/NetworkEditor;->mPLMNName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mediatek/settings/NetworkEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v3, "plmn_code"

    iget-object v4, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, priority:I
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "plmn_size"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 273
    .local v2, size:I
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor;->mPriority:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 277
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "plmn_add"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    if-le v1, v2, :cond_0

    .line 279
    move v1, v2

    .line 286
    :cond_0
    :goto_1
    const-string v3, "plmn_priority"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    const-string v3, "priority_key"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/mediatek/settings/NetworkEditor;->commitPreferenceStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :try_start_1
    const-string v3, "plmn_service"

    iget-object v4, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/settings/NetworkEditor;->covertApNW2Ril(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    :goto_2
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "NetworkEditor"

    const-string v4, "parse value of basband error"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_1
    if-lt v1, v2, :cond_0

    .line 283
    add-int/lit8 v1, v2, -0x1

    goto :goto_1

    .line 294
    :catch_1
    move-exception v0

    .line 295
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const-string v3, "plmn_service"

    invoke-static {v5}, Lcom/mediatek/settings/NetworkEditor;->covertApNW2Ril(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method

.method private setRemovedNetwork()V
    .locals 2

    .prologue
    .line 300
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/settings/PLMNListPreference;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0xc8

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 302
    invoke-direct {p0, v0}, Lcom/mediatek/settings/NetworkEditor;->genNetworkInfo(Landroid/content/Intent;)V

    .line 303
    return-void
.end method

.method private setScreenEnabled()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 352
    const/4 v1, 0x0

    .line 353
    .local v1, isShouldEnabled:Z
    iget-object v4, p0, Lcom/mediatek/settings/NetworkEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    if-nez v4, :cond_0

    move v0, v2

    .line 354
    .local v0, isIdle:Z
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v4, p0, Lcom/mediatek/settings/NetworkEditor;->mAirplaneModeEnabled:Z

    if-nez v4, :cond_1

    iget v4, p0, Lcom/mediatek/settings/NetworkEditor;->mDualSimMode:I

    if-eqz v4, :cond_1

    move v1, v2

    .line 355
    :goto_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 356
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 357
    iget-object v4, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkMode:Landroid/preference/ListPreference;

    iget-boolean v5, p0, Lcom/mediatek/settings/NetworkEditor;->mActSupport:Z

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 358
    return-void

    .end local v0           #isIdle:Z
    :cond_0
    move v0, v3

    .line 353
    goto :goto_0

    .restart local v0       #isIdle:Z
    :cond_1
    move v1, v3

    .line 354
    goto :goto_1

    :cond_2
    move v2, v3

    .line 357
    goto :goto_2
.end method

.method private updateNetWorkInfo(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 436
    const-string v3, "NetworkEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---updateNetWorkInfo-- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-virtual {v5}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->getPriority()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-virtual {v5}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->getNetworkId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-virtual {v5}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->getNetWorkMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-virtual {v3}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 440
    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    const-string v4, "plmn_code"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->setNetworkId(Ljava/lang/String;)V

    .line 442
    :cond_0
    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkId:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-virtual {v4}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->getNetworkId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/settings/NetworkEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 444
    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    #getter for: Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->mPriority:I
    invoke-static {v3}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->access$800(Lcom/mediatek/settings/NetworkEditor$NetworkInfo;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 445
    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    const-string v4, "plmn_priority"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->setPriority(I)V

    .line 447
    :cond_1
    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor;->mPriority:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-virtual {v4}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->getPriority()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor;->mPriority:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-virtual {v4}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->getPriority()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 453
    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-virtual {v3}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->getNetWorkMode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 454
    const-string v3, "plmn_service"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 456
    .local v0, act:I
    const-string v3, "NetworkEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "act = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "plmn_add"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 458
    if-eqz v0, :cond_6

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/settings/NetworkEditor;->mActSupport:Z

    .line 460
    :cond_2
    const-string v1, "NetworkEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mActSupport = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/settings/NetworkEditor;->mActSupport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-static {v0}, Lcom/mediatek/settings/NetworkEditor;->covertRilNW2Ap(I)I

    move-result v0

    .line 462
    if-ltz v0, :cond_3

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    .line 463
    :cond_3
    const/4 v0, 0x0

    .line 468
    :cond_4
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 472
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->setNetWorkMode(Ljava/lang/String;)V

    .line 475
    .end local v0           #act:I
    :cond_5
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkMode:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-virtual {v2}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->getNetWorkMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 476
    return-void

    .restart local v0       #act:I
    :cond_6
    move v1, v2

    .line 458
    goto :goto_0
.end method

.method private validateAndSetResult()V
    .locals 2

    .prologue
    .line 262
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/settings/PLMNListPreference;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 264
    invoke-direct {p0, v0}, Lcom/mediatek/settings/NetworkEditor;->genNetworkInfo(Landroid/content/Intent;)V

    .line 265
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor;->validate()V

    .line 405
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 411
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const v1, 0x7f060015

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 142
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNotSet:Ljava/lang/String;

    .line 143
    const-string v1, "network_id_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkId:Landroid/preference/Preference;

    .line 144
    const-string v1, "priority_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mPriority:Landroid/preference/EditTextPreference;

    .line 145
    const-string v1, "network_mode_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkMode:Landroid/preference/ListPreference;

    .line 146
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->get3GCapabilitySIM()I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/NetworkEditor;->m3GSlotId:I

    .line 147
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mPriority:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 150
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/mediatek/settings/NetworkEditor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 151
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 152
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    new-instance v1, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;-><init>(Lcom/mediatek/settings/NetworkEditor;)V

    iput-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    .line 157
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/settings/NetworkEditor;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 159
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 161
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 163
    :cond_1
    const-string v1, "NetworkEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m3GSlotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/NetworkEditor;->m3GSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 372
    if-nez p1, :cond_1

    .line 373
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkIdText:Landroid/widget/EditText;

    .line 374
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNotSet:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkIdText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkIdText:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 378
    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkIdText:Landroid/widget/EditText;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 379
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08010f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkIdText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkIdListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mIdDialog:Landroid/app/AlertDialog;

    .line 385
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mIdDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 386
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mIdDialog:Landroid/app/AlertDialog;

    .line 388
    :cond_1
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 214
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 215
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "plmn_add"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    const v0, 0x10403c2

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 218
    :cond_0
    const/4 v0, 0x2

    const v1, 0x7f080264

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 219
    const/4 v0, 0x3

    const/high16 v1, 0x104

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 220
    return v3
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 180
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 181
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/settings/NetworkEditor;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 185
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 242
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 257
    :goto_0
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 258
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 244
    :sswitch_1
    invoke-direct {p0}, Lcom/mediatek/settings/NetworkEditor;->setRemovedNetwork()V

    goto :goto_0

    .line 247
    :sswitch_2
    invoke-direct {p0}, Lcom/mediatek/settings/NetworkEditor;->validateAndSetResult()V

    goto :goto_0

    .line 252
    :sswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 253
    const/4 v0, 0x1

    goto :goto_1

    .line 242
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x102002c -> :sswitch_3
    .end sparse-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 188
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, value:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/settings/NetworkEditor;->mPriority:Landroid/preference/EditTextPreference;

    if-ne p1, v5, :cond_1

    .line 190
    const/4 v3, 0x0

    .line 192
    .local v3, priority:I
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/settings/NetworkEditor;->mPriority:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 196
    :goto_0
    iget-object v5, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-virtual {v5, v3}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->setPriority(I)V

    .line 197
    iget-object v5, p0, Lcom/mediatek/settings/NetworkEditor;->mPriority:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v4}, Lcom/mediatek/settings/NetworkEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 209
    .end local v3           #priority:I
    :cond_0
    :goto_1
    const/4 v5, 0x1

    return v5

    .line 193
    .restart local v3       #priority:I
    :catch_0
    move-exception v0

    .line 194
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "NetworkEditor"

    const-string v6, "onPreferenceChange new value for priority error"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #priority:I
    :cond_1
    iget-object v5, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkMode:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_0

    .line 199
    iget-object v5, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 200
    const-string v2, ""

    .line 201
    .local v2, netWorkModeValue:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 204
    .local v1, index:I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09001b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v2, v5, v1

    .line 206
    iget-object v5, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkInfo:Lcom/mediatek/settings/NetworkEditor$NetworkInfo;

    invoke-virtual {v5, v2}, Lcom/mediatek/settings/NetworkEditor$NetworkInfo;->setNetWorkMode(Ljava/lang/String;)V

    .line 207
    iget-object v5, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkMode:Landroid/preference/ListPreference;

    invoke-virtual {v5, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 362
    iget-object v0, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkId:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 363
    invoke-virtual {p0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 364
    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 365
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkEditor;->validate()V

    .line 367
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 225
    const/4 v2, 0x0

    .line 226
    .local v2, isShouldEnabled:Z
    iget-object v5, p0, Lcom/mediatek/settings/NetworkEditor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v5

    if-nez v5, :cond_2

    move v1, v3

    .line 227
    .local v1, isIdle:Z
    :goto_0
    if-eqz v1, :cond_3

    iget-boolean v5, p0, Lcom/mediatek/settings/NetworkEditor;->mAirplaneModeEnabled:Z

    if-nez v5, :cond_3

    iget v5, p0, Lcom/mediatek/settings/NetworkEditor;->mDualSimMode:I

    if-eqz v5, :cond_3

    move v2, v3

    .line 228
    :goto_1
    iget-object v5, p0, Lcom/mediatek/settings/NetworkEditor;->mNotSet:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/settings/NetworkEditor;->mNotSet:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/settings/NetworkEditor;->mPriority:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    move v0, v3

    .line 229
    .local v0, isEmpty:Z
    :goto_2
    if-eqz p1, :cond_1

    .line 230
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 231
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "plmn_add"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 232
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    :goto_3
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 237
    :cond_1
    :goto_4
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3

    .end local v0           #isEmpty:Z
    .end local v1           #isIdle:Z
    :cond_2
    move v1, v4

    .line 226
    goto :goto_0

    .restart local v1       #isIdle:Z
    :cond_3
    move v2, v4

    .line 227
    goto :goto_1

    :cond_4
    move v0, v4

    .line 228
    goto :goto_2

    .restart local v0       #isEmpty:Z
    :cond_5
    move v3, v4

    .line 232
    goto :goto_3

    .line 234
    :cond_6
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    if-eqz v2, :cond_7

    if-nez v0, :cond_7

    :goto_5
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4

    :cond_7
    move v3, v4

    goto :goto_5
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/settings/NetworkEditor;->createNetworkInfo(Landroid/content/Intent;)V

    .line 169
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/settings/NetworkEditor;->mAirplaneModeEnabled:Z

    .line 171
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/NetworkEditor;->mDualSimMode:I

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/settings/NetworkEditor;->setScreenEnabled()V

    .line 176
    return-void

    .line 169
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 416
    return-void
.end method

.method public validate()V
    .locals 4

    .prologue
    .line 392
    iget-object v2, p0, Lcom/mediatek/settings/NetworkEditor;->mNetworkIdText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 393
    .local v0, len:I
    const/4 v1, 0x1

    .line 394
    .local v1, state:Z
    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    const/4 v2, 0x6

    if-le v0, v2, :cond_1

    .line 395
    :cond_0
    const/4 v1, 0x0

    .line 397
    :cond_1
    iget-object v2, p0, Lcom/mediatek/settings/NetworkEditor;->mIdDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    .line 398
    iget-object v2, p0, Lcom/mediatek/settings/NetworkEditor;->mIdDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 400
    :cond_2
    return-void
.end method
