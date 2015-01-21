.class abstract Lcom/android/email/activity/UIControllerBase;
.super Ljava/lang/Object;
.source "UIControllerBase.java"

# interfaces
.implements Lcom/android/email/activity/MailboxListFragment$Callback;
.implements Lcom/android/email/activity/MessageListFragment$Callback;
.implements Lcom/android/email/activity/MessageViewFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/UIControllerBase$MessageOrderManagerCallback;,
        Lcom/android/email/activity/UIControllerBase$RefreshListener;
    }
.end annotation


# static fields
.field static final KEY_IN_EAS_REMOTE_MODE:Ljava/lang/String; = "UIControllerBase.in_eas_remote_mode"

.field static final KEY_LIST_CONTEXT:Ljava/lang/String; = "UIControllerBase.listContext"

.field static final TAG:Ljava/lang/String; = "UIControllerBase"


# instance fields
.field protected final mActionBarController:Lcom/android/email/activity/ActionBarController;

.field final mActivity:Lcom/android/email/activity/EmailActivity;

.field final mFragmentManager:Landroid/app/FragmentManager;

.field private mIsEasRemoteMode:Z

.field public mIsRemoteSearching:Z

.field protected mListContext:Lcom/android/email/MessageListContext;

.field private mLocalSearchCallback:Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;

.field private mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

.field private mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

.field private final mMessageOrderManagerCallback:Lcom/android/email/activity/UIControllerBase$MessageOrderManagerCallback;

.field protected mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

.field private mNfcHandler:Lcom/android/email/activity/NfcHandler;

.field private mOrderManager:Lcom/android/email/activity/MessageOrderManager;

.field protected final mRefreshListener:Lcom/android/email/activity/UIControllerBase$RefreshListener;

.field final mRefreshManager:Lcom/android/email/RefreshManager;

.field private final mRemoveSearchCallback:Lcom/android/email/activity/MessageListFragment$RemoteSearchCallback;

.field private final mRemovedFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/EmailActivity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/android/email/activity/UIControllerBase$MessageOrderManagerCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/UIControllerBase$MessageOrderManagerCallback;-><init>(Lcom/android/email/activity/UIControllerBase;Lcom/android/email/activity/UIControllerBase$1;)V

    iput-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageOrderManagerCallback:Lcom/android/email/activity/UIControllerBase$MessageOrderManagerCallback;

    .line 82
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 107
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mRemovedFragments:Ljava/util/List;

    .line 125
    iput-boolean v1, p0, Lcom/android/email/activity/UIControllerBase;->mIsRemoteSearching:Z

    .line 128
    iput-boolean v1, p0, Lcom/android/email/activity/UIControllerBase;->mIsEasRemoteMode:Z

    .line 142
    new-instance v0, Lcom/android/email/activity/UIControllerBase$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/UIControllerBase$1;-><init>(Lcom/android/email/activity/UIControllerBase;)V

    iput-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mLocalSearchCallback:Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;

    .line 163
    new-instance v0, Lcom/android/email/activity/UIControllerBase$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/UIControllerBase$2;-><init>(Lcom/android/email/activity/UIControllerBase;)V

    iput-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mRemoveSearchCallback:Lcom/android/email/activity/MessageListFragment$RemoteSearchCallback;

    .line 223
    new-instance v0, Lcom/android/email/activity/UIControllerBase$RefreshListener;

    invoke-direct {v0, p0, v2}, Lcom/android/email/activity/UIControllerBase$RefreshListener;-><init>(Lcom/android/email/activity/UIControllerBase;Lcom/android/email/activity/UIControllerBase$1;)V

    iput-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mRefreshListener:Lcom/android/email/activity/UIControllerBase$RefreshListener;

    .line 226
    iput-object p1, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    .line 227
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mFragmentManager:Landroid/app/FragmentManager;

    .line 228
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mRefreshManager:Lcom/android/email/RefreshManager;

    .line 229
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UIControllerBase;->createActionBarController(Landroid/app/Activity;)Lcom/android/email/activity/ActionBarController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    .line 230
    return-void
.end method

