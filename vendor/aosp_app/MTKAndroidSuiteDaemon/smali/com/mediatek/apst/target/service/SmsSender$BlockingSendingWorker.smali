.class Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;
.super Ljava/lang/Thread;
.source "SmsSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/apst/target/service/SmsSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockingSendingWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/apst/target/service/SmsSender;


# direct methods
.method public constructor <init>(Lcom/mediatek/apst/target/service/SmsSender;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;->this$0:Lcom/mediatek/apst/target/service/SmsSender;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 168
    const-wide/16 v12, 0x0

    .line 169
    .local v12, sleepInterval:J
    const/4 v15, 0x0

    .line 172
    .local v15, task:Lcom/mediatek/apst/target/service/SmsSender$SendingTask;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;->this$0:Lcom/mediatek/apst/target/service/SmsSender;

    invoke-virtual {v3}, Lcom/mediatek/apst/target/service/SmsSender;->isShouldTerminate()Z

    move-result v3

    if-nez v3, :cond_3

    .line 174
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;->this$0:Lcom/mediatek/apst/target/service/SmsSender;

    monitor-enter v4

    .line 175
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;->this$0:Lcom/mediatek/apst/target/service/SmsSender;

    #getter for: Lcom/mediatek/apst/target/service/SmsSender;->mSendingQueue:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/SmsSender;->access$000(Lcom/mediatek/apst/target/service/SmsSender;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;->this$0:Lcom/mediatek/apst/target/service/SmsSender;

    #getter for: Lcom/mediatek/apst/target/service/SmsSender;->mAllowSendNext:Z
    invoke-static {v3}, Lcom/mediatek/apst/target/service/SmsSender;->access$100(Lcom/mediatek/apst/target/service/SmsSender;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;->this$0:Lcom/mediatek/apst/target/service/SmsSender;

    #getter for: Lcom/mediatek/apst/target/service/SmsSender;->mPause:Z
    invoke-static {v3}, Lcom/mediatek/apst/target/service/SmsSender;->access$200(Lcom/mediatek/apst/target/service/SmsSender;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;->this$0:Lcom/mediatek/apst/target/service/SmsSender;

    #getter for: Lcom/mediatek/apst/target/service/SmsSender;->mSendingQueue:Ljava/util/List;
    invoke-static {v3}, Lcom/mediatek/apst/target/service/SmsSender;->access$000(Lcom/mediatek/apst/target/service/SmsSender;)Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/mediatek/apst/target/service/SmsSender$SendingTask;

    move-object v15, v0

    .line 179
    const/4 v11, 0x1

    .line 180
    .local v11, sendThis:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;->this$0:Lcom/mediatek/apst/target/service/SmsSender;

    const/4 v6, 0x0

    #setter for: Lcom/mediatek/apst/target/service/SmsSender;->mAllowSendNext:Z
    invoke-static {v3, v6}, Lcom/mediatek/apst/target/service/SmsSender;->access$102(Lcom/mediatek/apst/target/service/SmsSender;Z)Z

    .line 189
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    if-eqz v11, :cond_5

    .line 192
    iget-object v0, v15, Lcom/mediatek/apst/target/service/SmsSender$SendingTask;->mSms:Lcom/mediatek/apst/util/entity/message/Sms;

    move-object/from16 v16, v0

    .line 193
    .local v16, toSend:Lcom/mediatek/apst/util/entity/message/Sms;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v14

    .line 195
    .local v14, smsMgr:Landroid/telephony/SmsManager;
    const/4 v7, 0x0

    .line 196
    .local v7, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v8, 0x0

    .line 197
    .local v8, deliveredIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/entity/message/Sms;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 198
    .local v5, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    .end local v7           #sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 205
    .restart local v7       #sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v10, v3, :cond_4

    .line 210
    iget-object v3, v15, Lcom/mediatek/apst/target/service/SmsSender$SendingTask;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    new-instance v6, Landroid/content/Intent;

    const-string v17, "com.mediatek.apst.target.action.SMS_SENT"

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v17, "id"

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v18

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v6

    const-string v17, "date"

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/entity/message/Message;->getDate()J

    move-result-wide v18

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v6, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v6

    const/high16 v17, 0x800

    move/from16 v0, v17

    invoke-static {v3, v4, v6, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 182
    .end local v5           #parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v8           #deliveredIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v10           #i:I
    .end local v11           #sendThis:Z
    .end local v14           #smsMgr:Landroid/telephony/SmsManager;
    .end local v16           #toSend:Lcom/mediatek/apst/util/entity/message/Sms;
    :cond_1
    const/4 v15, 0x0

    .line 183
    const/4 v11, 0x0

    .restart local v11       #sendThis:Z
    goto :goto_1

    .line 187
    .end local v11           #sendThis:Z
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;->this$0:Lcom/mediatek/apst/target/service/SmsSender;

    const/4 v4, 0x0

    #setter for: Lcom/mediatek/apst/target/service/SmsSender;->mWorker:Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;
    invoke-static {v3, v4}, Lcom/mediatek/apst/target/service/SmsSender;->access$302(Lcom/mediatek/apst/target/service/SmsSender;Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;)Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;

    .line 260
    return-void

    .line 189
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 233
    .restart local v5       #parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7       #sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .restart local v8       #deliveredIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .restart local v10       #i:I
    .restart local v11       #sendThis:Z
    .restart local v14       #smsMgr:Landroid/telephony/SmsManager;
    .restart local v16       #toSend:Lcom/mediatek/apst/util/entity/message/Sms;
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/entity/message/Message;->getTarget()Lcom/mediatek/apst/util/entity/message/TargetAddress;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/message/TargetAddress;->getAddress()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget v6, v15, Lcom/mediatek/apst/target/service/SmsSender$SendingTask;->mSimId:I

    invoke-static/range {v3 .. v8}, Landroid/telephony/gemini/GeminiSmsManager;->sendMultipartTextMessageGemini(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 244
    const-wide/16 v12, 0x0

    .line 249
    .end local v5           #parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v8           #deliveredIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v10           #i:I
    .end local v14           #smsMgr:Landroid/telephony/SmsManager;
    .end local v16           #toSend:Lcom/mediatek/apst/util/entity/message/Sms;
    :goto_3
    const-wide/16 v3, 0x0

    cmp-long v3, v12, v3

    if-lez v3, :cond_0

    .line 251
    :try_start_3
    invoke-static {v12, v13}, Lcom/mediatek/apst/target/service/SmsSender$BlockingSendingWorker;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 252
    :catch_0
    move-exception v9

    .line 253
    .local v9, e:Ljava/lang/InterruptedException;
    invoke-static {v9}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 246
    .end local v9           #e:Ljava/lang/InterruptedException;
    :cond_5
    const-wide/16 v12, 0x64

    goto :goto_3
.end method
