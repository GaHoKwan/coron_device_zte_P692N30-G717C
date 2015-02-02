.class public Lcom/mediatek/engineermode/videotelephone/VideoTelephony;
.super Landroid/preference/PreferenceActivity;
.source "VideoTelephony.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final AUTO_ANSWER:Ljava/lang/String; = "auto_answer"

.field public static final AUTO_ANSWER_TIME:Ljava/lang/String; = "auto_answer_time"

.field public static final CONFIG_AUDIO_CHANNEL_ADAPT:Ljava/lang/String; = "config_audio_channel_adapt"

.field public static final CONFIG_MULTIPLEX_LEVEL:Ljava/lang/String; = "config_multiplex_level"

.field public static final CONFIG_TERMINAL_TYPE:Ljava/lang/String; = "config_terminal_type"

.field public static final CONFIG_USE_WNSRP:Ljava/lang/String; = "config_use_wnsrp"

.field public static final CONFIG_VIDEO_CHANNEL_ADAPT:Ljava/lang/String; = "config_video_channel_adapt"

.field public static final CONFIG_VIDEO_CHANNEL_REVERSE:Ljava/lang/String; = "config_video_channel_reverse"

.field public static final CONFIG_VIDEO_CODEC_PREFERENCE:Ljava/lang/String; = "config_video_codec_preference"

.field public static final DEBUG_MESSAGE:Ljava/lang/String; = "debug_message"

.field public static final ENGINEER_MODE_PREFERENCE:Ljava/lang/String; = "engineermode_vt_preferences"

.field public static final H223_RAW_DATA:Ljava/lang/String; = "h223_raw_data"

.field public static final H263_ONLY:Ljava/lang/String; = "h263_only"

.field public static final LOG_FILTER:Ljava/lang/String; = "log_filter"