.method private generateHabitData()V
    .locals 32

    .prologue
    .line 1361
    const/16 v20, 0x3e8

    .line 1362
    .local v20, SECOND:I
    const v19, 0xea60

    .line 1363
    .local v19, MINUTE:I
    const v17, 0x36ee80

    .line 1364
    .local v17, HOUR:I
    const v16, 0x5265c00

    .line 1365
    .local v16, DAY:I
    const v21, 0x493e0

    .line 1366
    .local v21, SPAN:I
    const v18, 0x493e0

    .line 1368
    .local v18, MINSPAN:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/UIControllerBase;->getUIAccountId()J

    move-result-wide v5

    .line 1370
    .local v5, accountId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v8, Lcom/android/emailcommon/provider/SmartPush;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "accountKey=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1373
    .local v22, current:J
    const-wide/32 v8, 0x5265c00

    div-long v24, v22, v8

    .line 1375
    .local v24, days:J
    const-wide/32 v8, 0x5265c00

    mul-long v30, v24, v8

    .line 1376
    .local v30, todayStartTime:J
    const-wide/32 v8, 0xf731400

    sub-long v3, v30, v8

    .line 1378
    .local v3, base:J
    new-instance v27, Ljava/util/Random;

    invoke-direct/range {v27 .. v27}, Ljava/util/Random;-><init>()V

    .line 1381
    .local v27, random:Ljava/util/Random;
    const/16 v2, 0x12c

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v28, v2, 0x64

    .line 1382
    .local v28, recordNum:I
    const/16 v29, 0x0

    .line 1383
    .local v29, sp:Lcom/android/emailcommon/provider/SmartPush;
    const-string v2, "SmartPushService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insert "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "+ habit data---current time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v22

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    const/16 v26, 0x0

    .local v26, i:I
    :goto_0
    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_3

    .line 1388
    const v2, 0x493e0

    const v8, 0x493e0

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/2addr v2, v8

    int-to-long v8, v2

    add-long/2addr v3, v8

    .line 1389
    const/4 v2, 0x3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v7, v2, 0x1

    .line 1391
    .local v7, eventType:I
    const/4 v2, 0x2

    if-ne v7, v2, :cond_2

    .line 1393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    const v8, 0x30d40

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    add-int/lit16 v8, v8, 0x7d0

    int-to-long v8, v8

    invoke-static/range {v2 .. v9}, Lcom/android/emailcommon/provider/SmartPush;->addEvent(Landroid/content/Context;JJIJ)Lcom/android/emailcommon/provider/SmartPush;

    move-result-object v29

    .line 1397
    :goto_1
    if-eqz v29, :cond_0

    .line 1398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 1402
    :cond_0
    const/4 v2, 0x3

    if-ne v7, v2, :cond_1

    .line 1403
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    const/4 v13, 0x2

    const v2, 0x30d40

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit16 v2, v2, 0x7d0

    int-to-long v14, v2

    move-wide v9, v3

    move-wide v11, v5

    invoke-static/range {v8 .. v15}, Lcom/android/emailcommon/provider/SmartPush;->addEvent(Landroid/content/Context;JJIJ)Lcom/android/emailcommon/provider/SmartPush;

    move-result-object v29

    .line 1404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 1385
    :cond_1
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 1395
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    const-wide/16 v8, 0x1

    invoke-static/range {v2 .. v9}, Lcom/android/emailcommon/provider/SmartPush;->addEvent(Landroid/content/Context;JJIJ)Lcom/android/emailcommon/provider/SmartPush;

    move-result-object v29

    goto :goto_1

    .line 1407
    .end local v7           #eventType:I
    :cond_3
    return-void
.end method

.method private getSearchableMailbox()Lcom/android/emailcommon/provider/Mailbox;
    .locals 2

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 834
    const/4 v1, 0x0

    .line 839
    :goto_0
    return-object v1

    .line 836
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    .line 839
    .local v0, messageList:Lcom/android/email/activity/MessageListFragment;
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v1}, Lcom/android/email/MessageListContext;->isSearch()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getSearchedMailbox()Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getMailbox()Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    goto :goto_0
.end method

.method private onAccountSettings()Z
    .locals 3

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getActualAccountId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSettings;->actionSettings(Landroid/app/Activity;J)V

    .line 1118
    const/4 v0, 0x1

    return v0
.end method

.method private onCompose()Z
    .locals 3

    .prologue
    .line 1106
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isAccountSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1107
    const/4 v0, 0x0

    .line 1110
    :goto_0
    return v0

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getActualAccountId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->actionCompose(Landroid/content/Context;J)V

    .line 1110
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static shouldDoGlobalSearch(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)Z
    .locals 1
    .parameter "account"
    .parameter "mailbox"

    .prologue
    .line 851
    iget v0, p0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAccountSpecificWarning(J)V
    .locals 4
    .parameter "accountId"

    .prologue
    const-wide/16 v2, -0x1

    .line 1320
    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 1321
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 1322
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v1, v2, v0}, Lcom/android/email/Preferences;->shouldShowRequireManualSync(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1325
    new-instance v1, Lcom/android/email/RequireManualSyncDialog;

    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-direct {v1, v2, v0}, Lcom/android/email/RequireManualSyncDialog;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1328
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    :cond_0
    return-void
.end method

.method private updateMessageOrderManager()V
    .locals 4

    .prologue
    .line 1280
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageViewInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1294
    :goto_0
    return-void

    .line 1283
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->getListContext()Lcom/android/email/MessageListContext;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v0, v1}, Lcom/android/email/MessageListContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1286
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->stopMessageOrderManager()V

    .line 1287
    const-string v0, "UIControllerBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMessageOrderManager update mOrderManager with mlistContext:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    new-instance v0, Lcom/android/email/activity/MessageOrderManager;

    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    iget-object v3, p0, Lcom/android/email/activity/UIControllerBase;->mMessageOrderManagerCallback:Lcom/android/email/activity/UIControllerBase$MessageOrderManagerCallback;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/email/activity/MessageOrderManager;-><init>(Landroid/content/Context;Lcom/android/email/MessageListContext;Lcom/android/email/activity/MessageOrderManager$Callback;)V

    iput-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    .line 1292
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/email/activity/MessageOrderManager;->moveTo(J)V

    .line 1293
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->updateNavigationArrows()V

    goto :goto_0
.end method


