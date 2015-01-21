.class Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "EventsMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor$2;->this$0:Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "mContext"
    .parameter "intent"

    .prologue
    .line 60
    if-nez p2, :cond_1

    .line 61
    const-string v3, "EventsMonitor"

    const-string v4, "onReceive: intent == null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 66
    .local v11, action:Ljava/lang/String;
    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 70
    :cond_2
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 75
    .local v16, msgs:[Landroid/telephony/SmsMessage;
    new-instance v18, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    invoke-direct/range {v18 .. v18}, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;-><init>()V

    .line 76
    .local v18, sms:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    const/4 v3, 0x0

    aget-object v3, v16, v3

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->phonenum:Ljava/lang/String;

    .line 77
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v12, buf:Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    move-object/from16 v0, v16

    array-length v3, v0

    if-ge v14, v3, :cond_3

    .line 79
    aget-object v3, v16, v14

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 71
    .end local v12           #buf:Ljava/lang/StringBuilder;
    .end local v14           #i:I
    .end local v16           #msgs:[Landroid/telephony/SmsMessage;
    .end local v18           #sms:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    :catch_0
    move-exception v13

    .line 72
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 81
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v12       #buf:Ljava/lang/StringBuilder;
    .restart local v14       #i:I
    .restart local v16       #msgs:[Landroid/telephony/SmsMessage;
    .restart local v18       #sms:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    :cond_3
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->body:Ljava/lang/String;

    .line 82
    const/4 v3, 0x1

    move-object/from16 v0, v18

    iput v3, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->type:I

    .line 83
    const/4 v3, 0x0

    move-object/from16 v0, v18

    iput v3, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->protocolType:I

    .line 84
    const/4 v3, 0x0

    aget-object v3, v16, v3

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v3

    move-object/from16 v0, v18

    iput-wide v3, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->date:J

    .line 85
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->raw:Landroid/content/Intent;

    .line 86
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/msim/SimManager;->getSmsSubscription(Landroid/content/Intent;)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->subscription:I

    .line 88
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "liuji debug sms EventsMonitor subscription:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget v5, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->subscription:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getRetrieveStatus()I

    move-result v3

    if-lez v3, :cond_4

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->body:Ljava/lang/String;

    sget-object v4, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->RETRIEVE_SMS:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/zte/heartyservice/common/utils/StringUtils;->stringStartsWithIgnoreCase(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    :cond_4
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->access$100()Ltmsdk/bg/module/aresengine/DataMonitor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 95
    new-instance v2, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->phonenum:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, v18

    iget-wide v6, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->date:J

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->body:Ljava/lang/String;

    const/4 v9, 0x1

    move-object/from16 v0, v18

    iget v10, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->subscription:I

    invoke-direct/range {v2 .. v10}, Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;-><init>(Ljava/lang/String;JJLjava/lang/String;II)V

    .line 98
    .local v2, info:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->access$100()Ltmsdk/bg/module/aresengine/DataMonitor;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v4}, Ltmsdk/bg/module/aresengine/DataMonitor;->notifyDataReached(Ltmsdk/common/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor$2;->getAbortBroadcast()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 100
    invoke-static {v2}, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->addToDeleteList(Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;)V

    goto/16 :goto_0

    .line 102
    :cond_5
    invoke-static {v2}, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->addToNotDealList(Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;)V

    goto/16 :goto_0

    .line 105
    .end local v2           #info:Lcom/zte/heartyservice/common/utils/SMSContentObserver$SMSInfo;
    .end local v12           #buf:Ljava/lang/StringBuilder;
    .end local v14           #i:I
    .end local v16           #msgs:[Landroid/telephony/SmsMessage;
    .end local v18           #sms:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    :cond_6
    const-string v3, "android.intent.action.PHONE_STATE_CHANGED_FOR_MI"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 106
    const-string v3, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 107
    .local v17, phoneState:Ljava/lang/String;
    const/16 v20, 0x0

    .line 108
    .local v20, type:I
    const-string v3, "IDLE"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 109
    const/16 v20, 0x0

    .line 116
    :cond_7
    :goto_2
    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_0

    .line 117
    #calls: Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->notifyCallDataReached(Landroid/content/Intent;)V
    invoke-static/range {p2 .. p2}, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->access$000(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 110
    :cond_8
    const-string v3, "RINGING"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 111
    const/16 v20, 0x1

    goto :goto_2

    .line 112
    :cond_9
    const-string v3, "OFFHOOK"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 113
    const/16 v20, 0x2

    goto :goto_2

    .line 119
    .end local v17           #phoneState:Ljava/lang/String;
    .end local v20           #type:I
    :cond_a
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/msim/SimManager;->extendedCallBroadcast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    const-string v3, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 122
    .restart local v17       #phoneState:Ljava/lang/String;
    const/16 v20, 0x0

    .line 123
    .restart local v20       #type:I
    const-string v3, "IDLE"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 124
    const/16 v20, 0x0

    .line 131
    :cond_b
    :goto_3
    const/4 v3, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_0

    .line 132
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/msim/SimManager;->getCallSubscription(Landroid/content/Intent;)I

    move-result v19

    .line 133
    .local v19, subscription:I
    const/4 v3, -0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_e

    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 135
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->access$200()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->access$200()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    .line 137
    .local v15, msg:Landroid/os/Message;
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->access$200()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v15, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 125
    .end local v15           #msg:Landroid/os/Message;
    .end local v19           #subscription:I
    :cond_c
    const-string v3, "RINGING"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 126
    const/16 v20, 0x1

    goto :goto_3

    .line 127
    :cond_d
    const-string v3, "OFFHOOK"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 128
    const/16 v20, 0x2

    goto :goto_3

    .line 139
    .restart local v19       #subscription:I
    :cond_e
    const/4 v3, -0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_f

    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 141
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->access$200()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->access$200()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 143
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->access$200()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 145
    :cond_f
    #calls: Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->notifyCallDataReached(Landroid/content/Intent;)V
    invoke-static/range {p2 .. p2}, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->access$000(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
