.class public Lcom/mediatek/settings/CallBarring;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CallBarring.java"

# interfaces
.implements Lcom/mediatek/settings/CallBarringInterface;


# static fields
.field private static final BUTTON_ALL_INCOMING_EXCEPT:Ljava/lang/String; = "all_incoming_except_key"

.field private static final BUTTON_ALL_INCOMING_KEY:Ljava/lang/String; = "all_incoming_key"

.field private static final BUTTON_ALL_OUTING_KEY:Ljava/lang/String; = "all_outing_international_key"

.field private static final BUTTON_CALL_BARRING_KEY:Ljava/lang/String; = "all_outing_key"

.field private static final BUTTON_CHANGE_PASSWORD_KEY:Ljava/lang/String; = "change_password_key"

.field private static final BUTTON_DEACTIVATE_KEY:Ljava/lang/String; = "deactivate_all_key"

.field private static final BUTTON_OUT_INTERNATIONAL_EXCEPT:Ljava/lang/String; = "all_outing_except_key"

.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "Settings/CallBarring"


# instance fields
.field private mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

.field private mCallCancel:Lcom/mediatek/settings/CallBarringResetPreference;

.field private mCallChangePassword:Lcom/mediatek/settings/CallBarringChangePassword;

.field private mCallInButton:Lcom/mediatek/settings/CallBarringBasePreference;

.field private mCallInButton2:Lcom/mediatek/settings/CallBarringBasePreference;

.field private mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

.field private mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

.field private mCheckedPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorState:I

.field private mFirstResume:Z

.field private mInitIndex:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsVtSetting:Z

.field private mPassword:Ljava/lang/String;

.field private mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetIndex:I

.field private mSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCheckedPreferences:Ljava/util/ArrayList;

    .line 89
    iput v1, p0, Lcom/mediatek/settings/CallBarring;->mInitIndex:I

    .line 90
    iput v1, p0, Lcom/mediatek/settings/CallBarring;->mResetIndex:I

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/CallBarring;->mPassword:Ljava/lang/String;

    .line 92
    iput v1, p0, Lcom/mediatek/settings/CallBarring;->mErrorState:I

    .line 93
    iput-boolean v1, p0, Lcom/mediatek/settings/CallBarring;->mFirstResume:Z

    .line 97
    iput-boolean v1, p0, Lcom/mediatek/settings/CallBarring;->mIsVtSetting:Z

    .line 100
    new-instance v0, Lcom/mediatek/settings/CallBarring$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/CallBarring$1;-><init>(Lcom/mediatek/settings/CallBarring;)V

    iput-object v0, p0, Lcom/mediatek/settings/CallBarring;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/CallBarring;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/mediatek/settings/CallBarring;->mSlotId:I

    return v0
.end method

.method private doGetCallState(Landroid/preference/Preference;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 223
    instance-of v0, p1, Lcom/mediatek/settings/CallBarringBasePreference;

    if-eqz v0, :cond_0

    .line 224
    check-cast p1, Lcom/mediatek/settings/CallBarringBasePreference;

    .end local p1
    const/4 v0, 0x0

    iget v1, p0, Lcom/mediatek/settings/CallBarring;->mSlotId:I

    invoke-virtual {p1, p0, v0, v1}, Lcom/mediatek/settings/CallBarringBasePreference;->init(Lcom/mediatek/phone/TimeConsumingPreferenceListener;ZI)V

    .line 226
    :cond_0
    return-void
.end method

.method private initSlotId()V
    .locals 4

    .prologue
    .line 339
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "simId"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/CallBarring;->mSlotId:I

    .line 341
    const-string v1, "Settings/CallBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[initSlotId][mSlotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/CallBarring;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget v1, p0, Lcom/mediatek/settings/CallBarring;->mSlotId:I

    invoke-static {p0, v1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 343
    .local v0, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 344
    iget-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 347
    .end local v0           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    return-void
.end method

.method private initVTSetting()V
    .locals 4

    .prologue
    const/16 v3, 0x200

    .line 326
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ISVT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/settings/CallBarring;->mIsVtSetting:Z

    .line 327
    const-string v0, "Settings/CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[initVTSetting]ISVT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/settings/CallBarring;->mIsVtSetting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-boolean v0, p0, Lcom/mediatek/settings/CallBarring;->mIsVtSetting:Z

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v0, v3}, Lcom/mediatek/settings/CallBarringBasePreference;->setServiceClass(I)V

    .line 330
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v0, v3}, Lcom/mediatek/settings/CallBarringBasePreference;->setServiceClass(I)V

    .line 331
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v0, v3}, Lcom/mediatek/settings/CallBarringBasePreference;->setServiceClass(I)V

    .line 332
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v0, v3}, Lcom/mediatek/settings/CallBarringBasePreference;->setServiceClass(I)V

    .line 333
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v0, v3}, Lcom/mediatek/settings/CallBarringBasePreference;->setServiceClass(I)V

    .line 334
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallCancel:Lcom/mediatek/settings/CallBarringResetPreference;

    invoke-virtual {v0, v3}, Lcom/mediatek/settings/CallBarringResetPreference;->setServiceClass(I)V

    .line 336
    :cond_0
    return-void
