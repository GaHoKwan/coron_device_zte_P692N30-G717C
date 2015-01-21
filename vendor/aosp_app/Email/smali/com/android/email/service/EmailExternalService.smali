.class public Lcom/android/email/service/EmailExternalService;
.super Landroid/app/IntentService;
.source "EmailExternalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/EmailExternalService$1;,
        Lcom/android/email/service/EmailExternalService$ControllerCallbacks;,
        Lcom/android/email/service/EmailExternalService$ExternalHandler;
    }
.end annotation


# static fields
.field private static final EXTRA_ACCOUNT_ARRAY:Ljava/lang/String; = "com.android.email.extra.ACCOUNT_ARRAY"

.field private static final EXTRA_FLAG:Ljava/lang/String; = "com.android.email.extra.FLAG"

.field private static final EXTRA_MAILBOX_TYPE:Ljava/lang/String; = "com.android.email.extra.MAILBOX_TYPE"

.field private static final EXTRA_NEED_RESULT:Ljava/lang/String; = "com.android.email.extra.NEED_RESULT"

.field private static final EXTRA_STREAM:Ljava/lang/String; = "com.android.email.extra.STREAM"

.field private static final NO_UPDATE_ACCOUNT:J = 0x0L

.field private static final SAVE_MESSAGE_WITHOUT_SENDING:I = 0x2

.field private static final SENDING_MESSAGE_WITH_SENDBOX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EmailExternalService"


# instance fields
.field private mController:Lcom/android/email/Controller;

.field private mControllerCallback:Lcom/android/emailcommon/service/EmailExternalCalls$Stub;

.field private mExternalHandler:Lcom/android/email/service/EmailExternalService$ExternalHandler;

.field private mSavetoSent:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    const-class v0, Lcom/android/email/service/EmailExternalService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 80
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/service/EmailExternalService;->mController:Lcom/android/email/Controller;

    .line 83
    iput-object v1, p0, Lcom/android/email/service/EmailExternalService;->mControllerCallback:Lcom/android/emailcommon/service/EmailExternalCalls$Stub;

    .line 84
    iput-object v1, p0, Lcom/android/email/service/EmailExternalService;->mExternalHandler:Lcom/android/email/service/EmailExternalService$ExternalHandler;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/service/EmailExternalService;->mSavetoSent:Z

    .line 89
    iput-object v1, p0, Lcom/android/email/service/EmailExternalService;->mUri:Landroid/net/Uri;

    .line 107
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/IntentService;->setIntentRedelivery(Z)V

    .line 108
    return-void
.end method

.method static synthetic access$200(Lcom/android/email/service/EmailExternalService;IJI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/service/EmailExternalService;->handleSendCallback(IJI)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/service/EmailExternalService;IJJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p5}, Lcom/android/email/service/EmailExternalService;->handleUpdateCallback(IJJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/service/EmailExternalService;)Lcom/android/email/service/EmailExternalService$ExternalHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/email/service/EmailExternalService;->mExternalHandler:Lcom/android/email/service/EmailExternalService$ExternalHandler;

    return-object v0
.end method

.method private fillMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJ)V
    .locals 4
    .parameter "localMessage"
    .parameter "mimeMessage"
    .parameter "accountId"
    .parameter "mailboxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 384
    invoke-static/range {p1 .. p6}, Lcom/android/email/LegacyConversions;->updateMessageFields(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJ)Z

    .line 387
    iput-boolean v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 388
    iput v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 390
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/service/EmailExternalService;->makeDisplayName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 394
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 395
    :cond_0
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->generateMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 397
    :cond_1
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 400
    :cond_2
    return-void
.end method

