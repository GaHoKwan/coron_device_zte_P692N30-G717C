.class public Lcom/android/simmelock/ActionList;
.super Landroid/preference/PreferenceActivity;
.source "ActionList.java"


# static fields
.field public static final ACTIONNAME:Ljava/lang/String; = "ActionName"

.field public static final LOCKCATEGORY:Ljava/lang/String; = "LockCategory"

.field public static final LOCKNAME:Ljava/lang/String; = "LockName"

.field private static final QUERY_ICC_SML_COMPLETE:I = 0x78

.field private static final QUERY_ICC_SML_LOCK_STATE:I = 0x64

.field public static final SIMID:Ljava/lang/String; = "SIMNo"

.field public static final SMLLOCKED:I = 0x1

.field public static final SMLUNLOCKED:I = 0x2


# instance fields
.field lockCategory:I

.field lockName:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field simNumber:I

.field private unlock_enable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/simmelock/ActionList;->lockName:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/simmelock/ActionList;->simNumber:I

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/simmelock/ActionList;->lockCategory:I

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/simmelock/ActionList;->unlock_enable:Z

    .line 240
    new-instance v0, Lcom/android/simmelock/ActionList$1;

    invoke-direct {v0, p0}, Lcom/android/simmelock/ActionList$1;-><init>(Lcom/android/simmelock/ActionList;)V

    iput-object v0, p0, Lcom/android/simmelock/ActionList;->mHandler:Landroid/os/Handler;

    .line 340
    new-instance v0, Lcom/android/simmelock/ActionList$2;

    invoke-direct {v0, p0}, Lcom/android/simmelock/ActionList$2;-><init>(Lcom/android/simmelock/ActionList;)V

    iput-object v0, p0, Lcom/android/simmelock/ActionList;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/simmelock/ActionList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/android/simmelock/ActionList;->unlock_enable:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/simmelock/ActionList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/simmelock/ActionList;->unlock_enable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/simmelock/ActionList;ZZZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p5}, Lcom/android/simmelock/ActionList;->enablePreference(ZZZZZ)V

    return-void
.end method

.method private enablePreference(ZZZZZ)V
    .locals 2
    .parameter "lock"
    .parameter "unlock"
    .parameter "add"
    .parameter "remove"
    .parameter "permanRemove"

    .prologue
    .line 295
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 296
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 297
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 298
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 299
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 300
    return-void
.end method

