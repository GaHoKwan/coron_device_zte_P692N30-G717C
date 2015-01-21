.class public Lcom/mediatek/mtklogger/framework/LogConfig;
.super Ljava/lang/Object;
.source "LogConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MTKLogger/LogConfig"

.field private static mConfigFilePathRoot:Ljava/lang/String;

.field private static mConfigFileSuffix:Ljava/lang/String;


# instance fields
.field private mConfigFile:Ljava/io/File;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "shared_prefs/com.mediatek.mtklogger_preferences.xml"

    sput-object v0, Lcom/mediatek/mtklogger/framework/LogConfig;->mConfigFileSuffix:Ljava/lang/String;

    .line 21
    const-string v0, "/data/data/com.mediatek.mtklogger/"

    sput-object v0, Lcom/mediatek/mtklogger/framework/LogConfig;->mConfigFilePathRoot:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/mediatek/mtklogger/framework/LogConfig;->mConfigFile:Ljava/io/File;

    .line 19
    iput-object v1, p0, Lcom/mediatek/mtklogger/framework/LogConfig;->mContext:Landroid/content/Context;

    .line 24
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/LogConfig;->mContext:Landroid/content/Context;

    .line 25
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/LogConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "files"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    const/4 v1, 0x0

    const-string v2, "files"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/mtklogger/framework/LogConfig;->mConfigFilePathRoot:Ljava/lang/String;

    .line 29
    :cond_0
    const-string v1, "MTKLogger/LogConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APK private file root path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/mtklogger/framework/LogConfig;->mConfigFilePathRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method private initConfig()V
    .locals 21

    .prologue
    .line 50
    const-string v18, "MTKLogger/LogConfig"

    const-string v19, "-->initConfig()"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v3, Ljava/io/File;

    const-string v18, "/system/etc/mtklog-config.prop"

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v3, customizeFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/LogConfig;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 55
    .local v9, defaultSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 56
    .local v12, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 57
    .local v6, customizeProp:Ljava/util/Properties;
    const/4 v4, 0x0

    .line 59
    .local v4, customizeInputStream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    const-string v18, "/system/etc/mtklog-config.prop"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 60
    .end local v4           #customizeInputStream:Ljava/io/FileInputStream;
    .local v5, customizeInputStream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v6, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 62
    sget-object v18, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 63
    .local v14, logType:I
    sget-object v18, Lcom/mediatek/mtklogger/utils/Utils;->DEFAULT_CONFIG_LOG_AUTO_START_MAP:Landroid/util/SparseArray;

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 64
    .local v7, defaultAutoStartValue:Z
    sget-object v18, Lcom/mediatek/mtklogger/utils/Utils;->DEFAULT_CONFIG_LOG_SIZE_MAP:Landroid/util/SparseArray;

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 65
    .local v8, defaultLogSize:I
    sget-object v18, Lcom/mediatek/mtklogger/utils/Utils;->KEY_CONFIG_LOG_AUTO_START_MAP:Landroid/util/SparseArray;

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 67
    .local v15, readAutoStartValue:Ljava/lang/String;
    sget-object v18, Lcom/mediatek/mtklogger/utils/Utils;->KEY_CONFIG_LOG_SIZE_MAP:Landroid/util/SparseArray;

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 69
    .local v16, readLogSize:Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 70
    invoke-static {v15}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    .line 72
    :cond_0
    if-eqz v16, :cond_1

    .line 74
    :try_start_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v8

    .line 80
    :cond_1
    :goto_1
    :try_start_3
    const-string v18, "MTKLogger/LogConfig"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Init log config, logType="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", autoStart?"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", logSize="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v18, Lcom/mediatek/mtklogger/utils/Utils;->KEY_START_AUTOMATIC_MAP:Landroid/util/SparseArray;

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-interface {v12, v0, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    sget-object v18, Lcom/mediatek/mtklogger/utils/Utils;->KEY_LOG_SIZE_MAP:Landroid/util/SparseArray;

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 97
    .end local v7           #defaultAutoStartValue:Z
    .end local v8           #defaultLogSize:I
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #logType:I
    .end local v15           #readAutoStartValue:Ljava/lang/String;
    .end local v16           #readLogSize:Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v4, v5

    .line 98
    .end local v5           #customizeInputStream:Ljava/io/FileInputStream;
    .restart local v4       #customizeInputStream:Ljava/io/FileInputStream;
    .local v10, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v18, "MTKLogger/LogConfig"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "read customize config file error!"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/mtklogger/framework/LogConfig;->initDefaultConfig()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 101
    if-eqz v4, :cond_2

    .line 103
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 113
    .end local v4           #customizeInputStream:Ljava/io/FileInputStream;
    .end local v6           #customizeProp:Ljava/util/Properties;
    .end local v9           #defaultSharedPreferences:Landroid/content/SharedPreferences;
    .end local v10           #e:Ljava/io/IOException;
    .end local v12           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    :goto_3
    return-void

    .line 75
    .restart local v5       #customizeInputStream:Ljava/io/FileInputStream;
    .restart local v6       #customizeProp:Ljava/util/Properties;
    .restart local v7       #defaultAutoStartValue:Z
    .restart local v8       #defaultLogSize:I
    .restart local v9       #defaultSharedPreferences:Landroid/content/SharedPreferences;
    .restart local v12       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v14       #logType:I
    .restart local v15       #readAutoStartValue:Ljava/lang/String;
    .restart local v16       #readLogSize:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 76
    .local v10, e:Ljava/lang/NumberFormatException;
    :try_start_6
    const-string v18, "MTKLogger/LogConfig"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Log size for log "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " in config file is invalid"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 101
    .end local v7           #defaultAutoStartValue:Z
    .end local v8           #defaultLogSize:I
    .end local v10           #e:Ljava/lang/NumberFormatException;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #logType:I
    .end local v15           #readAutoStartValue:Ljava/lang/String;
    .end local v16           #readLogSize:Ljava/lang/String;
    :catchall_0
    move-exception v18

    move-object v4, v5

    .end local v5           #customizeInputStream:Ljava/io/FileInputStream;
    .restart local v4       #customizeInputStream:Ljava/io/FileInputStream;
    :goto_4
    if-eqz v4, :cond_3

    .line 103
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 106
    :cond_3
    :goto_5
    throw v18

    .line 89
    .end local v4           #customizeInputStream:Ljava/io/FileInputStream;
    .restart local v5       #customizeInputStream:Ljava/io/FileInputStream;
    .restart local v13       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_8
    const-string v18, "com.mediatek.log.taglog.enabled"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 90
    .local v17, taglogEnableValue:Ljava/lang/String;
    const-string v18, "MTKLogger/LogConfig"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Init log config, taglogEnable ? "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    if-eqz v17, :cond_5

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/LogConfig;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string v19, "log_settings"

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    const-string v19, "tagLogEnable"

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v20

    invoke-interface/range {v18 .. v20}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    :cond_5
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 101
    if-eqz v5, :cond_7

    .line 103
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    move-object v4, v5

    .line 106
    .end local v5           #customizeInputStream:Ljava/io/FileInputStream;
    .restart local v4       #customizeInputStream:Ljava/io/FileInputStream;
    goto :goto_3

    .line 104
    .end local v4           #customizeInputStream:Ljava/io/FileInputStream;
    .restart local v5       #customizeInputStream:Ljava/io/FileInputStream;
    :catch_2
    move-exception v11

    .line 105
    .local v11, e2:Ljava/io/IOException;
    const-string v18, "MTKLogger/LogConfig"

    const-string v19, "Fail to close opened customization file."

    invoke-static/range {v18 .. v19}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 106
    .end local v5           #customizeInputStream:Ljava/io/FileInputStream;
    .restart local v4       #customizeInputStream:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 104
    .end local v11           #e2:Ljava/io/IOException;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v17           #taglogEnableValue:Ljava/lang/String;
    .local v10, e:Ljava/io/IOException;
    :catch_3
    move-exception v11

    .line 105
    .restart local v11       #e2:Ljava/io/IOException;
    const-string v18, "MTKLogger/LogConfig"

    const-string v19, "Fail to close opened customization file."

    invoke-static/range {v18 .. v19}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 104
    .end local v10           #e:Ljava/io/IOException;
    .end local v11           #e2:Ljava/io/IOException;
    :catch_4
    move-exception v11

    .line 105
    .restart local v11       #e2:Ljava/io/IOException;
    const-string v19, "MTKLogger/LogConfig"

    const-string v20, "Fail to close opened customization file."

    invoke-static/range {v19 .. v20}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 110
    .end local v4           #customizeInputStream:Ljava/io/FileInputStream;
    .end local v6           #customizeProp:Ljava/util/Properties;
    .end local v9           #defaultSharedPreferences:Landroid/content/SharedPreferences;
    .end local v11           #e2:Ljava/io/IOException;
    .end local v12           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_6
    const-string v18, "MTKLogger/LogConfig"

    const-string v19, "Can not find config file, use default value."

    invoke-static/range {v18 .. v19}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/mtklogger/framework/LogConfig;->initDefaultConfig()V

    goto/16 :goto_3

    .line 101
    .restart local v4       #customizeInputStream:Ljava/io/FileInputStream;
    .restart local v6       #customizeProp:Ljava/util/Properties;
    .restart local v9       #defaultSharedPreferences:Landroid/content/SharedPreferences;
    .restart local v12       #editor:Landroid/content/SharedPreferences$Editor;
    :catchall_1
    move-exception v18

    goto :goto_4

    .line 97
    :catch_5
    move-exception v10

    goto/16 :goto_2

    .end local v4           #customizeInputStream:Ljava/io/FileInputStream;
    .restart local v5       #customizeInputStream:Ljava/io/FileInputStream;
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v17       #taglogEnableValue:Ljava/lang/String;
    :cond_7
    move-object v4, v5

    .end local v5           #customizeInputStream:Ljava/io/FileInputStream;
    .restart local v4       #customizeInputStream:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method private initDefaultConfig()V
    .locals 9

    .prologue
    .line 120
    const-string v6, "MTKLogger/LogConfig"

    const-string v7, "-->initDefaultConfig()"

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v6, p0, Lcom/mediatek/mtklogger/framework/LogConfig;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 122
    .local v2, defaultSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 124
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v6, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 125
    .local v5, logType:I
    sget-object v6, Lcom/mediatek/mtklogger/utils/Utils;->DEFAULT_CONFIG_LOG_AUTO_START_MAP:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 126
    .local v0, defaultAutoStartValue:Z
    sget-object v6, Lcom/mediatek/mtklogger/utils/Utils;->DEFAULT_CONFIG_LOG_SIZE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 127
    .local v1, defaultLogSize:I
    sget-object v6, Lcom/mediatek/mtklogger/utils/Utils;->KEY_START_AUTOMATIC_MAP:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3, v6, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    sget-object v6, Lcom/mediatek/mtklogger/utils/Utils;->KEY_LOG_SIZE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 130
    .end local v0           #defaultAutoStartValue:Z
    .end local v1           #defaultLogSize:I
    .end local v5           #logType:I
    :cond_0
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    return-void
.end method


# virtual methods
.method public checkConfig()V
    .locals 3

    .prologue
    .line 35
    const-string v0, "MTKLogger/LogConfig"

    const-string v1, "-->checkConfig()"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/mediatek/mtklogger/framework/LogConfig;->mConfigFilePathRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/mtklogger/framework/LogConfig;->mConfigFileSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/framework/LogConfig;->mConfigFile:Ljava/io/File;

    .line 38
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/LogConfig;->mConfigFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/LogConfig;->mConfigFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    const-string v0, "MTKLogger/LogConfig"

    const-string v1, "Config file has not been initialized, create it now"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/LogConfig;->initConfig()V

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_1
    const-string v0, "MTKLogger/LogConfig"

    const-string v1, " configuration file already OK."

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
