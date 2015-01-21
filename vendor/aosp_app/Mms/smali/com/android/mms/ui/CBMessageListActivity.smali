.class public Lcom/android/mms/ui/CBMessageListActivity;
.super Landroid/app/Activity;
.source "CBMessageListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/mms/util/DraftCache$OnDraftChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;,
        Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;
    }
.end annotation


# static fields
.field private static final CHECKED_MESSAGE_LIMITS:Ljava/lang/String; = "checked_message_limits"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final DEBUG:Z = false

.field public static final DELETE_MESSAGE_TOKEN:I = 0x76e

.field private static final FOR_MULTIDELETE:Ljava/lang/String; = "ForMultiDelete"

.field public static final HAVE_LOCKED_MESSAGES_TOKEN:I = 0x76f

.field private static final LOCAL_LOGV:Z = false

.field public static final MENU_DELETE_MSG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CBMessageListActivity"

.field private static final THREADID:Ljava/lang/String; = "thread_id"

.field private static final THREAD_LIST_QUERY_TOKEN:I = 0x76d


# instance fields
.field private mBottomPanel:Landroid/widget/LinearLayout;

.field private mCancelButton:Landroid/widget/ImageButton;

.field private final mContentChangedListener:Lcom/android/mms/ui/CBMessageListAdapter$OnContentChangedListener;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mDeleteButton:Landroid/widget/ImageButton;

.field private mDeletePanel:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIsSelectedAll:Z

.field private final mMessageListItemHandler:Landroid/os/Handler;

.field private mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

.field private mMsgListView:Landroid/widget/ListView;

.field private mOptionMenu:Landroid/view/Menu;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mQueryHandler:Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;

.field private mSelectAllButton:Landroid/widget/ImageButton;

.field private mSharePanel:Lcom/mediatek/ipmsg/ui/SharePanel;

