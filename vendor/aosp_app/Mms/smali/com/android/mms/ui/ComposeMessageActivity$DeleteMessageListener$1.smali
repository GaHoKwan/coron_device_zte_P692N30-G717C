.class Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1420
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1423
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4200(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1424
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4200(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->removeThumbnailsFromCache(Lcom/android/mms/model/SlideshowModel;)V

    .line 1426
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/MmsApp;->getPduLoaderManager()Lcom/android/mms/util/PduLoaderManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4200(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/mms/util/PduLoaderManager;->removePdu(Landroid/net/Uri;)V

    .line 1440
    :cond_0
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1441
    .local v2, deletingLastItem:Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 1442
    .local v6, cursor:Landroid/database/Cursor;
    :goto_1
    if-eqz v6, :cond_1

    .line 1443
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 1444
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1445
    .local v9, msgId:J
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4200(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    cmp-long v3, v9, v3

    if-nez v3, :cond_5

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 1447
    .end local v9           #msgId:J
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4200(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iget-object v7, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 1448
    .local v7, deleteUri:Landroid/net/Uri;
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteUri "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteUri.host "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1454
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ext/IMmsCompose;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4200(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iget-wide v3, v1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4200(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iget-wide v11, v1, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    invoke-interface {v0, v3, v4, v11, v12}, Lcom/mediatek/mms/ext/IMmsCompose;->deleteMassTextMsg(JJ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1461
    :goto_3
    return-void

    .line 1430
    .end local v2           #deletingLastItem:Ljava/lang/Boolean;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #deleteUri:Landroid/net/Uri;
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4200(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    const-wide/16 v11, 0x0

    cmp-long v3, v3, v11

    if-lez v3, :cond_0

    .line 1432
    new-array v8, v0, [J

    .line 1433
    .local v8, ids:[J
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4200(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    aput-wide v3, v8, v1

    .line 1434
    const-string v3, "Mms/compose"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "delete ipmessage, id:"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v11, v8, v1

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4200(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/mms/ui/MessageItem;->mImportant:Z

    invoke-virtual {v3, v8, v4, v1}, Lcom/mediatek/mms/ipmessage/MessageManager;->deleteIpMsg([JZZ)V

    goto/16 :goto_0

    .end local v8           #ids:[J
    .restart local v2       #deletingLastItem:Ljava/lang/Boolean;
    :cond_4
    move-object v6, v5

    .line 1441
    goto/16 :goto_1

    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v9       #msgId:J
    :cond_5
    move v0, v1

    .line 1445
    goto/16 :goto_2

    .line 1457
    .end local v9           #msgId:J
    .restart local v7       #deleteUri:Landroid/net/Uri;
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    move-result-object v0

    const/16 v1, 0x25e4

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4200(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->mMessageItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;->access$4200(Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;)Lcom/android/mms/ui/MessageItem;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v4, :cond_7

    move-object v4, v5

    :goto_4
    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string v4, "locked=0"

    goto :goto_4
.end method