# virtual methods
.method protected addFragmentToRemovalList(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 539
    if-eqz p1, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mRemovedFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    :cond_0
    return-void
.end method

.method protected abstract canStopRefreshIcon(Z)Z
.end method

.method protected commitFragmentTransaction(Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "ft"

    .prologue
    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " commitFragmentTransaction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->fragment(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 613
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 614
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 616
    :cond_0
    return-void
.end method

.method protected abstract createActionBarController(Landroid/app/Activity;)Lcom/android/email/activity/ActionBarController;
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIControllerBase dispatchKeyevent event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 793
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageViewInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessageViewFragmentBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 796
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final doAutoAdvance()V
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/Preferences;->getAutoAdvanceDirection()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1217
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageViewInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1223
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/UIControllerBase;->onBackPressed(Z)Z

    .line 1225
    :cond_1
    :goto_0
    return-void

    .line 1207
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->moveToNewer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1212
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->moveToOlder()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getActualAccountId()J
    .locals 2

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isActualAccountSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getUIAccountId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public abstract getLayoutId()I
.end method

.method protected final getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    return-object v0
.end method

.method protected getMailboxListMailboxId()J
    .locals 2

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMailboxListInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMailboxListFragment()Lcom/android/email/activity/MailboxListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MailboxListFragment;->getSelectedMailboxId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected abstract getMailboxSettingsMailboxId()J
.end method

.method protected getMessageId()J
    .locals 2

    .prologue
    .line 1126
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageViewInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getMessageId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected final getMessageListFragment()Lcom/android/email/activity/MessageListFragment;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    return-object v0
.end method

.method protected getMessageListMailboxId()J
    .locals 2

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected final getMessageOrderManager()Lcom/android/email/activity/MessageOrderManager;
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    return-object v0
.end method

.method protected final getMessageViewFragment()Lcom/android/email/activity/MessageViewFragment;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    return-object v0
.end method

.method protected getSearchHint()Ljava/lang/String;
    .locals 6

    .prologue
    .line 859
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListReady()Z

    move-result v3

    if-nez v3, :cond_0

    .line 860
    const-string v3, ""

    .line 875
    :goto_0
    return-object v3

    .line 862
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/activity/MessageListFragment;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 863
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerBase;->getSearchableMailbox()Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 865
    .local v1, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v1, :cond_1

    .line 866
    const-string v3, ""

    goto :goto_0

    .line 869
    :cond_1
    invoke-static {v0, v1}, Lcom/android/email/activity/UIControllerBase;->shouldDoGlobalSearch(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 870
    iget-object v3, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    const v4, 0x7f080200

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 874
    :cond_2
    iget-object v3, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v3}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/email/FolderProperties;->getDisplayName(Lcom/android/emailcommon/provider/Mailbox;)Ljava/lang/String;

    move-result-object v2

    .line 875
    .local v2, mailboxName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    const v4, 0x7f080201

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected getSearchHint(JJ)Ljava/lang/String;
    .locals 8
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    const-wide/16 v6, 0x0

    .line 881
    const-string v3, "UIControllerBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSearchHint("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    cmp-long v3, p3, v6

    if-ltz v3, :cond_0

    cmp-long v3, p1, v6

    if-gez v3, :cond_1

    .line 884
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current mailbox or account is abnornal, get search hit failed:  mailboxId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " accountId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;)V

    .line 886
    const-string v3, ""

    .line 901
    :goto_0
    return-object v3

    .line 888
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v3, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 889
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    iget-object v3, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v3, p3, p4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v1

    .line 891
    .local v1, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    .line 892
    :cond_2
    const-string v3, ""

    goto :goto_0

    .line 895
    :cond_3
    invoke-static {v0, v1}, Lcom/android/email/activity/UIControllerBase;->shouldDoGlobalSearch(Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 896
    iget-object v3, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    const v4, 0x7f080200

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 900
    :cond_4
    iget-object v3, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v3}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/email/FolderProperties;->getDisplayName(Lcom/android/emailcommon/provider/Mailbox;)Ljava/lang/String;

    move-result-object v2

    .line 901
    .local v2, mailboxName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    const v4, 0x7f080201

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public abstract getUIAccountId()J
.end method

.method protected installMailboxListFragment(Lcom/android/email/activity/MailboxListFragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/email/activity/UIControllerBase;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    .line 413
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/MailboxListFragment;->setCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V

    .line 419
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->refreshActionBar()V

    .line 420
    return-void
.end method

.method protected installMessageListFragment(Lcom/android/email/activity/MessageListFragment;)V
    .locals 3
    .parameter "fragment"

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/email/activity/UIControllerBase;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    .line 425
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1, p0}, Lcom/android/email/activity/MessageListFragment;->setCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V

    .line 428
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->getListContext()Lcom/android/email/MessageListContext;

    move-result-object v0

    .line 429
    .local v0, listContext:Lcom/android/email/MessageListContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->isRemoteSearch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mRemoveSearchCallback:Lcom/android/email/activity/MessageListFragment$RemoteSearchCallback;

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageListFragment;->setRemoteSearchCallBack(Lcom/android/email/activity/MessageListFragment$RemoteSearchCallback;)V

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v1}, Lcom/android/email/activity/ActionBarController;->isLocalSearchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->enterLocalSearchMode()V

    .line 441
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->refreshActionBar()V

    .line 442
    return-void
.end method

.method protected installMessageViewFragment(Lcom/android/email/activity/MessageViewFragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/email/activity/UIControllerBase;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    .line 447
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, p0}, Lcom/android/email/activity/MessageViewFragment;->setCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V

    .line 449
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerBase;->updateMessageOrderManager()V

    .line 450
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->refreshActionBar()V

    .line 451
    return-void
.end method

.method public final isAccountSelected()Z
    .locals 4

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getUIAccountId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isActualAccountSelected()Z
    .locals 4

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isAccountSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getUIAccountId()J

    move-result-wide v0

    const-wide/high16 v2, 0x1000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isMailboxListInstalled()Z
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isMessageListInstalled()Z
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isMessageListReady()Z
    .locals 1

    .prologue
    .line 824
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->hasDataLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isMessageViewInstalled()Z
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isRefreshEnabled()Z
.end method

.method protected abstract isRefreshInProgress()Z
.end method

.method protected final moveToNewer()Z
    .locals 2

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->moveToNewer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->stopLoading()V

    .line 1259
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->showWaitingDialogIfNeeded()V

    .line 1260
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/UIControllerBase;->navigateToMessage(J)V

    .line 1261
    const/4 v0, 0x1

    .line 1263
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final moveToOlder()Z
    .locals 2

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->isMessageLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->moveToOlder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->stopLoading()V

    .line 1242
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->showWaitingDialogIfNeeded()V

    .line 1243
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->getCurrentMessageId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/UIControllerBase;->navigateToMessage(J)V

    .line 1244
    const/4 v0, 0x1

    .line 1246
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract navigateToMessage(J)V
.end method

.method public onActivityCreated()V
    .locals 2

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onActivityCreated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mRefreshListener:Lcom/android/email/activity/UIControllerBase$RefreshListener;

    invoke-virtual {v0, v1}, Lcom/android/email/RefreshManager;->registerListener(Lcom/android/email/RefreshManager$Listener;)V

    .line 260
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v0}, Lcom/android/email/activity/ActionBarController;->onActivityCreated()V

    .line 261
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {p0, v0}, Lcom/android/email/activity/NfcHandler;->register(Lcom/android/email/activity/UIControllerBase;Landroid/app/Activity;)Lcom/android/email/activity/NfcHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mNfcHandler:Lcom/android/email/activity/NfcHandler;

    .line 262
    return-void
