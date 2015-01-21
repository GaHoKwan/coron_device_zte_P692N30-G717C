.class Lcom/android/mms/ui/MultiForwardMessageActivity$4;
.super Ljava/lang/Object;
.source "MultiForwardMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiForwardMessageActivity;->doForward(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

.field final synthetic val$finalNumbers:Ljava/lang/String;

.field final synthetic val$messageIdsArray:[Ljava/lang/String;

.field final synthetic val$numbersArray:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiForwardMessageActivity;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->val$finalNumbers:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->val$messageIdsArray:[Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->val$numbersArray:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 39

    .prologue
    .line 598
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    invoke-static {v3}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v13

    .line 599
    .local v13, conversation:Lcom/android/mms/data/Conversation;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->val$finalNumbers:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v5, v7}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v12

    .line 600
    .local v12, contactList:Lcom/android/mms/data/ContactList;
    invoke-virtual {v13, v12}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    .line 601
    invoke-virtual {v13}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v35

    .line 602
    .local v35, threadId:J
    const/16 v34, 0x0

    .line 603
    .local v34, smsSendSuccessCount:I
    const/16 v33, 0x0

    .line 604
    .local v33, smsSendFailedCount:I
    const/16 v26, 0x0

    .line 605
    .local v26, mmsSendSuccessCount:I
    const/16 v25, 0x0

    .line 606
    .local v25, mmsSendFailedCount:I
    const/16 v21, 0x0

    .line 607
    .local v21, ipMsgSendSuccessCount:I
    const/16 v20, 0x0

    .line 608
    .local v20, ipMsgSendFailedCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->val$messageIdsArray:[Ljava/lang/String;

    array-length v5, v5

    #setter for: Lcom/android/mms/ui/MultiForwardMessageActivity;->mAllCount:I
    invoke-static {v3, v5}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$1202(Lcom/android/mms/ui/MultiForwardMessageActivity;I)I

    .line 609
    const/16 v30, 0x0

    .line 610
    .local v30, sendCount:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->val$messageIdsArray:[Ljava/lang/String;

    .local v11, arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v22, v0

    .local v22, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    move/from16 v0, v22

    if-ge v14, v0, :cond_13

    aget-object v15, v11, v14

    .line 611
    .local v15, id:Ljava/lang/String;
    add-int/lit8 v30, v30, 0x1

    .line 612
    const-string v3, "-"

    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$1300()[Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v15, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 617
    .local v24, mmsCursor:Landroid/database/Cursor;
    if-eqz v24, :cond_6

    :try_start_0
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    const-string v7, "mms"

    move-object/from16 v0, v24

    #calls: Lcom/android/mms/ui/MultiForwardMessageActivity;->getMessageItemFromCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/mms/ui/MessageItem;
    invoke-static {v3, v5, v0, v7}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$1400(Lcom/android/mms/ui/MultiForwardMessageActivity;Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    .line 619
    .local v4, messageItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v4, :cond_4

    .line 620
    const/16 v3, 0x82

    iget v5, v4, Lcom/android/mms/ui/MessageItem;->mMessageType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, v5, :cond_1

    .line 646
    if-eqz v24, :cond_0

    .line 647
    .end local v4           #messageItem:Lcom/android/mms/ui/MessageItem;
    :goto_1
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 610
    .end local v24           #mmsCursor:Landroid/database/Cursor;
    :cond_0
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 624
    .restart local v4       #messageItem:Lcom/android/mms/ui/MessageItem;
    .restart local v24       #mmsCursor:Landroid/database/Cursor;
    :cond_1
    :try_start_1
    iget-object v3, v4, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    if-eqz v3, :cond_2

    iget-object v3, v4, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    instance-of v3, v3, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;

    if-eqz v3, :cond_2

    .line 625
    iget-object v0, v4, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-object/from16 v17, v0

    check-cast v17, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;

    .line 626
    .local v17, ipAttachMessage:Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->isInboxMsgDownloalable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 628
    const-string v3, "Mms/MultiForwardMessage"

    const-string v5, "get an undownloaded ipmessage"

    invoke-static {v3, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$1508(Lcom/android/mms/ui/MultiForwardMessageActivity;)I

    .line 646
    if-eqz v24, :cond_0

    goto :goto_1

    .line 633
    .end local v17           #ipAttachMessage:Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->val$numbersArray:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    #getter for: Lcom/android/mms/ui/MultiForwardMessageActivity;->mSelectedSimId:I
    invoke-static {v7}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$1000(Lcom/android/mms/ui/MultiForwardMessageActivity;)I

    move-result v6

    move-wide/from16 v7, v35

    #calls: Lcom/android/mms/ui/MultiForwardMessageActivity;->forwardMms(Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;IJ)Z
    invoke-static/range {v3 .. v8}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$1600(Lcom/android/mms/ui/MultiForwardMessageActivity;Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;IJ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 634
    add-int/lit8 v26, v26, 0x1

    .line 646
    .end local v4           #messageItem:Lcom/android/mms/ui/MessageItem;
    :goto_3
    if-eqz v24, :cond_0

    goto :goto_1

    .line 636
    .restart local v4       #messageItem:Lcom/android/mms/ui/MessageItem;
    :cond_3
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 639
    :cond_4
    const-string v3, "Mms/MultiForwardMessage"

    const-string v5, "forward MMs getItem: item is null"

    invoke-static {v3, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 646
    .end local v4           #messageItem:Lcom/android/mms/ui/MessageItem;
    :catchall_0
    move-exception v3

    if-eqz v24, :cond_5

    .line 647
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 646
    :cond_5
    throw v3

    .line 642
    :cond_6
    :try_start_2
    const-string v3, "Mms/MultiForwardMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forward MMs gmmsCursor.moveToFirst failed :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 651
    .end local v24           #mmsCursor:Landroid/database/Cursor;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$1700()[Ljava/lang/String;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id = "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v32

    .line 654
    .local v32, smsCursor:Landroid/database/Cursor;
    :try_start_3
    const-string v3, "Mms/MultiForwardMessage"

    const-string v5, "forward IpMessage begin"

    invoke-static {v3, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    if-eqz v32, :cond_12

    .line 656
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 657
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    #getter for: Lcom/android/mms/ui/MultiForwardMessageActivity;->mSmsColumnsMap:Lcom/android/mms/ui/MultiForwardMessageActivity$SmsColumnsMap;
    invoke-static {v3}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$1800(Lcom/android/mms/ui/MultiForwardMessageActivity;)Lcom/android/mms/ui/MultiForwardMessageActivity$SmsColumnsMap;

    move-result-object v3

    iget v3, v3, Lcom/android/mms/ui/MultiForwardMessageActivity$SmsColumnsMap;->mColumnSmsBody:I

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 658
    .local v6, smsBody:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    #getter for: Lcom/android/mms/ui/MultiForwardMessageActivity;->mSmsColumnsMap:Lcom/android/mms/ui/MultiForwardMessageActivity$SmsColumnsMap;
    invoke-static {v3}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$1800(Lcom/android/mms/ui/MultiForwardMessageActivity;)Lcom/android/mms/ui/MultiForwardMessageActivity$SmsColumnsMap;

    move-result-object v3

    iget v3, v3, Lcom/android/mms/ui/MultiForwardMessageActivity$SmsColumnsMap;->mColumnMsgId:I

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 659
    .local v28, msgId:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    #getter for: Lcom/android/mms/ui/MultiForwardMessageActivity;->mSmsColumnsMap:Lcom/android/mms/ui/MultiForwardMessageActivity$SmsColumnsMap;
    invoke-static {v3}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$1800(Lcom/android/mms/ui/MultiForwardMessageActivity;)Lcom/android/mms/ui/MultiForwardMessageActivity$SmsColumnsMap;

    move-result-object v3

    iget v3, v3, Lcom/android/mms/ui/MultiForwardMessageActivity$SmsColumnsMap;->mColumnSmsIpMsgId:I

    move-object/from16 v0, v32

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 661
    .local v19, ipMsgId:I
    if-lez v19, :cond_f

    .line 662
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->val$numbersArray:[Ljava/lang/String;

    #calls: Lcom/android/mms/ui/MultiForwardMessageActivity;->isRecipientIpMessageUser([Ljava/lang/String;)Z
    invoke-static {v3, v5}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$1900(Lcom/android/mms/ui/MultiForwardMessageActivity;[Ljava/lang/String;)Z

    move-result v37

    .line 663
    .local v37, usersIsIpMessage:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    #getter for: Lcom/android/mms/ui/MultiForwardMessageActivity;->mSelectedSimId:I
    invoke-static {v5}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$1000(Lcom/android/mms/ui/MultiForwardMessageActivity;)I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/mms/MmsConfig;->isServiceEnabled(Landroid/content/Context;I)Z

    move-result v31

    .line 664
    .local v31, simEnableIpService:Z
    if-eqz v37, :cond_9

    if-eqz v31, :cond_9

    .line 666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    invoke-static {v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v3

    move/from16 v0, v28

    int-to-long v7, v0

    invoke-virtual {v3, v7, v8}, Lcom/mediatek/mms/ipmessage/MessageManager;->getIpMsgInfo(J)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v16

    .line 667
    .local v16, im:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->val$finalNumbers:Ljava/lang/String;

    const-string v5, ";"

    const-string v7, ","

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->setTo(Ljava/lang/String;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    #getter for: Lcom/android/mms/ui/MultiForwardMessageActivity;->mSelectedSimId:I
    invoke-static {v3}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$1000(Lcom/android/mms/ui/MultiForwardMessageActivity;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->setSimId(I)V

    .line 669
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    invoke-static {v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    #getter for: Lcom/android/mms/ui/MultiForwardMessageActivity;->mSelectedSimId:I
    invoke-static {v5}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$1000(Lcom/android/mms/ui/MultiForwardMessageActivity;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v5}, Lcom/mediatek/mms/ipmessage/MessageManager;->saveIpMsg(Lcom/mediatek/mms/ipmessage/message/IpMessage;I)I

    move-result v29

    .line 670
    .local v29, result:I
    if-lez v29, :cond_8

    .line 671
    add-int/lit8 v21, v21, 0x1

    .line 711
    .end local v6           #smsBody:Ljava/lang/String;
    .end local v16           #im:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    .end local v19           #ipMsgId:I
    .end local v28           #msgId:I
    .end local v29           #result:I
    .end local v31           #simEnableIpService:Z
    .end local v37           #usersIsIpMessage:Z
    :goto_4
    const-string v3, "Mms/MultiForwardMessage"

    const-string v5, "forward IpMessage end"

    invoke-static {v3, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 716
    :goto_5
    if-eqz v32, :cond_0

    .line 717
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 673
    .restart local v6       #smsBody:Ljava/lang/String;
    .restart local v16       #im:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    .restart local v19       #ipMsgId:I
    .restart local v28       #msgId:I
    .restart local v29       #result:I
    .restart local v31       #simEnableIpService:Z
    .restart local v37       #usersIsIpMessage:Z
    :cond_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 676
    .end local v16           #im:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    .end local v29           #result:I
    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    invoke-static {v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v3

    move/from16 v0, v28

    int-to-long v7, v0

    invoke-virtual {v3, v7, v8}, Lcom/mediatek/mms/ipmessage/MessageManager;->getIpMsgInfo(J)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v18

    .line 678
    .local v18, ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    new-instance v23, Lcom/android/mms/ui/MultiForwardUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Lcom/android/mms/ui/MultiForwardUtils;-><init>(Landroid/app/Activity;)V

    .line 679
    .local v23, mfu:Lcom/android/mms/ui/MultiForwardUtils;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3, v13}, Lcom/android/mms/ui/MultiForwardUtils;->convertIpMsgToSmsOrMms(Lcom/mediatek/mms/ipmessage/message/IpMessage;Landroid/content/Context;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v38

    .line 682
    .local v38, wm:Lcom/android/mms/data/WorkingMessage;
    if-eqz v38, :cond_d

    .line 683
    invoke-virtual/range {v38 .. v38}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 684
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    #getter for: Lcom/android/mms/ui/MultiForwardMessageActivity;->mSelectedSimId:I
    invoke-static {v5}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$1000(Lcom/android/mms/ui/MultiForwardMessageActivity;)I

    move-result v5

    move-object/from16 v0, v38

    move-wide/from16 v1, v35

    #calls: Lcom/android/mms/ui/MultiForwardMessageActivity;->sendMms(Lcom/android/mms/data/WorkingMessage;JI)Z
    invoke-static {v3, v0, v1, v2, v5}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$2000(Lcom/android/mms/ui/MultiForwardMessageActivity;Lcom/android/mms/data/WorkingMessage;JI)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 685
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 687
    :cond_a
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 690
    :cond_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    invoke-virtual/range {v38 .. v38}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v6           #smsBody:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->val$numbersArray:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    #getter for: Lcom/android/mms/ui/MultiForwardMessageActivity;->mSelectedSimId:I
    invoke-static {v3}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$1000(Lcom/android/mms/ui/MultiForwardMessageActivity;)I

    move-result v8

    move-wide/from16 v9, v35

    #calls: Lcom/android/mms/ui/MultiForwardMessageActivity;->forwardSms(Ljava/lang/String;[Ljava/lang/String;IJ)Z
    invoke-static/range {v5 .. v10}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$2100(Lcom/android/mms/ui/MultiForwardMessageActivity;Ljava/lang/String;[Ljava/lang/String;IJ)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 692
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 694
    :cond_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 698
    .restart local v6       #smsBody:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    invoke-static {v3}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$1508(Lcom/android/mms/ui/MultiForwardMessageActivity;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_4

    .line 716
    .end local v6           #smsBody:Ljava/lang/String;
    .end local v18           #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    .end local v19           #ipMsgId:I
    .end local v23           #mfu:Lcom/android/mms/ui/MultiForwardUtils;
    .end local v28           #msgId:I
    .end local v31           #simEnableIpService:Z
    .end local v37           #usersIsIpMessage:Z
    .end local v38           #wm:Lcom/android/mms/data/WorkingMessage;
    :catchall_1
    move-exception v3

    if-eqz v32, :cond_e

    .line 717
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 716
    :cond_e
    throw v3

    .line 702
    .restart local v6       #smsBody:Ljava/lang/String;
    .restart local v19       #ipMsgId:I
    .restart local v28       #msgId:I
    :cond_f
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->val$numbersArray:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    #getter for: Lcom/android/mms/ui/MultiForwardMessageActivity;->mSelectedSimId:I
    invoke-static {v3}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$1000(Lcom/android/mms/ui/MultiForwardMessageActivity;)I

    move-result v8

    move-wide/from16 v9, v35

    #calls: Lcom/android/mms/ui/MultiForwardMessageActivity;->forwardSms(Ljava/lang/String;[Ljava/lang/String;IJ)Z
    invoke-static/range {v5 .. v10}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$2100(Lcom/android/mms/ui/MultiForwardMessageActivity;Ljava/lang/String;[Ljava/lang/String;IJ)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v3

    if-eqz v3, :cond_10

    .line 703
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_4

    .line 705
    :cond_10
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_4

    .line 709
    .end local v6           #smsBody:Ljava/lang/String;
    .end local v19           #ipMsgId:I
    .end local v28           #msgId:I
    :cond_11
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_4

    .line 713
    :cond_12
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_5

    .line 722
    .end local v15           #id:Ljava/lang/String;
    .end local v32           #smsCursor:Landroid/database/Cursor;
    :cond_13
    const-string v3, "Mms/MultiForwardMessage"

    const-string v5, "doForward end"

    invoke-static {v3, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    new-instance v27, Landroid/os/Message;

    invoke-direct/range {v27 .. v27}, Landroid/os/Message;-><init>()V

    .line 724
    .local v27, msg:Landroid/os/Message;
    const/4 v3, 0x2

    move-object/from16 v0, v27

    iput v3, v0, Landroid/os/Message;->what:I

    .line 725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity$4;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    #getter for: Lcom/android/mms/ui/MultiForwardMessageActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$2200(Lcom/android/mms/ui/MultiForwardMessageActivity;)Landroid/os/Handler;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 726
    return-void
.end method
