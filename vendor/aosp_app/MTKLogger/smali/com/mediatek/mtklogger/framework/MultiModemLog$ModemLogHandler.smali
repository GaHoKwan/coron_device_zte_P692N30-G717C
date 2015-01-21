.class Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;
.super Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;
.source "MultiModemLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/framework/MultiModemLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModemLogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/framework/MultiModemLog;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;-><init>(Lcom/mediatek/mtklogger/framework/LogInstance;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .parameter "msg"

    .prologue
    .line 290
    const-string v23, "MTKLogger/MultiModemLog"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Handle receive message, what="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", msg.arg1=["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->bConnected:Z
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$100(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$000(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    move-result-object v23

    if-nez v23, :cond_0

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    new-instance v24, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    move-object/from16 v26, v0

    invoke-direct/range {v24 .. v26}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;-><init>(Lcom/mediatek/mtklogger/framework/MultiModemLog;Landroid/os/Handler;)V

    #setter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;
    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$002(Lcom/mediatek/mtklogger/framework/MultiModemLog;Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;)Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    .line 301
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v24, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;
    invoke-static/range {v24 .. v24}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$000(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    move-result-object v24

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->initLogConnection()Z
    invoke-static/range {v24 .. v24}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->access$200(Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;)Z

    move-result v24

    #setter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->bConnected:Z
    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$102(Lcom/mediatek/mtklogger/framework/MultiModemLog;Z)Z

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, -0x1

    #setter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStatus:I
    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$302(Lcom/mediatek/mtklogger/framework/MultiModemLog;I)I

    .line 308
    :cond_1
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 309
    .local v6, cmdReasonObj:Ljava/lang/Object;
    const/4 v5, 0x0

    .line 310
    .local v5, cmdReason:Ljava/lang/String;
    if-eqz v6, :cond_2

    instance-of v0, v6, Ljava/lang/String;

    move/from16 v23, v0

    if-eqz v23, :cond_2

    move-object v5, v6

    .line 311
    check-cast v5, Ljava/lang/String;

    .line 315
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->bConnected:Z
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$100(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "md_assert_file_path"

    const-string v25, ""

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, assertFileStr:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 319
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 320
    .local v22, values:[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 321
    const-string v23, "MTKLogger/MultiModemLog"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "The former modem reset dialog was killed abnormally, re-show it, assert file path="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v24, v22, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    const/16 v25, 0x1

    aget-object v25, v22, v25

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog;->showMemoryDumpDoneDialog(ILjava/lang/String;)V
    invoke-static/range {v23 .. v25}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$400(Lcom/mediatek/mtklogger/framework/MultiModemLog;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v3           #assertFileStr:Ljava/lang/String;
    .end local v22           #values:[Ljava/lang/String;
    :cond_3
    :goto_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    sparse-switch v23, :sswitch_data_0

    .line 621
    const-string v23, "MTKLogger/MultiModemLog"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Not supported message: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .end local v5           #cmdReason:Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 325
    .restart local v3       #assertFileStr:Ljava/lang/String;
    .restart local v5       #cmdReason:Ljava/lang/String;
    .restart local v22       #values:[Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 326
    .local v11, e:Ljava/lang/NumberFormatException;
    const-string v23, "MTKLogger/MultiModemLog"

    const-string v24, "Cached modem assert file format invalid"

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    .end local v3           #assertFileStr:Ljava/lang/String;
    .end local v11           #e:Ljava/lang/NumberFormatException;
    .end local v22           #values:[Ljava/lang/String;
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->bConnected:Z
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$100(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Z

    move-result v23

    if-nez v23, :cond_6

    .line 334
    const-string v23, "MTKLogger/MultiModemLog"

    const-string v24, "Fail to establish connection to native layer."

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v24, v0

    const-string v25, "modemlog_enable"

    const/16 v26, 0x1

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    const-string v24, "modemlog_enable"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 341
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "1"

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static/range {v23 .. v25}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$500(Lcom/mediatek/mtklogger/framework/MultiModemLog;ILjava/lang/String;)V

    goto :goto_1

    .line 344
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->getLogStorageState()I

    move-result v13

    .line 345
    .local v13, logStorageStatus:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog;->getCurrentMode()Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$600(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Ljava/lang/String;

    move-result-object v9

    .line 348
    .local v9, currentMode:Ljava/lang/String;
    const-string v23, "1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_9

    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v13, v0, :cond_9

    .line 350
    const-string v23, "MTKLogger/MultiModemLog"

    const-string v24, "Log storage is not ready yet."

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v24, v0

    const-string v25, "modemlog_enable"

    const/16 v26, 0x1

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    const-string v24, "modemlog_enable"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 357
    :cond_7
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v13, v0, :cond_8

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "2"

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static/range {v23 .. v25}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$500(Lcom/mediatek/mtklogger/framework/MultiModemLog;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 360
    :cond_8
    const/16 v23, -0x2

    move/from16 v0, v23

    if-ne v13, v0, :cond_4

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "3"

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static/range {v23 .. v25}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$500(Lcom/mediatek/mtklogger/framework/MultiModemLog;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 365
    :cond_9
    const/4 v7, 0x0

    .line 366
    .local v7, cmdSuccess:Z
    const-string v8, "start,"

    .line 367
    .local v8, commandStr:Ljava/lang/String;
    const-string v23, "from_ui"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 368
    const-string v23, "MTKLogger/MultiModemLog"

    const-string v24, "Start command come from UI, change log auto start to true at the same time"

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v8, "deep_start,"

    .line 371
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$000(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->sendCmd(Ljava/lang/String;)Z
    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->access$700(Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;Ljava/lang/String;)Z

    move-result v7

    .line 372
    if-eqz v7, :cond_b

    .line 373
    const-string v23, "MTKLogger/MultiModemLog"

    const-string v24, "After sending start command, wait native\'s resp, not treat it as successfully directly"

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 375
    :cond_b
    const-string v23, "MTKLogger/MultiModemLog"

    const-string v24, "Send start command to native layer fail, maybe connection has already been lost."

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "4"

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static/range {v23 .. v25}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$500(Lcom/mediatek/mtklogger/framework/MultiModemLog;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 381
    .end local v7           #cmdSuccess:Z
    .end local v8           #commandStr:Ljava/lang/String;
    .end local v9           #currentMode:Ljava/lang/String;
    .end local v13           #logStorageStatus:I
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->bConnected:Z
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$100(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 382
    const/4 v7, 0x0

    .line 383
    .restart local v7       #cmdSuccess:Z
    const-string v23, "MTKLogger/MultiModemLog"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Receive stop command, stop reason="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v8, "pause"

    .line 385
    .restart local v8       #commandStr:Ljava/lang/String;
    const-string v23, "ipo_shutdown"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 386
    const-string v23, "sys.ipo.pwrdncap"

    const-string v24, "-1"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 387
    .local v12, ipoFlag:Ljava/lang/String;
    const-string v23, "MTKLogger/MultiModemLog"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "IPO flag for modem log is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v23, "1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_c

    const-string v23, "3"

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 389
    :cond_c
    const-string v23, "MTKLogger/MultiModemLog"

    const-string v24, "According to IPO flag, do not need to stop modem log when IPO shutdown"

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 393
    .end local v12           #ipoFlag:Ljava/lang/String;
    :cond_d
    const-string v23, "from_ui"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 394
    const-string v23, "MTKLogger/MultiModemLog"

    const-string v24, "Stop command come from UI, change log auto start to false at the same time"

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v8, "deep_pause"

    .line 397
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$000(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    move-result-object v23

    move-object/from16 v0, v23

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->sendCmd(Ljava/lang/String;)Z
    invoke-static {v0, v8}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->access$700(Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;Ljava/lang/String;)Z

    move-result v7

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    #setter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mMonitorThreadStop:Z
    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$802(Lcom/mediatek/mtklogger/framework/MultiModemLog;Z)Z

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->waitNextClearLogCheck:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 400
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->waitNextClearLogCheck:Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    .line 401
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    if-nez v7, :cond_f

    .line 403
    const-string v23, "MTKLogger/MultiModemLog"

    const-string v24, "Send stop command to native layer fail, maybe connection has already be lost."

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "4"

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static/range {v23 .. v25}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$500(Lcom/mediatek/mtklogger/framework/MultiModemLog;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 401
    :catchall_0
    move-exception v23

    :try_start_2
    monitor-exit v24
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v23

    .line 408
    :cond_f
    const-string v21, ""

    .line 409
    .local v21, stopReason:Ljava/lang/String;
    const-string v23, "sd_timeout"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 410
    const-string v21, "11"

    .line 412
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v21

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$500(Lcom/mediatek/mtklogger/framework/MultiModemLog;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 415
    .end local v7           #cmdSuccess:Z
    .end local v8           #commandStr:Ljava/lang/String;
    .end local v21           #stopReason:Ljava/lang/String;
    :cond_11
    const-string v23, "MTKLogger/MultiModemLog"

    const-string v24, "Have not connected to native layer, just ignore this command"

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "1"

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static/range {v23 .. v25}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$500(Lcom/mediatek/mtklogger/framework/MultiModemLog;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 422
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->bConnected:Z
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$100(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 423
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_14

    .line 424
    const-string v23, "MTKLogger/MultiModemLog"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Receive config command, parameter="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v23, "autostart="

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 426
    const-string v23, "1"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$000(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "setauto,"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v25, v0

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog;->getCurrentMode()Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$600(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->sendCmd(Ljava/lang/String;)Z
    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->access$700(Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 433
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$000(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    move-result-object v23

    const-string v24, "setauto,0"

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->sendCmd(Ljava/lang/String;)Z
    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->access$700(Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 436
    :cond_13
    const-string v23, "MTKLogger/MultiModemLog"

    const-string v24, "Unsupported config command"

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 439
    :cond_14
    const-string v23, "MTKLogger/MultiModemLog"

    const-string v24, "Receive config command, but parameter is null"

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 442
    :cond_15
    const-string v23, "MTKLogger/MultiModemLog"

    const-string v24, "Fail to config native parameter because of lost connection."

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 447
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->bConnected:Z
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$100(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Z

    move-result v23

    if-nez v23, :cond_16

    .line 448
    const-string v23, "MTKLogger/MultiModemLog"

    const-string v24, "Reconnect to native layer fail! Mark log status as stopped."

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "1"

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static/range {v23 .. v25}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$500(Lcom/mediatek/mtklogger/framework/MultiModemLog;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 453
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog;->runMonitoringLogSizeThread()V
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$900(Lcom/mediatek/mtklogger/framework/MultiModemLog;)V

    .line 455
    const-string v23, "MTKLogger/MultiModemLog"

    const-string v24, "Send query pause status command to modem."

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$000(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    move-result-object v23

    const-string v24, "ispaused"

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->sendCmd(Ljava/lang/String;)Z
    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->access$700(Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 460
    :sswitch_4
    const-string v23, "MTKLogger/MultiModemLog"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Receive adb command["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog;->dealWithADBCommand(Ljava/lang/String;)V
    invoke-static {v0, v5}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$1000(Lcom/mediatek/mtklogger/framework/MultiModemLog;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 466
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->bConnected:Z
    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$102(Lcom/mediatek/mtklogger/framework/MultiModemLog;Z)Z

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    #setter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mMonitorThreadStop:Z
    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$802(Lcom/mediatek/mtklogger/framework/MultiModemLog;Z)Z

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->waitNextClearLogCheck:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 469
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->waitNextClearLogCheck:Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notifyAll()V

    .line 470
    monitor-exit v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 472
    const-string v23, "MTKLogger/MultiModemLog"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Modemlog ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "] lost, do not stop other instance, just update status as stopped"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$000(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    move-result-object v23

    if-eqz v23, :cond_17

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$000(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    move-result-object v23

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->stop()V
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->access$1100(Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;
    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$002(Lcom/mediatek/mtklogger/framework/MultiModemLog;Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;)Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    .line 478
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "5"

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static/range {v23 .. v25}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$500(Lcom/mediatek/mtklogger/framework/MultiModemLog;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 470
    :catchall_1
    move-exception v23

    :try_start_4
    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v23

    .line 481
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->bConnected:Z
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$100(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Z

    move-result v23

    if-eqz v23, :cond_19

    .line 482
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v24, v0

    const-string v25, "modemlog_enable"

    const/16 v26, 0x1

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$000(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    move-result-object v23

    const-string v24, "polling"

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->sendCmdToOneInstance(Ljava/lang/String;)Z
    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->access$1200(Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 486
    :cond_18
    const-string v23, "MTKLogger/MultiModemLog"

    const-string v24, "Modem log is stopped, no dumping is allowed."

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 489
    :cond_19
    const-string v23, "MTKLogger/MultiModemLog"

    const-string v24, "Lost connection to native, so ignore polling command."

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 493
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->bConnected:Z
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$100(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$000(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    move-result-object v23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    const-string v25, "resetmd"

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->sendCmd(ILjava/lang/String;)Z
    invoke-static/range {v23 .. v25}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->access$1300(Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;ILjava/lang/String;)Z

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog;->showResetModemDialog()V
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$1400(Lcom/mediatek/mtklogger/framework/MultiModemLog;)V

    goto/16 :goto_1

    .line 497
    :cond_1a
    const-string v23, "MTKLogger/MultiModemLog"

    const-string v24, "Lost connection to native, reset command will have no effect."

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 502
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    #setter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStage:I
    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$1502(Lcom/mediatek/mtklogger/framework/MultiModemLog;I)I

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCmdResHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$1600(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v25, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStage:I
    invoke-static/range {v25 .. v25}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$1500(Lcom/mediatek/mtklogger/framework/MultiModemLog;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/os/Message;->sendToTarget()V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    const-string v24, "modem_exception_path"

    const-string v25, "polling"

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 510
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStage:I
    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$1502(Lcom/mediatek/mtklogger/framework/MultiModemLog;I)I

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCmdResHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$1600(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v25, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStage:I
    invoke-static/range {v25 .. v25}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$1500(Lcom/mediatek/mtklogger/framework/MultiModemLog;)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/os/Message;->sendToTarget()V

    .line 513
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 514
    .local v18, pathObj:Ljava/lang/Object;
    const-string v19, ""

    .line 515
    .local v19, pathString:Ljava/lang/String;
    if-eqz v18, :cond_1b

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v23, v0

    if-eqz v23, :cond_1b

    move-object/from16 v19, v18

    .line 516
    check-cast v19, Ljava/lang/String;

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    const-string v24, "modem_exception_path"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 521
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v19

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog;->showMemoryDumpDoneDialog(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$400(Lcom/mediatek/mtklogger/framework/MultiModemLog;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 524
    .end local v18           #pathObj:Ljava/lang/Object;
    .end local v19           #pathString:Ljava/lang/String;
    :sswitch_a
    sget-object v23, Lcom/mediatek/mtklogger/framework/LogInstance;->mContext:Landroid/content/Context;

    const-string v24, "Log file is lost"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->bConnected:Z
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$100(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$000(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    move-result-object v23

    const-string v24, "pause"

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->sendCmd(Ljava/lang/String;)Z
    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->access$700(Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    const-string v24, "modemlog_enable"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, ""

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static/range {v23 .. v25}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$500(Lcom/mediatek/mtklogger/framework/MultiModemLog;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 534
    :sswitch_b
    new-instance v4, Landroid/app/AlertDialog$Builder;

    sget-object v23, Lcom/mediatek/mtklogger/framework/LogInstance;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 535
    .local v4, builder:Landroid/app/AlertDialog$Builder;
    const v23, 0x7f070084

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    const v24, 0x7f070085

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 537
    const v23, 0x1040013

    new-instance v24, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler$1;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler$1;-><init>(Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;)V

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 542
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    .line 543
    .local v10, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v10}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v23

    const/16 v24, 0x7d3

    invoke-virtual/range {v23 .. v24}, Landroid/view/Window;->setType(I)V

    .line 544
    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 547
    .end local v4           #builder:Landroid/app/AlertDialog$Builder;
    .end local v10           #dialog:Landroid/app/AlertDialog;
    :sswitch_c
    sget-object v23, Lcom/mediatek/mtklogger/framework/LogInstance;->mContext:Landroid/content/Context;

    const-string v24, "Failed to write log file"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->bConnected:Z
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$100(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$000(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    move-result-object v23

    const-string v24, "pause"

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->sendCmd(Ljava/lang/String;)Z
    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->access$700(Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    const-string v24, "modemlog_enable"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, ""

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static/range {v23 .. v25}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$500(Lcom/mediatek/mtklogger/framework/MultiModemLog;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 557
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->bConnected:Z
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$100(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$000(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    move-result-object v23

    const-string v24, "pause"

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->sendCmd(Ljava/lang/String;)Z
    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->access$700(Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    const-string v24, "modemlog_enable"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "3"

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static/range {v23 .. v25}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$500(Lcom/mediatek/mtklogger/framework/MultiModemLog;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 567
    :sswitch_e
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 568
    .local v14, modemIndex:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 569
    .local v20, statusObj:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStatus:I
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$300(Lcom/mediatek/mtklogger/framework/MultiModemLog;)I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1c

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStatus:I
    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$302(Lcom/mediatek/mtklogger/framework/MultiModemLog;I)I

    .line 572
    :cond_1c
    const-string v23, "0"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1d

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v14}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$376(Lcom/mediatek/mtklogger/framework/MultiModemLog;I)I

    .line 580
    :goto_2
    const-string v23, "MTKLogger/MultiModemLog"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Query MD pause status return, modemIndex="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", new pause status="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", mCurrentStatus="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v25, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStatus:I
    invoke-static/range {v25 .. v25}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$300(Lcom/mediatek/mtklogger/framework/MultiModemLog;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    sget-object v23, Lcom/mediatek/mtklogger/utils/Utils;->KEY_LOG_RUNNING_STATUS_IN_SYSPROP_MAP:Landroid/util/SparseArray;

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    const-string v24, "0"

    invoke-static/range {v23 .. v24}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 585
    .local v15, nativeStatus:Ljava/lang/String;
    const-string v23, "0"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStatus:I
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$300(Lcom/mediatek/mtklogger/framework/MultiModemLog;)I

    move-result v23

    if-lez v23, :cond_1f

    .line 587
    const-string v23, "MTKLogger/MultiModemLog"

    const-string v24, "Modem log runing status from system property is 0, but new query value is 1, update this to user."

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const-string v25, ""

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static/range {v23 .. v25}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$500(Lcom/mediatek/mtklogger/framework/MultiModemLog;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 574
    .end local v15           #nativeStatus:Ljava/lang/String;
    :cond_1d
    const-string v23, "1"

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1e

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v14}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$376(Lcom/mediatek/mtklogger/framework/MultiModemLog;I)I

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-static {v0, v14}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$380(Lcom/mediatek/mtklogger/framework/MultiModemLog;I)I

    goto/16 :goto_2

    .line 578
    :cond_1e
    const-string v23, "MTKLogger/MultiModemLog"

    const-string v24, "Invalid pause status value."

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 591
    .restart local v15       #nativeStatus:Ljava/lang/String;
    :cond_1f
    const-string v23, "1"

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStatus:I
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$300(Lcom/mediatek/mtklogger/framework/MultiModemLog;)I

    move-result v23

    if-nez v23, :cond_4

    .line 593
    const-string v23, "MTKLogger/MultiModemLog"

    const-string v24, "Modem log runing status from system property is 1, but new query value is 0, update this to user."

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, ""

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static/range {v23 .. v25}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$500(Lcom/mediatek/mtklogger/framework/MultiModemLog;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 599
    .end local v14           #modemIndex:I
    .end local v15           #nativeStatus:Ljava/lang/String;
    .end local v20           #statusObj:Ljava/lang/Object;
    :sswitch_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    .line 600
    .local v16, newState:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v23, v0

    const-string v24, "modemlog_enable"

    const/16 v25, 0x0

    invoke-interface/range {v23 .. v25}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 602
    .local v17, oldState:I
    const-string v23, "MTKLogger/MultiModemLog"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Got an update event, new state = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", reason="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-eqz v24, :cond_20

    const-string v5, ""

    .end local v5           #cmdReason:Ljava/lang/String;
    :cond_20
    move-object/from16 v0, v23

    move/from16 v1, v16

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog;->notifyServiceStatus(ILjava/lang/String;)V
    invoke-static {v0, v1, v5}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$500(Lcom/mediatek/mtklogger/framework/MultiModemLog;ILjava/lang/String;)V

    .line 605
    const/16 v23, 0x1

    move/from16 v0, v16

    move/from16 v1, v23

    if-ne v0, v1, :cond_22

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStatus:I
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$300(Lcom/mediatek/mtklogger/framework/MultiModemLog;)I

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_21

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStatus:I
    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$302(Lcom/mediatek/mtklogger/framework/MultiModemLog;I)I

    .line 610
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$376(Lcom/mediatek/mtklogger/framework/MultiModemLog;I)I

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog;->runMonitoringLogSizeThread()V
    invoke-static/range {v23 .. v23}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$900(Lcom/mediatek/mtklogger/framework/MultiModemLog;)V

    goto/16 :goto_1

    .line 613
    :cond_22
    const-string v23, "MTKLogger/MultiModemLog"

    const-string v24, "Get a modem log stop signal, stop monitor log folder status"

    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    #setter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mMonitorThreadStop:Z
    invoke-static/range {v23 .. v24}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$802(Lcom/mediatek/mtklogger/framework/MultiModemLog;Z)Z

    goto/16 :goto_1

    .line 331
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x7 -> :sswitch_2
        0x8 -> :sswitch_4
        0x9 -> :sswitch_3
        0x16 -> :sswitch_5
        0x19 -> :sswitch_f
        0x33 -> :sswitch_6
        0x34 -> :sswitch_7
        0x46 -> :sswitch_8
        0x47 -> :sswitch_9
        0x48 -> :sswitch_a
        0x49 -> :sswitch_b
        0x4a -> :sswitch_c
        0x4b -> :sswitch_d
        0x4c -> :sswitch_e
    .end sparse-switch
.end method
