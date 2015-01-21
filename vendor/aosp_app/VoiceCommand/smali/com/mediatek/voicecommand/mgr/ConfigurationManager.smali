.class public Lcom/mediatek/voicecommand/mgr/ConfigurationManager;
.super Ljava/lang/Object;
.source "ConfigurationManager.java"


# static fields
.field private static sCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

.field private static sInstanceLock:[B


# instance fields
.field private isCfgPrepared:Z

.field private isSystemLanguage:Z

.field private mConfigurationXML:Lcom/mediatek/voicecommand/cfg/ConfigurationXML;

.field private final mContext:Landroid/content/Context;

.field private mCurLanguageKey:Ljava/lang/String;

.field private mCurSystemLanguageIndex:Ljava/lang/String;

.field private mCurrentLanguageIndex:I

.field private mFeatureFilePath:Ljava/lang/String;

.field private mIsFirstBoot:Ljava/lang/String;

.field private mLanguageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/voicecommand/cfg/VoiceLanguageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mModeFilePath:Ljava/lang/String;

.field private final mPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPswdFilePath:Ljava/lang/String;

.field private final mRecogPath:Ljava/lang/String;

.field private mRecogPatternPath:Ljava/lang/String;

.field private mSystemLanguageReceiver:Landroid/content/BroadcastReceiver;

.field private mUBMFilePath:Ljava/lang/String;

.field private mUIPatternPath:Ljava/lang/String;

.field private mVoiceCustomization:Lcom/mediatek/voicecommand/cfg/VoiceCustomization;

.field private final mVoiceKeyWordInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceLanguageCacheFile:Ljava/lang/String;

.field private final mVoiceProcessInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceUiCacheFile:Ljava/lang/String;

.field private mVoiceUiFeatureNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mfeaturePath:Ljava/lang/String;

.field private final mpasswordPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->sInstanceLock:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurrentLanguageIndex:I

    .line 73
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mPaths:Ljava/util/HashMap;

    .line 74
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceProcessInfos:Ljava/util/HashMap;

    .line 75
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceKeyWordInfos:Ljava/util/HashMap;

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mLanguageList:Ljava/util/ArrayList;

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceUiFeatureNames:Ljava/util/ArrayList;

    .line 80
    const-string v2, "RecogPattern"

    iput-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mRecogPatternPath:Ljava/lang/String;

    .line 81
    const-string v2, "UIPattern"

    iput-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mUIPatternPath:Ljava/lang/String;

    .line 82
    const-string v2, "PswdFile"

    iput-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mPswdFilePath:Ljava/lang/String;

    .line 83
    const-string v2, "FeatureFile"

    iput-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mFeatureFilePath:Ljava/lang/String;

    .line 84
    const-string v2, "UBMFile"

    iput-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mUBMFilePath:Ljava/lang/String;

    .line 85
    const-string v2, "ModeFile"

    iput-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mModeFilePath:Ljava/lang/String;

    .line 86
    const-string v2, "/training/recogpattern/"

    iput-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mRecogPath:Ljava/lang/String;

    .line 87
    const-string v2, "/training/featurefile/"

    iput-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mfeaturePath:Ljava/lang/String;

    .line 88
    const-string v2, "/training/passwordfile/"

    iput-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mpasswordPath:Ljava/lang/String;

    .line 89
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->isCfgPrepared:Z

    .line 91
    const-string v2, "com.mediatek.voicecommand_preferences"

    iput-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceUiCacheFile:Ljava/lang/String;

    .line 93
    const-string v2, "Voice_Language"

    iput-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceLanguageCacheFile:Ljava/lang/String;

    .line 94
    const-string v2, "CurLanguageIndex"

    iput-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurLanguageKey:Ljava/lang/String;

    .line 95
    const-string v2, "IsFirstBoot"

    iput-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mIsFirstBoot:Ljava/lang/String;

    .line 96
    const-string v2, "CurSystemLanguageIndex"

    iput-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurSystemLanguageIndex:Ljava/lang/String;

    .line 98
    iput-boolean v6, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->isSystemLanguage:Z

    .line 99
    new-instance v2, Lcom/mediatek/voicecommand/cfg/VoiceCustomization;

    invoke-direct {v2}, Lcom/mediatek/voicecommand/cfg/VoiceCustomization;-><init>()V

    iput-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceCustomization:Lcom/mediatek/voicecommand/cfg/VoiceCustomization;

    .line 760
    new-instance v2, Lcom/mediatek/voicecommand/mgr/ConfigurationManager$1;

    invoke-direct {v2, p0}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager$1;-><init>(Lcom/mediatek/voicecommand/mgr/ConfigurationManager;)V

    iput-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mSystemLanguageReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mContext:Landroid/content/Context;

    .line 107
    new-instance v2, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;

    invoke-direct {v2, p1}, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mConfigurationXML:Lcom/mediatek/voicecommand/cfg/ConfigurationXML;

    .line 108
    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mConfigurationXML:Lcom/mediatek/voicecommand/cfg/ConfigurationXML;

    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceProcessInfos:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceUiFeatureNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->readVoiceProcessInfoFromXml(Ljava/util/HashMap;Ljava/util/ArrayList;)V

    .line 110
    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mConfigurationXML:Lcom/mediatek/voicecommand/cfg/ConfigurationXML;

    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mPaths:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->readVoiceFilePathFromXml(Ljava/util/HashMap;)V

    .line 111
    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mConfigurationXML:Lcom/mediatek/voicecommand/cfg/ConfigurationXML;

    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->readVoiceLanguangeFromXml(Ljava/util/ArrayList;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurrentLanguageIndex:I

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 114
    .local v0, dataDir:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mPaths:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mRecogPatternPath:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/training/recogpattern/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mPaths:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mFeatureFilePath:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/training/featurefile/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mPaths:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mPswdFilePath:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/training/passwordfile/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mConfigurationXML:Lcom/mediatek/voicecommand/cfg/ConfigurationXML;

    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceCustomization:Lcom/mediatek/voicecommand/cfg/VoiceCustomization;

    invoke-virtual {v2, v3}, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->readCustomizationFromXML(Lcom/mediatek/voicecommand/cfg/VoiceCustomization;)V

    .line 119
    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceCustomization:Lcom/mediatek/voicecommand/cfg/VoiceCustomization;

    iget-boolean v2, v2, Lcom/mediatek/voicecommand/cfg/VoiceCustomization;->mIsSystemLanguage:Z

    iput-boolean v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->isSystemLanguage:Z

    .line 120
    const-string v2, "VCmdMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ConfigurationManager isSystemLanguage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->isSystemLanguage:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-boolean v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->isSystemLanguage:Z

    if-eqz v2, :cond_0

    .line 123
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mSystemLanguageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 128
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mPaths:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mRecogPatternPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->makeDirForPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mPaths:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mFeatureFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->makeDirForPath(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mPaths:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mPswdFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->makeDirForPath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 131
    :cond_1
    iput-boolean v6, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->isCfgPrepared:Z

    .line 133
    :cond_2
    iget-boolean v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->isCfgPrepared:Z

    if-eqz v2, :cond_3

    .line 134
    invoke-direct {p0}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->checkVoiceCachePref()V

    .line 135
    iget v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurrentLanguageIndex:I

    if-ltz v2, :cond_3

    .line 136
    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mConfigurationXML:Lcom/mediatek/voicecommand/cfg/ConfigurationXML;

    iget-object v4, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceKeyWordInfos:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mLanguageList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurrentLanguageIndex:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/voicecommand/cfg/VoiceLanguageInfo;

    iget-object v2, v2, Lcom/mediatek/voicecommand/cfg/VoiceLanguageInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->readKeyWordFromXml(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 140
    :cond_3
    return-void
.end method

.method private checkVoiceCachePref()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 158
    iget-object v8, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceUiCacheFile:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 162
    .local v6, processPref:Landroid/content/SharedPreferences;
    :try_start_0
    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 167
    .local v0, enableMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 168
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 169
    .local v4, iter:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 170
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 171
    .local v1, entry:Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 172
    .local v5, name:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceProcessInfos:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;

    .line 173
    .local v3, info:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    if-eqz v3, :cond_0

    .line 174
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, v3, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->isVoiceEnable:Z

    .line 175
    iget-object v8, v3, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mRelationProcessName:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 176
    iget-object v8, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceProcessInfos:Ljava/util/HashMap;

    iget-object v9, v3, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mRelationProcessName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;

    .line 177
    .local v7, relationInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    if-eqz v7, :cond_0

    .line 178
    iget-boolean v8, v3, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->isVoiceEnable:Z

    iput-boolean v8, v7, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->isVoiceEnable:Z

    goto :goto_1

    .line 163
    .end local v0           #enableMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v1           #entry:Ljava/util/Map$Entry;
    .end local v3           #info:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .end local v4           #iter:Ljava/util/Iterator;
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #relationInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    :catch_0
    move-exception v2

    .line 164
    .local v2, ex:Ljava/lang/NullPointerException;
    const/4 v0, 0x0

    .restart local v0       #enableMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 185
    .end local v2           #ex:Ljava/lang/NullPointerException;
    :cond_1
    iget-boolean v8, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->isSystemLanguage:Z

    if-eqz v8, :cond_2

    .line 186
    invoke-virtual {p0}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->useSystemLanguage()V

    .line 192
    :goto_2
    const-string v8, "VCmdMgrService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCurrentLanguageIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurrentLanguageIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void

    .line 188
    :cond_2
    iget-object v8, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceLanguageCacheFile:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 190
    iget-object v8, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurLanguageKey:Ljava/lang/String;

    iget v9, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurrentLanguageIndex:I

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurrentLanguageIndex:I

    goto :goto_2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/voicecommand/mgr/ConfigurationManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 143
    sget-object v0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->sCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    if-nez v0, :cond_1

    .line 144
    sget-object v1, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->sInstanceLock:[B

    monitor-enter v1

    .line 145
    :try_start_0
    sget-object v0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->sCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-direct {v0, p0}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->sCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    .line 148
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_1
    sget-object v0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->sCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    return-object v0

    .line 148
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static makeDirForFile(Ljava/lang/String;)Z
    .locals 8
    .parameter "file"

    .prologue
    const/4 v3, 0x0

    .line 283
    if-nez p0, :cond_0

    .line 298
    :goto_0
    return v3

    .line 287
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 289
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 290
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 291
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1fd

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 293
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1b6

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    const/4 v3, 0x1

    goto :goto_0

    .line 294
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 295
    .local v1, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public static makeDirForPath(Ljava/lang/String;)Z
    .locals 7
    .parameter "path"

    .prologue
    const/4 v2, 0x0

    .line 267
    if-nez p0, :cond_0

    .line 279
    :goto_0
    return v2

    .line 271
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 273
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 274
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1fd

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 276
    .end local v0           #dir:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 277
    .local v1, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method private updateCurLanguageToPref()V
    .locals 5

    .prologue
    .line 500
    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mLanguageList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 501
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceLanguageCacheFile:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 503
    .local v0, processPref:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurLanguageKey:Ljava/lang/String;

    iget v4, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurrentLanguageIndex:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 505
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    invoke-virtual {p0}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->updateCurLanguageKeyword()V

    .line 507
    return-void

    .line 505
    .end local v0           #processPref:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateFeatureListEnableToPref()V
    .locals 7

    .prologue
    .line 460
    iget-object v4, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceProcessInfos:Ljava/util/HashMap;

    monitor-enter v4

    .line 461
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceUiCacheFile:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 463
    .local v2, processPref:Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceUiFeatureNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 464
    .local v0, featurename:Ljava/lang/String;
    const-string v3, "VCmdMgrService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateFeatureListEnableToPref featurename"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceProcessInfos:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;

    iget-boolean v3, v3, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->isVoiceEnable:Z

    invoke-interface {v5, v0, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 474
    .end local v0           #featurename:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #processPref:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #processPref:Landroid/content/SharedPreferences;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    return-void
.end method


# virtual methods
.method public containOperationPermission(Ljava/lang/String;[I)Z
    .locals 5
    .parameter "processname"
    .parameter "mainaction"

    .prologue
    const/4 v2, 0x0

    .line 345
    if-eqz p2, :cond_0

    array-length v3, p2

    if-nez v3, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v2

    .line 348
    :cond_1
    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceProcessInfos:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;

    .line 349
    .local v1, info:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    if-eqz v1, :cond_0

    .line 352
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_0

    .line 353
    iget-object v3, v1, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mPermissionIDList:Ljava/util/ArrayList;

    aget v4, p2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 354
    const/4 v2, 0x1

    goto :goto_0

    .line 352
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getCommandPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "processName"

    .prologue
    .line 690
    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceKeyWordInfos:Ljava/util/HashMap;

    monitor-enter v2

    .line 692
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceKeyWordInfos:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;

    .line 693
    .local v0, info:Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;
    if-nez v0, :cond_0

    .line 694
    const/4 v1, 0x0

    monitor-exit v2

    .line 696
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;->mKeyWordPath:Ljava/lang/String;

    monitor-exit v2

    goto :goto_0

    .line 697
    .end local v0           #info:Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentLanguage()I
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurrentLanguageIndex:I

    return v0
.end method

.method public getCurrentLanguageID()I
    .locals 3

    .prologue
    .line 536
    const-string v0, "VCmdMgrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentLanguageID() mCurrentLanguageIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurrentLanguageIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget v0, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurrentLanguageIndex:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurrentLanguageIndex:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mLanguageList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurrentLanguageIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/voicecommand/cfg/VoiceLanguageInfo;

    iget v0, v0, Lcom/mediatek/voicecommand/cfg/VoiceLanguageInfo;->mLanguageID:I

    goto :goto_0
.end method

.method public getFeatureEnableArray()[I
    .locals 5

    .prologue
    .line 380
    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceUiFeatureNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 381
    .local v2, size:I
    if-nez v2, :cond_1

    .line 382
    const/4 v1, 0x0

    .line 391
    :cond_0
    return-object v1

    .line 384
    :cond_1
    new-array v1, v2, [I

    .line 386
    .local v1, isEnableArray:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 387
    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceProcessInfos:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceUiFeatureNames:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;

    iget-boolean v3, v3, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->isVoiceEnable:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    aput v3, v1, v0

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getFeatureFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mPaths:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mFeatureFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureNameList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 366
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceUiFeatureNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 367
    .local v0, size:I
    if-nez v0, :cond_0

    .line 368
    const/4 v1, 0x0

    .line 370
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceUiFeatureNames:Ljava/util/ArrayList;

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getIsSystemLanguage()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->isSystemLanguage:Z

    return v0
.end method

.method public getKeyWord(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "processName"

    .prologue
    .line 672
    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceKeyWordInfos:Ljava/util/HashMap;

    monitor-enter v2

    .line 674
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceKeyWordInfos:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;

    .line 675
    .local v0, info:Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;
    if-nez v0, :cond_0

    .line 676
    const/4 v1, 0x0

    monitor-exit v2

    .line 678
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;->mKeyWordArray:[Ljava/lang/String;

    monitor-exit v2

    goto :goto_0

    .line 679
    .end local v0           #info:Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getKeyWordForSettings(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter "processName"

    .prologue
    const/4 v6, 0x0

    .line 707
    iget-object v7, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceKeyWordInfos:Ljava/util/HashMap;

    monitor-enter v7

    .line 708
    :try_start_0
    iget-object v8, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceProcessInfos:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;

    .line 709
    .local v1, info:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    if-eqz v1, :cond_4

    iget-object v8, v1, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mRelationProcessName:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 710
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 712
    .local v4, keywordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceKeyWordInfos:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;

    .line 713
    .local v2, keyWordInfo:Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;
    if-nez v2, :cond_0

    .line 714
    monitor-exit v7

    .line 738
    .end local v4           #keywordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v6

    .line 716
    .restart local v4       #keywordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v3, v2, Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;->mKeyWordArray:[Ljava/lang/String;

    .line 717
    .local v3, keyword:[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 718
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v6, v3

    if-ge v0, v6, :cond_1

    .line 719
    aget-object v6, v3, v0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 722
    .end local v0           #i:I
    :cond_1
    iget-object v6, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceKeyWordInfos:Ljava/util/HashMap;

    iget-object v8, v1, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mRelationProcessName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;

    iget-object v5, v6, Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;->mKeyWordArray:[Ljava/lang/String;

    .line 723
    .local v5, keywordRelation:[Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 724
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    array-length v6, v5

    if-ge v0, v6, :cond_3

    .line 725
    aget-object v6, v5, v0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 726
    aget-object v6, v5, v0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 731
    .end local v0           #i:I
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    monitor-exit v7

    goto :goto_0

    .line 740
    .end local v1           #info:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .end local v2           #keyWordInfo:Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;
    .end local v3           #keyword:[Ljava/lang/String;
    .end local v4           #keywordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #keywordRelation:[Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 734
    .restart local v1       #info:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    :cond_4
    :try_start_1
    iget-object v8, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceKeyWordInfos:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;

    .line 735
    .restart local v2       #keyWordInfo:Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;
    if-nez v2, :cond_5

    .line 736
    monitor-exit v7

    goto :goto_0

    .line 738
    :cond_5
    iget-object v6, v2, Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;->mKeyWordArray:[Ljava/lang/String;

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getLanguageList()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 483
    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 484
    .local v2, size:I
    if-nez v2, :cond_1

    .line 485
    const/4 v1, 0x0

    .line 493
    :cond_0
    return-object v1

    .line 487
    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    .line 489
    .local v1, language:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 490
    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/voicecommand/cfg/VoiceLanguageInfo;

    iget-object v3, v3, Lcom/mediatek/voicecommand/cfg/VoiceLanguageInfo;->mName:Ljava/lang/String;

    aput-object v3, v1, v0

    .line 489
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getModelFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 662
    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mPaths:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mModeFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mPaths:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mPswdFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getProcessID(Ljava/lang/String;)I
    .locals 2
    .parameter "processname"

    .prologue
    .line 567
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceProcessInfos:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;

    .line 568
    .local v0, processinfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    if-nez v0, :cond_0

    .line 569
    const/4 v1, -0x1

    .line 572
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mID:I

    goto :goto_0
.end method

.method public getProcessInfo(Ljava/lang/String;)Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .locals 1
    .parameter "processname"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceProcessInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;

    return-object v0
.end method

.method public getProcessName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "featureName"

    .prologue
    .line 750
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceProcessInfos:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;

    .line 751
    .local v0, processinfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    if-nez v0, :cond_0

    .line 752
    const/4 v1, 0x0

    .line 754
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mProcessName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUBMFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mPaths:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mUBMFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUiFeatureNumber()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceUiFeatureNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getVoiceRecognitionPatternFilePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mPaths:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mRecogPatternPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceUIPatternPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mPaths:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mUIPatternPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasOperationPermission(Ljava/lang/String;I)Z
    .locals 3
    .parameter "processname"
    .parameter "mainaction"

    .prologue
    .line 328
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceProcessInfos:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;

    .line 329
    .local v0, info:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    if-nez v0, :cond_0

    .line 330
    const/4 v1, 0x0

    .line 332
    :goto_0
    return v1

    :cond_0
    iget-object v1, v0, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mPermissionIDList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isAllowProcessRegister(Ljava/lang/String;)I
    .locals 1
    .parameter "processname"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceProcessInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3ed

    goto :goto_0
.end method

.method public isCfgPrepared()Z
    .locals 3

    .prologue
    .line 252
    const-string v0, "VCmdMgrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Voice Command Service CFG OK?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->isCfgPrepared:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-boolean v0, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->isCfgPrepared:Z

    return v0
.end method

.method public isProcessEnable(Ljava/lang/String;)Z
    .locals 2
    .parameter "processname"

    .prologue
    .line 596
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceProcessInfos:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;

    .line 597
    .local v0, processinfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    if-nez v0, :cond_0

    .line 598
    const/4 v1, 0x0

    .line 600
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, v0, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->isVoiceEnable:Z

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->isSystemLanguage:Z

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mSystemLanguageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 781
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->sCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    .line 783
    :cond_0
    return-void
.end method

.method public setCurrentLanguage(I)V
    .locals 0
    .parameter "languageIndex"

    .prologue
    .line 557
    iput p1, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurrentLanguageIndex:I

    .line 558
    invoke-direct {p0}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->updateCurLanguageToPref()V

    .line 559
    return-void
.end method

.method public updateCurLanguageIndex(Ljava/lang/String;)V
    .locals 5
    .parameter "language"

    .prologue
    .line 235
    if-nez p1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 239
    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mLanguageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/voicecommand/cfg/VoiceLanguageInfo;

    iget-object v2, v2, Lcom/mediatek/voicecommand/cfg/VoiceLanguageInfo;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 240
    iput v0, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurrentLanguageIndex:I

    .line 241
    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceLanguageCacheFile:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 243
    .local v1, languagePref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurSystemLanguageIndex:Ljava/lang/String;

    iget v4, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurrentLanguageIndex:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 238
    .end local v1           #languagePref:Landroid/content/SharedPreferences;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public updateCurLanguageKeyword()V
    .locals 5

    .prologue
    .line 543
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceKeyWordInfos:Ljava/util/HashMap;

    monitor-enter v1

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceKeyWordInfos:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 545
    iget v0, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurrentLanguageIndex:I

    if-ltz v0, :cond_0

    .line 546
    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mConfigurationXML:Lcom/mediatek/voicecommand/cfg/ConfigurationXML;

    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceKeyWordInfos:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mLanguageList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurrentLanguageIndex:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/voicecommand/cfg/VoiceLanguageInfo;

    iget-object v0, v0, Lcom/mediatek/voicecommand/cfg/VoiceLanguageInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->readKeyWordFromXml(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 549
    :cond_0
    monitor-exit v1

    .line 550
    return-void

    .line 549
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateFeatureEnable(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "featurename"
    .parameter "enable"

    .prologue
    .line 432
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceProcessInfos:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;

    .line 433
    .local v0, info:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    if-nez v0, :cond_0

    .line 434
    const/4 v1, 0x0

    .line 453
    :goto_0
    return v1

    .line 437
    :cond_0
    iput-boolean p2, v0, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->isVoiceEnable:Z

    .line 438
    iget-object v1, v0, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mRelationProcessName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mRelationProcessName:Ljava/lang/String;

    const-string v2, "android.mediatek.feature"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 441
    iget-object v1, v0, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mRelationProcessName:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->updateFeatureEnable(Ljava/lang/String;Z)Z

    .line 443
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->updateFeatureListEnableToPref()V

    .line 453
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public useSystemLanguage()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 206
    const/4 v3, -0x1

    iput v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurrentLanguageIndex:I

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, systemLanguage:Ljava/lang/String;
    const-string v3, "VCmdMgrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "system language = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceLanguageCacheFile:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 213
    .local v1, languagePref:Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mIsFirstBoot:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 214
    .local v0, isFirstBoot:Z
    const-string v3, "VCmdMgrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFirstBoot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0, v2}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->updateCurLanguageIndex(Ljava/lang/String;)V

    .line 216
    iget v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurrentLanguageIndex:I

    if-gez v3, :cond_0

    .line 217
    if-eqz v0, :cond_2

    .line 218
    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mVoiceCustomization:Lcom/mediatek/voicecommand/cfg/VoiceCustomization;

    iget-object v3, v3, Lcom/mediatek/voicecommand/cfg/VoiceCustomization;->mDefaultLanguage:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->updateCurLanguageIndex(Ljava/lang/String;)V

    .line 224
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 225
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mIsFirstBoot:Ljava/lang/String;

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 227
    :cond_1
    return-void

    .line 220
    :cond_2
    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurSystemLanguageIndex:Ljava/lang/String;

    iget v4, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurrentLanguageIndex:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->mCurrentLanguageIndex:I

    goto :goto_0
.end method