.field private final mThreadListKeyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    const-string v0, "content://cb/messages/#"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/CBMessageListActivity;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 299
    new-instance v0, Lcom/android/mms/ui/CBMessageListActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CBMessageListActivity$2;-><init>(Lcom/android/mms/ui/CBMessageListActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mContentChangedListener:Lcom/android/mms/ui/CBMessageListAdapter$OnContentChangedListener;

    .line 320
    new-instance v0, Lcom/android/mms/ui/CBMessageListActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CBMessageListActivity$3;-><init>(Lcom/android/mms/ui/CBMessageListActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMessageListItemHandler:Landroid/os/Handler;

    .line 501
    new-instance v0, Lcom/android/mms/ui/CBMessageListActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CBMessageListActivity$5;-><init>(Lcom/android/mms/ui/CBMessageListActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 606
    new-instance v0, Lcom/android/mms/ui/CBMessageListActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CBMessageListActivity$7;-><init>(Lcom/android/mms/ui/CBMessageListActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    .line 671
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/data/Conversation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/CBMessageListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/ui/CBMessageListActivity;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/ui/CBMessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/CBMessageListActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mDeleteButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/CBMessageListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/mms/ui/CBMessageListActivity;->mIsSelectedAll:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/CBMessageListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mQueryHandler:Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/CBMessageListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/mms/ui/CBMessageListActivity;->checkDeleteMode()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/CBMessageListActivity;)Landroid/view/Menu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mOptionMenu:Landroid/view/Menu;

    return-object v0
.end method

.method private checkDeleteMode()V
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    iget-boolean v0, v0, Lcom/android/mms/ui/CBMessageListAdapter;->mIsDeleteMode:Z

    if-eqz v0, :cond_1

    .line 755
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mDeletePanel:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 759
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    iget-boolean v0, v0, Lcom/android/mms/ui/CBMessageListAdapter;->mIsDeleteMode:Z

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/CBMessageListAdapter;->clearList()V

    .line 762
    :cond_0
    return-void

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mDeletePanel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public static confirmDeleteMessage(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;)V
    .locals 5
    .parameter "messageId"
    .parameter "handler"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 561
    new-instance v2, Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;-><init>(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;)V

    const-wide/16 v3, -0x1

    cmp-long v0, p0, v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0, v1, p3}, Lcom/android/mms/ui/CBMessageListActivity;->confirmDeleteMessageDialog(Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;ZZLandroid/content/Context;)V

    .line 563
    return-void

    :cond_0
    move v0, v1

    .line 561
    goto :goto_0
.end method

.method public static confirmDeleteMessageDialog(Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;ZZLandroid/content/Context;)V
    .locals 7
    .parameter "listener"
    .parameter "deleteAll"
    .parameter "hasLockedMessages"
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 580
    const v4, 0x7f04001f

    invoke-static {p3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 581
    .local v2, contents:Landroid/view/View;
    const v4, 0x7f0f0087

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 582
    .local v3, msg:Landroid/widget/TextView;
    const v4, 0x7f0b02ba

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 583
    const v4, 0x7f0f0088

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 584
    .local v1, checkbox:Landroid/widget/CheckBox;
    if-nez p2, :cond_0

    .line 585
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 600
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 601
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0b02b6

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b02bf

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0296

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 604
    return-void

    .line 588
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    invoke-static {p3}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v4

    if-lez v4, :cond_1

    .line 589
    invoke-static {p3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v4

    const/16 v5, 0x75

    invoke-virtual {v4, v5}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    :cond_1
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;->setDeleteLockedMessage(Z)V

    .line 593
    new-instance v4, Lcom/android/mms/ui/CBMessageListActivity$6;

    invoke-direct {v4, p0, v1}, Lcom/android/mms/ui/CBMessageListActivity$6;-><init>(Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private confirmMultiDelete()V
    .locals 3

    .prologue
    .line 836
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 837
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b02b6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 838
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 839
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 840
    const v1, 0x7f0b0075

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 841
    const v1, 0x7f0b02bf

    new-instance v2, Lcom/android/mms/ui/CBMessageListActivity$9;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/CBMessageListActivity$9;-><init>(Lcom/android/mms/ui/CBMessageListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 872
    const v1, 0x7f0b0296

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 873
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 874
    return-void
.end method

.method private confirmThreadDelete()V
    .locals 4

    .prologue
    .line 797
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 798
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b0245

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/mms/ui/CBMessageListActivity$8;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/CBMessageListActivity$8;-><init>(Lcom/android/mms/ui/CBMessageListActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 833
    return-void
.end method

.method public static createIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 770
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/CBMessageListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 771
    .local v0, intent:Landroid/content/Intent;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 772
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 774
    :cond_0
    return-object v0
.end method

.method private initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 11
    .parameter "bundle"
    .parameter "intent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    .line 240
    const-wide/16 v2, 0x0

    .line 241
    .local v2, threadId:J
    if-eqz p1, :cond_1

    .line 242
    const-string v4, "thread_id"

    invoke-virtual {p1, v4, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 248
    :goto_0
    cmp-long v4, v2, v7

    if-lez v4, :cond_2

    .line 249
    invoke-static {p0, v2, v3, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/CBMessageListActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 260
    :goto_1
    if-eqz p1, :cond_0

    .line 261
    const-string v4, "is_all_selected"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/mms/ui/CBMessageListActivity;->mIsSelectedAll:Z

    .line 262
    iget-boolean v4, p0, Lcom/android/mms/ui/CBMessageListActivity;->mIsSelectedAll:Z

    if-eqz v4, :cond_4

    .line 263
    iget-object v4, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    const/4 v5, 0x0

    invoke-virtual {v4, v10, v5}, Lcom/android/mms/ui/CBMessageListAdapter;->setItemsValue(Z[J)V

    .line 271
    :cond_0
    :goto_2
    return-void

    .line 244
    :cond_1
    const-string v4, "thread_id"

    invoke-virtual {p2, v4, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 245
    const-string v4, "CBMessageListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initActivityState from intent threadId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 252
    .local v0, intentData:Landroid/net/Uri;
    if-eqz v0, :cond_3

    .line 254
    const-string v4, "CBMessageListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get a conversation based on the intentdata intentData = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/data/Conversation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/CBMessageListActivity;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_1

    .line 257
    :cond_3
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/CBMessageListActivity;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_1

    .line 266
    .end local v0           #intentData:Landroid/net/Uri;
    :cond_4
    const-string v4, "select_list"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 267
    .local v1, selectedItems:[J
    if-eqz v1, :cond_0

    .line 268
    iget-object v4, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    invoke-virtual {v4, v10, v1}, Lcom/android/mms/ui/CBMessageListAdapter;->setItemsValue(Z[J)V

    goto :goto_2
.end method

.method private initListAdapter()V
    .locals 2

    .prologue
    .line 310
    new-instance v0, Lcom/android/mms/ui/CBMessageListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/CBMessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    .line 311
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity;->mContentChangedListener:Lcom/android/mms/ui/CBMessageListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/CBMessageListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/CBMessageListAdapter$OnContentChangedListener;)V

    .line 312
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMessageListItemHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/CBMessageListAdapter;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 313
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 314
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 315
    return-void
.end method

.method private initResourceRefs()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 195
    new-instance v0, Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;-><init>(Lcom/android/mms/ui/CBMessageListActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mQueryHandler:Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;

    .line 198
    const v0, 0x7f0f0037

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListView:Landroid/widget/ListView;

    .line 199
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 200
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 202
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 203
    const v0, 0x7f0f0050

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mDeletePanel:Landroid/view/View;

    .line 204
    const v0, 0x7f0f0051

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mSelectAllButton:Landroid/widget/ImageButton;

    .line 205
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mSelectAllButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    const v0, 0x7f0f0053

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mCancelButton:Landroid/widget/ImageButton;

    .line 207
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mCancelButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const v0, 0x7f0f0054

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mDeleteButton:Landroid/widget/ImageButton;

    .line 209
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 211
    const v0, 0x7f0f0041

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mBottomPanel:Landroid/widget/LinearLayout;

    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mBottomPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 214
    const v0, 0x7f0f004f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ipmsg/ui/SharePanel;

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mSharePanel:Lcom/mediatek/ipmsg/ui/SharePanel;

    .line 215
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mSharePanel:Lcom/mediatek/ipmsg/ui/SharePanel;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 216
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 218
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 219
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 220
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/mms/ui/CBMessageListActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/CBMessageListActivity$1;-><init>(Lcom/android/mms/ui/CBMessageListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 227
    return-void
.end method

.method private initialize(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 233
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/CBMessageListActivity;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 236
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 237
    return-void
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .parameter "format"
    .parameter "args"

    .prologue
    .line 765
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 766
    .local v0, s:Ljava/lang/String;
    const-string v1, "Mms/Cb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    return-void
.end method

.method private markCheckedState(Z)V
    .locals 5
    .parameter "checkedState"

    .prologue
    .line 741
    iget-object v3, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/mms/ui/CBMessageListAdapter;->setItemsValue(Z[J)V

    .line 742
    iget-object v3, p0, Lcom/android/mms/ui/CBMessageListActivity;->mDeleteButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 743
    iget-object v3, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 744
    .local v0, count:I
    const/4 v2, 0x0

    .line 745
    .local v2, item:Lcom/android/mms/ui/CBMessageListItem;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 746
    iget-object v3, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #item:Lcom/android/mms/ui/CBMessageListItem;
    check-cast v2, Lcom/android/mms/ui/CBMessageListItem;

    .line 747
    .restart local v2       #item:Lcom/android/mms/ui/CBMessageListItem;
    if-eqz v2, :cond_0

    .line 748
    invoke-virtual {v2, p1}, Lcom/android/mms/ui/CBMessageListItem;->setSelectedBackGroud(Z)V

    .line 745
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 751
    :cond_1
    return-void
.end method

.method private startAsyncQuery()V
    .locals 6

    .prologue
    .line 432
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/CBMessageListActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    .line 433
    .local v1, threadId:J
    const-string v3, "CBMessageListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startAsyncQuery threadId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v3, p0, Lcom/android/mms/ui/CBMessageListActivity;->mQueryHandler:Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;

    const/16 v4, 0x76d

    invoke-static {v3, v1, v2, v4}, Lcom/android/mms/data/CBMessage;->startQueryForThreadId(Landroid/content/AsyncQueryHandler;JI)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    .end local v1           #threadId:J
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v0}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method


# virtual methods
.method public isThreadidExist(Landroid/net/Uri;)Z
    .locals 9
    .parameter "intentData"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 174
    const-string v1, "CBMessageListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intentData = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 176
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_1

    .line 177
    new-array v2, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v2, v8

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 179
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 180
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v7, :cond_0

    move v1, v7

    .line 188
    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_0
    return v1

    .line 183
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    move v1, v8

    .line 188
    goto :goto_0

    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_2
    move v1, v8

    .line 185
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mDeleteButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_2

    .line 780
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/CBMessageListAdapter;->getSelectedNumber()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 781
    invoke-direct {p0}, Lcom/android/mms/ui/CBMessageListActivity;->confirmThreadDelete()V

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/CBMessageListActivity;->confirmMultiDelete()V

    goto :goto_0

    .line 785
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mCancelButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_3

    .line 786
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/CBMessageListAdapter;->getSelectedNumber()I

    move-result v0

    if-lez v0, :cond_0

    .line 787
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mIsSelectedAll:Z

    .line 788
    iget-boolean v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mIsSelectedAll:Z

    invoke-direct {p0, v0}, Lcom/android/mms/ui/CBMessageListActivity;->markCheckedState(Z)V

    goto :goto_0

    .line 790
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mSelectAllButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 791
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mIsSelectedAll:Z

    .line 792
    iget-boolean v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mIsSelectedAll:Z

    invoke-direct {p0, v0}, Lcom/android/mms/ui/CBMessageListActivity;->markCheckedState(Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 546
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 547
    const-string v0, "Mms/Cb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 520
    iget-object v4, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    invoke-virtual {v4}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 521
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    if-ltz v4, :cond_0

    .line 522
    invoke-static {p0, v0}, Lcom/android/mms/data/CBMessage;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/CBMessage;

    move-result-object v1

    .line 523
    .local v1, message:Lcom/android/mms/data/CBMessage;
    invoke-virtual {v1}, Lcom/android/mms/data/CBMessage;->getMessageId()J

    move-result-wide v2

    .line 524
    .local v2, messageId:J
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 533
    .end local v1           #message:Lcom/android/mms/data/CBMessage;
    .end local v2           #messageId:J
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    .line 526
    .restart local v1       #message:Lcom/android/mms/data/CBMessage;
    .restart local v2       #messageId:J
    :pswitch_0
    iget-object v4, p0, Lcom/android/mms/ui/CBMessageListActivity;->mQueryHandler:Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;

    invoke-static {v2, v3, v4, p0}, Lcom/android/mms/ui/CBMessageListActivity;->confirmDeleteMessage(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;)V

    goto :goto_0

    .line 524
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    const v3, 0x7f040011

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 158
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "CBMessageListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CBMessageListActivity onCreate intent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 160
    .local v2, intentData:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 161
    .local v0, bFromLaunch:Z
    const-string v3, "bFromLaunch"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 162
    const-string v3, "CBMessageListActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bFromLaunch = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CBMessageListActivity;->isThreadidExist(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 171
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/CBMessageListActivity;->initResourceRefs()V

    .line 168
    invoke-direct {p0, p1}, Lcom/android/mms/ui/CBMessageListActivity;->initialize(Landroid/os/Bundle;)V

    .line 169
    invoke-direct {p0}, Lcom/android/mms/ui/CBMessageListActivity;->initListAdapter()V

    goto :goto_0
.end method

.method public onDraftChanged(JZ)V
    .locals 2
    .parameter "threadId"
    .parameter "hasDraft"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mQueryHandler:Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;

    new-instance v1, Lcom/android/mms/ui/CBMessageListActivity$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/ui/CBMessageListActivity$4;-><init>(Lcom/android/mms/ui/CBMessageListActivity;JZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 428
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 628
    packed-switch p1, :pswitch_data_0

    .line 645
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 630
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    iget-boolean v1, v1, Lcom/android/mms/ui/CBMessageListAdapter;->mIsDeleteMode:Z

    if-eqz v1, :cond_0

    .line 631
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    iput-boolean v2, v1, Lcom/android/mms/ui/CBMessageListAdapter;->mIsDeleteMode:Z

    .line 632
    iput-boolean v2, p0, Lcom/android/mms/ui/CBMessageListActivity;->mIsSelectedAll:Z

    .line 633
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity;->mOptionMenu:Landroid/view/Menu;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity;->mOptionMenu:Landroid/view/Menu;

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 634
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity;->mOptionMenu:Landroid/view/Menu;

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 636
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/mms/ui/CBMessageListActivity;->markCheckedState(Z)V

    .line 637
    invoke-direct {p0}, Lcom/android/mms/ui/CBMessageListActivity;->checkDeleteMode()V

    goto :goto_0

    .line 628
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 367
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 368
    const-string v0, "CBMessageListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/CBMessageListActivity;->initialize(Landroid/os/Bundle;)V

    .line 370
    invoke-virtual {p0}, Lcom/android/mms/ui/CBMessageListActivity;->privateOnStart()V

    .line 371
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 476
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 498
    :goto_0
    return v2

    .line 479
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    iput-boolean v2, v0, Lcom/android/mms/ui/CBMessageListAdapter;->mIsDeleteMode:Z

    .line 480
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 481
    invoke-direct {p0, v1}, Lcom/android/mms/ui/CBMessageListActivity;->markCheckedState(Z)V

    .line 482
    invoke-direct {p0}, Lcom/android/mms/ui/CBMessageListActivity;->checkDeleteMode()V

    goto :goto_0

    .line 485
    :sswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    iget-boolean v0, v0, Lcom/android/mms/ui/CBMessageListAdapter;->mIsDeleteMode:Z

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    iput-boolean v1, v0, Lcom/android/mms/ui/CBMessageListAdapter;->mIsDeleteMode:Z

    .line 487
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mOptionMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mOptionMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 490
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/CBMessageListActivity;->checkDeleteMode()V

    .line 492
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 476
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 442
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    iget-boolean v1, v1, Lcom/android/mms/ui/CBMessageListAdapter;->mIsDeleteMode:Z

    if-eqz v1, :cond_0

    .line 443
    const-string v1, "CBMessageListActivity"

    const-string v2, "mMsgListAdapter.mIsDeleteMode is true"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :goto_0
    return v5

    .line 446
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 447
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity;->mOptionMenu:Landroid/view/Menu;

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity;->mOptionMenu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 450
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 451
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 452
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 453
    const-string v1, "CBMessageListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareOptionsMenu cursor.getCount() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const v1, 0x7f0b023f

    invoke-interface {p1, v4, v4, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 457
    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    iget-boolean v1, v1, Lcom/android/mms/ui/CBMessageListAdapter;->mIsDeleteMode:Z

    if-eqz v1, :cond_3

    .line 458
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 464
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/android/mms/ui/CBMessageListActivity;->mOptionMenu:Landroid/view/Menu;

    goto :goto_0

    .line 460
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_3
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 8
    .parameter "outState"

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 276
    iget-object v4, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    if-eqz v4, :cond_0

    .line 277
    iget-object v4, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/CBMessageListAdapter;->getSelectedNumber()I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    invoke-virtual {v5}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 278
    const-string v4, "is_all_selected"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 295
    :cond_0
    :goto_0
    const-string v4, "thread_id"

    iget-object v5, p0, Lcom/android/mms/ui/CBMessageListActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 296
    const-string v4, "Mms/Cb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saved thread id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/CBMessageListActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void

    .line 280
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/CBMessageListAdapter;->getSelectedNumber()I

    move-result v4

    new-array v0, v4, [J

    .line 281
    .local v0, checkedArray:[J
    iget-object v4, p0, Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/CBMessageListAdapter;->getItemList()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 282
    .local v3, iter:Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 283
    .local v2, i:I
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 285
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 286
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 287
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 291
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :cond_3
    const-string v4, "select_list"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 470
    invoke-virtual {p0, v1, v0, v1, v0}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 471
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 375
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 377
    invoke-static {p0}, Lcom/android/mms/data/CBMessage;->cleanup(Landroid/content/Context;)V

    .line 379
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/mms/util/DraftCache;->addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 381
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 382
    .local v0, actionBar:Landroid/app/ActionBar;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0062

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 385
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 392
    invoke-virtual {p0}, Lcom/android/mms/ui/CBMessageListActivity;->privateOnStart()V

    .line 401
    invoke-static {}, Lcom/android/mms/data/CBMessage;->loadingMessages()Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    const-string v1, "Mms/Cb"

    const-string v2, "onStart: loadingMessages = false"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 412
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 413
    const-string v0, "CBMessageListActivity"

    const-string v1, "CBMessageListActivity onStop"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 415
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 417
    return-void
.end method

.method protected privateOnStart()V
    .locals 0

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/android/mms/ui/CBMessageListActivity;->startAsyncQuery()V

    .line 408
    return-void
.end method
