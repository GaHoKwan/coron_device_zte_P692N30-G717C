.class Lcom/android/email/MessagingController$11;
.super Ljava/lang/Object;
.source "MessagingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/MessagingController;->loadMessageForView(JLcom/android/email/MessagingListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/MessagingController;

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/MessagingController;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2255
    iput-object p1, p0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    iput-wide p2, p0, Lcom/android/email/MessagingController$11;->val$messageId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 2261
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    move-object/from16 v23, v0

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$11;->val$messageId:J

    move-wide/from16 v24, v0

    invoke-static/range {v23 .. v25}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v14

    .line 2263
    .local v14, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v14, :cond_0

    .line 2264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    move-object/from16 v23, v0

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static/range {v23 .. v23}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$11;->val$messageId:J

    move-wide/from16 v24, v0

    const-string v26, "Unknown message"

    invoke-virtual/range {v23 .. v26}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V

    .line 2365
    .end local v14           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :goto_0
    return-void

    .line 2267
    .restart local v14       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_0
    iget v0, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 2268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    move-object/from16 v23, v0

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static/range {v23 .. v23}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$11;->val$messageId:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFinished(J)V
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2359
    .end local v14           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_0
    move-exception v13

    .line 2360
    .local v13, me:Lcom/android/emailcommon/mail/MessagingException;
    sget-boolean v23, Lcom/android/emailcommon/Logging;->LOGD:Z

    if-eqz v23, :cond_1

    const-string v23, "Email"

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2361
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    move-object/from16 v23, v0

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static/range {v23 .. v23}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$11;->val$messageId:J

    move-wide/from16 v24, v0

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v23 .. v26}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V

    goto :goto_0

    .line 2274
    .end local v13           #me:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v14       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    move-object/from16 v23, v0

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v23

    iget-wide v0, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-wide/from16 v24, v0

    invoke-static/range {v23 .. v25}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v4

    .line 2275
    .local v4, account:Lcom/android/emailcommon/provider/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    move-object/from16 v23, v0

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v23

    iget-wide v0, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-wide/from16 v24, v0

    invoke-static/range {v23 .. v25}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v12

    .line 2276
    .local v12, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v4, :cond_3

    if-nez v12, :cond_4

    .line 2277
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    move-object/from16 v23, v0

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static/range {v23 .. v23}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$11;->val$messageId:J

    move-wide/from16 v24, v0

    const-string v26, "null account or mailbox"

    invoke-virtual/range {v23 .. v26}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V
    :try_end_1
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2362
    .end local v4           #account:Lcom/android/emailcommon/provider/Account;
    .end local v12           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v14           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :catch_1
    move-exception v20

    .line 2363
    .local v20, rte:Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    move-object/from16 v23, v0

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static/range {v23 .. v23}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$11;->val$messageId:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v23 .. v26}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFailed(JLjava/lang/String;)V

    goto/16 :goto_0

    .line 2280
    .end local v20           #rte:Ljava/lang/RuntimeException;
    .restart local v4       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v12       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v14       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    move-object/from16 v23, v0

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/android/emailcommon/TrafficFlags;->getSyncFlags(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 2282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    move-object/from16 v23, v0

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/android/email/mail/Store;->getInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;

    move-result-object v19

    .line 2283
    .local v19, remoteStore:Lcom/android/email/mail/Store;
    iget-object v0, v12, Lcom/android/emailcommon/provider/Mailbox;->mServerId:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 2286
    .local v18, remoteServerId:Ljava/lang/String;
    iget-object v0, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 2287
    iget-object v0, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mProtocolSearchInfo:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 2289
    :cond_5
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/mail/Store;->getFolder(Ljava/lang/String;)Lcom/android/emailcommon/mail/Folder;

    move-result-object v16

    .line 2290
    .local v16, remoteFolder:Lcom/android/emailcommon/mail/Folder;
    sget-object v23, Lcom/android/emailcommon/mail/Folder$OpenMode;->READ_WRITE:Lcom/android/emailcommon/mail/Folder$OpenMode;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Folder;->open(Lcom/android/emailcommon/mail/Folder$OpenMode;)V

    .line 2293
    iget-object v0, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Folder;->getMessage(Ljava/lang/String;)Lcom/android/emailcommon/mail/Message;

    move-result-object v17

    .line 2294
    .local v17, remoteMessage:Lcom/android/emailcommon/mail/Message;
    new-instance v9, Lcom/android/emailcommon/mail/FetchProfile;

    invoke-direct {v9}, Lcom/android/emailcommon/mail/FetchProfile;-><init>()V

    .line 2296
    .local v9, fp:Lcom/android/emailcommon/mail/FetchProfile;
    const/4 v6, 0x0

    .line 2298
    .local v6, bodyTruncated:Z
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/email/mail/store/ImapFolder;

    move/from16 v23, v0

    if-eqz v23, :cond_7

    .line 2299
    sget-object v23, Lcom/android/emailcommon/mail/FetchProfile$Item;->ENVELOPE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2300
    sget-object v23, Lcom/android/emailcommon/mail/FetchProfile$Item;->STRUCTURE:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2301
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v17, v23, v24

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v9, v2}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 2302
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 2303
    .local v22, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2304
    .local v5, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2305
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/emailcommon/mail/Part;

    .line 2306
    .local v15, part:Lcom/android/emailcommon/mail/Part;
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 2307
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2309
    const-string v23, "Email"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " MessagingController : loadMessageForView : IMAP fetch body size = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v15}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    invoke-interface {v15}, Lcom/android/emailcommon/mail/Part;->getSize()I

    move-result v23

    const/high16 v24, 0x18

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_6

    .line 2313
    const/4 v6, 0x1

    .line 2314
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v17, v23, v24

    const/16 v24, 0x0

    const/high16 v25, 0x18

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;I)V

    goto :goto_1

    .line 2317
    :cond_6
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v17, v23, v24

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v9, v2}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    goto :goto_1

    .line 2321
    .end local v5           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v15           #part:Lcom/android/emailcommon/mail/Part;
    .end local v22           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    :cond_7
    sget-object v23, Lcom/android/emailcommon/mail/FetchProfile$Item;->BODY:Lcom/android/emailcommon/mail/FetchProfile$Item;

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2323
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Lcom/android/emailcommon/mail/Message;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v17, v23, v24

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v9, v2}, Lcom/android/emailcommon/mail/Folder;->fetch([Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/mail/FetchProfile;Lcom/android/emailcommon/mail/Folder$MessageRetrievalListener;)V

    .line 2325
    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/email/mail/store/Pop3Store$Pop3Folder;

    move/from16 v23, v0

    if-eqz v23, :cond_9

    .line 2326
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 2327
    .restart local v22       #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2328
    .restart local v5       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2329
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/emailcommon/mail/Part;

    .line 2330
    .restart local v15       #part:Lcom/android/emailcommon/mail/Part;
    invoke-interface {v15}, Lcom/android/emailcommon/mail/Part;->getBody()Lcom/android/emailcommon/mail/Body;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lcom/android/emailcommon/mail/Body;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    check-cast v11, Lcom/android/emailcommon/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;

    .line 2332
    .local v11, in:Lcom/android/emailcommon/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;
    const-string v23, "Email"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " MessagingController : loadMessageForView : POP3 fetch body size = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v11}, Lcom/android/emailcommon/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;->getLength()J

    move-result-wide v25

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    invoke-virtual {v11}, Lcom/android/emailcommon/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;->getLength()J

    move-result-wide v23

    const-wide/32 v25, 0x180000

    cmp-long v23, v23, v25

    if-lez v23, :cond_8

    .line 2336
    const/4 v6, 0x1

    .line 2343
    .end local v5           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #in:Lcom/android/emailcommon/internet/BinaryTempFileBody$BinaryTempFileBodyInputStream;
    .end local v15           #part:Lcom/android/emailcommon/mail/Part;
    .end local v22           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    :cond_9
    if-eqz v6, :cond_a

    .line 2344
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2345
    .local v7, cv:Landroid/content/ContentValues;
    iget v8, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 2346
    .local v8, flags:I
    const/high16 v23, 0x40

    or-int v8, v8, v23

    .line 2347
    const-string v23, "flags"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2348
    sget-object v23, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v0, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v24, v0

    invoke-static/range {v23 .. v25}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 2350
    .local v21, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    move-object/from16 v23, v0

    #getter for: Lcom/android/email/MessagingController;->mContext:Landroid/content/Context;
    invoke-static/range {v23 .. v23}, Lcom/android/email/MessagingController;->access$100(Lcom/android/email/MessagingController;)Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2354
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v8           #flags:I
    .end local v21           #uri:Landroid/net/Uri;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move/from16 v2, v24

    invoke-virtual {v0, v1, v4, v12, v2}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;I)V

    .line 2357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/MessagingController$11;->this$0:Lcom/android/email/MessagingController;

    move-object/from16 v23, v0

    #getter for: Lcom/android/email/MessagingController;->mListeners:Lcom/android/email/GroupMessagingListener;
    invoke-static/range {v23 .. v23}, Lcom/android/email/MessagingController;->access$300(Lcom/android/email/MessagingController;)Lcom/android/email/GroupMessagingListener;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/MessagingController$11;->val$messageId:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Lcom/android/email/GroupMessagingListener;->loadMessageForViewFinished(J)V
    :try_end_2
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