.end method

.method public onActivityDestroy()V
    .locals 2

    .prologue
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onActivityDestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v0}, Lcom/android/email/activity/ActionBarController;->onActivityDestroy()V

    .line 322
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mRefreshListener:Lcom/android/email/activity/UIControllerBase$RefreshListener;

    invoke-virtual {v0, v1}, Lcom/android/email/RefreshManager;->unregisterListener(Lcom/android/email/RefreshManager$Listener;)V

    .line 323
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 324
    return-void
.end method

.method public onActivityPause()V
    .locals 2

    .prologue
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onActivityPause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public onActivityResume()V
    .locals 4

    .prologue
    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onActivityResume"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->refreshActionBar()V

    .line 284
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mNfcHandler:Lcom/android/email/activity/NfcHandler;

    if-eqz v2, :cond_0

    .line 285
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mNfcHandler:Lcom/android/email/activity/NfcHandler;

    invoke-virtual {v2}, Lcom/android/email/activity/NfcHandler;->onAccountChanged()V

    .line 287
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getUIAccountId()J

    move-result-wide v0

    .line 288
    .local v0, accountId:J
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/email/Preferences;->setLastUsedAccountId(J)V

    .line 289
    invoke-direct {p0, v0, v1}, Lcom/android/email/activity/UIControllerBase;->showAccountSpecificWarning(J)V

    .line 290
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 291
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v2}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/email/NotificationController;->cancelSendFailedNotification(J)V

    .line 293
    :cond_1
    return-void
.end method

.method public onActivityStart()V
    .locals 2

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onActivityStart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageViewInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerBase;->updateMessageOrderManager()V

    .line 274
    :cond_0
    return-void
.end method

.method public onActivityStop()V
    .locals 2

    .prologue
    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onActivityStop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->stopMessageOrderManager()V

    .line 312
    return-void
.end method

.method public onActivityViewReady()V
    .locals 2

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onActivityViewReady"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public abstract onBackPressed(Z)Z
.end method

.method public onBeforeMessageGone()V
    .locals 0

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->doAutoAdvance()V

    .line 383
    return-void
.end method

.method public onCheckIsEasRemoteMessage()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/android/email/activity/UIControllerBase;->mIsEasRemoteMode:Z

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z
    .locals 1
    .parameter "inflater"
    .parameter "menu"

    .prologue
    .line 983
    const v0, 0x7f0e0001

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 984
    const/4 v0, 0x1

    return v0
.end method

