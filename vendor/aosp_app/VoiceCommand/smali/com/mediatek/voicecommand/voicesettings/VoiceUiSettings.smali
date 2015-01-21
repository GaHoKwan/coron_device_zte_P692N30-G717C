.class public Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;
.super Landroid/preference/PreferenceActivity;
.source "VoiceUiSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final KEY_VOICE_UI_FOR_APP_CATEGORY:Ljava/lang/String; = "voice_ui_app"

.field public static final KEY_VOICE_UI_FOR_PLAY_COMMAND:Ljava/lang/String; = "voice_ui_key"

.field private static final KEY_VOICE_UI_LANGUAGE:Ljava/lang/String; = "language_settings"

.field public static final KEY_VOICE_UI_SETTINGS:Ljava/lang/String; = "voice_ui_settings"

.field private static final TAG:Ljava/lang/String; = "VoiceUiSettings"


# instance fields
.field private isSystemLanguage:Z

.field private mFeatureList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFeaturePrefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/SwitchPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguagePref:Landroid/preference/Preference;

.field private mSupportLangs:[Ljava/lang/String;

.field private mVoiceConfigMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

.field private mVoiceUiAppCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mFeaturePrefs:Ljava/util/List;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->isSystemLanguage:Z

    return-void
.end method

.method private createPreferenceHierarchy(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, featureList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 122
    new-instance v2, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings$1;

    invoke-direct {v2, p0, p0}, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings$1;-><init>(Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;Landroid/content/Context;)V

    .line 129
    .local v2, appPref:Landroid/preference/SwitchPreference;
    if-eqz v2, :cond_1

    .line 130
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 131
    .local v3, featureName:Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mVoiceConfigMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v6, v3}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getProcessID(Ljava/lang/String;)I

    move-result v5

    .line 132
    .local v5, processID:I
    invoke-static {v5}, Lcom/mediatek/voicecommand/voicesettings/VoiceUiResUtil;->getProcessTitleResourceId(I)I

    move-result v1

    .line 134
    .local v1, TitleId:I
    if-eqz v1, :cond_2

    .line 135
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 140
    :goto_1
    invoke-static {v5}, Lcom/mediatek/voicecommand/voicesettings/VoiceUiResUtil;->getIconId(I)I

    move-result v0

    .line 141
    .local v0, IconId:I
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setIcon(I)V

    .line 144
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 145
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 146
    iget-object v6, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mVoiceUiAppCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 147
    iget-object v6, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mFeaturePrefs:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v0           #IconId:I
    .end local v1           #TitleId:I
    .end local v3           #featureName:Ljava/lang/String;
    .end local v5           #processID:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
    .restart local v1       #TitleId:I
    .restart local v3       #featureName:Ljava/lang/String;
    .restart local v5       #processID:I
    :cond_2
    const-string v6, "error"

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 150
    .end local v1           #TitleId:I
    .end local v2           #appPref:Landroid/preference/SwitchPreference;
    .end local v3           #featureName:Ljava/lang/String;
    .end local v5           #processID:I
    :cond_3
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x10

    .line 88
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v1, 0x7f050002

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 92
    invoke-static {p0}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getInstance(Landroid/content/Context;)Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mVoiceConfigMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    .line 93
    iget-object v1, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mVoiceConfigMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    if-nez v1, :cond_0

    .line 94
    const-string v1, "VoiceUiSettings"

    const-string v2, "ConfigurationManager is null"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mVoiceConfigMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v1}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getIsSystemLanguage()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->isSystemLanguage:Z

    .line 97
    const-string v1, "VoiceUiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoiceUiSettings isSytemLanguage is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->isSystemLanguage:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-boolean v1, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->isSystemLanguage:Z

    if-eqz v1, :cond_1

    .line 100
    const-string v1, "voice_ui_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 101
    .local v0, voiceUiSettings:Landroid/preference/Preference;
    const-string v1, "VoiceUiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findpreference : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 108
    .end local v0           #voiceUiSettings:Landroid/preference/Preference;
    :goto_0
    const-string v1, "voice_ui_app"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mVoiceUiAppCategory:Landroid/preference/PreferenceCategory;

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f060004

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 110
    iget-object v1, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mVoiceConfigMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v1}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getFeatureNameList()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mFeatureList:Ljava/util/List;

    .line 112
    iget-object v1, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mFeatureList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->createPreferenceHierarchy(Ljava/util/List;)V

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 117
    iget-object v1, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mVoiceUiAppCategory:Landroid/preference/PreferenceCategory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 118
    return-void

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mVoiceConfigMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v1}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getLanguageList()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mSupportLangs:[Ljava/lang/String;

    .line 105
    const-string v1, "language_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mLanguagePref:Landroid/preference/Preference;

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 183
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 185
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/high16 v4, 0x1000

    .line 204
    const-string v2, "language_settings"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.voicecommand.VOICE_CONTROL_LANGUAGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 209
    const/4 v2, 0x1

    .line 224
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mFeatureList:Ljava/util/List;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, processName:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.mediatek.voicecommand.VOICE_UI_COMMAND_PLAY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 215
    const-string v2, "voice_ui_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 224
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #processName:Ljava/lang/String;
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0

    .line 219
    :cond_1
    const-string v2, "VoiceUiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceClick not support click this preference "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 155
    const-string v4, "VoiceUiSettings"

    const-string v5, "onResume called"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v4, "VoiceUiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "feature enabled array = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mVoiceConfigMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v6}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getFeatureEnableArray()[I

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mFeaturePrefs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 163
    iget-object v4, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mFeaturePrefs:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 165
    .local v0, appPref:Landroid/preference/SwitchPreference;
    iget-object v4, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mVoiceConfigMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->isProcessEnable(Ljava/lang/String;)Z

    move-result v2

    .line 167
    .local v2, isEnabled:Z
    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v0           #appPref:Landroid/preference/SwitchPreference;
    .end local v2           #isEnabled:Z
    :cond_0
    iget-boolean v4, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->isSystemLanguage:Z

    if-nez v4, :cond_1

    .line 172
    iget-object v4, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mVoiceConfigMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v4}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getCurrentLanguage()I

    move-result v3

    .line 173
    .local v3, languageIndex:I
    const-string v4, "VoiceUiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default language is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mSupportLangs:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v4, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mLanguagePref:Landroid/preference/Preference;

    iget-object v5, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mSupportLangs:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 176
    .end local v3           #languageIndex:I
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 178
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 191
    iget-object v2, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mFeatureList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    move-object v1, p2

    .line 193
    .local v1, processName:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 194
    .local v0, enable:Z
    const-string v2, "VoiceUiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSharedPreferenceChanged set enable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v2, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiSettings;->mVoiceConfigMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v2, v1, v0}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->updateFeatureEnable(Ljava/lang/String;Z)Z

    .line 198
    .end local v0           #enable:Z
    .end local v1           #processName:Ljava/lang/String;
    :cond_0
    return-void
.end method
