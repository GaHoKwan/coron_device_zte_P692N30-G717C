.class public Lcom/android/simmelock/LockList;
.super Landroid/preference/PreferenceActivity;
.source "LockList.java"


# static fields
.field private static final CPLOCKTYPE:I = 0x3

.field public static final LOCKCATEGORY:Ljava/lang/String; = "LockCategory"

.field private static final NPLOCKTYPE:I = 0x0

.field private static final NSPLOCKTYPE:I = 0x1

.field private static final QUERY_ICC_SML_COMPLETE:I = 0x78

.field private static final SIMPLOCKTYPE:I = 0x4

.field private static final SPLOCKTYPE:I = 0x2


# instance fields
.field isSimInsert:Z

.field private mHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field simNumber:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 75
    iput v0, p0, Lcom/android/simmelock/LockList;->simNumber:I

    .line 76
    iput-boolean v0, p0, Lcom/android/simmelock/LockList;->isSimInsert:Z

    .line 190
    new-instance v0, Lcom/android/simmelock/LockList$1;

    invoke-direct {v0, p0}, Lcom/android/simmelock/LockList$1;-><init>(Lcom/android/simmelock/LockList;)V

    iput-object v0, p0, Lcom/android/simmelock/LockList;->mHandler:Landroid/os/Handler;

    .line 239
    new-instance v0, Lcom/android/simmelock/LockList$2;

    invoke-direct {v0, p0}, Lcom/android/simmelock/LockList$2;-><init>(Lcom/android/simmelock/LockList;)V

    iput-object v0, p0, Lcom/android/simmelock/LockList;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private queryIccNetworkLock(ILandroid/os/Message;)V
    .locals 9
    .parameter "lockCategory"
    .parameter "callback"

    .prologue
    const/4 v3, 0x0

    .line 229
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 230
    .local v8, geminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    if-eqz v8, :cond_0

    .line 231
    iget v1, p0, Lcom/android/simmelock/LockList;->simNumber:I

    invoke-virtual {v8, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 232
    .local v0, iccCard:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_0

    .line 233
    const/4 v2, 0x4

    move v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, p2

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IccCard;->QueryIccNetworkLock(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 237
    .end local v0           #iccCard:Lcom/android/internal/telephony/IccCard;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v3, 0x7f040001

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 85
    .local v0, bundleReceive:Landroid/os/Bundle;
    const-string v3, "Setting SIM Number"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/simmelock/LockList;->simNumber:I

    .line 87
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 88
    .local v1, geminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    if-eqz v1, :cond_0

    .line 90
    iget v3, p0, Lcom/android/simmelock/LockList;->simNumber:I

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/simmelock/LockList;->isSimInsert:Z

    .line 96
    :cond_0
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 97
    .local v2, intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/simmelock/LockList;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 143
    iget-object v0, p0, Lcom/android/simmelock/LockList;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 144
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferencescreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 153
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "SIMNo"

    iget v5, p0, Lcom/android/simmelock/LockList;->simNumber:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "nplock"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-ne v4, p2, :cond_0

    .line 157
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/simmelock/ActionList;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "LockCategory"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 187
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "nsplock"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-ne v4, p2, :cond_1

    .line 163
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/simmelock/ActionList;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "LockCategory"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 168
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "splock"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-ne v4, p2, :cond_2

    .line 169
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/simmelock/ActionList;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 170
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "LockCategory"

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 174
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "cplock"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-ne v4, p2, :cond_3

    .line 175
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/simmelock/ActionList;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "LockCategory"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 180
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "simplock"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-ne v4, p2, :cond_4

    .line 181
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/simmelock/ActionList;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "LockCategory"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 184
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    move v2, v3

    .line 187
    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 104
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 106
    .local v2, geminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    const/4 v3, 0x0

    .line 107
    .local v3, isRadioOn:Z
    if-eqz v2, :cond_0

    .line 108
    iget v5, p0, Lcom/android/simmelock/LockList;->simNumber:I

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v3

    .line 110
    :cond_0
    const-string v5, "SIMMELOCK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSimInsert == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/simmelock/LockList;->isSimInsert:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isRadioOn == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-boolean v5, p0, Lcom/android/simmelock/LockList;->isSimInsert:Z

    if-eqz v5, :cond_1

    if-nez v3, :cond_3

    .line 112
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 138
    :cond_2
    return-void

    .line 115
    :cond_3
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 132
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 134
    .local v4, telephonyManager:Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .local v1, category:I
    :goto_0
    const/4 v5, 0x5

    if-ge v1, v5, :cond_2

    .line 135
    iget-object v5, p0, Lcom/android/simmelock/LockList;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x78

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 136
    .local v0, callback:Landroid/os/Message;
    invoke-direct {p0, v1, v0}, Lcom/android/simmelock/LockList;->queryIccNetworkLock(ILandroid/os/Message;)V

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