.method public onGetQueryTerm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1337
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v1}, Lcom/android/email/activity/ActionBarController;->isLocalSearchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1338
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v1}, Lcom/android/email/activity/ActionBarController;->getQueryTermIfSearchBody()Ljava/lang/String;

    move-result-object v1

    .line 1347
    :goto_0
    return-object v1

    .line 1339
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v1}, Lcom/android/email/activity/ActionBarController;->isRemoteSearchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1340
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v1}, Lcom/android/email/MessageListContext;->getSearchParams()Lcom/android/emailcommon/service/SearchParams;

    move-result-object v1

    iget-object v0, v1, Lcom/android/emailcommon/service/SearchParams;->mField:Ljava/lang/String;

    .line 1341
    .local v0, field:Ljava/lang/String;
    const-string v1, "BODY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1343
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v1}, Lcom/android/email/MessageListContext;->getSearchParams()Lcom/android/emailcommon/service/SearchParams;

    move-result-object v1

    iget-object v1, v1, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    goto :goto_0

    .line 1347
    .end local v0           #field:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final onInstallFragment(Landroid/app/Fragment;)V
    .locals 2
    .parameter "fragment"

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onInstallFragment  fragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 399
    instance-of v0, p1, Lcom/android/email/activity/MailboxListFragment;

    if-eqz v0, :cond_0

    .line 400
    check-cast p1, Lcom/android/email/activity/MailboxListFragment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UIControllerBase;->installMailboxListFragment(Lcom/android/email/activity/MailboxListFragment;)V

    .line 408
    :goto_0
    return-void

    .line 401
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/android/email/activity/MessageListFragment;

    if-eqz v0, :cond_1

    .line 402
    check-cast p1, Lcom/android/email/activity/MessageListFragment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UIControllerBase;->installMessageListFragment(Lcom/android/email/activity/MessageListFragment;)V

    goto :goto_0

    .line 403
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/android/email/activity/MessageViewFragment;

    if-eqz v0, :cond_2

    .line 404
    check-cast p1, Lcom/android/email/activity/MessageViewFragment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UIControllerBase;->installMessageViewFragment(Lcom/android/email/activity/MessageViewFragment;)V

    goto :goto_0

    .line 406
    .restart local p1
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tried to install unknown fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onLocalSearchSubmit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "queryTerm"
    .parameter "queryField"

    .prologue
    .line 948
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    .line 949
    .local v0, listFragment:Lcom/android/email/activity/MessageListFragment;
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mLocalSearchCallback:Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/email/activity/MessageListFragment;->startLocalSearch(Ljava/lang/String;Ljava/lang/String;Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;)V

    .line 950
    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->enterLocalSearchMode()V

    .line 952
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 953
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/email/activity/UIControllerBase;->getSearchHint(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/activity/ActionBarController;->setSearchHint(Ljava/lang/String;)V

    .line 956
    :cond_0
    return-void
.end method

.method public onMailboxNotFound(Z)V
    .locals 4
    .parameter "isFirstLoad"

    .prologue
    .line 1169
    if-eqz p1, :cond_0

    .line 1172
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    const v3, 0x7f0801d6

    invoke-static {v2, v3}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 1175
    :cond_0
    sget-boolean v2, Lcom/android/emailcommon/Configuration;->mIsRunTestcase:Z

    if-nez v2, :cond_3

    .line 1176
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getUIAccountId()J

    move-result-wide v0

    .line 1177
    .local v0, accountId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 1182
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v2}, Lcom/android/email/MessageListContext;->isRemoteSearch()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/Account;->isValidId(Landroid/content/Context;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1183
    const-string v2, "UIControllerBase"

    const-string v3, "onMailboxNotFound, the mailbox deleted in remote search mode"

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    .end local v0           #accountId:J
    :goto_0
    return-void

    .line 1187
    .restart local v0       #accountId:J
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    iget-object v3, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v3, v0, v1}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1196
    .end local v0           #accountId:J
    :goto_1
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1190
    .restart local v0       #accountId:J
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v2}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    goto :goto_1

    .line 1193
    .end local v0           #accountId:J
    :cond_3
    const-string v2, "UIControllerBase"

    const-string v3, "MailboxNotFound but not start Welcome since running testcase"

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onMessageNotExists()V
    .locals 0

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->doAutoAdvance()V

    .line 365
    return-void
.end method

.method public onMessageSetUnread()V
    .locals 0

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->doAutoAdvance()V

    .line 359
    return-void
.end method

.method public onMessagesLoadFinish(Z)V
    .locals 0
    .parameter "isEasRemoteMode"

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/email/activity/UIControllerBase;->mIsEasRemoteMode:Z

    .line 137
    return-void
.end method

