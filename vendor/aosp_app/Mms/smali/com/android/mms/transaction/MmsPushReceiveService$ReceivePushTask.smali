.class Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;
.super Landroid/os/AsyncTask;
.source "MmsPushReceiveService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MmsPushReceiveService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReceivePushTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/mms/transaction/MmsPushReceiveService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/MmsPushReceiveService;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->this$0:Lcom/android/mms/transaction/MmsPushReceiveService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 196
    iput-object p2, p0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->mContext:Landroid/content/Context;

    .line 197
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 193
    check-cast p1, [Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 38
    .parameter "intents"

    .prologue
    .line 201
    const/4 v4, 0x0

    aget-object v23, p1, v4

    .line 203
    .local v23, intent:Landroid/content/Intent;
    const-string v4, "Mms/Txn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "do In Background, slotId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "simId"

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v4, "data"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v29

    .line 206
    .local v29, pushData:[B
    new-instance v27, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 207
    .local v27, parser:Lcom/google/android/mms/pdu/PduParser;
    const/16 v36, 0x0

    .line 209
    .local v36, type:I
    :try_start_0
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    .line 210
    .local v3, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-static {}, Lcom/android/mms/transaction/MmsPushReceiveService;->access$000()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/android/mms/transaction/MmsPushReceiveService;->access$002(I)I

    .line 211
    if-nez v3, :cond_1

    .line 212
    const-string v4, "MmsPushReceiveService"

    const-string v5, "Invalid PUSH data"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 213
    const/4 v4, 0x0

    .line 391
    invoke-static {}, Lcom/android/mms/transaction/MmsPushReceiveService;->access$000()I

    move-result v5

    if-nez v5, :cond_0

    .line 392
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->this$0:Lcom/android/mms/transaction/MmsPushReceiveService;

    invoke-virtual {v5}, Landroid/app/Service;->stopSelf()V

    .line 393
    const-string v5, "MmsPushReceiveService"

    const-string v8, "stop service"

    invoke-static {v5, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_0
    const-string v5, "Mms/Txn"

    const-string v8, "Normal priority"

    invoke-static {v5, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    .end local v3           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :goto_0
    return-object v4

    .line 216
    .restart local v3       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 217
    .local v2, p:Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 218
    .local v18, cr:Landroid/content/ContentResolver;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v36

    .line 219
    const-wide/16 v33, -0x1

    .line 220
    .local v33, threadId:J
    sparse-switch v36, :sswitch_data_0

    .line 382
    const-string v4, "MmsPushReceiveService"

    const-string v5, "Received unrecognized PDU."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 391
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/mms/transaction/MmsPushReceiveService;->access$000()I

    move-result v4

    if-nez v4, :cond_3

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->this$0:Lcom/android/mms/transaction/MmsPushReceiveService;

    invoke-virtual {v4}, Landroid/app/Service;->stopSelf()V

    .line 393
    const-string v4, "MmsPushReceiveService"

    const-string v5, "stop service"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_3
    const-string v4, "Mms/Txn"

    const-string v5, "Normal priority"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    .end local v2           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v3           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v18           #cr:Landroid/content/ContentResolver;
    .end local v33           #threadId:J
    :goto_2
    const/4 v4, 0x0

    goto :goto_0

    .line 223
    .restart local v2       #p:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v3       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v18       #cr:Landroid/content/ContentResolver;
    .restart local v33       #threadId:J
    :sswitch_0
    :try_start_2
    const-string v4, "Mms/Txn"

    const-string v5, "type=MESSAGE_TYPE_DELIVERY_IND"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :sswitch_1
    const/16 v4, 0x88

    move/from16 v0, v36

    if-ne v0, v4, :cond_4

    .line 228
    const-string v4, "Mms/Txn"

    const-string v5, "type=MESSAGE_TYPE_READ_ORIG_IND"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->mContext:Landroid/content/Context;

    move/from16 v0, v36

    #calls: Lcom/android/mms/transaction/MmsPushReceiveService;->findThreadId(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;I)J
    invoke-static {v4, v3, v0}, Lcom/android/mms/transaction/MmsPushReceiveService;->access$100(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;I)J

    move-result-wide v33

    .line 232
    const-wide/16 v4, -0x1

    cmp-long v4, v33, v4

    if-eqz v4, :cond_2

    .line 239
    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/mms/ui/MmsPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v6

    .line 242
    .local v6, uri:Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v7, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 243
    .local v7, values:Landroid/content/ContentValues;
    const-string v4, "thread_id"

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, v18

    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 245
    invoke-static {}, Lcom/android/mms/transaction/MmsPushReceiveService;->access$000()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Lcom/android/mms/transaction/MmsPushReceiveService;->access$002(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 384
    .end local v2           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v3           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    .end local v18           #cr:Landroid/content/ContentResolver;
    .end local v33           #threadId:J
    :catch_0
    move-exception v20

    .line 385
    .local v20, e:Lcom/google/android/mms/MmsException;
    :try_start_3
    const-string v4, "MmsPushReceiveService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to save the data from PUSH: type="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 391
    invoke-static {}, Lcom/android/mms/transaction/MmsPushReceiveService;->access$000()I

    move-result v4

    if-nez v4, :cond_5

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->this$0:Lcom/android/mms/transaction/MmsPushReceiveService;

    invoke-virtual {v4}, Landroid/app/Service;->stopSelf()V

    .line 393
    const-string v4, "MmsPushReceiveService"

    const-string v5, "stop service"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_5
    const-string v4, "Mms/Txn"

    const-string v5, "Normal priority"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 250
    .end local v20           #e:Lcom/google/android/mms/MmsException;
    .restart local v2       #p:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v3       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v18       #cr:Landroid/content/ContentResolver;
    .restart local v33       #threadId:J
    :sswitch_2
    :try_start_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->dealCTDeviceLowNotification(Landroid/content/Context;)V

    .line 255
    :cond_6
    const-string v4, "Mms/Txn"

    const-string v5, "type=MESSAGE_TYPE_NOTIFICATION_IND"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    move-object/from16 v26, v0

    .line 258
    .local v26, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransIdEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 259
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v16

    .line 260
    .local v16, contentLocation:[B
    const/16 v4, 0x3d

    move-object/from16 v0, v16

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v16, v5

    if-ne v4, v5, :cond_7

    .line 261
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v35

    .line 262
    .local v35, transactionId:[B
    move-object/from16 v0, v16

    array-length v4, v0

    move-object/from16 v0, v35

    array-length v5, v0

    add-int/2addr v4, v5

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 264
    .local v17, contentLocationWithId:[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    array-length v8, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v4, v1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    const/4 v4, 0x0

    move-object/from16 v0, v16

    array-length v5, v0

    move-object/from16 v0, v35

    array-length v8, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-static {v0, v4, v1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;->setContentLocation([B)V

    .line 272
    .end local v16           #contentLocation:[B
    .end local v17           #contentLocationWithId:[B
    .end local v35           #transactionId:[B
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    #calls: Lcom/android/mms/transaction/MmsPushReceiveService;->isDuplicateNotification(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z
    invoke-static {v4, v0}, Lcom/android/mms/transaction/MmsPushReceiveService;->access$200(Landroid/content/Context;Lcom/google/android/mms/pdu/NotificationInd;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 277
    sget-object v10, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/ui/MmsPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v12

    const/4 v13, 0x0

    move-object v8, v2

    move-object v9, v3

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v6

    .line 283
    .restart local v6       #uri:Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v7, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 284
    .restart local v7       #values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->mContext:Landroid/content/Context;

    const-string v5, "simId"

    const/4 v8, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v30

    .line 286
    .local v30, si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    if-nez v30, :cond_9

    .line 287
    const-string v4, "Mms/Txn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PushReceiver:SIMInfo is null for slot "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "simId"

    const/4 v9, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 386
    .end local v2           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v3           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    .end local v18           #cr:Landroid/content/ContentResolver;
    .end local v26           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .end local v30           #si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .end local v33           #threadId:J
    :catch_1
    move-exception v20

    .line 387
    .local v20, e:Ljava/lang/RuntimeException;
    :try_start_5
    const-string v4, "MmsPushReceiveService"

    const-string v5, "Unexpected RuntimeException."

    move-object/from16 v0, v20

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 391
    invoke-static {}, Lcom/android/mms/transaction/MmsPushReceiveService;->access$000()I

    move-result v4

    if-nez v4, :cond_8

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->this$0:Lcom/android/mms/transaction/MmsPushReceiveService;

    invoke-virtual {v4}, Landroid/app/Service;->stopSelf()V

    .line 393
    const-string v4, "MmsPushReceiveService"

    const-string v5, "stop service"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_8
    const-string v4, "Mms/Txn"

    const-string v5, "Normal priority"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 291
    .end local v20           #e:Ljava/lang/RuntimeException;
    .restart local v2       #p:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v3       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v7       #values:Landroid/content/ContentValues;
    .restart local v18       #cr:Landroid/content/ContentResolver;
    .restart local v26       #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .restart local v30       #si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .restart local v33       #threadId:J
    :cond_9
    :try_start_6
    const-string v4, "sim_id"

    invoke-virtual/range {v30 .. v30}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 292
    const-string v4, "service_center"

    const-string v5, "service_center"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, v18

    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 294
    const-string v4, "Mms/Txn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "save notification slotId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "simId"

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\tsimId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v30 .. v30}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\tsc="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "service_center"

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\taddr="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "address"

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\turi = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-wide/16 v24, 0x0

    .line 303
    .local v24, msgId:J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v4, 0x1

    new-array v11, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v11, v4

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v6

    invoke-static/range {v8 .. v14}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 305
    .local v19, cursor:Landroid/database/Cursor;
    if-eqz v19, :cond_a

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    move-result v4

    if-eqz v4, :cond_a

    .line 307
    const/4 v4, 0x0

    :try_start_7
    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 308
    const-string v4, "Mms/Txn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "msg id = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 310
    :try_start_8
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 314
    :cond_a
    sget-object v4, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v37

    .line 315
    .local v37, uriBuilder:Landroid/net/Uri$Builder;
    const-string v4, "protocol"

    const-string v5, "mms"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 316
    const-string v4, "message"

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 317
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual/range {v37 .. v37}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v28

    .line 319
    .local v28, pendingCs:Landroid/database/Cursor;
    if-eqz v28, :cond_b

    .line 321
    :try_start_9
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 322
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 323
    .local v11, valuesforPending:Landroid/content/ContentValues;
    const-string v4, "pending_sim_id"

    invoke-virtual/range {v30 .. v30}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 324
    const-string v4, "_id"

    move-object/from16 v0, v28

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 325
    .local v15, columnIndex:I
    move-object/from16 v0, v28

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 326
    .local v21, id:J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v21

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 334
    .end local v11           #valuesforPending:Landroid/content/ContentValues;
    .end local v15           #columnIndex:I
    .end local v21           #id:J
    :goto_3
    :try_start_a
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 355
    :cond_b
    new-instance v32, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, v32

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    .local v32, svc:Landroid/content/Intent;
    const-string v4, "uri"

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const-string v4, "type"

    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->mContext:Landroid/content/Context;

    const-string v5, "simId"

    const/4 v8, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v30

    .line 363
    if-nez v30, :cond_e

    .line 364
    const-string v4, "Mms/Txn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PushReceiver: SIMInfo is null for slot "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "simId"

    const/4 v9, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_1

    .line 391
    .end local v2           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v3           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #values:Landroid/content/ContentValues;
    .end local v18           #cr:Landroid/content/ContentResolver;
    .end local v19           #cursor:Landroid/database/Cursor;
    .end local v24           #msgId:J
    .end local v26           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .end local v28           #pendingCs:Landroid/database/Cursor;
    .end local v30           #si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .end local v32           #svc:Landroid/content/Intent;
    .end local v33           #threadId:J
    .end local v37           #uriBuilder:Landroid/net/Uri$Builder;
    :catchall_0
    move-exception v4

    invoke-static {}, Lcom/android/mms/transaction/MmsPushReceiveService;->access$000()I

    move-result v5

    if-nez v5, :cond_c

    .line 392
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->this$0:Lcom/android/mms/transaction/MmsPushReceiveService;

    invoke-virtual {v5}, Landroid/app/Service;->stopSelf()V

    .line 393
    const-string v5, "MmsPushReceiveService"

    const-string v8, "stop service"

    invoke-static {v5, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_c
    const-string v5, "Mms/Txn"

    const-string v8, "Normal priority"

    invoke-static {v5, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 310
    .restart local v2       #p:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v3       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v7       #values:Landroid/content/ContentValues;
    .restart local v18       #cr:Landroid/content/ContentResolver;
    .restart local v19       #cursor:Landroid/database/Cursor;
    .restart local v24       #msgId:J
    .restart local v26       #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .restart local v30       #si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .restart local v33       #threadId:J
    :catchall_1
    move-exception v4

    :try_start_b
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1

    .line 330
    .restart local v28       #pendingCs:Landroid/database/Cursor;
    .restart local v37       #uriBuilder:Landroid/net/Uri$Builder;
    :cond_d
    :try_start_c
    const-string v4, "Mms/Txn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can not find message to set pending sim id, msgId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_3

    .line 334
    :catchall_2
    move-exception v4

    :try_start_d
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    throw v4

    .line 368
    .restart local v32       #svc:Landroid/content/Intent;
    :cond_e
    invoke-virtual/range {v30 .. v30}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v31, v0

    .line 369
    .local v31, simId:I
    const-string v4, "simId"

    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 373
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/MmsPushReceiveService$ReceivePushTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 374
    invoke-static {}, Lcom/android/mms/transaction/MmsPushReceiveService;->access$000()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Lcom/android/mms/transaction/MmsPushReceiveService;->access$002(I)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_1

    .line 220
    nop

    :sswitch_data_0
    .sparse-switch
        0x82 -> :sswitch_2
        0x86 -> :sswitch_0
        0x88 -> :sswitch_1
    .end sparse-switch
.end method
