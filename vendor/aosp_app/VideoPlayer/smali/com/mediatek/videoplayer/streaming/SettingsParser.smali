.class public Lcom/mediatek/videoplayer/streaming/SettingsParser;
.super Ljava/lang/Object;
.source "SettingsParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;
    }
.end annotation


# static fields
.field private static final PROPERTY_ACTION:Ljava/lang/String; = "action"

.field private static final PROPERTY_CALLBACK_FOCUS:Ljava/lang/String; = "callback_focus"

.field private static final PROPERTY_ID:Ljava/lang/String; = "id"

.field private static final PROPERTY_INDEX:Ljava/lang/String; = "index"

.field private static final PROPERTY_TAB_NAME:Ljava/lang/String; = "tab_name"

.field private static final SETTINGS_FILE:Ljava/lang/String; = "settings.json"

.field private static final TAG:Ljava/lang/String; = "SettingsParser"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSettings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 19
    .parameter "context"

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/videoplayer/streaming/SettingsParser;->mContext:Landroid/content/Context;

    .line 56
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/videoplayer/streaming/SettingsParser;->mSettings:Ljava/util/ArrayList;

    .line 110
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/videoplayer/streaming/SettingsParser;->mContext:Landroid/content/Context;

    .line 111
    const/4 v11, 0x0

    .line 114
    .local v11, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "settings.json"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 115
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v15, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 116
    .local v15, reader:Ljava/io/BufferedReader;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v16, sb:Ljava/lang/StringBuilder;
    const-string v14, ""

    .line 118
    .local v14, line:Ljava/lang/String;
    :goto_0
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 119
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 136
    .end local v14           #line:Ljava/lang/String;
    .end local v15           #reader:Ljava/io/BufferedReader;
    .end local v16           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v9

    .line 137
    .local v9, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 138
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Open settings.json error e:"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    .end local v9           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_0

    .line 145
    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 148
    :cond_0
    :goto_1
    throw v2

    .line 121
    .restart local v14       #line:Ljava/lang/String;
    .restart local v15       #reader:Ljava/io/BufferedReader;
    .restart local v16       #sb:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 122
    .local v17, settings:Ljava/lang/String;
    const-string v2, "SettingsParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "SettingsParser settings is "

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/videoplayer/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v12, Lorg/json/JSONArray;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 126
    .local v12, jsonArray:Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v10, v2, :cond_2

    .line 127
    invoke-virtual {v12, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 128
    .local v13, jsonObj:Lorg/json/JSONObject;
    const-string v2, "id"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, id:Ljava/lang/String;
    const-string v2, "index"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 130
    .local v5, index:I
    const-string v2, "action"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, action:Ljava/lang/String;
    const-string v2, "callback_focus"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 132
    .local v7, callBackFocus:Ljava/lang/String;
    const-string v2, "tab_name"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 134
    .local v8, tabName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/videoplayer/streaming/SettingsParser;->mSettings:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v2, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;-><init>(Lcom/mediatek/videoplayer/streaming/SettingsParser;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 126
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 143
    .end local v4           #id:Ljava/lang/String;
    .end local v5           #index:I
    .end local v6           #action:Ljava/lang/String;
    .end local v7           #callBackFocus:Ljava/lang/String;
    .end local v8           #tabName:Ljava/lang/String;
    .end local v13           #jsonObj:Lorg/json/JSONObject;
    :cond_2
    if-eqz v11, :cond_3

    .line 145
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 151
    :cond_3
    :goto_3
    return-void

    .line 146
    :catch_1
    move-exception v9

    .line 147
    .restart local v9       #e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 139
    .end local v9           #e:Ljava/io/IOException;
    .end local v10           #i:I
    .end local v12           #jsonArray:Lorg/json/JSONArray;
    .end local v14           #line:Ljava/lang/String;
    .end local v15           #reader:Ljava/io/BufferedReader;
    .end local v16           #sb:Ljava/lang/StringBuilder;
    .end local v17           #settings:Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 140
    .local v9, e:Lorg/json/JSONException;
    :try_start_5
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Parse settings.json error e:"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 146
    .end local v9           #e:Lorg/json/JSONException;
    :catch_3
    move-exception v9

    .line 147
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/mediatek/videoplayer/streaming/SettingsParser;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/SettingsParser;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/SettingsParser;->mSettings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSettings()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/videoplayer/streaming/SettingsParser$VideoPlayerSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/mediatek/videoplayer/streaming/SettingsParser;->mSettings:Ljava/util/ArrayList;

    return-object v0
.end method
