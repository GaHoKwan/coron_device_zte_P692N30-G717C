.class Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;
.super Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;
.source "MobileLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/framework/MobileLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MobileLogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/framework/MobileLog;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/framework/MobileLog;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;-><init>(Lcom/mediatek/mtklogger/framework/LogInstance;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 101
    const-string v12, "MTKLogger/MobileLog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Handle receive message, what="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    #getter for: Lcom/mediatek/mtklogger/framework/MobileLog;->bConnected:Z
    invoke-static {v12}, Lcom/mediatek/mtklogger/framework/MobileLog;->access$000(Lcom/mediatek/mtklogger/framework/MobileLog;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 107
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v12, v12, Lcom/mediatek/mtklogger/framework/MobileLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    if-nez v12, :cond_0

    .line 108
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    new-instance v13, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogConnection;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    const-string v15, "mobilelogd"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MobileLog;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    move-object/from16 v16, v0

    invoke-direct/range {v13 .. v16}, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogConnection;-><init>(Lcom/mediatek/mtklogger/framework/MobileLog;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v13, v12, Lcom/mediatek/mtklogger/framework/MobileLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    .line 110
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    invoke-virtual {v13}, Lcom/mediatek/mtklogger/framework/MobileLog;->initLogConnection()Z

    move-result v13

    #setter for: Lcom/mediatek/mtklogger/framework/MobileLog;->bConnected:Z
    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/framework/MobileLog;->access$002(Lcom/mediatek/mtklogger/framework/MobileLog;Z)Z

    .line 114
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 115
    .local v2, cmdReasonObj:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 116
    .local v1, cmdReason:Ljava/lang/String;
    if-eqz v2, :cond_2

    instance-of v12, v2, Ljava/lang/String;

    if-eqz v12, :cond_2

    move-object v1, v2

    .line 117
    check-cast v1, Ljava/lang/String;

    .line 119
    :cond_2
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_0

    .line 298
    const-string v12, "MTKLogger/MobileLog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Not supported message: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .end local v1           #cmdReason:Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 121
    .restart local v1       #cmdReason:Ljava/lang/String;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    #getter for: Lcom/mediatek/mtklogger/framework/MobileLog;->bConnected:Z
    invoke-static {v12}, Lcom/mediatek/mtklogger/framework/MobileLog;->access$000(Lcom/mediatek/mtklogger/framework/MobileLog;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 122
    const-string v12, "MTKLogger/MobileLog"

    const-string v13, "Fail to establish connection to native layer."

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v12, v12, Lcom/mediatek/mtklogger/framework/MobileLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v12, :cond_4

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v13, v13, Lcom/mediatek/mtklogger/framework/MobileLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v14, "mobilelog_enable"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    if-ne v12, v13, :cond_4

    .line 125
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v12, v12, Lcom/mediatek/mtklogger/framework/MobileLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v13, "mobilelog_enable"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    const/4 v13, 0x0

    const-string v14, "1"

    #calls: Lcom/mediatek/mtklogger/framework/MobileLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static {v12, v13, v14}, Lcom/mediatek/mtklogger/framework/MobileLog;->access$100(Lcom/mediatek/mtklogger/framework/MobileLog;ILjava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    invoke-virtual {v12}, Lcom/mediatek/mtklogger/framework/MobileLog;->getLogStorageState()I

    move-result v6

    .line 133
    .local v6, logStorageStatus:I
    const/4 v12, 0x1

    if-eq v6, v12, :cond_8

    .line 134
    const-string v12, "MTKLogger/MobileLog"

    const-string v13, "Log storage is not ready yet."

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v12, v12, Lcom/mediatek/mtklogger/framework/MobileLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v12, :cond_6

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v13, v13, Lcom/mediatek/mtklogger/framework/MobileLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v14, "mobilelog_enable"

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    if-ne v12, v13, :cond_6

    .line 137
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v12, v12, Lcom/mediatek/mtklogger/framework/MobileLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v13, "mobilelog_enable"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    :cond_6
    const-string v12, "MTKLogger/MobileLog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Going to start mobile log, but SD card not ready yet, status="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", just send out a stop command to native."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v12, v12, Lcom/mediatek/mtklogger/framework/MobileLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    const-string v13, "stop"

    invoke-virtual {v12, v13}, Lcom/mediatek/mtklogger/framework/LogConnection;->sendCmd(Ljava/lang/String;)Z

    .line 146
    const/4 v12, -0x1

    if-ne v6, v12, :cond_7

    .line 147
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    const/4 v13, 0x0

    const-string v14, "2"

    #calls: Lcom/mediatek/mtklogger/framework/MobileLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static {v12, v13, v14}, Lcom/mediatek/mtklogger/framework/MobileLog;->access$100(Lcom/mediatek/mtklogger/framework/MobileLog;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 148
    :cond_7
    const/4 v12, -0x2

    if-ne v6, v12, :cond_3

    .line 149
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    const/4 v13, 0x0

    const-string v14, "3"

    #calls: Lcom/mediatek/mtklogger/framework/MobileLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static {v12, v13, v14}, Lcom/mediatek/mtklogger/framework/MobileLog;->access$100(Lcom/mediatek/mtklogger/framework/MobileLog;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 152
    :cond_8
    const/4 v3, 0x0

    .line 153
    .local v3, cmdSuccess:Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 154
    const-string v12, "MTKLogger/MobileLog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Mobile log initialization reason = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v12, "boot"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 156
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v12, v12, Lcom/mediatek/mtklogger/framework/MobileLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    const-string v13, "copy"

    invoke-virtual {v12, v13}, Lcom/mediatek/mtklogger/framework/LogConnection;->sendCmd(Ljava/lang/String;)Z

    move-result v3

    .line 172
    :goto_1
    if-eqz v3, :cond_d

    .line 175
    const-string v12, "MTKLogger/MobileLog"

    const-string v13, "After sending start command, wait native\'s resp, not treat it as successfully directly"

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :cond_9
    const-string v12, "ipo"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 159
    const-string v12, "MTKLogger/MobileLog"

    const-string v13, "Get an IPO boot message, but just treat is as normal boot"

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v12, v12, Lcom/mediatek/mtklogger/framework/MobileLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    const-string v13, "copy"

    invoke-virtual {v12, v13}, Lcom/mediatek/mtklogger/framework/LogConnection;->sendCmd(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 161
    :cond_a
    const-string v12, "from_ui"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 162
    const-string v12, "MTKLogger/MobileLog"

    const-string v13, "Start command come from UI, change log auto start to true at the same time"

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v12, v12, Lcom/mediatek/mtklogger/framework/MobileLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    const-string v13, "deep_start"

    invoke-virtual {v12, v13}, Lcom/mediatek/mtklogger/framework/LogConnection;->sendCmd(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 165
    :cond_b
    const-string v12, "MTKLogger/MobileLog"

    const-string v13, "Unsupported initialization reason, ignore it."

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v12, v12, Lcom/mediatek/mtklogger/framework/MobileLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    const-string v13, "start"

    invoke-virtual {v12, v13}, Lcom/mediatek/mtklogger/framework/LogConnection;->sendCmd(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 169
    :cond_c
    const-string v12, "MTKLogger/MobileLog"

    const-string v13, "No valid start up reason was found when init. Just start up."

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v12, v12, Lcom/mediatek/mtklogger/framework/MobileLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    const-string v13, "start"

    invoke-virtual {v12, v13}, Lcom/mediatek/mtklogger/framework/LogConnection;->sendCmd(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 177
    :cond_d
    const-string v12, "MTKLogger/MobileLog"

    const-string v13, "Send start command to native layer fail, maybe connection has already be lost."

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    const/4 v13, 0x0

    const-string v14, "4"

    #calls: Lcom/mediatek/mtklogger/framework/MobileLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static {v12, v13, v14}, Lcom/mediatek/mtklogger/framework/MobileLog;->access$100(Lcom/mediatek/mtklogger/framework/MobileLog;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 183
    .end local v3           #cmdSuccess:Z
    .end local v6           #logStorageStatus:I
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    #getter for: Lcom/mediatek/mtklogger/framework/MobileLog;->bConnected:Z
    invoke-static {v12}, Lcom/mediatek/mtklogger/framework/MobileLog;->access$000(Lcom/mediatek/mtklogger/framework/MobileLog;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 184
    const/4 v3, 0x0

    .line 185
    .restart local v3       #cmdSuccess:Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 186
    const-string v12, "MTKLogger/MobileLog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Mobile log stop reason = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v12, "ipo_shutdown"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 188
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v12, v12, Lcom/mediatek/mtklogger/framework/MobileLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    const-string v13, "IPO_SHUTDOWN"

    invoke-virtual {v12, v13}, Lcom/mediatek/mtklogger/framework/LogConnection;->sendCmd(Ljava/lang/String;)Z

    move-result v3

    .line 201
    :goto_2
    if-nez v3, :cond_11

    .line 202
    const-string v12, "MTKLogger/MobileLog"

    const-string v13, "Send stop command to native layer fail, maybe connection has already be lost."

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    const/4 v13, 0x0

    const-string v14, "4"

    #calls: Lcom/mediatek/mtklogger/framework/MobileLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static {v12, v13, v14}, Lcom/mediatek/mtklogger/framework/MobileLog;->access$100(Lcom/mediatek/mtklogger/framework/MobileLog;ILjava/lang/String;)V

    .line 212
    :goto_3
    const/4 v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 189
    :cond_e
    const-string v12, "from_ui"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 190
    const-string v12, "MTKLogger/MobileLog"

    const-string v13, "Stop command come from UI, change log auto start to false at the same time"

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v12, v12, Lcom/mediatek/mtklogger/framework/MobileLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    const-string v13, "deep_stop"

    invoke-virtual {v12, v13}, Lcom/mediatek/mtklogger/framework/LogConnection;->sendCmd(Ljava/lang/String;)Z

    move-result v3

    goto :goto_2

    .line 193
    :cond_f
    const-string v12, "MTKLogger/MobileLog"

    const-string v13, "Unsupported stop reason, ignore it."

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v12, v12, Lcom/mediatek/mtklogger/framework/MobileLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    const-string v13, "stop"

    invoke-virtual {v12, v13}, Lcom/mediatek/mtklogger/framework/LogConnection;->sendCmd(Ljava/lang/String;)Z

    move-result v3

    goto :goto_2

    .line 197
    :cond_10
    const-string v12, "MTKLogger/MobileLog"

    const-string v13, "Normally stop mobile log with stop command"

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v12, v12, Lcom/mediatek/mtklogger/framework/MobileLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    const-string v13, "stop"

    invoke-virtual {v12, v13}, Lcom/mediatek/mtklogger/framework/LogConnection;->sendCmd(Ljava/lang/String;)Z

    move-result v3

    goto :goto_2

    .line 205
    :cond_11
    const-string v9, ""

    .line 206
    .local v9, stopReason:Ljava/lang/String;
    const-string v12, "sd_timeout"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 207
    const-string v9, "11"

    .line 209
    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    const/4 v13, 0x0

    #calls: Lcom/mediatek/mtklogger/framework/MobileLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static {v12, v13, v9}, Lcom/mediatek/mtklogger/framework/MobileLog;->access$100(Lcom/mediatek/mtklogger/framework/MobileLog;ILjava/lang/String;)V

    goto :goto_3

    .line 214
    .end local v3           #cmdSuccess:Z
    .end local v9           #stopReason:Ljava/lang/String;
    :cond_13
    const-string v12, "MTKLogger/MobileLog"

    const-string v13, "Have not connected to native layer, just ignore this command"

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    const/4 v13, 0x0

    const-string v14, "1"

    #calls: Lcom/mediatek/mtklogger/framework/MobileLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static {v12, v13, v14}, Lcom/mediatek/mtklogger/framework/MobileLog;->access$100(Lcom/mediatek/mtklogger/framework/MobileLog;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 220
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    #getter for: Lcom/mediatek/mtklogger/framework/MobileLog;->bConnected:Z
    invoke-static {v12}, Lcom/mediatek/mtklogger/framework/MobileLog;->access$000(Lcom/mediatek/mtklogger/framework/MobileLog;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 221
    const-string v12, "MTKLogger/MobileLog"

    const-string v13, "Receive a check command. Ignore it."

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 225
    :cond_14
    const-string v12, "MTKLogger/MobileLog"

    const-string v13, "lost connection to native layer, stop check."

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->removeMessages(I)V

    goto/16 :goto_0

    .line 230
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    #getter for: Lcom/mediatek/mtklogger/framework/MobileLog;->bConnected:Z
    invoke-static {v12}, Lcom/mediatek/mtklogger/framework/MobileLog;->access$000(Lcom/mediatek/mtklogger/framework/MobileLog;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 231
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_19

    .line 232
    const-string v12, "MTKLogger/MobileLog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Receive config command, parameter="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v12, "logsize="

    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_15

    const-string v12, "autostart="

    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_15

    const-string v12, "totallogsize="

    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 236
    :cond_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v12, v12, Lcom/mediatek/mtklogger/framework/MobileLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    invoke-virtual {v12, v1}, Lcom/mediatek/mtklogger/framework/LogConnection;->sendCmd(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 237
    :cond_16
    const-string v12, "sublog_"

    invoke-virtual {v1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_18

    .line 238
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 239
    .local v11, subType:I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    .line 240
    .local v4, enableValue:I
    const-string v12, "MTKLogger/MobileLog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Try to set mobile sub log enable state, subType="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", enable?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    sget-object v12, Lcom/mediatek/mtklogger/framework/MobileLog;->KEY_SUB_LOG_TYPE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 243
    .local v10, subLogStr:Ljava/lang/String;
    if-nez v10, :cond_17

    .line 244
    const-string v12, "MTKLogger/MobileLog"

    const-string v13, "Unsupported sub mobile log type"

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 246
    :cond_17
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v12, v12, Lcom/mediatek/mtklogger/framework/MobileLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sublog_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/mediatek/mtklogger/framework/LogConnection;->sendCmd(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 250
    .end local v4           #enableValue:I
    .end local v10           #subLogStr:Ljava/lang/String;
    .end local v11           #subType:I
    :cond_18
    const-string v12, "MTKLogger/MobileLog"

    const-string v13, "Unsupported config command"

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    :cond_19
    const-string v12, "MTKLogger/MobileLog"

    const-string v13, "Receive config command, but parameter is null"

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 257
    :cond_1a
    const-string v12, "MTKLogger/MobileLog"

    const-string v13, "Fail to config native parameter because of lost connection."

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 261
    :sswitch_4
    const-string v12, "MTKLogger/MobileLog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Receive adb command["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 264
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    #getter for: Lcom/mediatek/mtklogger/framework/MobileLog;->bConnected:Z
    invoke-static {v12}, Lcom/mediatek/mtklogger/framework/MobileLog;->access$000(Lcom/mediatek/mtklogger/framework/MobileLog;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 265
    const-string v12, "MTKLogger/MobileLog"

    const-string v13, "Reconnect to native layer fail! Mark log status as stopped."

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    const/4 v13, 0x0

    const-string v14, "1"

    #calls: Lcom/mediatek/mtklogger/framework/MobileLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static {v12, v13, v14}, Lcom/mediatek/mtklogger/framework/MobileLog;->access$100(Lcom/mediatek/mtklogger/framework/MobileLog;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 270
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v12, v12, Lcom/mediatek/mtklogger/framework/MobileLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    if-eqz v12, :cond_1b

    .line 272
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v12, v12, Lcom/mediatek/mtklogger/framework/MobileLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    invoke-virtual {v12}, Lcom/mediatek/mtklogger/framework/LogConnection;->stop()V

    .line 273
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/mediatek/mtklogger/framework/MobileLog;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    .line 275
    :cond_1b
    const/4 v12, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->removeMessages(I)V

    .line 276
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    const/4 v13, 0x0

    #setter for: Lcom/mediatek/mtklogger/framework/MobileLog;->bConnected:Z
    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/framework/MobileLog;->access$002(Lcom/mediatek/mtklogger/framework/MobileLog;Z)Z

    .line 277
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    const/4 v13, 0x0

    const-string v14, "5"

    #calls: Lcom/mediatek/mtklogger/framework/MobileLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static {v12, v13, v14}, Lcom/mediatek/mtklogger/framework/MobileLog;->access$100(Lcom/mediatek/mtklogger/framework/MobileLog;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 280
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v12, v12, Lcom/mediatek/mtklogger/framework/MobileLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v13, "mobilelog_enable"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 281
    .local v5, formerStatus:I
    const/4 v12, 0x1

    if-eq v5, v12, :cond_1c

    .line 282
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    const/4 v13, 0x1

    const-string v14, ""

    #calls: Lcom/mediatek/mtklogger/framework/MobileLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static {v12, v13, v14}, Lcom/mediatek/mtklogger/framework/MobileLog;->access$100(Lcom/mediatek/mtklogger/framework/MobileLog;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 284
    :cond_1c
    const-string v12, "MTKLogger/MobileLog"

    const-string v13, "Still running, ignore alive message."

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 288
    .end local v5           #formerStatus:I
    :sswitch_8
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 289
    .local v7, newState:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    iget-object v12, v12, Lcom/mediatek/mtklogger/framework/MobileLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v13, "mobilelog_enable"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 290
    .local v8, oldState:I
    const-string v12, "MTKLogger/MobileLog"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Got an update event, new state = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", reason="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", oldState="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MobileLog;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1d

    const-string v1, ""

    .end local v1           #cmdReason:Ljava/lang/String;
    :cond_1d
    #calls: Lcom/mediatek/mtklogger/framework/MobileLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static {v12, v7, v1}, Lcom/mediatek/mtklogger/framework/MobileLog;->access$100(Lcom/mediatek/mtklogger/framework/MobileLog;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 119
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0x16 -> :sswitch_6
        0x17 -> :sswitch_7
        0x19 -> :sswitch_8
    .end sparse-switch
.end method
