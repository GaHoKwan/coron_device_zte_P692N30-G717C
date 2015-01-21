.class Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;
.super Ljava/lang/Object;
.source "MultiDeleteActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultiDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectActionMode"
.end annotation


# instance fields
.field private mPopup:Landroid/widget/PopupMenu;

.field final synthetic this$0:Lcom/android/mms/ui/MultiDeleteActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->mPopup:Landroid/widget/PopupMenu;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity;Lcom/android/mms/ui/MultiDeleteActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1223
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;-><init>(Lcom/android/mms/ui/MultiDeleteActivity;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->mPopup:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->mPopup:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method private forwardMsg()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1532
    invoke-direct {p0}, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->getSelectedMsgIds()[[J

    move-result-object v0

    .line 1533
    .local v0, ids:[[J
    if-eqz v0, :cond_0

    array-length v2, v0

    if-ge v2, v4, :cond_1

    .line 1539
    :cond_0
    :goto_0
    return-void

    .line 1536
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    const-class v3, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1537
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "forwarded_message"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1538
    const-string v2, "forward_ipmsg_ids"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getForwardMsgIds()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1516
    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v4, v4, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListAdapter;->getItemList()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1517
    .local v3, importantIter:Ljava/util/Iterator;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1518
    .local v1, forwardMsgIds:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1519
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1520
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1521
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1524
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1525
    .local v2, ids:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 1526
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1528
    :cond_2
    return-object v2
.end method

.method private getSelectedMsgIds()[[J
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 1493
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v5, v5, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getItemList()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1494
    .local v2, importantIter:Ljava/util/Iterator;
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v6, v6, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListAdapter;->getSelectedNumber()I

    move-result v6

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[J

    .line 1496
    .local v4, selectMessageIds:[[J
    const/4 v1, 0x0

    .line 1497
    .local v1, i:I
    const/4 v3, 0x0

    .line 1498
    .local v3, mmsIndex:I
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1499
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1500
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v9

    if-lez v5, :cond_1

    .line 1501
    const/4 v5, 0x0

    aget-object v6, v4, v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aput-wide v7, v6, v1

    .line 1502
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1503
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v9

    if-gez v5, :cond_0

    .line 1504
    const/4 v5, 0x1

    aget-object v6, v4, v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    neg-long v7, v7

    aput-wide v7, v6, v3

    .line 1505
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1508
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :cond_2
    return-object v4
.end method

.method private showIpMessageDownloadDialog(Landroid/view/ActionMode;Landroid/view/MenuItem;)V
    .locals 4
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 1378
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1379
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b0247

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b01e3

    new-instance v3, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$3;-><init>(Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;Landroid/view/ActionMode;Landroid/view/MenuItem;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0007

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v2

    const/16 v3, 0xee

    invoke-virtual {v2, v3}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1398
    return-void
.end method

.method private showMmsTipsDialog(Landroid/view/ActionMode;Landroid/view/MenuItem;)V
    .locals 4
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 1361
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1362
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b01e6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b01e3

    new-instance v3, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$2;-><init>(Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;Landroid/view/ActionMode;Landroid/view/MenuItem;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0007

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b01e7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1375
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 17
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 1402
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1483
    :cond_0
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 1404
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getSelectedNumber()I

    move-result v15

    .line 1406
    .local v15, mSelectedNumber:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-lt v15, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$100(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1407
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$100(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1408
    .local v5, threadId:Ljava/lang/Long;
    new-instance v2, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-direct {v2, v1}, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;-><init>(Lcom/android/mms/ui/MultiDeleteActivity;)V

    .line 1409
    .local v2, mMultiDeleteMsgListener:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->selectedMsgHasLocked()Z
    invoke-static {v3}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4100(Lcom/android/mms/ui/MultiDeleteActivity;)Z

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->confirmMultiDeleteMsgDialog(Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;ZZLjava/lang/Long;Landroid/content/Context;)V
    invoke-static/range {v1 .. v6}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4200(Lcom/android/mms/ui/MultiDeleteActivity;Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;ZZLjava/lang/Long;Landroid/content/Context;)V

    goto :goto_0

    .line 1411
    .end local v2           #mMultiDeleteMsgListener:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;
    .end local v5           #threadId:Ljava/lang/Long;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getSelectedNumber()I

    move-result v1

    if-lez v1, :cond_0

    .line 1412
    new-instance v2, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-direct {v2, v1}, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;-><init>(Lcom/android/mms/ui/MultiDeleteActivity;)V

    .line 1413
    .restart local v2       #mMultiDeleteMsgListener:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->selectedMsgHasLocked()Z
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4100(Lcom/android/mms/ui/MultiDeleteActivity;)Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    move-object v7, v2

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->confirmMultiDeleteMsgDialog(Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;ZZLjava/lang/Long;Landroid/content/Context;)V
    invoke-static/range {v6 .. v11}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4200(Lcom/android/mms/ui/MultiDeleteActivity;Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;ZZLjava/lang/Long;Landroid/content/Context;)V

    goto :goto_0

    .line 1419
    .end local v2           #mMultiDeleteMsgListener:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;
    .end local v15           #mSelectedNumber:I
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mMmsNotificationCount:I
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1300(Lcom/android/mms/ui/MultiDeleteActivity;)I

    move-result v1

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mMmsNotificationHasRun:Z
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$3900(Lcom/android/mms/ui/MultiDeleteActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1420
    invoke-direct/range {p0 .. p2}, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->showMmsTipsDialog(Landroid/view/ActionMode;Landroid/view/MenuItem;)V

    .line 1421
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1424
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getIpMessagePlugin(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;->isActualPlugin()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1425
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mUnDownloadedIpMessageCount:I
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1400(Lcom/android/mms/ui/MultiDeleteActivity;)I

    move-result v1

    if-lez v1, :cond_3

    .line 1426
    invoke-direct/range {p0 .. p2}, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->showIpMessageDownloadDialog(Landroid/view/ActionMode;Landroid/view/MenuItem;)V

    .line 1427
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1429
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->getForwardMsgIds()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity;->mForwardMsgIds:Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4302(Lcom/android/mms/ui/MultiDeleteActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1430
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mForwardMsgIds:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4300(Lcom/android/mms/ui/MultiDeleteActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mForwardMsgIds:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4300(Lcom/android/mms/ui/MultiDeleteActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1431
    :cond_4
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1433
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v1

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Lcom/mediatek/mms/ipmessage/ServiceManager;->isFeatureSupported(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1436
    :try_start_0
    new-instance v14, Landroid/content/Intent;

    sget-object v1, Lcom/mediatek/mms/ipmessage/IpMessageConsts$RemoteActivities;->CONTACT:Ljava/lang/String;

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1437
    .local v14, intent:Landroid/content/Intent;
    const-string v1, "request_code"

    const/16 v3, 0xd2

    invoke-virtual {v14, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1439
    const-string v1, "type"

    const/4 v3, 0x0

    invoke-virtual {v14, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1440
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v1, v14}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->startRemoteActivityForResult(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1461
    .end local v14           #intent:Landroid/content/Intent;
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1442
    :catch_0
    move-exception v12

    .line 1443
    .local v12, e:Landroid/content/ActivityNotFoundException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    const v4, 0x7f0b0105

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1446
    const-string v1, "Mms/MultiDeleteActivity"

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v12}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1450
    .end local v12           #e:Landroid/content/ActivityNotFoundException;
    :cond_6
    :try_start_1
    new-instance v14, Landroid/content/Intent;

    const-string v1, "android.intent.action.contacts.list.PICKMULTIPHONEANDEMAILS"

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1451
    .restart local v14       #intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1452
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    const/16 v3, 0xd2

    invoke-virtual {v1, v14, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1454
    .end local v14           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v12

    .line 1455
    .restart local v12       #e:Landroid/content/ActivityNotFoundException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    const v4, 0x7f0b0105

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1458
    const-string v1, "Mms/MultiDeleteActivity"

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v12}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1464
    .end local v12           #e:Landroid/content/ActivityNotFoundException;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mMmsDeleteAndForwardPlugin:Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$3800(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;

    move-result-object v1

    invoke-interface {v1}, Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;->onMultiforwardItemSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1465
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 1469
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->getSelectedMsgIds()[[J

    move-result-object v13

    .line 1470
    .local v13, ids:[[J
    if-eqz v13, :cond_0

    .line 1471
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    const/4 v3, 0x0

    aget-object v3, v13, v3

    const/4 v4, 0x1

    aget-object v4, v13, v4

    const/4 v6, 0x1

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->markAsImportant([J[JZ)V
    invoke-static {v1, v3, v4, v6}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4400(Lcom/android/mms/ui/MultiDeleteActivity;[J[JZ)V

    goto/16 :goto_0

    .line 1475
    .end local v13           #ids:[[J
    :sswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->getSelectedMsgIds()[[J

    move-result-object v16

    .line 1476
    .local v16, msgIds:[[J
    if-eqz v16, :cond_0

    .line 1477
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    const/4 v3, 0x0

    aget-object v3, v16, v3

    const/4 v4, 0x1

    aget-object v4, v16, v4

    const/4 v6, 0x0

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->markAsImportant([J[JZ)V
    invoke-static {v1, v3, v4, v6}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4400(Lcom/android/mms/ui/MultiDeleteActivity;[J[JZ)V

    goto/16 :goto_0

    .line 1402
    :sswitch_data_0
    .sparse-switch
        0x7f0f0054 -> :sswitch_0
        0x7f0f01b5 -> :sswitch_1
        0x7f0f01b7 -> :sswitch_2
        0x7f0f01b9 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 1227
    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04000c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1229
    .local v0, v:Landroid/view/ViewGroup;
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 1230
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    const v1, 0x7f0f002c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity;->mChatSelect:Landroid/widget/Button;
    invoke-static {v2, v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$3402(Lcom/android/mms/ui/MultiDeleteActivity;Landroid/widget/Button;)Landroid/widget/Button;

    .line 1231
    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mChatSelect:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$3400(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode$1;-><init>(Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1294
    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->updateSelectCount()V
    invoke-static {v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1700(Lcom/android/mms/ui/MultiDeleteActivity;)V

    .line 1295
    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const/high16 v2, 0x7f0e

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1296
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1490
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 12
    .parameter "mode"
    .parameter "menu"

    .prologue
    const v11, 0x7f0f01b8

    const v10, 0x7f0f01b6

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1301
    const v5, 0x7f0f0054

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1302
    .local v0, deleteItem:Landroid/view/MenuItem;
    const v5, 0x7f0f01b7

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1303
    .local v2, importantItem:Landroid/view/MenuItem;
    const v5, 0x7f0f01b5

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1304
    .local v1, forwardItem:Landroid/view/MenuItem;
    const v5, 0x7f0f01b9

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1305
    .local v3, removeItem:Landroid/view/MenuItem;
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-static {v5}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v5

    if-lez v5, :cond_3

    .line 1306
    if-eqz v2, :cond_0

    .line 1307
    const v5, 0x7f0b016a

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1309
    :cond_0
    if-eqz v3, :cond_1

    .line 1310
    const v5, 0x7f0b016b

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1320
    :cond_1
    :goto_0
    const-string v5, "Mms/ipmsg/MultiDeleteActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPrepareActionMode(): mImportantCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mImportantCount:I
    invoke-static {v7}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1200(Lcom/android/mms/ui/MultiDeleteActivity;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->getSelectedCount()I
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$2300(Lcom/android/mms/ui/MultiDeleteActivity;)I

    move-result v4

    .line 1323
    .local v4, selectNum:I
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mImportantCount:I
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1200(Lcom/android/mms/ui/MultiDeleteActivity;)I

    move-result v5

    if-lez v5, :cond_5

    .line 1324
    invoke-interface {p2, v11, v8}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1328
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mImportantCount:I
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1200(Lcom/android/mms/ui/MultiDeleteActivity;)I

    move-result v5

    if-lez v5, :cond_6

    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mImportantCount:I
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1200(Lcom/android/mms/ui/MultiDeleteActivity;)I

    move-result v5

    if-ne v5, v4, :cond_6

    .line 1329
    invoke-interface {p2, v10, v9}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1334
    :goto_2
    if-lez v4, :cond_7

    .line 1335
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1336
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1337
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1338
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1346
    :goto_3
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultiDeleteActivity;->mMmsDeleteAndForwardPlugin:Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;
    invoke-static {v5}, Lcom/android/mms/ui/MultiDeleteActivity;->access$3800(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;

    move-result-object v5

    invoke-interface {v5}, Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;->isSupportForward()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1347
    if-lez v4, :cond_8

    .line 1348
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1357
    :cond_2
    :goto_4
    return v8

    .line 1313
    .end local v4           #selectNum:I
    :cond_3
    if-eqz v2, :cond_4

    .line 1314
    const v5, 0x7f0b02d6

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1316
    :cond_4
    if-eqz v3, :cond_1

    .line 1317
    const v5, 0x7f0b02d7

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1326
    .restart local v4       #selectNum:I
    :cond_5
    invoke-interface {p2, v11, v9}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_1

    .line 1331
    :cond_6
    invoke-interface {p2, v10, v8}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_2

    .line 1340
    :cond_7
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1341
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1342
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1343
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 1350
    :cond_8
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4
.end method