.end method

.method private initial()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    const-string v1, "AO"

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    const v1, 0x7f0800a8

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallBarringBasePreference;->setmTitle(I)V

    .line 205
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    const-string v1, "OI"

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    const v1, 0x7f0800a9

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallBarringBasePreference;->setmTitle(I)V

    .line 209
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    const-string v1, "OX"

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    const v1, 0x7f0800aa

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallBarringBasePreference;->setmTitle(I)V

    .line 214
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton:Lcom/mediatek/settings/CallBarringBasePreference;

    const-string v1, "AI"

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton:Lcom/mediatek/settings/CallBarringBasePreference;

    const v1, 0x7f0800ab

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallBarringBasePreference;->setmTitle(I)V

    .line 217
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    const-string v1, "IR"

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    const v1, 0x7f0800ac

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/CallBarringBasePreference;->setmTitle(I)V

    .line 219
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mCallCancel:Lcom/mediatek/settings/CallBarringResetPreference;

    invoke-virtual {v0, p0}, Lcom/mediatek/settings/CallBarringResetPreference;->setListener(Lcom/mediatek/phone/TimeConsumingPreferenceListener;)V

    .line 220
    return-void
.end method

.method private registerCallBacks()V
    .locals 2

    .prologue
    .line 319
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/settings/CallBarring;->mIntentFilter:Landroid/content/IntentFilter;

    .line 320
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 321
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 323
    return-void
.end method

.method private startUpdate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 186
    iput v3, p0, Lcom/mediatek/settings/CallBarring;->mInitIndex:I

    .line 187
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget v2, p0, Lcom/mediatek/settings/CallBarring;->mInitIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 188
    .local v0, p:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0, v0}, Lcom/mediatek/settings/CallBarring;->doGetCallState(Landroid/preference/Preference;)V

    .line 190
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setMmiFinished(Z)V

    .line 192
    :cond_0
    return-void
.end method