.method public onNeedUpdateAtionBarTitle()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v0}, Lcom/android/email/activity/ActionBarController;->refresh()V

    .line 371
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1066
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    move v2, v3

    .line 1099
    :cond_0
    :goto_0
    return v2

    .line 1070
    :sswitch_0
    invoke-virtual {p0, v3}, Lcom/android/email/activity/UIControllerBase;->onBackPressed(Z)Z

    move-result v2

    goto :goto_0

    .line 1072
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerBase;->onCompose()Z

    move-result v2

    goto :goto_0

    .line 1074
    :sswitch_2
    iget-object v3, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->hasConnectivity(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1075
    invoke-static {}, Lcom/android/email/activity/ConnectionAlertDialog;->newInstance()Lcom/android/email/activity/ConnectionAlertDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "connectionalertdialog"

    invoke-virtual {v3, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1078
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->onRefresh()V

    goto :goto_0

    .line 1082
    :sswitch_3
    sput-boolean v3, Lcom/android/email/activity/EmailActivity;->sRecordOpening:Z

    .line 1083
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerBase;->onAccountSettings()Z

    move-result v2

    goto :goto_0

    .line 1085
    :sswitch_4
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/email/activity/UIControllerBase;->onSearchRequested(Ljava/lang/String;)V

    goto :goto_0

    .line 1088
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMailboxSettingsMailboxId()J

    move-result-wide v0

    .line 1089
    .local v0, mailboxId:J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 1090
    sput-boolean v3, Lcom/android/email/activity/EmailActivity;->sRecordOpening:Z

    .line 1091
    iget-object v3, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v3, v0, v1}, Lcom/android/email/activity/setup/MailboxSettings;->start(Landroid/app/Activity;J)V

    goto :goto_0

    .line 1096
    .end local v0           #mailboxId:J
    :sswitch_6
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerBase;->generateHabitData()V

    goto :goto_0

    .line 1066
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0f0124 -> :sswitch_1
        0x7f0f0125 -> :sswitch_4
        0x7f0f0127 -> :sswitch_2
        0x7f0f012a -> :sswitch_5
        0x7f0f012b -> :sswitch_3
        0x7f0f0136 -> :sswitch_6
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/MenuInflater;Landroid/view/Menu;)Z
    .locals 17
    .parameter "inflater"
    .parameter "menu"

    .prologue
    .line 992
    const v15, 0x7f0f0127

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 993
    .local v6, item:Landroid/view/MenuItem;
    if-eqz v6, :cond_0

    .line 994
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/UIControllerBase;->isRefreshEnabled()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 995
    const/4 v15, 0x1

    invoke-interface {v6, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 996
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/UIControllerBase;->mRefreshListener:Lcom/android/email/activity/UIControllerBase$RefreshListener;

    invoke-virtual {v15, v6}, Lcom/android/email/activity/UIControllerBase$RefreshListener;->setRefreshIcon(Landroid/view/MenuItem;)V

    .line 1004
    :cond_0
    :goto_0
    const/4 v8, 0x0

    .line 1005
    .local v8, mailboxHasServerCounterpart:Z
    const/4 v5, 0x0

    .line 1007
    .local v5, isEas:Z
    const/4 v1, 0x0

    .line 1008
    .local v1, account:Lcom/android/emailcommon/provider/Account;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListReady()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 1009
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/UIControllerBase;->getActualAccountId()J

    move-result-wide v2

    .line 1010
    .local v2, accountId:J
    const-wide/16 v15, 0x0

    cmp-long v15, v2, v15

    if-lez v15, :cond_1

    .line 1011
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v15, v2, v3}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 1012
    if-eqz v1, :cond_1

    .line 1013
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v1, v15}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 1014
    .local v9, protocol:Ljava/lang/String;
    const-string v15, "eas"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1015
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/email/activity/MessageListFragment;->getMailbox()Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v7

    .line 1016
    .local v7, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v7, :cond_7

    invoke-virtual {v7, v9}, Lcom/android/emailcommon/provider/Mailbox;->loadsFromServer(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v8, 0x1

    .line 1023
    .end local v2           #accountId:J
    .end local v7           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v9           #protocol:Ljava/lang/String;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v15}, Lcom/android/email/activity/ActionBarController;->isLocalSearchMode()Z

    move-result v15

    if-nez v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v15}, Lcom/android/email/activity/ActionBarController;->isRemoteSearchMode()Z

    move-result v15

    if-nez v15, :cond_8

    const/4 v12, 0x1

    .line 1027
    .local v12, showSearchIcon:Z
    :goto_2
    const v15, 0x7f0f0125

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 1028
    .local v10, search:Landroid/view/MenuItem;
    if-eqz v10, :cond_2

    .line 1029
    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1031
    :cond_2
    const v15, 0x7f0f012a

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 1032
    .local v11, settings:Landroid/view/MenuItem;
    if-eqz v11, :cond_4

    .line 1034
    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    .line 1035
    new-instance v14, Landroid/accounts/Account;

    iget-object v15, v1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v16, "com.android.exchange"

    invoke-direct/range {v14 .. v16}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    .local v14, systemAccount:Landroid/accounts/Account;
    const-string v15, "com.android.email.provider"

    invoke-static {v14, v15}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v13

    .line 1039
    .local v13, syncEmailEnabled:Z
    invoke-interface {v11, v13}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1042
    .end local v13           #syncEmailEnabled:Z
    .end local v14           #systemAccount:Landroid/accounts/Account;
    :cond_3
    if-eqz v5, :cond_9

    if-eqz v8, :cond_9

    const/4 v15, 0x1

    :goto_3
    invoke-interface {v11, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1046
    :cond_4
    const v15, 0x7f0f0136

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1047
    .local v4, habit:Landroid/view/MenuItem;
    if-eqz v4, :cond_5

    .line 1049
    const/4 v15, 0x0

    invoke-interface {v4, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1056
    :cond_5
    const/4 v15, 0x1

    return v15

    .line 998
    .end local v1           #account:Lcom/android/emailcommon/provider/Account;
    .end local v4           #habit:Landroid/view/MenuItem;
    .end local v5           #isEas:Z
    .end local v8           #mailboxHasServerCounterpart:Z
    .end local v10           #search:Landroid/view/MenuItem;
    .end local v11           #settings:Landroid/view/MenuItem;
    .end local v12           #showSearchIcon:Z
    :cond_6
    const/4 v15, 0x0

    invoke-interface {v6, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 999
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/UIControllerBase;->mRefreshListener:Lcom/android/email/activity/UIControllerBase$RefreshListener;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/email/activity/UIControllerBase$RefreshListener;->setRefreshIcon(Landroid/view/MenuItem;)V

    goto/16 :goto_0

    .line 1016
    .restart local v1       #account:Lcom/android/emailcommon/provider/Account;
    .restart local v2       #accountId:J
    .restart local v5       #isEas:Z
    .restart local v7       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v8       #mailboxHasServerCounterpart:Z
    .restart local v9       #protocol:Ljava/lang/String;
    :cond_7
    const/4 v8, 0x0

    goto :goto_1

    .line 1023
    .end local v2           #accountId:J
    .end local v7           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v9           #protocol:Ljava/lang/String;
    :cond_8
    const/4 v12, 0x0

    goto :goto_2

    .line 1042
    .restart local v10       #search:Landroid/view/MenuItem;
    .restart local v11       #settings:Landroid/view/MenuItem;
    .restart local v12       #showSearchIcon:Z
    :cond_9
    const/4 v15, 0x0

    goto :goto_3
.end method

.method protected abstract onRefresh()V
.end method

.method public final onRemoveFragment(Landroid/app/Fragment;)V
    .locals 2
    .parameter "fragment"

    .prologue
    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onRemoveFragment  fragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mRemovedFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 461
    return-void
.end method

.method public onRespondedToInvite(I)V
    .locals 0
    .parameter "response"

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->doAutoAdvance()V

    .line 377
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " restoreInstanceState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ActionBarController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 349
    const-string v0, "UIControllerBase.listContext"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessageListContext;

    iput-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    .line 352
    const-string v0, "UIControllerBase.in_eas_remote_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/UIControllerBase;->mIsEasRemoteMode:Z

    .line 353
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onSaveInstanceState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ActionBarController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 335
    const-string v0, "UIControllerBase.listContext"

    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 337
    const-string v0, "UIControllerBase.in_eas_remote_mode"

    iget-boolean v1, p0, Lcom/android/email/activity/UIControllerBase;->mIsEasRemoteMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 338
    return-void
.end method

.method protected onSearchExit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 963
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v1}, Lcom/android/email/MessageListContext;->isRemoteSearch()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 964
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 977
    :cond_0
    :goto_0
    return-void

    .line 968
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 970
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    .line 972
    .local v0, listFragment:Lcom/android/email/activity/MessageListFragment;
    if-eqz v0, :cond_0

    .line 973
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mLocalSearchCallback:Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/email/activity/MessageListFragment;->startLocalSearch(Ljava/lang/String;Ljava/lang/String;Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;)V

    .line 974
    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->exitLocalSearchMode()V

    goto :goto_0
.end method

.method public onSearchRequested(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->isMessageListInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v0}, Lcom/android/email/activity/ActionBarController;->isLocalSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v0}, Lcom/android/email/activity/ActionBarController;->isRemoteSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getMessageListFragment()Lcom/android/email/activity/MessageListFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ActionBarController;->enterLocalSearchMode(Ljava/lang/String;)V

    .line 818
    :cond_0
    return-void
.end method

.method public onSearchStarted()V
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 802
    return-void
.end method

.method protected onSearchSubmit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "queryTerm"
    .parameter "queryField"

    .prologue
    .line 911
    iget-boolean v0, p0, Lcom/android/email/activity/UIControllerBase;->mIsRemoteSearching:Z

    if-eqz v0, :cond_1

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 916
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getUIAccountId()J

    move-result-wide v1

    .line 917
    .local v1, accountId:J
    invoke-static {v1, v2}, Lcom/android/emailcommon/provider/Account;->isNormalAccount(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    invoke-direct {p0}, Lcom/android/email/activity/UIControllerBase;->getSearchableMailbox()Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v7

    .line 922
    .local v7, searchableMailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v7, :cond_0

    .line 925
    iget-wide v3, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 927
    .local v3, mailboxId:J
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 928
    const-string v0, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Submitting search: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] in mailboxId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_2
    iget-object v8, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/EmailActivity;->createRemoteSearchIntent(Landroid/app/Activity;JJLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 939
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v0}, Lcom/android/email/activity/ActionBarController;->exitSearchMode()V

    goto :goto_0
.end method

.method public final onUninstallFragment(Landroid/app/Fragment;)V
    .locals 2
    .parameter "fragment"

    .prologue
    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onUninstallFragment  fragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    if-ne p1, v0, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->uninstallMailboxListFragment()V

    .line 480
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    if-ne p1, v0, :cond_1

    .line 474
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->uninstallMessageListFragment()V

    goto :goto_0

    .line 475
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    if-ne p1, v0, :cond_2

    .line 476
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->uninstallMessageViewFragment()V

    goto :goto_0

    .line 478
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tried to uninstall unknown fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final open(Lcom/android/email/MessageListContext;J)V
    .locals 3
    .parameter "listContext"
    .parameter "messageId"

    .prologue
    .line 750
    invoke-virtual {p0, p1}, Lcom/android/email/activity/UIControllerBase;->setListContext(Lcom/android/email/MessageListContext;)V

    .line 751
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/activity/UIControllerBase;->openInternal(Lcom/android/email/MessageListContext;J)V

    .line 753
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    invoke-virtual {p1}, Lcom/android/email/MessageListContext;->isRemoteSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    const-string v0, "UIControllerBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UIControllerBase "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enter remote search.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/UIControllerBase;->mIsRemoteSearching:Z

    .line 761
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mRefreshListener:Lcom/android/email/activity/UIControllerBase$RefreshListener;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase$RefreshListener;->updateRefreshIcon()V

    .line 762
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {p1}, Lcom/android/email/MessageListContext;->getSearchParams()Lcom/android/emailcommon/service/SearchParams;

    move-result-object v1

    iget-object v1, v1, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/ActionBarController;->enterRemoteSearchMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract openInternal(Lcom/android/email/MessageListContext;J)V
.end method

.method protected final openMailbox(JJ)V
    .locals 4
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 733
    const/4 v0, 0x0

    .line 734
    .local v0, listConext:Lcom/android/email/MessageListContext;
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v1}, Lcom/android/email/MessageListContext;->isLocalSearch()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v1}, Lcom/android/email/MessageListContext;->getSearchParams()Lcom/android/emailcommon/service/SearchParams;

    move-result-object v1

    invoke-static {p1, p2, p3, p4, v1}, Lcom/android/email/MessageListContext;->forSearch(JJLcom/android/emailcommon/service/SearchParams;)Lcom/android/email/MessageListContext;

    move-result-object v0

    .line 739
    :goto_0
    const-string v1, "UIControllerBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openMailbox ListContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/activity/UIControllerBase;->open(Lcom/android/email/MessageListContext;J)V

    .line 741
    return-void

    .line 737
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/android/email/MessageListContext;->forMailbox(JJ)Lcom/android/email/MessageListContext;

    move-result-object v0

    goto :goto_0
