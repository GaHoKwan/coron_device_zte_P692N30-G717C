.class public Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;
.super Landroid/preference/PreferenceActivity;
.source "VoiceUiAvailableLanguageActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceUiAvailableLanguageFragment"


# instance fields
.field private mAvailableLangs:[Ljava/lang/String;

.field private mDefaultLanguage:I

.field private mLastSelectedPref:Lcom/mediatek/voicecommand/voicesettings/RadioButtonPreference;

.field private mVoiceConfigMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mDefaultLanguage:I

    return-void
.end method

.method private selectLanguage(Lcom/mediatek/voicecommand/voicesettings/RadioButtonPreference;)V
    .locals 4
    .parameter "preference"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mLastSelectedPref:Lcom/mediatek/voicecommand/voicesettings/RadioButtonPreference;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mLastSelectedPref:Lcom/mediatek/voicecommand/voicesettings/RadioButtonPreference;

    if-ne v0, p1, :cond_0

    .line 89
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mLastSelectedPref:Lcom/mediatek/voicecommand/voicesettings/RadioButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/voicecommand/voicesettings/RadioButtonPreference;->setChecked(Z)V

    .line 84
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mDefaultLanguage:I

    .line 85
    const-string v0, "VoiceUiAvailableLanguageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set default language to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mAvailableLangs:[Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mDefaultLanguage:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mVoiceConfigMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    iget v1, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mDefaultLanguage:I

    invoke-virtual {v0, v1}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->setCurrentLanguage(I)V

    .line 87
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mediatek/voicecommand/voicesettings/RadioButtonPreference;->setChecked(Z)V

    .line 88
    iput-object p1, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mLastSelectedPref:Lcom/mediatek/voicecommand/voicesettings/RadioButtonPreference;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 23
    const-string v2, "VoiceUiAvailableLanguageFragment"

    const-string v3, "OnCreate VoiceUiAvailableLanguageFragment"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/high16 v2, 0x7f05

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 26
    invoke-static {p0}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getInstance(Landroid/content/Context;)Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mVoiceConfigMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    .line 27
    iget-object v2, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mVoiceConfigMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    if-nez v2, :cond_0

    .line 28
    const-string v2, "VoiceUiAvailableLanguageFragment"

    const-string v3, "ConfigurationManager is null"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    iget-object v2, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mVoiceConfigMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v2}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getLanguageList()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mAvailableLangs:[Ljava/lang/String;

    .line 31
    iget-object v2, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mVoiceConfigMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v2}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getCurrentLanguage()I

    move-result v2

    iput v2, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mDefaultLanguage:I

    .line 33
    const-string v2, "VoiceUiAvailableLanguageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voice ui deafult language: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mAvailableLangs:[Ljava/lang/String;

    iget v5, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mDefaultLanguage:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const-string v2, "VoiceUiAvailableLanguageFragment"

    iget-object v3, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mAvailableLangs:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mAvailableLangs:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 37
    new-instance v1, Lcom/mediatek/voicecommand/voicesettings/RadioButtonPreference;

    iget-object v2, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mAvailableLangs:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, ""

    invoke-direct {v1, p0, v2, v3}, Lcom/mediatek/voicecommand/voicesettings/RadioButtonPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .local v1, pref:Lcom/mediatek/voicecommand/voicesettings/RadioButtonPreference;
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 40
    const-string v2, "VoiceUiAvailableLanguageFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "available["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mAvailableLangs:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget v2, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mDefaultLanguage:I

    if-ne v2, v0, :cond_1

    .line 43
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/voicecommand/voicesettings/RadioButtonPreference;->setChecked(Z)V

    .line 44
    iput-object v1, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mLastSelectedPref:Lcom/mediatek/voicecommand/voicesettings/RadioButtonPreference;

    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .end local v1           #pref:Lcom/mediatek/voicecommand/voicesettings/RadioButtonPreference;
    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 53
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 58
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 68
    instance-of v0, p2, Lcom/mediatek/voicecommand/voicesettings/RadioButtonPreference;

    if-eqz v0, :cond_0

    .line 69
    check-cast p2, Lcom/mediatek/voicecommand/voicesettings/RadioButtonPreference;

    .end local p2
    invoke-direct {p0, p2}, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->selectLanguage(Lcom/mediatek/voicecommand/voicesettings/RadioButtonPreference;)V

    .line 70
    const-string v0, "VoiceUiAvailableLanguageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default language changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mAvailableLangs:[Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiAvailableLanguageActivity;->mDefaultLanguage:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 73
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 63
    return-void
.end method