.method private getLockName(I)Ljava/lang/String;
    .locals 1
    .parameter "locktype"

    .prologue
    .line 113
    packed-switch p1, :pswitch_data_0

    .line 125
    const v0, 0x7f060001

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 115
    :pswitch_0
    const v0, 0x7f060016

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    :pswitch_1
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 119
    :pswitch_2
    const v0, 0x7f060018

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 121
    :pswitch_3
    const v0, 0x7f060019

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 123
    :pswitch_4
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getUnlockEnableState(I)V
    .locals 5
    .parameter "category"

    .prologue
    .line 303
    const-string v2, "SIMMELOCK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getUnlockEnableState] Current lock category is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    if-ltz p1, :cond_0

    const/4 v2, 0x4

    if-le p1, v2, :cond_1

    .line 317
    :cond_0
    return-void

    .line 308
    :cond_1
    const/4 v0, 0x0

    .local v0, tempCate:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 309
    const-string v2, "SIMMELOCK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getUnlockEnableState] Queried lock category is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " || unlock_enable is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/simmelock/ActionList;->unlock_enable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-boolean v2, p0, Lcom/android/simmelock/ActionList;->unlock_enable:Z

    if-eqz v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/android/simmelock/ActionList;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 315
    .local v1, unlockCallBack:Landroid/os/Message;
    invoke-direct {p0, v0, v1}, Lcom/android/simmelock/ActionList;->queryIccNetworkLock(ILandroid/os/Message;)V

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private queryIccNetworkLock(ILandroid/os/Message;)V
    .locals 9
    .parameter "lockCategory"
    .parameter "callback"

    .prologue
    const/4 v3, 0x0

    .line 330
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 331
    .local v8, geminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    if-eqz v8, :cond_0

    .line 332
    iget v1, p0, Lcom/android/simmelock/ActionList;->simNumber:I

    invoke-virtual {v8, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 333
    .local v0, iccCard:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_0

    .line 334
    const/4 v2, 0x4

    move v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, p2

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 338
    .end local v0           #iccCard:Lcom/android/internal/telephony/IccCard;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, -0x1

    .line 84
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const/high16 v2, 0x7f04

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 87
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/simmelock/ActionList;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 92
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 93
    const-string v2, "LockCategory"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/simmelock/ActionList;->lockCategory:I

    .line 95
    :cond_0
    iget v2, p0, Lcom/android/simmelock/ActionList;->lockCategory:I

    if-ne v2, v3, :cond_1

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 110
    :goto_0
    return-void

    .line 101
    :cond_1
    iget v2, p0, Lcom/android/simmelock/ActionList;->lockCategory:I

    invoke-direct {p0, v2}, Lcom/android/simmelock/ActionList;->getLockName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/simmelock/ActionList;->lockName:Ljava/lang/String;

    .line 102
    iget-object v2, p0, Lcom/android/simmelock/ActionList;->lockName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 105
    const-string v2, "SIMNo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/simmelock/ActionList;->simNumber:I

    .line 108
    iget v2, p0, Lcom/android/simmelock/ActionList;->lockCategory:I

    invoke-direct {p0, v2}, Lcom/android/simmelock/ActionList;->getUnlockEnableState(I)V

    .line 109
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 145
    iget-object v0, p0, Lcom/android/simmelock/ActionList;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferencescreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 167
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "LockCategory"

    iget v7, p0, Lcom/android/simmelock/ActionList;->lockCategory:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    const-string v6, "SIMNo"

    iget v7, p0, Lcom/android/simmelock/ActionList;->simNumber:I

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 172
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "lock"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-ne v6, p2, :cond_0

    .line 174
    const-string v5, "SIMMELOCK"

    const-string v6, "Action lock"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/android/simmelock/LockSetting;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 231
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return v4

    .line 179
    :cond_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "unlock"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 181
    const-string v5, "SIMMELOCK"

    const-string v6, "Action unlock"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 183
    .local v1, conf:Landroid/content/res/Configuration;
    iget-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, locale:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/android/simmelock/UnlockSetting;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v5, "LOCALNAME"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 189
    .end local v1           #conf:Landroid/content/res/Configuration;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #locale:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "addlock"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-ne v6, p2, :cond_2

    .line 191
    const-string v6, "SIMMELOCK"

    const-string v7, "Action addlock"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v2, 0x0

    .line 193
    .restart local v2       #intent:Landroid/content/Intent;
    iget v6, p0, Lcom/android/simmelock/ActionList;->lockCategory:I

    packed-switch v6, :pswitch_data_0

    move v4, v5

    .line 210
    goto :goto_0

    .line 195
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-class v5, Lcom/android/simmelock/NPAddLockSetting;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .restart local v2       #intent:Landroid/content/Intent;
    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 198
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-class v5, Lcom/android/simmelock/NSPAddLockSetting;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 201
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-class v5, Lcom/android/simmelock/SPAddLockSetting;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 202
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 204
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-class v5, Lcom/android/simmelock/CPAddLockSetting;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 207
    :pswitch_4
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-class v5, Lcom/android/simmelock/SIMPAddLockSetting;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 215
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "removelock"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-ne v6, p2, :cond_3

    .line 217
    const-string v5, "SIMMELOCK"

    const-string v6, "Action removelock"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/android/simmelock/RemoveSetting;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 220
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 222
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "permanentlyunlock"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-ne v6, p2, :cond_4

    .line 224
    const-string v5, "SIMMELOCK"

    const-string v6, "Action permanentlyunlock"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/android/simmelock/PermanUnlockSetting;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 226
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 230
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    const-string v4, "SIMMELOCK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Action null || preference"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 231
    goto/16 :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 151
    const-string v0, "LockName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/simmelock/ActionList;->lockName:Ljava/lang/String;

    .line 152
    const-string v0, "LockCategory"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/simmelock/ActionList;->lockCategory:I

    .line 153
    const-string v0, "SIMNo"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/simmelock/ActionList;->simNumber:I

    .line 154
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 133
    iget v1, p0, Lcom/android/simmelock/ActionList;->lockCategory:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/simmelock/ActionList;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 139
    .local v0, callback:Landroid/os/Message;
    iget v1, p0, Lcom/android/simmelock/ActionList;->lockCategory:I

    invoke-direct {p0, v1, v0}, Lcom/android/simmelock/ActionList;->queryIccNetworkLock(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 158
    const-string v0, "LockName"

    iget-object v1, p0, Lcom/android/simmelock/ActionList;->lockName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "LockCategory"

    iget v1, p0, Lcom/android/simmelock/ActionList;->lockCategory:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    const-string v0, "SIMNo"

    iget v1, p0, Lcom/android/simmelock/ActionList;->simNumber:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 162
    return-void
.end method
