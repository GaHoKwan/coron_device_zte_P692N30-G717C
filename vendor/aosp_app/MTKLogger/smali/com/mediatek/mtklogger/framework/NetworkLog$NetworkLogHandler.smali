.class Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;
.super Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;
.source "NetworkLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/framework/NetworkLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkLogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/framework/NetworkLog;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;-><init>(Lcom/mediatek/mtklogger/framework/LogInstance;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .parameter "msg"

    .prologue
    .line 94
    const-string v21, "MTKLogger/NetworkLog"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Handle receive message, what="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    #getter for: Lcom/mediatek/mtklogger/framework/NetworkLog;->bConnected:Z
    invoke-static/range {v21 .. v21}, Lcom/mediatek/mtklogger/framework/NetworkLog;->access$000(Lcom/mediatek/mtklogger/framework/NetworkLog;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    new-instance v22, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v23, v0

    const-string v24, "netdiag"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    move-object/from16 v25, v0

    invoke-direct/range {v22 .. v25}, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogConnection;-><init>(Lcom/mediatek/mtklogger/framework/NetworkLog;Ljava/lang/String;Landroid/os/Handler;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/mediatek/mtklogger/framework/NetworkLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    .line 101
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/mediatek/mtklogger/framework/NetworkLog;->initLogConnection()Z

    move-result v22

    #setter for: Lcom/mediatek/mtklogger/framework/NetworkLog;->bConnected:Z
    invoke-static/range {v21 .. v22}, Lcom/mediatek/mtklogger/framework/NetworkLog;->access$002(Lcom/mediatek/mtklogger/framework/NetworkLog;Z)Z

    .line 105
    :cond_1
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    .local v5, cmdReasonObj:Ljava/lang/Object;
    const/4 v4, 0x0

    .line 107
    .local v4, cmdReason:Ljava/lang/String;
    if-eqz v5, :cond_2

    instance-of v0, v5, Ljava/lang/String;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    move-object v4, v5

    .line 108
    check-cast v4, Ljava/lang/String;

    .line 110
    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    sparse-switch v21, :sswitch_data_0

    .line 276
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    const/16 v22, 0x20

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1e

    .line 277
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    add-int/lit8 v16, v21, -0x20

    .line 278
    .local v16, respType:I
    const-string v9, ""

    .line 279
    .local v9, failReason:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 280
    .local v10, failReasonObj:Ljava/lang/Object;
    if-eqz v10, :cond_3

    instance-of v0, v10, Ljava/lang/String;

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object v9, v10

    .line 281
    check-cast v9, Ljava/lang/String;

    .line 283
    :cond_3
    const-string v21, "MTKLogger/NetworkLog"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Resp type: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", failReason string: ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    const/16 v21, 0x2

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    const/16 v21, 0x4

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    const/16 v21, 0x7

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_1d

    .line 287
    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1a

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    #calls: Lcom/mediatek/mtklogger/framework/NetworkLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static {v0, v1, v9}, Lcom/mediatek/mtklogger/framework/NetworkLog;->access$100(Lcom/mediatek/mtklogger/framework/NetworkLog;ILjava/lang/String;)V

    .line 304
    .end local v9           #failReason:Ljava/lang/String;
    .end local v10           #failReasonObj:Ljava/lang/Object;
    .end local v16           #respType:I
    :cond_5
    :goto_0
    return-void

    .line 112
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    #getter for: Lcom/mediatek/mtklogger/framework/NetworkLog;->bConnected:Z
    invoke-static/range {v21 .. v21}, Lcom/mediatek/mtklogger/framework/NetworkLog;->access$000(Lcom/mediatek/mtklogger/framework/NetworkLog;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 113
    const-string v21, "MTKLogger/NetworkLog"

    const-string v22, "Fail to establish connection to native layer."

    invoke-static/range {v21 .. v22}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "networklog_enable"

    const/16 v24, 0x1

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "networklog_enable"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 120
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "1"

    #calls: Lcom/mediatek/mtklogger/framework/NetworkLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static/range {v21 .. v23}, Lcom/mediatek/mtklogger/framework/NetworkLog;->access$100(Lcom/mediatek/mtklogger/framework/NetworkLog;ILjava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/mtklogger/framework/NetworkLog;->getLogStorageState()I

    move-result v14

    .line 124
    .local v14, logStorageStatus:I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v14, v0, :cond_a

    .line 125
    const-string v21, "MTKLogger/NetworkLog"

    const-string v22, "Log storage is not ready yet."

    invoke-static/range {v21 .. v22}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, "networklog_enable"

    const/16 v24, 0x1

    invoke-interface/range {v22 .. v24}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "networklog_enable"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    :cond_8
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v14, v0, :cond_9

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "2"

    #calls: Lcom/mediatek/mtklogger/framework/NetworkLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static/range {v21 .. v23}, Lcom/mediatek/mtklogger/framework/NetworkLog;->access$100(Lcom/mediatek/mtklogger/framework/NetworkLog;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 135
    :cond_9
    const/16 v21, -0x2

    move/from16 v0, v21

    if-ne v14, v0, :cond_5

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "3"

    #calls: Lcom/mediatek/mtklogger/framework/NetworkLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static/range {v21 .. v23}, Lcom/mediatek/mtklogger/framework/NetworkLog;->access$100(Lcom/mediatek/mtklogger/framework/NetworkLog;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 141
    :cond_a
    sget-object v21, Lcom/mediatek/mtklogger/framework/LogInstance;->mContext:Landroid/content/Context;

    invoke-static/range {v21 .. v21}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 143
    .local v8, defaultPreferences:Landroid/content/SharedPreferences;
    const-string v21, "networklog_logsize"

    const-string v22, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 145
    .local v13, logSizeStr:Ljava/lang/String;
    const/16 v12, 0xc8

    .line 146
    .local v12, logSize:I
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_b

    .line 148
    :try_start_0
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    .line 149
    .local v20, tempSize:I
    if-lez v20, :cond_b

    .line 150
    move/from16 v12, v20

    .line 156
    .end local v20           #tempSize:I
    :cond_b
    :goto_1
    const-string v17, ""

    .line 157
    .local v17, startCmd:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/mtklogger/utils/Utils;->getLogPathType()Ljava/lang/String;

    move-result-object v11

    .line 158
    .local v11, logPathType:Ljava/lang/String;
    const-string v21, "/data"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 159
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "tcpdump_data_start_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 163
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/mtklogger/framework/LogConnection;->sendCmd(Ljava/lang/String;)Z

    move-result v7

    .line 164
    .local v7, cmdSuccess:Z
    if-nez v7, :cond_5

    .line 165
    const-string v21, "MTKLogger/NetworkLog"

    const-string v22, "Send start command to native layer fail, maybe connection has already be lost."

    invoke-static/range {v21 .. v22}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "4"

    #calls: Lcom/mediatek/mtklogger/framework/NetworkLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static/range {v21 .. v23}, Lcom/mediatek/mtklogger/framework/NetworkLog;->access$100(Lcom/mediatek/mtklogger/framework/NetworkLog;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 161
    .end local v7           #cmdSuccess:Z
    :cond_c
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "tcpdump_sdcard_start_"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_2

    .line 174
    .end local v8           #defaultPreferences:Landroid/content/SharedPreferences;
    .end local v11           #logPathType:Ljava/lang/String;
    .end local v12           #logSize:I
    .end local v13           #logSizeStr:Ljava/lang/String;
    .end local v14           #logStorageStatus:I
    .end local v17           #startCmd:Ljava/lang/String;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    #getter for: Lcom/mediatek/mtklogger/framework/NetworkLog;->bConnected:Z
    invoke-static/range {v21 .. v21}, Lcom/mediatek/mtklogger/framework/NetworkLog;->access$000(Lcom/mediatek/mtklogger/framework/NetworkLog;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 175
    const/4 v7, 0x0

    .line 176
    .restart local v7       #cmdSuccess:Z
    const-string v18, ""

    .line 177
    .local v18, stopCmd:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/mtklogger/utils/Utils;->getLogPathType()Ljava/lang/String;

    move-result-object v11

    .line 179
    .restart local v11       #logPathType:Ljava/lang/String;
    sget-object v21, Lcom/mediatek/mtklogger/framework/LogInstance;->mContext:Landroid/content/Context;

    invoke-static/range {v21 .. v21}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 181
    .restart local v8       #defaultPreferences:Landroid/content/SharedPreferences;
    const-string v21, "networklog_ping_flag"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 182
    .local v15, needPing:Z
    const-string v21, "MTKLogger/NetworkLog"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "NetworkLog ping at stop time flag = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v21, "/data"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 185
    if-eqz v15, :cond_10

    .line 186
    const-string v18, "tcpdump_data_stop"

    .line 197
    :goto_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_15

    .line 198
    const-string v21, "MTKLogger/NetworkLog"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Network log stop reason = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v21, "storage_full_or_lost"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_d

    const-string v21, "sd_timeout"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_d

    const-string v21, "folder_lost"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 205
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    move-object/from16 v21, v0

    const-string v22, "tcpdump_sdcard_check"

    invoke-virtual/range {v21 .. v22}, Lcom/mediatek/mtklogger/framework/LogConnection;->sendCmd(Ljava/lang/String;)Z

    move-result v7

    .line 206
    if-eqz v7, :cond_f

    .line 207
    const-string v21, "MTKLogger/NetworkLog"

    const-string v22, "Native will not response to check command, assum it to be successful."

    invoke-static/range {v21 .. v22}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v19, "7"

    .line 210
    .local v19, stopReason:Ljava/lang/String;
    const-string v21, "folder_lost"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 211
    const-string v19, "8"

    .line 215
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v19

    #calls: Lcom/mediatek/mtklogger/framework/NetworkLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/mtklogger/framework/NetworkLog;->access$100(Lcom/mediatek/mtklogger/framework/NetworkLog;ILjava/lang/String;)V

    .line 225
    .end local v19           #stopReason:Ljava/lang/String;
    :cond_f
    :goto_5
    if-nez v7, :cond_5

    .line 226
    const-string v21, "MTKLogger/NetworkLog"

    const-string v22, "Send stop command to native layer fail, maybe connection has already be lost."

    invoke-static/range {v21 .. v22}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "4"

    #calls: Lcom/mediatek/mtklogger/framework/NetworkLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static/range {v21 .. v23}, Lcom/mediatek/mtklogger/framework/NetworkLog;->access$100(Lcom/mediatek/mtklogger/framework/NetworkLog;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :cond_10
    const-string v18, "tcpdump_data_stop_noping"

    goto/16 :goto_3

    .line 191
    :cond_11
    if-eqz v15, :cond_12

    .line 192
    const-string v18, "tcpdump_sdcard_stop"

    goto/16 :goto_3

    .line 194
    :cond_12
    const-string v18, "tcpdump_sdcard_stop_noping"

    goto/16 :goto_3

    .line 212
    .restart local v19       #stopReason:Ljava/lang/String;
    :cond_13
    const-string v21, "sd_timeout"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 213
    const-string v19, "11"

    goto :goto_4

    .line 218
    .end local v19           #stopReason:Ljava/lang/String;
    :cond_14
    const-string v21, "MTKLogger/NetworkLog"

    const-string v22, "Unsupported stop reason, ignore it."

    invoke-static/range {v21 .. v22}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/mtklogger/framework/LogConnection;->sendCmd(Ljava/lang/String;)Z

    move-result v7

    goto :goto_5

    .line 222
    :cond_15
    const-string v21, "MTKLogger/NetworkLog"

    const-string v22, "Normally stop network log with stop command"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/mtklogger/framework/LogConnection;->sendCmd(Ljava/lang/String;)Z

    move-result v7

    goto :goto_5

    .line 233
    .end local v7           #cmdSuccess:Z
    .end local v8           #defaultPreferences:Landroid/content/SharedPreferences;
    .end local v11           #logPathType:Ljava/lang/String;
    .end local v15           #needPing:Z
    .end local v18           #stopCmd:Ljava/lang/String;
    :cond_16
    const-string v21, "MTKLogger/NetworkLog"

    const-string v22, "Have not connected to native layer, just ignore this command"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "1"

    #calls: Lcom/mediatek/mtklogger/framework/NetworkLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static/range {v21 .. v23}, Lcom/mediatek/mtklogger/framework/NetworkLog;->access$100(Lcom/mediatek/mtklogger/framework/NetworkLog;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 241
    :sswitch_2
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 242
    .local v3, cmdObj:Ljava/lang/Object;
    if-nez v3, :cond_17

    .line 243
    const-string v21, "MTKLogger/NetworkLog"

    const-string v22, "Fail to get start shell command."

    invoke-static/range {v21 .. v22}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    move-object v6, v3

    .line 246
    check-cast v6, Ljava/lang/String;

    .line 247
    .local v6, cmdStr:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 248
    const-string v21, "MTKLogger/NetworkLog"

    const-string v22, "Please give me a not null command to run in shell."

    invoke-static/range {v21 .. v22}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 251
    :cond_18
    const-string v21, "MTKLogger/NetworkLog"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Send command["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] to shell now."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "runshell_command_start_"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/mediatek/mtklogger/framework/LogConnection;->sendCmd(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 255
    .end local v3           #cmdObj:Ljava/lang/Object;
    .end local v6           #cmdStr:Ljava/lang/String;
    :sswitch_3
    const-string v21, "MTKLogger/NetworkLog"

    const-string v22, "Stop former sent shell command now."

    invoke-static/range {v21 .. v22}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    move-object/from16 v21, v0

    const-string v22, "runshell_command_stop_"

    invoke-virtual/range {v21 .. v22}, Lcom/mediatek/mtklogger/framework/LogConnection;->sendCmd(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 259
    :sswitch_4
    const-string v21, "MTKLogger/NetworkLog"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Receive adb command["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 262
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    #getter for: Lcom/mediatek/mtklogger/framework/NetworkLog;->bConnected:Z
    invoke-static/range {v21 .. v21}, Lcom/mediatek/mtklogger/framework/NetworkLog;->access$000(Lcom/mediatek/mtklogger/framework/NetworkLog;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 263
    const-string v21, "MTKLogger/NetworkLog"

    const-string v22, "Reconnect to native layer fail! Mark log status as stopped."

    invoke-static/range {v21 .. v22}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "1"

    #calls: Lcom/mediatek/mtklogger/framework/NetworkLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static/range {v21 .. v23}, Lcom/mediatek/mtklogger/framework/NetworkLog;->access$100(Lcom/mediatek/mtklogger/framework/NetworkLog;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 268
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    move-object/from16 v21, v0

    if-eqz v21, :cond_19

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/mtklogger/framework/LogConnection;->stop()V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/mediatek/mtklogger/framework/NetworkLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    .line 272
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/mediatek/mtklogger/framework/NetworkLog;->bConnected:Z
    invoke-static/range {v21 .. v22}, Lcom/mediatek/mtklogger/framework/NetworkLog;->access$002(Lcom/mediatek/mtklogger/framework/NetworkLog;Z)Z

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "5"

    #calls: Lcom/mediatek/mtklogger/framework/NetworkLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static/range {v21 .. v23}, Lcom/mediatek/mtklogger/framework/NetworkLog;->access$100(Lcom/mediatek/mtklogger/framework/NetworkLog;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 290
    .restart local v9       #failReason:Ljava/lang/String;
    .restart local v10       #failReasonObj:Ljava/lang/Object;
    .restart local v16       #respType:I
    :cond_1a
    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_1b

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const-string v23, ""

    #calls: Lcom/mediatek/mtklogger/framework/NetworkLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static/range {v21 .. v23}, Lcom/mediatek/mtklogger/framework/NetworkLog;->access$100(Lcom/mediatek/mtklogger/framework/NetworkLog;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 292
    :cond_1b
    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_1c

    const/16 v21, 0x2

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 293
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/NetworkLog;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, ""

    #calls: Lcom/mediatek/mtklogger/framework/NetworkLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static/range {v21 .. v23}, Lcom/mediatek/mtklogger/framework/NetworkLog;->access$100(Lcom/mediatek/mtklogger/framework/NetworkLog;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 297
    :cond_1d
    const-string v21, "MTKLogger/NetworkLog"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Ignore response whose type = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 300
    .end local v9           #failReason:Ljava/lang/String;
    .end local v10           #failReasonObj:Ljava/lang/Object;
    .end local v16           #respType:I
    :cond_1e
    const-string v21, "MTKLogger/NetworkLog"

    const-string v22, "Current unsupported messge"

    invoke-static/range {v21 .. v22}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    .restart local v8       #defaultPreferences:Landroid/content/SharedPreferences;
    .restart local v12       #logSize:I
    .restart local v13       #logSizeStr:Ljava/lang/String;
    .restart local v14       #logStorageStatus:I
    :catch_0
    move-exception v21

    goto/16 :goto_1

    .line 110
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x6 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0x16 -> :sswitch_6
    .end sparse-switch
.end method