.method private handleSaveMail(Landroid/content/Intent;)V
    .locals 20
    .parameter "intent"

    .prologue
    .line 240
    const-string v17, "com.android.email.extra.MAILBOX_TYPE"

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 241
    .local v10, mailboxType:I
    const-string v17, "com.android.email.extra.ACCOUNT"

    const-wide/16 v18, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 242
    .local v5, accountId:J
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v0, v10, :cond_0

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v0, v10, :cond_0

    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v0, v10, :cond_0

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v0, v10, :cond_1

    .line 246
    :cond_0
    const-string v17, "EmailExternalService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Not get the MailBoxType "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/email/service/EmailExternalService;->broadSaveResult(JZ)V

    .line 306
    :goto_0
    return-void

    .line 251
    :cond_1
    const-string v17, "com.android.email.extra.STREAM"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/net/Uri;

    .line 252
    .local v16, uri:Landroid/net/Uri;
    const-string v17, "EmailExternalService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Savemail Stream:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ",accountId:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-wide/16 v17, -0x1

    cmp-long v17, v17, v5

    if-nez v17, :cond_2

    .line 256
    const-string v17, "EmailExternalService"

    const-string v18, "EXTRA_ACCOUNT not exist in intent."

    invoke-static/range {v17 .. v18}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/email/service/EmailExternalService;->broadSaveResult(JZ)V

    goto :goto_0

    .line 260
    :cond_2
    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v4

    .line 261
    .local v4, account:Lcom/android/emailcommon/provider/Account;
    if-nez v4, :cond_3

    .line 262
    const-string v17, "EmailExternalService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AccountID["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] not exist in DB."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/email/service/EmailExternalService;->broadSaveResult(JZ)V

    goto :goto_0

    .line 267
    :cond_3
    const/4 v8, 0x0

    .line 268
    .local v8, inputStream:Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 271
    .local v12, mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    const/4 v14, 0x1

    .line 273
    .local v14, result:I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 274
    new-instance v13, Lcom/android/emailcommon/internet/MimeMessage;

    invoke-direct {v13, v8}, Lcom/android/emailcommon/internet/MimeMessage;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 275
    .end local v12           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .local v13, mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    const/4 v14, 0x0

    .line 282
    if-eqz v8, :cond_4

    .line 283
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 288
    :cond_4
    :goto_1
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_9

    .line 289
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/email/service/EmailExternalService;->broadSaveResult(JZ)V

    goto/16 :goto_0

    .line 285
    :catch_0
    move-exception v7

    .line 286
    .local v7, e:Ljava/io/IOException;
    const-string v17, "EmailExternalService"

    const-string v18, "1 Error while closing fie."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 276
    .end local v7           #e:Ljava/io/IOException;
    .end local v13           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v12       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    :catch_1
    move-exception v7

    .line 277
    .local v7, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v17, "EmailExternalService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "1 Open file failed,uri:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    if-eqz v8, :cond_5

    .line 283
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 288
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :cond_5
    :goto_2
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_a

    .line 289
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/email/service/EmailExternalService;->broadSaveResult(JZ)V

    goto/16 :goto_0

    .line 285
    .restart local v7       #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v7

    .line 286
    .local v7, e:Ljava/io/IOException;
    const-string v17, "EmailExternalService"

    const-string v18, "1 Error while closing fie."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 278
    .end local v7           #e:Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 279
    .local v7, e:Ljava/lang/Exception;
    :try_start_4
    const-string v17, "EmailExternalService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error while pasring inputstream:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 282
    if-eqz v8, :cond_6

    .line 283
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 288
    .end local v7           #e:Ljava/lang/Exception;
    :cond_6
    :goto_3
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_a

    .line 289
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/email/service/EmailExternalService;->broadSaveResult(JZ)V

    goto/16 :goto_0

    .line 285
    .restart local v7       #e:Ljava/lang/Exception;
    :catch_4
    move-exception v7

    .line 286
    .local v7, e:Ljava/io/IOException;
    const-string v17, "EmailExternalService"

    const-string v18, "1 Error while closing fie."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 281
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 282
    if-eqz v8, :cond_7

    .line 283
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 288
    :cond_7
    :goto_4
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v14, v0, :cond_8

    .line 289
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/email/service/EmailExternalService;->broadSaveResult(JZ)V

    goto/16 :goto_0

    .line 285
    :catch_5
    move-exception v7

    .line 286
    .restart local v7       #e:Ljava/io/IOException;
    const-string v18, "EmailExternalService"

    const-string v19, "1 Error while closing fie."

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 290
    .end local v7           #e:Ljava/io/IOException;
    :cond_8
    throw v17

    .end local v12           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v13       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    :cond_9
    move-object v12, v13

    .line 296
    .end local v13           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v12       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    :cond_a
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5, v6, v10}, Lcom/android/email/service/EmailExternalService;->saveMessage(Lcom/android/emailcommon/mail/Message;JI)Z
    :try_end_7
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    goto/16 :goto_0

    .line 297
    :catch_6
    move-exception v11

    .line 298
    .local v11, me:Lcom/android/emailcommon/mail/MessagingException;
    const-string v17, "EmailExternalService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error while copying downloaded message."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 300
    .end local v11           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_7
    move-exception v15

    .line 301
    .local v15, rte:Ljava/lang/RuntimeException;
    const-string v17, "EmailExternalService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error while storing downloaded message."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 303
    .end local v15           #rte:Ljava/lang/RuntimeException;
    :catch_8
    move-exception v9

    .line 304
    .local v9, ioe:Ljava/io/IOException;
    const-string v17, "EmailExternalService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error while storing attachment."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleSendCallback(IJI)V
    .locals 11
    .parameter "result"
    .parameter "accountId"
    .parameter "resultType"

    .prologue
    .line 505
    iget-boolean v8, p0, Lcom/android/email/service/EmailExternalService;->mSavetoSent:Z

    if-eqz v8, :cond_3

    if-nez p1, :cond_3

    const/4 v8, 0x1

    if-ne v8, p4, :cond_3

    .line 507
    const/4 v2, 0x0

    .line 508
    .local v2, inputStream:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 510
    .local v5, mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/service/EmailExternalService;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 511
    new-instance v6, Lcom/android/emailcommon/internet/MimeMessage;

    invoke-direct {v6, v2}, Lcom/android/emailcommon/internet/MimeMessage;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 512
    .end local v5           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .local v6, mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    const/4 v8, 0x5

    :try_start_1
    invoke-direct {p0, v6, p2, p3, v8}, Lcom/android/email/service/EmailExternalService;->saveMessage(Lcom/android/emailcommon/mail/Message;JI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 520
    if-eqz v2, :cond_4

    .line 522
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 533
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v6           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    :cond_0
    :goto_0
    const-string v8, "EmailExternalService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "*****Handler sendCallback: result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", account = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",resultType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v0, "com.android.email.action.SEND_RESULT"

    .line 536
    .local v0, action:Ljava/lang/String;
    const/4 v8, 0x2

    if-ne p4, v8, :cond_1

    .line 537
    const-string v0, "com.android.email.action.DELIVER_RESULT"

    .line 539
    :cond_1
    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/android/email/service/EmailExternalService;->sendResult(Ljava/lang/String;JI)V

    .line 540
    return-void

    .line 523
    .end local v0           #action:Ljava/lang/String;
    .restart local v2       #inputStream:Ljava/io/InputStream;
    .restart local v6       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    :catch_0
    move-exception v1

    .line 524
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v5, v6

    .line 525
    .end local v6           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v5       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    goto :goto_0

    .line 513
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 514
    .local v4, me:Lcom/android/emailcommon/mail/MessagingException;
    :goto_1
    :try_start_3
    const-string v8, "EmailExternalService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while copying downloaded message."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 520
    if-eqz v2, :cond_0

    .line 522
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 523
    :catch_2
    move-exception v1

    .line 524
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 515
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #me:Lcom/android/emailcommon/mail/MessagingException;
    :catch_3
    move-exception v7

    .line 516
    .local v7, rte:Ljava/lang/RuntimeException;
    :goto_2
    :try_start_5
    const-string v8, "EmailExternalService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while storing downloaded message."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 520
    if-eqz v2, :cond_0

    .line 522
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 523
    :catch_4
    move-exception v1

    .line 524
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 517
    .end local v1           #e:Ljava/io/IOException;
    .end local v7           #rte:Ljava/lang/RuntimeException;
    :catch_5
    move-exception v3

    .line 518
    .local v3, ioe:Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string v8, "EmailExternalService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error while storing attachment."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 520
    if-eqz v2, :cond_0

    .line 522
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_0

    .line 523
    :catch_6
    move-exception v1

    .line 524
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 520
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #ioe:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v2, :cond_2

    .line 522
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 525
    :cond_2
    :goto_5
    throw v8

    .line 523
    :catch_7
    move-exception v1

    .line 524
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 529
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #inputStream:Ljava/io/InputStream;
    .end local v5           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    :cond_3
    const-string v8, "EmailExternalService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not send message success or not need save . result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mSavetoSent = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/email/service/EmailExternalService;->mSavetoSent:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 520
    .restart local v2       #inputStream:Ljava/io/InputStream;
    .restart local v6       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v5       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    goto :goto_4

    .line 517
    .end local v5           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v6       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    :catch_8
    move-exception v3

    move-object v5, v6

    .end local v6           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v5       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    goto :goto_3

    .line 515
    .end local v5           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v6       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    :catch_9
    move-exception v7

    move-object v5, v6

    .end local v6           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v5       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    goto/16 :goto_2

    .line 513
    .end local v5           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v6       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    :catch_a
    move-exception v4

    move-object v5, v6

    .end local v6           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v5       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    goto/16 :goto_1

    .end local v5           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v6       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    :cond_4
    move-object v5, v6

    .end local v6           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .restart local v5       #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    goto/16 :goto_0
.end method

.method private handleSendMail(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v5, 0x0

    .line 206
    const-string v0, "com.android.email.extra.FLAG"

    const/4 v4, -0x1

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 207
    .local v7, flag:I
    const-string v0, "com.android.email.extra.STREAM"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 208
    .local v3, uri:Landroid/net/Uri;
    iput-object v3, p0, Lcom/android/email/service/EmailExternalService;->mUri:Landroid/net/Uri;

    .line 209
    const-string v0, "com.android.email.extra.ACCOUNT"

    invoke-virtual {p1, v0, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 211
    .local v1, accountId:J
    cmp-long v0, v8, v1

    if-nez v0, :cond_0

    .line 212
    const-string v0, "EmailExternalService"

    const-string v4, "EXTRA_ACCOUNT not exist in intent."

    invoke-static {v0, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0, v1, v2, v5}, Lcom/android/email/service/EmailExternalService;->broadSendResult(JZ)V

    .line 230
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    .line 219
    .local v6, account:Lcom/android/emailcommon/provider/Account;
    if-nez v6, :cond_1

    .line 220
    const-string v0, "EmailExternalService"

    const-string v4, "Account not exist in DB."

    invoke-static {v0, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0, v1, v2, v5}, Lcom/android/email/service/EmailExternalService;->broadSendResult(JZ)V

    goto :goto_0

    .line 225
    :cond_1
    if-nez v7, :cond_2

    const/4 v5, 0x1

    .line 226
    .local v5, saveToSent:Z
    :cond_2
    iput-boolean v5, p0, Lcom/android/email/service/EmailExternalService;->mSavetoSent:Z

    .line 227
    const-string v0, "EmailExternalService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call Controller sendMail accountId = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " ,uri = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", saveToSent = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/email/service/EmailExternalService;->mController:Lcom/android/email/Controller;

    iget-object v4, p0, Lcom/android/email/service/EmailExternalService;->mControllerCallback:Lcom/android/emailcommon/service/EmailExternalCalls$Stub;

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->sendMailForBT(JLandroid/net/Uri;Lcom/android/emailcommon/service/EmailExternalCalls;Z)V

    goto :goto_0
.end method

.method private handleUpdateCallback(IJJ)V
    .locals 5
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    const/4 v1, 0x0

    .line 490
    invoke-static {p4, p5}, Lcom/android/emailcommon/service/EmailExternalUtils;->canSendBroadcast(J)Z

    move-result v0

    .line 491
    .local v0, canSend:Z
    const-string v2, "EmailExternalService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+++++handleUpdateCallback result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "canSend:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", account:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mailbox:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    if-eqz v0, :cond_1

    .line 494
    invoke-static {p4, p5, v1}, Lcom/android/emailcommon/service/EmailExternalUtils;->updateMail(JZ)V

    .line 495
    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, p2, p3, v1}, Lcom/android/email/service/EmailExternalService;->boradUpdateResult(JZ)V

    .line 497
    :cond_1
    return-void
.end method

.method private handleUpdateMail(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    .line 153
    const-string v0, "com.android.email.extra.NEED_RESULT"

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 154
    .local v10, needCallback:Z
    const-string v0, "com.android.email.extra.ACCOUNT_ARRAY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v7

    .line 157
    .local v7, accountIdArray:[J
    if-eqz v7, :cond_0

    array-length v0, v7

    if-nez v0, :cond_2

    .line 158
    :cond_0
    const-string v0, "EmailExternalService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UpdateInbox-->extra accout array is null, needCallback:"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    if-eqz v10, :cond_1

    .line 161
    const-wide/16 v12, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v12, v13, v0}, Lcom/android/email/service/EmailExternalService;->boradUpdateResult(JZ)V

    .line 198
    :cond_1
    return-void

    .line 167
    :cond_2
    array-length v11, v7

    .line 168
    .local v11, size:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v11, :cond_1

    .line 169
    aget-wide v1, v7, v9

    .line 170
    .local v1, accountId:J
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 171
    const-string v0, "EmailExternalService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " UpdateInbox-->accountId:"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_3
    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    .line 174
    .local v6, account:Lcom/android/emailcommon/provider/Account;
    if-nez v6, :cond_5

    .line 175
    const-string v0, "EmailExternalService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AccountID["

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, "] not exist in DB"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    if-eqz v10, :cond_4

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/email/service/EmailExternalService;->boradUpdateResult(JZ)V

    .line 168
    :cond_4
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 181
    :cond_5
    iget-object v0, p0, Lcom/android/email/service/EmailExternalService;->mController:Lcom/android/email/Controller;

    aget-wide v12, v7, v9

    const/4 v5, 0x0

    invoke-virtual {v0, v12, v13, v5}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v3

    .line 183
    .local v3, inboxId:J
    if-eqz v10, :cond_6

    .line 187
    const/4 v0, 0x1

    invoke-static {v3, v4, v0}, Lcom/android/emailcommon/service/EmailExternalUtils;->updateMail(JZ)V

    .line 190
    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/android/email/service/EmailExternalService;->mController:Lcom/android/email/Controller;

    iget-object v5, p0, Lcom/android/email/service/EmailExternalService;->mControllerCallback:Lcom/android/emailcommon/service/EmailExternalCalls$Stub;

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/Controller;->updateMailbox(JJLcom/android/emailcommon/service/EmailExternalCalls;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 191
    :catch_0
    move-exception v8

    .line 192
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "EmailExternalService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleUpdateMail catch RemoteException : "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    if-eqz v10, :cond_4

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/email/service/EmailExternalService;->boradUpdateResult(JZ)V

    goto :goto_1
.end method

.method private makeDisplayName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "packedTo"
    .parameter "packedCc"
    .parameter "packedBcc"

    .prologue
    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 409
    const/4 v2, 0x0

    .line 410
    .local v2, first:Lcom/android/emailcommon/mail/Address;
    const/4 v6, 0x0

    .line 411
    .local v6, nRecipients:I
    const/4 v8, 0x3

    new-array v1, v8, [Ljava/lang/String;

    aput-object p1, v1, v10

    aput-object p2, v1, v11

    aput-object p3, v1, v9

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v1, v4

    .line 414
    .local v7, packed:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 415
    .local v0, addresses:[Lcom/android/emailcommon/mail/Address;
    array-length v8, v0

    add-int/2addr v6, v8

    .line 416
    if-nez v2, :cond_0

    array-length v8, v0

    if-lez v8, :cond_0

    .line 417
    aget-object v2, v0, v10

    .line 411
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 420
    .end local v0           #addresses:[Lcom/android/emailcommon/mail/Address;
    .end local v7           #packed:Ljava/lang/String;
    :cond_1
    if-nez v6, :cond_3

    .line 421
    const-string v3, ""

    .line 427
    :cond_2
    :goto_1
    return-object v3

    .line 423
    :cond_3
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v3

    .line 424
    .local v3, friendly:Ljava/lang/String;
    if-eq v6, v11, :cond_2

    .line 427
    const v8, 0x7f0800e3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v10

    add-int/lit8 v10, v6, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private resetTag()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/service/EmailExternalService;->mSavetoSent:Z

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/service/EmailExternalService;->mUri:Landroid/net/Uri;

    .line 135
    return-void
.end method

.method private saveMessage(Lcom/android/emailcommon/mail/Message;JI)Z
    .locals 21
    .parameter "mimeMessage"
    .parameter "accountId"
    .parameter "mailboxType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    const/16 v16, 0x1

    .line 312
    .local v16, isSuccess:Z
    new-instance v5, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v5}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 313
    .local v5, localMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    const-wide/16 v9, -0x1

    .line 314
    .local v9, mailboxId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v9

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    .line 315
    invoke-direct/range {v4 .. v10}, Lcom/android/email/service/EmailExternalService;->fillMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJ)V

    .line 316
    const-string v4, "EmailExternalService"

    const-string v6, "Save Message to local database begin."

    invoke-static {v4, v6}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/service/EmailExternalService;->mController:Lcom/android/email/Controller;

    move/from16 v0, p4

    invoke-virtual {v4, v5, v0}, Lcom/android/email/Controller;->saveToMailbox(Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    .line 321
    const-string v4, "EmailExternalService"

    const-string v6, "Save Message to local database end."

    invoke-static {v4, v6}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .local v18, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v11, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1, v11}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 334
    new-instance v12, Lcom/android/emailcommon/provider/EmailContent$Body;

    invoke-direct {v12}, Lcom/android/emailcommon/provider/EmailContent$Body;-><init>()V

    .line 335
    .local v12, body:Lcom/android/emailcommon/provider/EmailContent$Body;
    move-object/from16 v0, v18

    invoke-static {v12, v5, v0}, Lcom/android/emailcommon/utility/ConversionUtilities;->updateBodyFields(Lcom/android/emailcommon/provider/EmailContent$Body;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)Z

    .line 337
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v14, 0x1

    .line 338
    .local v14, hasAttachments:Z
    :goto_0
    iput-boolean v14, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 339
    iget-object v4, v12, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    iput-object v4, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 340
    iget-object v4, v12, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    iput-object v4, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 341
    iget-object v4, v12, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextReply:Ljava/lang/String;

    iput-object v4, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 342
    iget-object v4, v12, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    iput-object v4, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 343
    iget-object v4, v12, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlReply:Ljava/lang/String;

    iput-object v4, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 344
    const-string v4, "EmailExternalService"

    const-string v6, "Update Message to local database begin."

    invoke-static {v4, v6}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/email/service/EmailExternalService;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;)V

    .line 348
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/email/service/EmailExternalService;->saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;)V

    .line 349
    const-string v4, "EmailExternalService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update Message to local database end. accountId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p2

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mailboxId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v6, "EmailExternalService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MessageInfor "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v5, :cond_2

    const-string v4, "NUll"

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    if-eqz v14, :cond_0

    .line 355
    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v0, v5, v11}, Lcom/android/emailcommon/utility/ConversionUtilities;->updateAttachments(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)V

    .line 356
    const-string v4, "EmailExternalService"

    const-string v6, "Update Message attachments. "

    invoke-static {v4, v6}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_0
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 365
    .local v13, cv:Landroid/content/ContentValues;
    const-string v4, "flagAttachment"

    iget-boolean v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 366
    const-string v4, "flagLoaded"

    iget v6, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v13, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 367
    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 368
    .local v17, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v13, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 370
    return v16

    .line 337
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v14           #hasAttachments:Z
    .end local v17           #uri:Landroid/net/Uri;
    :cond_1
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 351
    .restart local v14       #hasAttachments:Z
    :cond_2
    iget-wide v0, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_1

    .line 357
    :catch_0
    move-exception v15

    .line 358
    .local v15, ioe:Ljava/io/IOException;
    const/16 v16, 0x0

    .line 359
    const-string v4, "EmailExternalService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error while copying message attachment."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    throw v15
.end method

.method private saveOrUpdate(Lcom/android/emailcommon/provider/EmailContent;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 431
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/EmailContent;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public boradUpdateResult(JZ)V
    .locals 2
    .parameter "accountId"
    .parameter "success"

    .prologue
    .line 549
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 551
    .local v0, result:I
    :goto_0
    const-string v1, "com.android.email.action.UPDATE_INBOX_RESULT"

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/email/service/EmailExternalService;->sendResult(Ljava/lang/String;JI)V

    .line 552
    return-void

    .line 549
    .end local v0           #result:I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public broadSaveResult(JZ)V
    .locals 0
    .parameter "accountId"
    .parameter "success"

    .prologue
    .line 573
    return-void
.end method

.method public broadSendResult(JZ)V
    .locals 2
    .parameter "accountId"
    .parameter "success"

    .prologue
    .line 561
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 563
    .local v0, result:I
    :goto_0
    const-string v1, "com.android.email.action.SEND_RESULT"

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/email/service/EmailExternalService;->sendResult(Ljava/lang/String;JI)V

    .line 564
    return-void

    .line 561
    .end local v0           #result:I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public injectTestController(Lcom/android/email/Controller;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/email/service/EmailExternalService;->mController:Lcom/android/email/Controller;

    .line 97
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 140
    new-instance v0, Lcom/android/email/service/EmailExternalService$ControllerCallbacks;

    invoke-direct {v0, p0, v1}, Lcom/android/email/service/EmailExternalService$ControllerCallbacks;-><init>(Lcom/android/email/service/EmailExternalService;Lcom/android/email/service/EmailExternalService$1;)V

    iput-object v0, p0, Lcom/android/email/service/EmailExternalService;->mControllerCallback:Lcom/android/emailcommon/service/EmailExternalCalls$Stub;

    .line 141
    new-instance v0, Lcom/android/email/service/EmailExternalService$ExternalHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/email/service/EmailExternalService$ExternalHandler;-><init>(Lcom/android/email/service/EmailExternalService;Lcom/android/email/service/EmailExternalService$1;)V

    iput-object v0, p0, Lcom/android/email/service/EmailExternalService;->mExternalHandler:Lcom/android/email/service/EmailExternalService$ExternalHandler;

    .line 142
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "EmailExternalService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_0
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 112
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 113
    .local v1, extraIntent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, action:Ljava/lang/String;
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 115
    const-string v3, "EmailExternalService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHandleIntent action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    const-string v3, "com.android.email.action.DIRECT_SEND"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    const-string v3, "com.android.email.extra.FLAG"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 120
    .local v2, flag:I
    const/4 v3, 0x2

    if-ne v3, v2, :cond_2

    .line 121
    invoke-direct {p0, v1}, Lcom/android/email/service/EmailExternalService;->handleSaveMail(Landroid/content/Intent;)V

    .line 129
    .end local v2           #flag:I
    :cond_1
    :goto_0
    return-void

    .line 123
    .restart local v2       #flag:I
    :cond_2
    invoke-direct {p0}, Lcom/android/email/service/EmailExternalService;->resetTag()V

    .line 124
    invoke-direct {p0, v1}, Lcom/android/email/service/EmailExternalService;->handleSendMail(Landroid/content/Intent;)V

    goto :goto_0

    .line 126
    .end local v2           #flag:I
    :cond_3
    const-string v3, "com.android.email.action.UPDATE_INBOX"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    invoke-direct {p0, v1}, Lcom/android/email/service/EmailExternalService;->handleUpdateMail(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public sendResult(Ljava/lang/String;JI)V
    .locals 4
    .parameter "action"
    .parameter "accountId"
    .parameter "result"

    .prologue
    .line 576
    const-string v1, "EmailExternalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> sendResult accountID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.email.extra.ACCOUNT"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 580
    const-string v1, "com.android.email.extra.RESULT"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 581
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 582
    return-void
.end method

.method public setControllerCallbacks(Lcom/android/emailcommon/service/EmailExternalCalls$Stub;)V
    .locals 0
    .parameter "callbacks"

    .prologue
    .line 486
    iput-object p1, p0, Lcom/android/email/service/EmailExternalService;->mControllerCallback:Lcom/android/emailcommon/service/EmailExternalCalls$Stub;

    .line 487
    return-void
.end method