.field protected static final LOG_FILTER_TAGKEY:[Ljava/lang/String; = null

.field protected static final LOG_FILTER_TAGVALUE:[Ljava/lang/String; = null

.field public static final LOG_TO_FILE:Ljava/lang/String; = "log_to_file"

.field public static final MY3G324M_CONFIG:Ljava/lang/String; = "my3g324m_configuration"

.field public static final PEER_AUDIO_RECODER:Ljava/lang/String; = "peer_audio_recoder"

.field public static final PEER_AUDIO_RECODER_FORMAT:Ljava/lang/String; = "peer_audio_recoder_format"

.field public static final PEER_AUDIO_RECODER_SERVICE:Ljava/lang/String; = "peer_audio_recoder_service"

.field public static final PEER_VIDEO_RECODER:Ljava/lang/String; = "peer_video_recoder"

.field public static final PEER_VIDEO_RECODER_FORMAT:Ljava/lang/String; = "peer_video_recoder_format"

.field public static final PEER_VIDEO_RECODER_SERVICE:Ljava/lang/String; = "peer_video_recoder_service"

.field public static final SDCARD_FLAG:Ljava/lang/String; = "sdcard_flag"

.field public static final SET_WORKING_MODE:Ljava/lang/String; = "set_working_mode"

.field public static final TAG:Ljava/lang/String; = "EM/VideoTelephony"

.field public static final WORKING_MODE:Ljava/lang/String; = "working_mode"

.field public static final WORKING_MODE_DETAIL:Ljava/lang/String; = "working_mode_detail"


# instance fields
.field private mDebugPref:Landroid/preference/CheckBoxPreference;

.field private mH223RawDataFlag:Z

.field private mH263OnlyPref:Landroid/preference/CheckBoxPreference;

.field private mLogToFilePref:Landroid/preference/CheckBoxPreference;

.field private mPeerAudioRecorder:Landroid/preference/Preference;

.field private mPeerVideoRecorder:Landroid/preference/Preference;

.field private mRawDataPref:Landroid/preference/CheckBoxPreference;

.field private mSDCardFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "log_filter_tag_0"

    aput-object v1, v0, v3

    const-string v1, "log_filter_tag_1"

    aput-object v1, v0, v4

    const-string v1, "log_filter_tag_2"

    aput-object v1, v0, v5

    const-string v1, "log_filter_tag_3"

    aput-object v1, v0, v6

    const-string v1, "log_filter_tag_4"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "log_filter_tag_5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "log_filter_tag_6"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->LOG_FILTER_TAGKEY:[Ljava/lang/String;

    .line 98
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "log_filter_tag_0_value"

    aput-object v1, v0, v3

    const-string v1, "log_filter_tag_1_value"

    aput-object v1, v0, v4

    const-string v1, "log_filter_tag_2_value"

    aput-object v1, v0, v5

    const-string v1, "log_filter_tag_3_value"

    aput-object v1, v0, v6

    const-string v1, "log_filter_tag_4_value"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "log_filter_tag_5_value"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "log_filter_tag_6_value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->LOG_FILTER_TAGVALUE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 110
    iput-boolean v0, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mSDCardFlag:Z

    .line 111
    iput-boolean v0, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mH223RawDataFlag:Z

    return-void
.end method

.method private initStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 239
    const-string v1, "engineermode_vt_preferences"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 242
    .local v0, preferences:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mDebugPref:Landroid/preference/CheckBoxPreference;

    const-string v2, "debug_message"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 244
    const-string v1, "h223_raw_data"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mH223RawDataFlag:Z

    .line 245
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mRawDataPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mRawDataPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mH223RawDataFlag:Z

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mLogToFilePref:Landroid/preference/CheckBoxPreference;

    const-string v2, "log_to_file"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 250
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mH263OnlyPref:Landroid/preference/CheckBoxPreference;

    const-string v2, "h263_only"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 251
    const-string v1, "sdcard_flag"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mSDCardFlag:Z

    .line 252
    const-string v1, "EM/VideoTelephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSDCardFlag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mSDCardFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void
.end method

.method private setToDefault()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 287
    const-string v2, "engineermode_vt_preferences"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 291
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 292
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 293
    const-string v2, "working_mode"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 294
    const-string v2, "working_mode_detail"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 295
    const-string v2, "config_audio_channel_adapt"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 296
    const-string v2, "config_video_channel_adapt"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 297
    const-string v2, "config_video_channel_reverse"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 298
    const-string v2, "config_multiplex_level"

    const-string v3, "4"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 299
    const-string v2, "config_video_codec_preference"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 300
    const-string v2, "config_use_wnsrp"

    const-string v3, "2"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 301
    const-string v2, "config_terminal_type"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    const-string v2, "auto_answer"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 303
    const-string v2, "auto_answer_time"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 304
    const-string v2, "peer_audio_recoder_service"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 305
    const-string v2, "peer_audio_recoder_format"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 306
    const-string v2, "peer_video_recoder_service"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 307
    const-string v2, "peer_video_recoder_format"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 308
    const-string v2, "debug_message"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 309
    const-string v2, "h223_raw_data"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 310
    const-string v2, "log_to_file"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 311
    const-string v2, "h263_only"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 312
    const-string v2, "sdcard_flag"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 314
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const v1, 0x7f04000d

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 118
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 120
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    const-string v1, "debug_message"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mDebugPref:Landroid/preference/CheckBoxPreference;

    .line 122
    const-string v1, "log_to_file"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mLogToFilePref:Landroid/preference/CheckBoxPreference;

    .line 123
    const-string v1, "h263_only"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mH263OnlyPref:Landroid/preference/CheckBoxPreference;

    .line 125
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mDebugPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 127
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mLogToFilePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 128
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mH263OnlyPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    invoke-direct {p0}, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->initStatus()V

    .line 132
    iget-boolean v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mSDCardFlag:Z

    if-eqz v1, :cond_0

    .line 133
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mRawDataPref:Landroid/preference/CheckBoxPreference;

    .line 134
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mRawDataPref:Landroid/preference/CheckBoxPreference;

    const-string v2, "h223_raw_data"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mRawDataPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f080326

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 136
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mRawDataPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 137
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mRawDataPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 138
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mRawDataPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mH223RawDataFlag:Z

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 139
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mRawDataPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 141
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mPeerAudioRecorder:Landroid/preference/Preference;

    .line 142
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mPeerAudioRecorder:Landroid/preference/Preference;

    const-string v2, "peer_audio_recoder"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mPeerAudioRecorder:Landroid/preference/Preference;

    const v2, 0x7f080322

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 144
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mPeerAudioRecorder:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 145
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mPeerAudioRecorder:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 147
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mPeerAudioRecorder:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 149
    new-instance v1, Landroid/preference/Preference;

    invoke-direct {v1, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mPeerVideoRecorder:Landroid/preference/Preference;

    .line 150
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mPeerVideoRecorder:Landroid/preference/Preference;

    const-string v2, "peer_video_recoder"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mPeerVideoRecorder:Landroid/preference/Preference;

    const v2, 0x7f080323

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 152
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mPeerVideoRecorder:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 153
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mPeerVideoRecorder:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getOnPreferenceClickListener()Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 155
    iget-object v1, p0, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->mPeerVideoRecorder:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 158
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 257
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 258
    .local v0, menuInflater:Landroid/view/MenuInflater;
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 259
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    .line 264
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 265
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 282
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 267
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->setToDefault()Z

    move-result v0

    .line 268
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/mediatek/engineermode/videotelephone/VideoTelephony;->initStatus()V

    .line 270
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08033d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08033e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x7f0b04e4
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 206
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 235
    .end local p2
    :cond_0
    :goto_0
    return v4

    .line 210
    .restart local p2
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, key:Ljava/lang/String;
    const-string v6, "EM/VideoTelephony"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enter onPreferenceChange key is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    if-nez v1, :cond_2

    .line 213
    const-string v5, "EM/VideoTelephony"

    const-string v6, "The preference key is null."

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_2
    const-string v4, "engineermode_vt_preferences"

    invoke-virtual {p0, v4, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 220
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 221
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v3, ""

    .line 222
    .local v3, strPutKey:Ljava/lang/String;
    const-string v4, "debug_message"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 223
    const-string v3, "debug_message"

    .line 231
    :cond_3
    :goto_1
    const-string v4, "EM/VideoTelephony"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The newValue is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 233
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v4, v5

    .line 235
    goto :goto_0

    .line 224
    .restart local p2
    :cond_4
    const-string v4, "h223_raw_data"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 225
    const-string v3, "h223_raw_data"

    goto :goto_1

    .line 226
    :cond_5
    const-string v4, "log_to_file"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 227
    const-string v3, "log_to_file"

    goto :goto_1

    .line 228
    :cond_6
    const-string v4, "h263_only"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 229
    const-string v3, "h263_only"

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 165
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "set_working_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/videotelephone/WorkingMode;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 191
    :cond_0
    :goto_0
    const-string v0, "EM/VideoTelephony"

    const-string v1, "onPreferenceTreeClick"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v0, 0x1

    return v0

    .line 169
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "my3g324m_configuration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/videotelephone/Configuration;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 173
    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto_answer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/videotelephone/VTAutoAnswer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 177
    :cond_3
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "peer_audio_recoder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 178
    const-string v0, "EM/VideoTelephony"

    const-string v1, "PEER_AUDIO_RECODER"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/videotelephone/PeerAudioRecorder;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 182
    :cond_4
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "peer_video_recoder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 183
    const-string v0, "EM/VideoTelephony"

    const-string v1, "PEER_VIDEO_RECODER"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/videotelephone/PeerVideoRecorder;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 186
    :cond_5
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "log_filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "EM/VideoTelephony"

    const-string v1, "log_filter"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/videotelephone/LogFilter;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
