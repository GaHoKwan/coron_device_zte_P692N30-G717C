.class public Lcom/mediatek/settings/SelectSimCardActivity;
.super Landroid/preference/PreferenceActivity;
.source "SelectSimCardActivity.java"


# static fields
.field public static final EXTRA_SLOTID:Ljava/lang/String; = "slotId"

.field public static final EXTRA_TITLE_NAME:Ljava/lang/String; = "EXTRA_TITME_NAME"

.field private static final TAG:Ljava/lang/String; = "SelectSimCardActivity"


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field protected mIsOnlyShow3GCard:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field protected mSimInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;

.field protected mTitle:I

.field protected mType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 44
    sget-object v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->None:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    iput-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mIsOnlyShow3GCard:Z

    .line 49
    new-instance v0, Lcom/mediatek/settings/SelectSimCardActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/SelectSimCardActivity$1;-><init>(Lcom/mediatek/settings/SelectSimCardActivity;)V

    iput-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/SelectSimCardActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/mediatek/settings/SelectSimCardActivity;->initPreferenceScreen()V

    return-void
.end method

.method private initPreferenceScreen()V
    .locals 8

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/mediatek/settings/SelectSimCardActivity;->getSimInfoRecordList()Ljava/util/List;

    .line 147
    iget-object v5, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 148
    iget-object v5, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 149
    iget-object v5, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 150
    .local v4, siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    const-string v5, "SelectSimCardActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initPreferenceScreen with slot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v2, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    iget-object v5, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    invoke-direct {v2, v5, p0}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;-><init>(Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;Landroid/content/Context;)V

    .line 152
    .local v2, infoPref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    iget v5, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {p0, v5}, Lcom/mediatek/phone/gemini/GeminiUtils;->getSimIndicator(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setSimInfoProperty(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;I)V

    .line 153
    iget-object v5, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 154
    invoke-virtual {p0, v2}, Lcom/mediatek/settings/SelectSimCardActivity;->setPreference(Lcom/mediatek/gemini/simui/SimCardInfoPreference;)V

    goto :goto_0

    .line 159
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #infoPref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .end local v4           #siminfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    iget-object v5, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 160
    iget-object v5, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 162
    .local v3, pref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    invoke-virtual {p0, v3}, Lcom/mediatek/settings/SelectSimCardActivity;->setPreference(Lcom/mediatek/gemini/simui/SimCardInfoPreference;)V

    .line 163
    iget-object v5, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimInfoList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    invoke-virtual {v3, v5}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setSimInfoRecord(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 166
    .end local v1           #index:I
    .end local v3           #pref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    :cond_1
    return-void
.end method


# virtual methods
.method public dealNoSimCardIn()V
    .locals 0

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 188
    return-void
.end method

.method protected getPreferenceBySlot(I)Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .locals 5
    .parameter "slotId"

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, pref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .end local v1           #pref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    check-cast v1, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 86
    .restart local v1       #pref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    invoke-virtual {v1}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 87
    const-string v2, "SelectSimCardActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " related preference"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    .line 91
    :goto_1
    return-object v2

    .line 84
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected getSimInfoRecordList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mIsOnlyShow3GCard:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/gemini/GeminiUtils;->get3GSimCards(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimInfoList:Ljava/util/List;

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimInfoList:Ljava/util/List;

    new-instance v1, Lcom/mediatek/gemini/simui/CommonUtils$SIMInfoComparable;

    invoke-direct {v1}, Lcom/mediatek/gemini/simui/CommonUtils$SIMInfoComparable;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 179
    iget-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimInfoList:Ljava/util/List;

    return-object v0

    .line 176
    :cond_0
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimInfoList:Ljava/util/List;

    goto :goto_0
.end method

.method protected isNoSimInserted()Z
    .locals 4

    .prologue
    .line 95
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v0

    .line 96
    .local v0, simNum:I
    const-string v1, "SelectSimCardActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simNum = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    const/4 v3, -0x1

    .line 106
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_3G_CARD_ONLY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mIsOnlyShow3GCard:Z

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_TITME_NAME"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mTitle:I

    .line 109
    iget v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mTitle:I

    if-eq v0, v3, :cond_0

    .line 110
    iget v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mTitle:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 113
    :cond_0
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 115
    iget-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    .line 121
    iget-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mSimPrefMainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 122
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 192
    instance-of v3, p2, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    sget-object v4, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->None:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    if-ne v3, v4, :cond_0

    move-object v1, p2

    .line 193
    check-cast v1, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 194
    .local v1, simInfoPref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    invoke-virtual {v1}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v2

    .line 195
    .local v2, slotId:I
    const-string v3, "SelectSimCardActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceTreeClick with slotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 197
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "slotId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    const-string v3, "simId"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 199
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 200
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 201
    const/4 v3, 0x1

    .line 203
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #simInfoPref:Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .end local v2           #slotId:I
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 126
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 127
    invoke-direct {p0}, Lcom/mediatek/settings/SelectSimCardActivity;->initPreferenceScreen()V

    .line 128
    invoke-virtual {p0}, Lcom/mediatek/settings/SelectSimCardActivity;->isNoSimInserted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/mediatek/settings/SelectSimCardActivity;->dealNoSimCardIn()V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    return-void
.end method

.method protected setPreference(Lcom/mediatek/gemini/simui/SimCardInfoPreference;)V
    .locals 0
    .parameter "pref"

    .prologue
    .line 207
    return-void
.end method

.method protected setWidgetViewType(Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mediatek/settings/SelectSimCardActivity;->mType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    .line 102
    return-void
.end method
