.class Lcom/android/mms/ui/ComposeMessageActivity$16$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity$16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$16;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$16;)V
    .locals 0
    .parameter

    .prologue
    .line 1585
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$16$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 1588
    const-string v14, "Mms/compose"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mRecipientsWatcher mGroupMmsRunnable begin s = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$16$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$16;

    move-object/from16 v16, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$16;->mRecipientAfterTextChanged:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/ComposeMessageActivity$16;->access$5200(Lcom/android/mms/ui/ComposeMessageActivity$16;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageActivity$16$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$16;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/ui/RecipientsEditor;->getNumbers()Ljava/util/List;

    move-result-object v6

    .line 1590
    .local v6, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageActivity$16$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$16;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v14

    invoke-virtual {v14, v6}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipients(Ljava/util/List;)V

    .line 1592
    if-eqz v6, :cond_1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_1

    const/4 v5, 0x1

    .line 1593
    .local v5, multiRecipients:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageActivity$16$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$16;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v14}, Lcom/android/mms/ui/MmsPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_2

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    .line 1595
    .local v3, isGroupMms:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageActivity$16$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$16;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v14, v3}, Lcom/android/mms/ui/MessageListAdapter;->setIsGroupConversation(Z)V

    .line 1596
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageActivity$16$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$16;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v5, v15}, Lcom/android/mms/data/WorkingMessage;->setHasMultipleRecipients(ZZ)V

    .line 1597
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageActivity$16$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$16;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/ComposeMessageActivity$16$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$16;

    iget-object v15, v15, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v15}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/mms/ui/RecipientsEditor;->containsEmail()Z

    move-result v15

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    .line 1599
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    .line 1600
    .local v9, recipientCount:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageActivity$16$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$16;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->checkForTooManyRecipients(I)V
    invoke-static {v14, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5300(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    .line 1604
    const/4 v11, 0x0

    .line 1605
    .local v11, spaceCount:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageActivity$16$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$16;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$16;->mRecipientAfterTextChanged:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageActivity$16;->access$5200(Lcom/android/mms/ui/ComposeMessageActivity$16;)Ljava/lang/String;

    move-result-object v10

    .line 1607
    .local v10, s:Ljava/lang/String;
    const/16 v14, 0x2c

    invoke-virtual {v10, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    const/16 v15, 0x3b

    invoke-virtual {v10, v15}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1608
    .local v8, pos1:I
    const-string v12, ""

    .line 1609
    .local v12, titleString:Ljava/lang/String;
    if-ltz v8, :cond_0

    .line 1610
    const/4 v14, 0x0

    invoke-virtual {v10, v14, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1612
    :cond_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v7, v14, -0x1

    .local v7, pos:I
    :goto_2
    if-ltz v7, :cond_4

    .line 1613
    invoke-virtual {v10, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1614
    .local v1, c:C
    const/16 v14, 0x20

    if-ne v1, v14, :cond_3

    .line 1615
    add-int/lit8 v11, v11, 0x1

    .line 1612
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 1592
    .end local v1           #c:C
    .end local v3           #isGroupMms:Z
    .end local v5           #multiRecipients:Z
    .end local v7           #pos:I
    .end local v8           #pos1:I
    .end local v9           #recipientCount:I
    .end local v10           #s:Ljava/lang/String;
    .end local v11           #spaceCount:I
    .end local v12           #titleString:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1593
    .restart local v5       #multiRecipients:Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1618
    .restart local v1       #c:C
    .restart local v3       #isGroupMms:Z
    .restart local v7       #pos:I
    .restart local v8       #pos1:I
    .restart local v9       #recipientCount:I
    .restart local v10       #s:Ljava/lang/String;
    .restart local v11       #spaceCount:I
    .restart local v12       #titleString:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageActivity$16$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$16;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$16;->mLastTitleString:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageActivity$16;->access$5400(Lcom/android/mms/ui/ComposeMessageActivity$16;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1643
    .end local v1           #c:C
    :cond_4
    :goto_3
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-eq v14, v11, :cond_5

    const-string v14, ""

    if-ne v12, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageActivity$16$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$16;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$16;->mLastTitleString:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageActivity$16;->access$5400(Lcom/android/mms/ui/ComposeMessageActivity$16;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1644
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageActivity$16$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$16;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    new-instance v15, Lcom/android/mms/data/ContactList;

    invoke-direct {v15}, Lcom/android/mms/data/ContactList;-><init>()V

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V
    invoke-static {v14, v15}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5500(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V

    .line 1647
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageActivity$16$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$16;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity$16;->mLastTitleString:Ljava/lang/String;
    invoke-static {v14, v12}, Lcom/android/mms/ui/ComposeMessageActivity$16;->access$5402(Lcom/android/mms/ui/ComposeMessageActivity$16;Ljava/lang/String;)Ljava/lang/String;

    .line 1649
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageActivity$16$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$16;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 1650
    const-string v14, "Mms/compose"

    const-string v15, "mRecipientsWatcher mGroupMmsRunnable. end~~~ "

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    return-void

    .line 1626
    .restart local v1       #c:C
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageActivity$16$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$16;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v14}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    const/4 v4, 0x1

    .line 1628
    .local v4, isPortrait:Z
    :goto_4
    const/4 v13, 0x0

    .line 1629
    .local v13, updateLimit:I
    if-eqz v4, :cond_9

    .line 1630
    const/16 v13, 0xa

    .line 1635
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageActivity$16$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$16;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v14}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v13}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInputWithLimit(ZI)Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 1636
    .local v2, contacts:Lcom/android/mms/data/ContactList;
    const-string v15, "Mms/compose"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mRecipientsWatcher mGroupMmsRunnable. contacts="

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_a

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/mms/data/Contact;

    invoke-virtual {v14}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v14

    :goto_6
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ComposeMessageActivity$16$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$16;

    iget-object v14, v14, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V
    invoke-static {v14, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5500(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V

    goto/16 :goto_3

    .line 1626
    .end local v2           #contacts:Lcom/android/mms/data/ContactList;
    .end local v4           #isPortrait:Z
    .end local v13           #updateLimit:I
    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    .line 1632
    .restart local v4       #isPortrait:Z
    .restart local v13       #updateLimit:I
    :cond_9
    const/16 v13, 0x14

    goto :goto_5

    .line 1636
    .restart local v2       #contacts:Lcom/android/mms/data/ContactList;
    :cond_a
    const-string v14, "null"

    goto :goto_6
.end method
