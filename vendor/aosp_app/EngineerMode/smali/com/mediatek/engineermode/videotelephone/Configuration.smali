.class public Lcom/mediatek/engineermode/videotelephone/Configuration;
.super Landroid/preference/PreferenceActivity;
.source "Configuration.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final AUDIO_CHANNEL_ADAPTATION:Ljava/lang/String; = "audio_channel_adaptation"

.field private static final MULTIPLE_LEVEL:Ljava/lang/String; = "multiplex_level"

.field private static final TAG:Ljava/lang/String; = "Configuration"

.field private static final TERMINAL_TYPE:Ljava/lang/String; = "terminal_type"

.field private static final USE_WNSRP:Ljava/lang/String; = "use_wnsrp"

.field private static final VIDEO_CHANNEL_ADAPTATION:Ljava/lang/String; = "video_channel_adaptation"

.field private static final VIDEO_CHANNEL_REV:Ljava/lang/String; = "video_channel_reverse_data_type"

.field private static final VIDEO_CODEC:Ljava/lang/String; = "video_codec_preference"


# instance fields
.field private mAudioArr:[Ljava/lang/String;

.field private mAudioChanneAdaptPref:Landroid/preference/ListPreference;

.field private mMultiArr:[Ljava/lang/String;

.field private mMultiPref:Landroid/preference/ListPreference;

.field private mTerminalArr:[Ljava/lang/String;

.field private mTerminalTypePref:Landroid/preference/ListPreference;

.field private mUseArr:[Ljava/lang/String;

.field private mUseWnsrpPref:Landroid/preference/ListPreference;

.field private mVideoArr:[Ljava/lang/String;

.field private mVideoCdecPref:Landroid/preference/ListPreference;

.field private mVideoChanneAdaptlPref:Landroid/preference/ListPreference;

.field private mVideoChanneRevPref:Landroid/preference/ListPreference;

.field private mVideoCodecArr:[Ljava/lang/String;

.field private mVideoRevArr:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private initSummary()V
    .locals 14

    .prologue
    .line 131
    const-string v0, "AL2 WithSequenceNumber"

    .line 132
    .local v0, audioSummary:Ljava/lang/String;
    const-string v10, "AL2 WithSequenceNumber"

    .line 133
    .local v10, videoSummary:Ljava/lang/String;
    const-string v9, "No Change"

    .line 134
    .local v9, videoRevSummary:Ljava/lang/String;
    const-string v3, "MuxLevel 2"

    .line 135
    .local v3, multiSummary:Ljava/lang/String;
    const-string v8, "MPEG4_H263"

    .line 136
    .local v8, videoCodecSummary:Ljava/lang/String;
    const-string v7, "ON"

    .line 137
    .local v7, useSummary:Ljava/lang/String;
    const-string v6, "Normal"

    .line 140
    .local v6, terminalSummary:Ljava/lang/String;
    :try_start_0
    const-string v11, "engineermode_vt_preferences"

    const/4 v12, 0x1

    invoke-virtual {p0, v11, v12}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 143
    .local v4, preferences:Landroid/content/SharedPreferences;
    const-string v5, "0"

    .line 146
    .local v5, strIndex:Ljava/lang/String;
    const-string v11, "config_audio_channel_adapt"

    const-string v12, "1"

    invoke-interface {v4, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 149
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 150
    .local v2, index:I
    iget-object v11, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mAudioArr:[Ljava/lang/String;

    aget-object v0, v11, v2

    .line 152
    const-string v11, "config_video_channel_adapt"

    const-string v12, "1"

    invoke-interface {v4, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 156
    iget-object v11, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mVideoArr:[Ljava/lang/String;

    aget-object v10, v11, v2

    .line 158
    const-string v11, "config_video_channel_reverse"

    const-string v12, "0"

    invoke-interface {v4, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 161
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 162
    iget-object v11, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mVideoRevArr:[Ljava/lang/String;

    aget-object v9, v11, v2

    .line 164
    const-string v11, "config_multiplex_level"

    const-string v12, "4"

    invoke-interface {v4, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 167
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 168
    iget-object v11, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mMultiArr:[Ljava/lang/String;

    aget-object v3, v11, v2

    .line 170
    const-string v11, "config_video_codec_preference"

    const-string v12, "1"

    invoke-interface {v4, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 173
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 174
    iget-object v11, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mVideoCodecArr:[Ljava/lang/String;

    aget-object v8, v11, v2

    .line 176
    const-string v11, "config_use_wnsrp"

    const-string v12, "2"

    invoke-interface {v4, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 178
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 179
    iget-object v11, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mUseArr:[Ljava/lang/String;

    aget-object v7, v11, v2

    .line 181
    const-string v11, "config_terminal_type"

    const-string v12, "1"

    invoke-interface {v4, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 183
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 184
    iget-object v11, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mTerminalArr:[Ljava/lang/String;

    aget-object v6, v11, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 192
    .end local v2           #index:I
    .end local v4           #preferences:Landroid/content/SharedPreferences;
    .end local v5           #strIndex:Ljava/lang/String;
    :goto_0
    iget-object v11, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mAudioChanneAdaptPref:Landroid/preference/ListPreference;

    invoke-virtual {v11, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v11, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mVideoChanneAdaptlPref:Landroid/preference/ListPreference;

    invoke-virtual {v11, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v11, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mVideoChanneRevPref:Landroid/preference/ListPreference;

    invoke-virtual {v11, v9}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v11, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mMultiPref:Landroid/preference/ListPreference;

    invoke-virtual {v11, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v11, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mVideoCdecPref:Landroid/preference/ListPreference;

    invoke-virtual {v11, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v11, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mUseWnsrpPref:Landroid/preference/ListPreference;

    invoke-virtual {v11, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v11, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mTerminalTypePref:Landroid/preference/ListPreference;

    invoke-virtual {v11, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 199
    return-void

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v11, "Configuration"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 189
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v11, "Configuration"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setPreferenceSummary(Ljava/lang/String;Ljava/lang/String;Landroid/preference/ListPreference;)V
    .locals 3
    .parameter "value"
    .parameter "key"
    .parameter "listPreference"

    .prologue
    .line 290
    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 291
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 292
    invoke-virtual {p3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 293
    const-string v0, "Configuration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSummary : listPreference.getValue() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-virtual {p3, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 297
    const-string v0, "Configuration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSummary : value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const/high16 v2, 0x7f04

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 86
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 88
    .local v1, resource:Landroid/content/res/Resources;
    const v2, 0x7f060009

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mAudioArr:[Ljava/lang/String;

    .line 90
    const v2, 0x7f06000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mVideoArr:[Ljava/lang/String;

    .line 92
    const v2, 0x7f06000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mVideoRevArr:[Ljava/lang/String;

    .line 95
    const v2, 0x7f06000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mMultiArr:[Ljava/lang/String;

    .line 97
    const v2, 0x7f060011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mVideoCodecArr:[Ljava/lang/String;

    .line 100
    const v2, 0x7f060013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mUseArr:[Ljava/lang/String;

    .line 101
    const v2, 0x7f060015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mTerminalArr:[Ljava/lang/String;

    .line 104
    const-string v2, "audio_channel_adaptation"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mAudioChanneAdaptPref:Landroid/preference/ListPreference;

    .line 106
    const-string v2, "video_channel_adaptation"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mVideoChanneAdaptlPref:Landroid/preference/ListPreference;

    .line 108
    const-string v2, "video_channel_reverse_data_type"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mVideoChanneRevPref:Landroid/preference/ListPreference;

    .line 110
    const-string v2, "multiplex_level"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mMultiPref:Landroid/preference/ListPreference;

    .line 111
    const-string v2, "video_codec_preference"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mVideoCdecPref:Landroid/preference/ListPreference;

    .line 112
    const-string v2, "use_wnsrp"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mUseWnsrpPref:Landroid/preference/ListPreference;

    .line 113
    const-string v2, "terminal_type"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mTerminalTypePref:Landroid/preference/ListPreference;

    .line 115
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mAudioChanneAdaptPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 116
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mVideoChanneAdaptlPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mVideoChanneRevPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mMultiPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 119
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mVideoCdecPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mUseWnsrpPref:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 121
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mTerminalTypePref:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 122
    invoke-direct {p0}, Lcom/mediatek/engineermode/videotelephone/Configuration;->initSummary()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "Configuration"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v9, 0x1

    .line 212
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, key:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 215
    const/4 v8, 0x0

    .line 285
    :goto_0
    return v8

    .line 218
    :cond_0
    const-string v8, "engineermode_vt_preferences"

    invoke-virtual {p0, v8, v9}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 221
    .local v7, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 223
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v8, "Configuration"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "enter onPreferenceChange key is:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v5, ""

    .line 228
    .local v5, prefKey:Ljava/lang/String;
    const-string v6, "0"

    .line 230
    .local v6, prefValue:Ljava/lang/String;
    const-string v4, ""

    .line 231
    .local v4, newSummaryValue:Ljava/lang/String;
    const-string v8, "Configuration"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newValue = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, p2

    .line 233
    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 234
    .local v3, newSummaryIndex:I
    const-string v8, "Configuration"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "preference = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v8, "audio_channel_adaptation"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 238
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mAudioChanneAdaptPref:Landroid/preference/ListPreference;

    .line 239
    .local v2, listPreference:Landroid/preference/ListPreference;
    const-string v5, "config_audio_channel_adapt"

    .line 240
    iget-object v8, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mAudioArr:[Ljava/lang/String;

    aget-object v4, v8, v3

    :goto_1
    move-object v6, p2

    .line 279
    check-cast v6, Ljava/lang/String;

    .line 281
    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 282
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 283
    invoke-direct {p0, v4, v1, v2}, Lcom/mediatek/engineermode/videotelephone/Configuration;->setPreferenceSummary(Ljava/lang/String;Ljava/lang/String;Landroid/preference/ListPreference;)V

    move v8, v9

    .line 285
    goto/16 :goto_0

    .line 242
    .end local v2           #listPreference:Landroid/preference/ListPreference;
    :cond_1
    const-string v8, "video_channel_adaptation"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 244
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mVideoChanneAdaptlPref:Landroid/preference/ListPreference;

    .line 245
    .restart local v2       #listPreference:Landroid/preference/ListPreference;
    const-string v5, "config_video_channel_adapt"

    .line 246
    iget-object v8, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mVideoArr:[Ljava/lang/String;

    aget-object v4, v8, v3

    goto :goto_1

    .line 248
    .end local v2           #listPreference:Landroid/preference/ListPreference;
    :cond_2
    const-string v8, "video_channel_reverse_data_type"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 250
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mVideoChanneRevPref:Landroid/preference/ListPreference;

    .line 251
    .restart local v2       #listPreference:Landroid/preference/ListPreference;
    const-string v5, "config_video_channel_reverse"

    .line 252
    iget-object v8, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mVideoRevArr:[Ljava/lang/String;

    aget-object v4, v8, v3

    goto :goto_1

    .line 254
    .end local v2           #listPreference:Landroid/preference/ListPreference;
    :cond_3
    const-string v8, "multiplex_level"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 256
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mMultiPref:Landroid/preference/ListPreference;

    .line 257
    .restart local v2       #listPreference:Landroid/preference/ListPreference;
    const-string v5, "config_multiplex_level"

    .line 258
    iget-object v8, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mMultiArr:[Ljava/lang/String;

    aget-object v4, v8, v3

    goto :goto_1

    .line 260
    .end local v2           #listPreference:Landroid/preference/ListPreference;
    :cond_4
    const-string v8, "video_codec_preference"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 262
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mVideoCdecPref:Landroid/preference/ListPreference;

    .line 263
    .restart local v2       #listPreference:Landroid/preference/ListPreference;
    const-string v5, "config_video_codec_preference"

    .line 264
    iget-object v8, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mVideoCodecArr:[Ljava/lang/String;

    aget-object v4, v8, v3

    goto :goto_1

    .line 266
    .end local v2           #listPreference:Landroid/preference/ListPreference;
    :cond_5
    const-string v8, "use_wnsrp"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 268
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mUseWnsrpPref:Landroid/preference/ListPreference;

    .line 269
    .restart local v2       #listPreference:Landroid/preference/ListPreference;
    const-string v5, "config_use_wnsrp"

    .line 270
    iget-object v8, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mUseArr:[Ljava/lang/String;

    aget-object v4, v8, v3

    goto :goto_1

    .line 274
    .end local v2           #listPreference:Landroid/preference/ListPreference;
    :cond_6
    iget-object v2, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mTerminalTypePref:Landroid/preference/ListPreference;

    .line 275
    .restart local v2       #listPreference:Landroid/preference/ListPreference;
    const-string v5, "config_terminal_type"

    .line 276
    iget-object v8, p0, Lcom/mediatek/engineermode/videotelephone/Configuration;->mTerminalArr:[Ljava/lang/String;

    aget-object v4, v8, v3

    goto :goto_1
.end method