# virtual methods
.method public doCallBarringRefresh(Ljava/lang/String;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 265
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, summary:Ljava/lang/String;
    const-string v1, "AO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 269
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 273
    :cond_0
    const-string v1, "OI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 276
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 280
    :cond_1
    const-string v1, "OX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 283
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 287
    :cond_2
    const-string v1, "AI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 288
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 292
    :cond_3
    const-string v1, "IR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 293
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 296
    :cond_4
    return-void
.end method

.method public doCancelAllState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 250
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0800b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, summary:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 253
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 255
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 257
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 259
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v1, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 261
    return-void
.end method

.method public getErrorState()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/mediatek/settings/CallBarring;->mErrorState:I

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 195
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 196
    const/16 v0, 0x12c

    invoke-virtual {p0}, Lcom/mediatek/settings/CallBarring;->getErrorState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 197
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 199
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    .line 115
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const/high16 v2, 0x7f06

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 118
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 119
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "all_outing_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarringBasePreference;

    iput-object v2, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    .line 121
    const-string v2, "all_outing_international_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarringBasePreference;

    iput-object v2, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    .line 123
    const-string v2, "all_outing_except_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarringBasePreference;

    iput-object v2, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    .line 125
    const-string v2, "all_incoming_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarringBasePreference;

    iput-object v2, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton:Lcom/mediatek/settings/CallBarringBasePreference;

    .line 127
    const-string v2, "all_incoming_except_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarringBasePreference;

    iput-object v2, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    .line 130
    const-string v2, "deactivate_all_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarringResetPreference;

    iput-object v2, p0, Lcom/mediatek/settings/CallBarring;->mCallCancel:Lcom/mediatek/settings/CallBarringResetPreference;

    .line 132
    const-string v2, "change_password_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/CallBarringChangePassword;

    iput-object v2, p0, Lcom/mediatek/settings/CallBarring;->mCallChangePassword:Lcom/mediatek/settings/CallBarringChangePassword;

    .line 135
    invoke-direct {p0}, Lcom/mediatek/settings/CallBarring;->initial()V

    .line 136
    invoke-direct {p0}, Lcom/mediatek/settings/CallBarring;->initSlotId()V

    .line 137
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring;->mCallAllOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v2, p0}, Lcom/mediatek/settings/CallBarringBasePreference;->setRefreshInterface(Lcom/mediatek/settings/CallBarringInterface;)V

    .line 144
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v2, p0}, Lcom/mediatek/settings/CallBarringBasePreference;->setRefreshInterface(Lcom/mediatek/settings/CallBarringInterface;)V

    .line 145
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring;->mCallInternationalOutButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v2, p0}, Lcom/mediatek/settings/CallBarringBasePreference;->setRefreshInterface(Lcom/mediatek/settings/CallBarringInterface;)V

    .line 146
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v2, p0}, Lcom/mediatek/settings/CallBarringBasePreference;->setRefreshInterface(Lcom/mediatek/settings/CallBarringInterface;)V

    .line 147
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring;->mCallInButton2:Lcom/mediatek/settings/CallBarringBasePreference;

    invoke-virtual {v2, p0}, Lcom/mediatek/settings/CallBarringBasePreference;->setRefreshInterface(Lcom/mediatek/settings/CallBarringInterface;)V

    .line 148
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring;->mCallCancel:Lcom/mediatek/settings/CallBarringResetPreference;

    iget v3, p0, Lcom/mediatek/settings/CallBarring;->mSlotId:I

    invoke-virtual {v2, p0, v3}, Lcom/mediatek/settings/CallBarringResetPreference;->setCallBarringInterface(Lcom/mediatek/settings/CallBarringInterface;I)V

    .line 149
    iget-object v2, p0, Lcom/mediatek/settings/CallBarring;->mCallChangePassword:Lcom/mediatek/settings/CallBarringChangePassword;

    iget v3, p0, Lcom/mediatek/settings/CallBarring;->mSlotId:I

    invoke-virtual {v2, p0, v3}, Lcom/mediatek/settings/CallBarringChangePassword;->setTimeConsumingListener(Lcom/mediatek/phone/TimeConsumingPreferenceListener;I)V

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 152
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 156
    :cond_0
    iput-boolean v4, p0, Lcom/mediatek/settings/CallBarring;->mFirstResume:Z

    .line 158
    invoke-direct {p0}, Lcom/mediatek/settings/CallBarring;->initVTSetting()V

    .line 159
    invoke-direct {p0}, Lcom/mediatek/settings/CallBarring;->registerCallBacks()V

    .line 160
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 311
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 313
    iget-object v0, p0, Lcom/mediatek/settings/CallBarring;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 315
    return-void
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 6
    .parameter "preference"
    .parameter "reading"

    .prologue
    .line 230
    iget v3, p0, Lcom/mediatek/settings/CallBarring;->mInitIndex:I

    iget-object v4, p0, Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 231
    iget-object v3, p0, Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget v4, p0, Lcom/mediatek/settings/CallBarring;->mInitIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/CallBarringBasePreference;

    .line 232
    .local v0, cb:Lcom/mediatek/settings/CallBarringBasePreference;
    invoke-virtual {v0}, Lcom/mediatek/settings/CallBarringBasePreference;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    iget v3, p0, Lcom/mediatek/settings/CallBarring;->mInitIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mediatek/settings/CallBarring;->mInitIndex:I

    .line 234
    const-string v3, "Settings/CallBarring"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFinished() is called (init part) mInitIndex is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/settings/CallBarring;->mInitIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "is reading?  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v3, p0, Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget v4, p0, Lcom/mediatek/settings/CallBarring;->mInitIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 237
    .local v2, p:Landroid/preference/Preference;
    invoke-direct {p0, v2}, Lcom/mediatek/settings/CallBarring;->doGetCallState(Landroid/preference/Preference;)V

    .line 245
    .end local v0           #cb:Lcom/mediatek/settings/CallBarringBasePreference;
    .end local v2           #p:Landroid/preference/Preference;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    .line 246
    return-void

    .line 239
    .restart local v0       #cb:Lcom/mediatek/settings/CallBarringBasePreference;
    :cond_1
    iget v1, p0, Lcom/mediatek/settings/CallBarring;->mInitIndex:I

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 240
    iget-object v3, p0, Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 242
    :cond_2
    iget-object v3, p0, Lcom/mediatek/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/mediatek/settings/CallBarring;->mInitIndex:I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 174
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 175
    .local v0, itemId:I
    packed-switch v0, :pswitch_data_0

    .line 182
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 177
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 178
    const/4 v1, 0x1

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 164
    iget-boolean v0, p0, Lcom/mediatek/settings/CallBarring;->mFirstResume:Z

    if-eqz v0, :cond_1

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/CallBarring;->mFirstResume:Z

    .line 166
    invoke-direct {p0}, Lcom/mediatek/settings/CallBarring;->startUpdate()V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMmiFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/mediatek/settings/CallBarring;->startUpdate()V

    goto :goto_0
.end method

.method public resetIndex(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 307
    iput p1, p0, Lcom/mediatek/settings/CallBarring;->mInitIndex:I

    .line 308
    return-void
.end method

.method public setErrorState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 303
    iput p1, p0, Lcom/mediatek/settings/CallBarring;->mErrorState:I

    .line 304
    return-void
.end method
