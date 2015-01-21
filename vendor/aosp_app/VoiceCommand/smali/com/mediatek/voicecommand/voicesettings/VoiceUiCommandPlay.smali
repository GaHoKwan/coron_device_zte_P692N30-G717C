.class public Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;
.super Landroid/preference/PreferenceActivity;
.source "VoiceUiCommandPlay.java"


# static fields
.field private static final KEY_VOICE_UI_FOR_COMMAND_CATEGORY:Ljava/lang/String; = "voice_ui_command"

.field private static final TAG:Ljava/lang/String; = "VoiceUiCommandPlay"


# instance fields
.field mCommands:[Ljava/lang/String;

.field private mProcessKey:Ljava/lang/String;

.field private mSoundIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSoundPool:Landroid/media/SoundPool;

.field private mVoiceConfigMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

.field private mVoiceUiCommandCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mSoundIdMap:Ljava/util/HashMap;

    return-void
.end method

.method private fetchSummary(I)Ljava/lang/String;
    .locals 8
    .parameter "processID"

    .prologue
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v1, keywords:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mCommands:[Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mCommands:[Ljava/lang/String;

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, lastWord:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mCommands:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_1

    .line 120
    const-string v5, "\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mCommands:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v5, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mCommands:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x2

    if-eq v0, v5, :cond_0

    .line 122
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    invoke-static {p1}, Lcom/mediatek/voicecommand/voicesettings/VoiceUiResUtil;->getSummaryResourceId(I)I

    move-result v3

    .line 127
    .local v3, resId:I
    if-nez v3, :cond_2

    .line 128
    new-instance v4, Ljava/lang/String;

    const-string v5, "Error"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 132
    :goto_1
    return-object v4

    .line 130
    :cond_2
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, summary:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 32
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v7, 0x7f050001

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 36
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 37
    const-string v7, "VoiceUiCommandPlay"

    const-string v8, "Intent is null"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-static {p0}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getInstance(Landroid/content/Context;)Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    move-result-object v7

    iput-object v7, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mVoiceConfigMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    .line 42
    const-string v7, "voice_ui_key"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mProcessKey:Ljava/lang/String;

    .line 44
    iget-object v7, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mVoiceConfigMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    iget-object v8, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mProcessKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getProcessID(Ljava/lang/String;)I

    move-result v5

    .line 45
    .local v5, processID:I
    invoke-static {v5}, Lcom/mediatek/voicecommand/voicesettings/VoiceUiResUtil;->getCommandTitleResourceId(I)I

    move-result v0

    .line 47
    .local v0, CommandTitleId:I
    if-eqz v0, :cond_2

    .line 48
    invoke-static {v5}, Lcom/mediatek/voicecommand/voicesettings/VoiceUiResUtil;->getCommandTitleResourceId(I)I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setTitle(I)V

    .line 53
    :goto_1
    iget-object v7, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mVoiceConfigMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    if-nez v7, :cond_3

    .line 54
    const-string v7, "VoiceUiCommandPlay"

    const-string v8, "ConfigurationManager is null"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 50
    :cond_2
    const-string v7, "Error"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 58
    :cond_3
    iget-object v7, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mVoiceConfigMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    iget-object v8, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mProcessKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getKeyWordForSettings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mCommands:[Ljava/lang/String;

    .line 59
    iget-object v7, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mCommands:[Ljava/lang/String;

    if-nez v7, :cond_4

    .line 60
    const-string v7, "VoiceUiCommandPlay"

    const-string v8, "mCommands is null"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 64
    :cond_4
    new-instance v6, Lcom/mediatek/voicecommand/voicesettings/CommandPlayPreference;

    invoke-direct {p0, v5}, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->fetchSummary(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/mediatek/voicecommand/voicesettings/CommandPlayPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    .local v6, titlePref:Lcom/mediatek/voicecommand/voicesettings/CommandPlayPreference;
    invoke-direct {p0, v5}, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->fetchSummary(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 67
    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setOrder(I)V

    .line 68
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 69
    new-instance v7, Landroid/media/SoundPool;

    const/4 v8, 0x3

    invoke-direct {v7, v10, v8, v9}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v7, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mSoundPool:Landroid/media/SoundPool;

    .line 71
    const-string v7, "voice_ui_command"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mVoiceUiCommandCategory:Landroid/preference/PreferenceCategory;

    .line 72
    iget-object v7, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mVoiceUiCommandCategory:Landroid/preference/PreferenceCategory;

    const v8, 0x7f060011

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 73
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v7, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mCommands:[Ljava/lang/String;

    array-length v7, v7

    if-ge v1, v7, :cond_0

    .line 74
    new-instance v4, Landroid/preference/Preference;

    invoke-direct {v4, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 75
    .local v4, pref:Landroid/preference/Preference;
    const v7, 0x7f040002

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 76
    iget-object v7, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mCommands:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v7, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mVoiceConfigMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    iget-object v8, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mProcessKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getCommandPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, path:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".ogg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    iget-object v7, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mSoundIdMap:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mCommands:[Ljava/lang/String;

    aget-object v8, v8, v1

    iget-object v9, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v9, v3, v10}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v7, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mCommands:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 81
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setOrder(I)V

    .line 82
    iget-object v7, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mVoiceUiCommandCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 90
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 91
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 98
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 139
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, Key:Ljava/lang/String;
    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mSoundIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mSoundIdMap:Ljava/util/HashMap;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 146
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 143
    :cond_0
    const-string v0, "VoiceUiCommandPlay"

    const-string v1, "onPreferenceTreeClick path is null "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/voicecommand/voicesettings/VoiceUiCommandPlay;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoResume()V

    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 105
    return-void
.end method
