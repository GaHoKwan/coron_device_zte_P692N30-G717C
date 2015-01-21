.class Lcom/android/mms/ui/ComposeMessageActivity$18;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1992
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 23
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1995
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->isCursorValid()Z
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5900(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2196
    :cond_0
    :goto_0
    return-void

    .line 1998
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v12

    .line 1999
    .local v12, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 2000
    .local v22, type:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 2002
    .local v18, msgId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-interface {v12}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mClickedItemPosition:I
    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6002(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    .line 2004
    const-string v3, "Mms/compose"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateContextMenu(): msgId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->addPositionBasedMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    invoke-static {v3, v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6100(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 2007
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v3, v0, v1, v2, v12}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v20

    .line 2008
    .local v20, msgItem:Lcom/android/mms/ui/MessageItem;
    if-nez v20, :cond_2

    .line 2009
    const-string v3, "Mms/compose"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot load message item for type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msgId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2014
    :cond_2
    const v3, 0x7f0b024d

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 2016
    new-instance v17, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v3, v1}, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 2018
    .local v17, l:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->isServiceEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_6

    .line 2020
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v3

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/mms/ipmessage/MessageManager;->getStatus(J)I

    move-result v16

    .line 2021
    .local v16, ipStatus:I
    if-eqz v16, :cond_4

    const/4 v3, 0x4

    move/from16 v0, v16

    if-ne v0, v3, :cond_6

    .line 2022
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v3

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/mms/ipmessage/MessageManager;->getIpMsgInfo(J)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v14

    .line 2024
    .local v14, ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->canConvertIpMessageToMessage(Lcom/mediatek/mms/ipmessage/message/IpMessage;)I
    invoke-static {v3, v14}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6200(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/mediatek/mms/ipmessage/message/IpMessage;)I

    move-result v11

    .line 2025
    .local v11, commonType:I
    const/4 v3, 0x1

    if-ne v11, v3, :cond_13

    .line 2026
    const/4 v3, 0x0

    const/16 v4, 0xd0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v6

    const/16 v7, 0xd1

    invoke-virtual {v6, v7}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2036
    :cond_5
    :goto_1
    const/4 v3, 0x0

    const/16 v4, 0xc8

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v6

    const/16 v7, 0xd3

    invoke-virtual {v6, v7}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2043
    .end local v11           #commonType:I
    .end local v14           #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    .end local v16           #ipStatus:I
    :cond_6
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2044
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_14

    .line 2045
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v3

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/mms/ipmessage/MessageManager;->getIpMsgInfo(J)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v14

    .line 2047
    .restart local v14       #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    if-eqz v14, :cond_7

    invoke-virtual {v14}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getType()I

    move-result v3

    if-nez v3, :cond_7

    .line 2048
    const/4 v3, 0x0

    const/16 v4, 0xcf

    const/4 v5, 0x0

    const v6, 0x7f0b0164

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2058
    .end local v14           #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    :cond_7
    :goto_2
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-wide/from16 v0, v18

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->isForwardable(J)Z
    invoke-static {v3, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6300(Lcom/android/mms/ui/ComposeMessageActivity;J)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2059
    :cond_8
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_16

    .line 2060
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    instance-of v3, v3, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;

    if-eqz v3, :cond_15

    .line 2061
    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    check-cast v13, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;

    .line 2062
    .local v13, ipAttachMessage:Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;
    invoke-virtual {v13}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->isInboxMsgDownloalable()Z

    move-result v3

    if-nez v3, :cond_9

    .line 2063
    const/4 v3, 0x0

    const/16 v4, 0xd2

    const/4 v5, 0x0

    const v6, 0x7f0b0246

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2073
    .end local v13           #ipAttachMessage:Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;
    :cond_9
    :goto_3
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_18

    .line 2074
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    instance-of v3, v3, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;

    if-eqz v3, :cond_17

    .line 2075
    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    check-cast v13, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;

    .line 2076
    .restart local v13       #ipAttachMessage:Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;
    invoke-virtual {v13}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->isInboxMsgDownloalable()Z

    move-result v3

    if-nez v3, :cond_a

    .line 2077
    const/4 v3, 0x0

    const/16 v4, 0xca

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v6

    const/16 v7, 0xd5

    invoke-virtual {v6, v7}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2088
    .end local v13           #ipAttachMessage:Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;
    :cond_a
    :goto_4
    const/4 v3, 0x0

    const/16 v4, 0xc9

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v6

    const/16 v7, 0xd4

    invoke-virtual {v6, v7}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2097
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v3

    if-lez v3, :cond_1a

    .line 2098
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v3, :cond_19

    .line 2099
    const/4 v3, 0x0

    const/16 v4, 0xcc

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v6

    const/16 v7, 0xd7

    invoke-virtual {v6, v7}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2119
    :goto_6
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2120
    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v3, :pswitch_data_0

    .line 2130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->haveSomethingToCopyToSDCard(J)Z
    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6400(Lcom/android/mms/ui/ComposeMessageActivity;J)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2131
    const/4 v3, 0x0

    const/16 v4, 0x19

    const/4 v5, 0x0

    const v6, 0x7f0b030b

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2138
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V
    invoke-static {v3, v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6500(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V

    .line 2140
    const/4 v3, 0x0

    const/16 v4, 0x11

    const/4 v5, 0x0

    const v6, 0x7f0b023d

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2143
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    sget-object v4, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    if-ne v3, v4, :cond_c

    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    if-eqz v3, :cond_d

    .line 2144
    :cond_c
    const/4 v3, 0x0

    const/16 v4, 0x14

    const/4 v5, 0x0

    const v6, 0x7f0b023e

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2149
    :cond_d
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v4, 0x82

    if-eq v3, v4, :cond_e

    .line 2151
    const-string v3, "Mms/compose"

    const-string v4, "onCreateContextMenu(): add select text menu"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    const/4 v3, 0x0

    const/16 v4, 0x24

    const/4 v5, 0x0

    const v6, 0x7f0b00af

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2157
    :cond_e
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_f

    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    if-eqz v3, :cond_f

    .line 2158
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    invoke-virtual {v3}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getType()I

    move-result v3

    if-eqz v3, :cond_f

    .line 2159
    const/16 v3, 0x24

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 2163
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->isServiceEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_11

    .line 2166
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v3

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/mms/ipmessage/MessageManager;->getType(J)I

    move-result v15

    .line 2167
    .local v15, ipMsgType:I
    const/4 v3, 0x4

    if-lt v15, v3, :cond_11

    const/16 v3, 0xb

    if-ge v15, v3, :cond_11

    const/4 v3, 0x7

    if-eq v15, v3, :cond_11

    .line 2169
    const-string v3, "Mms/ipmsg/compose"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateContextMenu(): add MENU_EXPORT_SD_CARD. msgId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget-wide v5, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    const/4 v3, 0x0

    const/16 v4, 0xd1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v6

    const/16 v7, 0xd0

    invoke-virtual {v6, v7}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2178
    .end local v15           #ipMsgType:I
    :cond_11
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_12

    .line 2179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSimCount:I
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6600(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v3

    if-lez v3, :cond_12

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v3

    if-nez v3, :cond_12

    .line 2181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ext/IStringReplacement;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/mediatek/mms/ext/IStringReplacement;->getCTStrings(I)Ljava/lang/String;

    move-result-object v21

    .line 2182
    .local v21, str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStringReplacementPlugin:Lcom/mediatek/mms/ext/IStringReplacement;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ext/IStringReplacement;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/mms/ext/IStringReplacement;->isEnableStringReplacement()Z

    move-result v3

    if-eqz v3, :cond_1c

    if-eqz v21, :cond_1c

    .line 2183
    const/4 v3, 0x0

    const/16 v4, 0x20

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-interface {v0, v3, v4, v5, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2191
    .end local v21           #str:Ljava/lang/String;
    :cond_12
    :goto_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, v20

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 2192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ext/IMmsCompose;

    move-result-object v3

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageActivity;->getComposeContext()Landroid/app/Activity;

    move-result-object v7

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v10

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-interface/range {v3 .. v10}, Lcom/mediatek/mms/ext/IMmsCompose;->addSplitMessageContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/app/Activity;JI)V

    goto/16 :goto_0

    .line 2030
    .restart local v11       #commonType:I
    .restart local v14       #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    .restart local v16       #ipStatus:I
    :cond_13
    const/4 v3, 0x2

    if-ne v11, v3, :cond_5

    .line 2031
    const/4 v3, 0x0

    const/16 v4, 0xd0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v6

    const/16 v7, 0xd2

    invoke-virtual {v6, v7}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 2052
    .end local v11           #commonType:I
    .end local v14           #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    .end local v16           #ipStatus:I
    :cond_14
    const/4 v3, 0x0

    const/16 v4, 0xcf

    const/4 v5, 0x0

    const v6, 0x7f0b0164

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 2066
    :cond_15
    const/4 v3, 0x0

    const/16 v4, 0xd2

    const/4 v5, 0x0

    const v6, 0x7f0b0246

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 2069
    :cond_16
    const/4 v3, 0x0

    const/16 v4, 0x15

    const/4 v5, 0x0

    const v6, 0x7f0b0246

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 2083
    :cond_17
    const/4 v3, 0x0

    const/16 v4, 0xca

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v6

    const/16 v7, 0xd5

    invoke-virtual {v6, v7}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 2093
    :cond_18
    const/4 v3, 0x0

    const/16 v4, 0x12

    const/4 v5, 0x0

    const v6, 0x7f0b023f

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 2104
    :cond_19
    const/4 v3, 0x0

    const/16 v4, 0xcb

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v6}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v6

    const/16 v7, 0xd6

    invoke-virtual {v6, v7}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 2110
    :cond_1a
    move-object/from16 v0, v20

    iget-boolean v3, v0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v3, :cond_1b

    .line 2111
    const/4 v3, 0x0

    const/16 v4, 0x1d

    const/4 v5, 0x0

    const v6, 0x7f0b02d7

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 2114
    :cond_1b
    const/4 v3, 0x0

    const/16 v4, 0x1c

    const/4 v5, 0x0

    const v6, 0x7f0b02d6

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 2122
    :pswitch_0
    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x0

    const v6, 0x7f0b023c

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2124
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$18;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->haveSomethingToCopyToSDCard(J)Z
    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6400(Lcom/android/mms/ui/ComposeMessageActivity;J)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2125
    const/4 v3, 0x0

    const/16 v4, 0x19

    const/4 v5, 0x0

    const v6, 0x7f0b030b

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 2185
    .restart local v21       #str:Ljava/lang/String;
    :cond_1c
    const/4 v3, 0x0

    const/16 v4, 0x20

    const/4 v5, 0x0

    const v6, 0x7f0b0035

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_8

    .line 2120
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