.end method

.method protected refreshActionBar()V
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v0}, Lcom/android/email/activity/ActionBarController;->refresh()V

    .line 1161
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1162
    return-void
.end method

.method protected final removeFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V
    .locals 4
    .parameter "ft"
    .parameter "fragment"

    .prologue
    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " removeFragment fragment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 511
    if-nez p2, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mRemovedFragments:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 517
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/email/activity/UIControllerBase;->addFragmentToRemovalList(Landroid/app/Fragment;)V

    goto :goto_0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swalling IllegalStateException due to known bug for  fragment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    const-string v1, "Email"

    invoke-static {p2}, Lcom/android/emailcommon/utility/Utility;->dumpFragment(Landroid/app/Fragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected removeMailboxListFragment(Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;
    .locals 1
    .parameter "ft"

    .prologue
    .line 548
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {p0, p1, v0}, Lcom/android/email/activity/UIControllerBase;->removeFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 549
    return-object p1
.end method

.method protected removeMessageListFragment(Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;
    .locals 1
    .parameter "ft"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {p0, p1, v0}, Lcom/android/email/activity/UIControllerBase;->removeFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 557
    return-object p1
.end method

.method protected removeMessageViewFragment(Landroid/app/FragmentTransaction;)Landroid/app/FragmentTransaction;
    .locals 1
    .parameter "ft"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {p0, p1, v0}, Lcom/android/email/activity/UIControllerBase;->removeFragment(Landroid/app/FragmentTransaction;Landroid/app/Fragment;)V

    .line 565
    return-object p1
.end method

.method protected setListContext(Lcom/android/email/MessageListContext;)V
    .locals 3
    .parameter "listContext"

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    :goto_0
    return-void

    .line 775
    :cond_0
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " setListContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iput-object p1, p0, Lcom/android/email/activity/UIControllerBase;->mListContext:Lcom/android/email/MessageListContext;

    goto :goto_0
.end method

.method protected final stopMessageOrderManager()V
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    if-eqz v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageOrderManager;->close()V

    .line 1302
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mOrderManager:Lcom/android/email/activity/MessageOrderManager;

    .line 1304
    :cond_0
    return-void
.end method

.method public final switchAccount(JZ)V
    .locals 8
    .parameter "accountId"
    .parameter "forceShowInbox"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x0

    .line 660
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/Account;->isSecurityHold(Landroid/content/Context;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 661
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v2, p1, p2}, Lcom/android/email/activity/ActivityHelper;->showSecurityHoldDialog(Landroid/app/Activity;J)V

    .line 662
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/UIControllerBase;->getUIAccountId()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    if-eqz p3, :cond_0

    .line 672
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v2, p1, p2}, Lcom/android/email/activity/EmailActivity;->setRecordAccount(J)V

    .line 673
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v2}, Lcom/android/emailcommon/utility/DataCollectUtils;->stopRecord(Landroid/content/Context;)V

    .line 674
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    const/4 v3, 0x1

    invoke-static {v2, p1, p2, v3}, Lcom/android/emailcommon/utility/DataCollectUtils;->startRecord(Landroid/content/Context;JZ)V

    .line 677
    const-wide/high16 v2, 0x1000

    cmp-long v2, p1, v2

    if-nez v2, :cond_5

    .line 678
    const-wide/16 v2, -0x2

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/email/activity/UIControllerBase;->openMailbox(JJ)V

    .line 692
    :goto_1
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mNfcHandler:Lcom/android/email/activity/NfcHandler;

    if-eqz v2, :cond_3

    .line 693
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mNfcHandler:Lcom/android/email/activity/NfcHandler;

    invoke-virtual {v2}, Lcom/android/email/activity/NfcHandler;->onAccountChanged()V

    .line 698
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v2, p1, p2, v5}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    .line 700
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v2}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/email/Preferences;->setLastUsedAccountId(J)V

    .line 702
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/UIControllerBase;->showAccountSpecificWarning(J)V

    goto :goto_0

    .line 680
    :cond_5
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v2, p1, p2, v5}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 681
    .local v0, inboxId:J
    cmp-long v2, v0, v6

    if-nez v2, :cond_6

    .line 684
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t have Inbox.  Redirecting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to Welcome..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-static {v2, p1, p2}, Lcom/android/email/activity/Welcome;->actionOpenAccountInbox(Landroid/app/Activity;J)V

    .line 687
    iget-object v2, p0, Lcom/android/email/activity/UIControllerBase;->mActivity:Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 689
    :cond_6
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/email/activity/UIControllerBase;->openMailbox(JJ)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1332
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected uninstallMailboxListFragment()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 484
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxListFragment;->setCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V

    .line 485
    iput-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mMailboxListFragment:Lcom/android/email/activity/MailboxListFragment;

    .line 486
    return-void
.end method

.method protected uninstallMessageListFragment()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 490
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListFragment;->setCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V

    .line 491
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListFragment;->setRemoteSearchCallBack(Lcom/android/email/activity/MessageListFragment$RemoteSearchCallback;)V

    .line 492
    iput-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mMessageListFragment:Lcom/android/email/activity/MessageListFragment;

    .line 493
    return-void
.end method

.method protected uninstallMessageViewFragment()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 497
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageViewFragment;->setCallback(Lcom/android/email/activity/MessageViewFragment$Callback;)V

    .line 498
    iput-object v1, p0, Lcom/android/email/activity/UIControllerBase;->mMessageViewFragment:Lcom/android/email/activity/MessageViewFragment;

    .line 499
    return-void
.end method

.method protected abstract updateNavigationArrows()V
.end method

.method public updateRefreshIcon()V
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase;->mRefreshListener:Lcom/android/email/activity/UIControllerBase$RefreshListener;

    invoke-virtual {v0}, Lcom/android/email/activity/UIControllerBase$RefreshListener;->updateRefreshIcon()V

    .line 1355
    return-void
.end method
