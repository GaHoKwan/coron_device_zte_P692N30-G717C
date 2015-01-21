.class public Lcom/android/email/activity/MessageListFragment;
.super Landroid/app/ListFragment;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;
.implements Lcom/android/email/activity/MessagesAdapter$Callback;
.implements Lcom/android/email/activity/MoveMessageToDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageListFragment$RemoteSearchCallback;,
        Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;,
        Lcom/android/email/activity/MessageListFragment$CheckMessageCountTask;,
        Lcom/android/email/activity/MessageListFragment$RefreshListener;,
        Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;,
        Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;,
        Lcom/android/email/activity/MessageListFragment$MessageOpenTask;,
        Lcom/android/email/activity/MessageListFragment$ShadowBuilder;,
        Lcom/android/email/activity/MessageListFragment$EmptyCallback;,
        Lcom/android/email/activity/MessageListFragment$Callback;
    }
.end annotation


# static fields
.field private static final ARG_LIST_CONTEXT:Ljava/lang/String; = "listContext"

.field private static final BUNDLE_KEY_SELECTED_MESSAGE_ID:Ljava/lang/String; = "messageListFragment.state.listState.selected_message_id"

.field private static final BUNDLE_LIST_STATE:Ljava/lang/String; = "MessageListFragment.state.listState"

.field private static final LIST_FOOTER_MODE_LOCAL_SEARCH:I = 0x2

.field private static final LIST_FOOTER_MODE_MORE:I = 0x1

.field private static final LIST_FOOTER_MODE_NONE:I = 0x0

.field private static final LOADER_ID_MESSAGES_LOADER:I = 0x1

.field private static final SEARCH_WARNING_DELAY_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "MessageListFragment"


# instance fields
.field private final LOADER_CALLBACKS:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

.field private mClearSendNotifer:Z

.field private mController:Lcom/android/email/Controller;

.field private mCountTotalAccounts:I

.field private mDisableCab:Z

.field private mEmptyView:Landroid/view/View;

.field private mHasRestartLoader:Z

.field private mIsEasAccount:Z

.field private mIsFirstLoad:Z

.field private mIsPerformanceLogged:Z

.field private mIsRefreshable:Z

.field private mIsViewCreated:Z

.field private mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

.field private mListAdapter:Lcom/android/email/activity/MessagesAdapter;

.field private mListContext:Lcom/android/email/MessageListContext;

.field private mListFooterMode:I

.field private mListFooterProgress:Landroid/view/View;

.field private mListFooterText:Landroid/widget/TextView;

.field private mListFooterView:Landroid/view/View;

.field private mListPanel:Landroid/view/View;

.field private mLocalSearchCallback:Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;

.field private mLocalSearchListContext:Lcom/android/email/MessageListContext;

.field private mMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field private mPendingLocalSearch:Z

.field private mPendingQueryField:Ljava/lang/String;

.field private mPendingQueryTerm:Ljava/lang/String;

.field private final mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

.field private mRefreshManager:Lcom/android/email/RefreshManager;

.field private mRemoteSearchCallback:Lcom/android/email/activity/MessageListFragment$RemoteSearchCallback;

.field private mResumed:Z

.field private mSavedListState:Landroid/os/Parcelable;

.field private mSearchHeader:Landroid/view/ViewGroup;

.field private mSearchHeaderCount:Landroid/widget/TextView;

.field private mSearchHeaderText:Landroid/widget/TextView;

.field private mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;

.field private mSelectedMessageId:J

.field private mSelectionMode:Landroid/view/ActionMode;

.field private mShowMoveCommand:Z

.field private mShowSendCommand:Z

.field private final mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

.field private mWaitLoading:Z

.field private mWarningContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 117
    new-instance v0, Lcom/android/email/activity/MessageListFragment$RefreshListener;

    invoke-direct {v0, p0, v3}, Lcom/android/email/activity/MessageListFragment$RefreshListener;-><init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

    .line 121
    sget-object v0, Lcom/android/email/activity/MessageListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageListFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    .line 143
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    .line 177
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 180
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mWaitLoading:Z

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsPerformanceLogged:Z

    .line 186
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mLocalSearchListContext:Lcom/android/email/MessageListContext;

    .line 187
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mLocalSearchCallback:Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;

    .line 188
    iput-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mRemoteSearchCallback:Lcom/android/email/activity/MessageListFragment$RemoteSearchCallback;

    .line 189
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mPendingLocalSearch:Z

    .line 195
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mHasRestartLoader:Z

    .line 199
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mClearSendNotifer:Z

    .line 1598
    new-instance v0, Lcom/android/email/activity/MessageListFragment$4;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListFragment$4;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->LOADER_CALLBACKS:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 2215
    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onSearchLoadTimeout()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/email/activity/MessageListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/email/activity/MessageListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mCountTotalAccounts:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/email/activity/MessageListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/android/email/activity/MessageListFragment;->mCountTotalAccounts:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MessageListFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment;->adjustMessageNotification(Z)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/email/activity/MessageListFragment;Lcom/android/emailcommon/provider/Mailbox;)Lcom/android/emailcommon/provider/Mailbox;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateMailboxSpecificActions()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateSendMenu()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageListFragment;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment;->updateSearchHeader(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->autoRefreshStaleMailbox()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateFooterView()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageListFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment;->highlightSelectedMessage(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MessageListFragment;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mWarningContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/email/activity/MessageListFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListPanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mWaitLoading:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/email/activity/MessageListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mWaitLoading:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/email/activity/MessageListFragment;)Landroid/os/Parcelable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/email/activity/MessageListFragment;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Landroid/os/Parcelable;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsPerformanceLogged:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/email/activity/MessageListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mIsPerformanceLogged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mPendingLocalSearch:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/email/activity/MessageListFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mPendingQueryTerm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageListFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mPendingQueryField:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mLocalSearchCallback:Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/RefreshManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/email/activity/MessageListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/email/activity/MessageListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->getSelectedCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mShowMoveCommand:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageListFragment;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment;->callbackTypeForMailboxType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/email/activity/MessageListFragment;Ljava/util/Set;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment;->toggleRead(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/email/activity/MessageListFragment;Ljava/util/Set;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment;->toggleFavorite(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/email/activity/MessageListFragment;Ljava/util/Set;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment;->showConfirmIfNeeded(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/email/activity/MessageListFragment;Ljava/util/Set;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment;->showMoveMessagesDialog(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/email/activity/MessageListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateListFooter()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/MessageListContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mLocalSearchListContext:Lcom/android/email/MessageListContext;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/MessageListContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsFirstLoad:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/email/activity/MessageListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mIsFirstLoad:Z

    return p1
.end method

.method private adjustMessageNotification(Z)V
    .locals 9
    .parameter "updateLastSeenKey"

    .prologue
    const-wide/16 v7, 0x0

    .line 1541
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v0

    .line 1542
    .local v0, accountId:J
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v2

    .line 1544
    .local v2, mailboxId:J
    const-wide/16 v5, -0x2

    cmp-long v5, v2, v5

    if-eqz v5, :cond_0

    cmp-long v5, v2, v7

    if-gtz v5, :cond_0

    const-wide/16 v5, -0x7

    cmp-long v5, v2, v5

    if-nez v5, :cond_2

    .line 1546
    :cond_0
    if-eqz p1, :cond_1

    .line 1547
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v0, v1}, Lcom/android/emailcommon/utility/Utility;->updateLastSeenMessageKey(Landroid/content/Context;J)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1549
    :cond_1
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v4

    .line 1550
    .local v4, notifier:Lcom/android/email/NotificationController;
    iget-boolean v5, p0, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    invoke-virtual {v4, v5, v0, v1}, Lcom/android/email/NotificationController;->suspendMessageNotification(ZJ)V

    .line 1554
    cmp-long v5, v2, v7

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v2, v3}, Lcom/android/emailcommon/provider/Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    iget-boolean v5, p0, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/email/activity/MessageListFragment;->mClearSendNotifer:Z

    if-eqz v5, :cond_2

    .line 1556
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/email/activity/MessageListFragment;->mClearSendNotifer:Z

    .line 1557
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/mediatek/email/extension/SendNotificationProxy;->getInstance(Landroid/content/Context;)Lcom/mediatek/email/extension/SendNotificationProxy;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lcom/mediatek/email/extension/SendNotificationProxy;->suspendSendFailedNotification(J)V

    .line 1561
    .end local v4           #notifier:Lcom/android/email/NotificationController;
    :cond_2
    return-void
.end method

.method private autoRefreshStaleMailbox()V
    .locals 4

    .prologue
    .line 1260
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z

    if-nez v1, :cond_1

    .line 1282
    :cond_0
    :goto_0
    return-void

    .line 1264
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/email/RefreshManager;->isMailboxStale(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1267
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 1273
    :cond_2
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mIsFirstLoad:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v1, :cond_3

    .line 1274
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Lcom/android/emailcommon/provider/Account;->isEasAccount(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "com.android.exchange"

    :goto_1
    invoke-direct {v0, v2, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    .local v0, acct:Landroid/accounts/Account;
    const-string v1, "com.android.email.provider"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1281
    .end local v0           #acct:Landroid/accounts/Account;
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageListFragment;->onRefresh(Z)V

    goto :goto_0

    .line 1274
    :cond_4
    const-string v1, "com.android.email"

    goto :goto_1
.end method

.method private callbackTypeForMailboxType(I)I
    .locals 1
    .parameter "mailboxType"

    .prologue
    .line 934
    packed-switch p1, :pswitch_data_0

    .line 940
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 936
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 938
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 934
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static clearDeletedSet(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, messageIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    sget-object v1, Lcom/android/email/activity/MessagesAdapter;->sDeletedSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 306
    :try_start_0
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sDeletedSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 307
    sget-object v0, Lcom/android/email/activity/MessagesAdapter;->sDeletedSet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/AbstractSet;->removeAll(Ljava/util/Collection;)Z

    .line 309
    :cond_0
    monitor-exit v1

    .line 310
    return-void

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private deleteMessages(Ljava/util/Set;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1106
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1107
    .local v0, messageIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1108
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1111
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    invoke-virtual {v1, v0}, Lcom/android/email/Controller;->deleteMessages(Ljava/util/Set;)V

    .line 1112
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1, v0}, Lcom/android/email/activity/MessagesAdapter;->updateDeletedMessageList(Ljava/util/Set;)V

    .line 1114
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0008

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1116
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 1117
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    .line 1118
    return-void
.end method

.method private determineFooterMode()I
    .locals 7

    .prologue
    .line 1336
    const/4 v2, 0x0

    .line 1337
    .local v2, result:I
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v4, v4, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v4, v4, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    :cond_0
    move v4, v2

    .line 1363
    :goto_0
    return v4

    .line 1342
    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mLocalSearchListContext:Lcom/android/email/MessageListContext;

    if-eqz v4, :cond_2

    .line 1343
    const/4 v4, 0x2

    goto :goto_0

    .line 1345
    :cond_2
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v4, v4, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_6

    .line 1347
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v4}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1348
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v4, v2

    .line 1350
    goto :goto_0

    :cond_4
    move-object v4, v0

    .line 1352
    check-cast v4, Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;

    invoke-virtual {v4}, Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;->getResultsCount()I

    move-result v3

    .line 1353
    .local v3, total:I
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1355
    .local v1, loaded:I
    if-ge v1, v3, :cond_5

    .line 1356
    const/4 v2, 0x1

    .line 1362
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #loaded:I
    .end local v3           #total:I
    :cond_5
    :goto_1
    const-string v4, "MessageListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "determineFooterMode result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    .line 1363
    goto :goto_0

    .line 1358
    :cond_6
    iget-boolean v4, p0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-nez v4, :cond_5

    .line 1360
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private finishSelectionMode()V
    .locals 2

    .prologue
    .line 1862
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1863
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClosedByUser:Z

    .line 1864
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1866
    :cond_0
    return-void
.end method

.method private getSelectedCount()I
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 840
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 842
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 845
    :cond_0
    return-void
.end method

.method private highlightSelectedMessage(Z)V
    .locals 7
    .parameter "ensureSelectionVisible"

    .prologue
    .line 2105
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->isViewCreated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2127
    :cond_0
    :goto_0
    return-void

    .line 2109
    :cond_1
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 2110
    .local v2, lv:Landroid/widget/ListView;
    iget-wide v3, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 2112
    invoke-virtual {v2}, Landroid/widget/AbsListView;->clearChoices()V

    goto :goto_0

    .line 2116
    :cond_2
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    .line 2117
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 2118
    invoke-virtual {v2, v1}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 2117
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2121
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 2122
    if-eqz p1, :cond_0

    .line 2123
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2, v1}, Lcom/android/emailcommon/utility/Utility;->listViewSmoothScrollToPosition(Landroid/app/Activity;Landroid/widget/ListView;I)V

    goto :goto_0
.end method

.method private initSearchHeader()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 457
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mSearchHeader:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 458
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 459
    .local v0, root:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040042

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mSearchHeader:Landroid/view/ViewGroup;

    .line 461
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mSearchHeader:Landroid/view/ViewGroup;

    const v2, 0x7f0f00bb

    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mSearchHeaderText:Landroid/widget/TextView;

    .line 462
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mSearchHeader:Landroid/view/ViewGroup;

    const v2, 0x7f0f00ba

    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mSearchHeaderCount:Landroid/widget/TextView;

    .line 465
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mSearchHeader:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 467
    .end local v0           #root:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private initializeArgCache()V
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;

    if-eqz v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "listContext"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/email/MessageListContext;

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;

    .line 325
    const-string v0, "MessageListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " initializeArgCache mListContext "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isSearchRequestSameAsPrevious(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "queryTerm"
    .parameter "queryField"

    .prologue
    .line 2136
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mPendingQueryField:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/android/emailcommon/utility/TextUtilities;->stringOrNullEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mPendingQueryTerm:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/emailcommon/utility/TextUtilities;->stringOrNullEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2138
    const/4 v0, 0x1

    .line 2140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isViewCreated()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsViewCreated:Z

    return v0
.end method

.method public static newInstance(Lcom/android/email/MessageListContext;)Lcom/android/email/activity/MessageListFragment;
    .locals 3
    .parameter "listContext"

    .prologue
    .line 297
    new-instance v1, Lcom/android/email/activity/MessageListFragment;

    invoke-direct {v1}, Lcom/android/email/activity/MessageListFragment;-><init>()V

    .line 298
    .local v1, instance:Lcom/android/email/activity/MessageListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 299
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "listContext"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 300
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 301
    return-object v1
.end method

.method private onDelete()V
    .locals 2

    .prologue
    .line 2296
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    .line 2297
    .local v0, selectedConversations:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2303
    :goto_0
    return-void

    .line 2300
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v1, v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onAdvancingOpAccepted(Ljava/util/Set;)V

    .line 2301
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->deleteMessages(Ljava/util/Set;)V

    goto :goto_0
.end method

.method private onDeselectAll()V
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->clearSelection()V

    .line 1012
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1013
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->finishSelectionMode()V

    .line 1015
    :cond_0
    return-void
.end method

.method private onLoadMoreMessages()V
    .locals 7

    .prologue
    .line 1021
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v2

    .line 1022
    .local v2, mailBoxId:J
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v0

    .line 1023
    .local v0, accountId:J
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/emailcommon/utility/Utility;->hasConnectivity(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1026
    const-string v4, "Stop refresh since network unavailable"

    invoke-static {v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 1027
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/email/RefreshManager;->stopRefresh(JJ)V

    .line 1029
    invoke-static {}, Lcom/android/email/activity/ConnectionAlertDialog;->newInstance()Lcom/android/email/activity/ConnectionAlertDialog;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "connectionalertdialog"

    invoke-virtual {v4, v5, v6}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    iget-boolean v4, p0, Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z

    if-eqz v4, :cond_0

    .line 1035
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/email/RefreshManager;->loadMoreMessages(JJ)Z

    goto :goto_0
.end method

.method private onMessageOpen(JJ)V
    .locals 8
    .parameter "messageMailboxId"
    .parameter "messageId"

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v5

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageListFragment;->callbackTypeForMailboxType(I)I

    move-result v7

    move-wide v1, p3

    move-wide v3, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/email/activity/MessageListFragment$Callback;->onMessageOpen(JJJI)V

    .line 931
    :goto_0
    return-void

    .line 930
    :cond_0
    new-instance v0, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageListFragment$MessageOpenTask;-><init>(Lcom/android/email/activity/MessageListFragment;JJ)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->cancelPreviousAndExecuteParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_0
.end method

.method private onSearchLoadTimeout()V
    .locals 7

    .prologue
    .line 1581
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1582
    .local v2, root:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1583
    .local v0, host:Landroid/app/Activity;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 1584
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mListPanel:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1585
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040043

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mWarningContainer:Landroid/view/ViewGroup;

    .line 1587
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mWarningContainer:Landroid/view/ViewGroup;

    const v5, 0x7f0f00bd

    invoke-static {v4, v5}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1588
    .local v3, title:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mWarningContainer:Landroid/view/ViewGroup;

    const v5, 0x7f0f00be

    invoke-static {v4, v5}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1589
    .local v1, message:Landroid/widget/TextView;
    const v4, 0x7f080203

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1590
    const v4, 0x7f080204

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1591
    iget-object v4, p0, Lcom/android/email/activity/MessageListFragment;->mWarningContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1593
    .end local v1           #message:Landroid/widget/TextView;
    .end local v3           #title:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private showConfirmIfNeeded(Ljava/util/Set;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2283
    .local p1, selected:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/Preferences;->isAskBeforeDelete()Z

    move-result v0

    .line 2285
    .local v0, askBeforeDeleting:Z
    if-eqz v0, :cond_0

    .line 2286
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1, p0}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/DeleteMessageConfirmationDialog;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "DeleteMessageConfirmationDialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2292
    :goto_0
    return-void

    .line 2290
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onDelete()V

    goto :goto_0
.end method

.method private showMoveMessagesDialog(Ljava/util/Set;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 976
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v1

    .line 977
    .local v1, messageIds:[J
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    :goto_0
    invoke-static {v1, p0, v2, v3}, Lcom/android/email/activity/MoveMessageToDialog;->newInstance([JLandroid/app/Fragment;J)Lcom/android/email/activity/MoveMessageToDialog;

    move-result-object v0

    .line 981
    .local v0, dialog:Lcom/android/email/activity/MoveMessageToDialog;
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "MoveMessageToDialog"

    invoke-virtual {v0, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 982
    return-void

    .line 977
    .end local v0           #dialog:Lcom/android/email/activity/MoveMessageToDialog;
    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method private showSendCommand(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 1491
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mShowSendCommand:Z

    if-eq p1, v0, :cond_0

    .line 1492
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mShowSendCommand:Z

    .line 1493
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1495
    :cond_0
    return-void
.end method

.method private startLoading()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startLoading"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 1568
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageListFragment;->updateSearchHeader(Landroid/database/Cursor;)V

    .line 1571
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 1573
    .local v0, lm:Landroid/app/LoaderManager;
    const/16 v1, 0x64

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->LOADER_CALLBACKS:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1574
    return-void
.end method

.method private startRemoteSearch()V
    .locals 11

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v0

    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v9}, Lcom/android/email/RefreshManager;->checkIsLowStorage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1488
    :cond_0
    :goto_0
    return-void

    .line 1455
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->hasConnectivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1456
    invoke-static {}, Lcom/android/email/activity/ConnectionAlertDialog;->newInstance()Lcom/android/email/activity/ConnectionAlertDialog;

    move-result-object v0

    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const-string v10, "connectionalertdialog"

    invoke-virtual {v0, v9, v10}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1462
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v1

    .line 1463
    .local v1, accountId:J
    invoke-static {v1, v2}, Lcom/android/emailcommon/provider/Account;->isNormalAccount(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1467
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailbox()Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v8

    .line 1468
    .local v8, searchableMailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-eqz v8, :cond_0

    .line 1473
    iget-wide v3, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 1474
    .local v3, mailboxId:J
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mLocalSearchListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->getSearchParams()Lcom/android/emailcommon/service/SearchParams;

    move-result-object v7

    .line 1475
    .local v7, searchParams:Lcom/android/emailcommon/service/SearchParams;
    if-eqz v7, :cond_3

    iget-object v0, v7, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v7, Lcom/android/emailcommon/service/SearchParams;->mField:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 1477
    :cond_3
    const-string v0, "MessageListFragment"

    const-string v9, "Can\'t do remote search for the searchParams is null"

    invoke-static {v0, v9}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1480
    :cond_4
    iget-object v5, v7, Lcom/android/emailcommon/service/SearchParams;->mFilter:Ljava/lang/String;

    .line 1481
    .local v5, queryTerm:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v0, :cond_5

    const-string v6, "ALL"

    .line 1482
    .local v6, queryField:Ljava/lang/String;
    :goto_1
    const-string v0, "MessageListFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Submitting search: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Fileds "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in mailboxId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    iget-object v9, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static/range {v0 .. v6}, Lcom/android/email/activity/EmailActivity;->createRemoteSearchIntent(Landroid/app/Activity;JJLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1481
    .end local v6           #queryField:Ljava/lang/String;
    :cond_5
    iget-object v6, v7, Lcom/android/emailcommon/service/SearchParams;->mField:Ljava/lang/String;

    goto :goto_1
.end method

.method private supportRemoteSearch()Z
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 2227
    const/4 v3, 0x0

    .line 2228
    .local v3, accountSearchable:Z
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccount()Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 2229
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_2

    .line 2230
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v1

    .line 2231
    .local v1, accountId:J
    const-wide/high16 v11, 0x1000

    cmp-long v11, v1, v11

    if-nez v11, :cond_1

    .line 2254
    .end local v1           #accountId:J
    :cond_0
    :goto_0
    return v10

    .line 2235
    .restart local v1       #accountId:J
    :cond_1
    cmp-long v11, v1, v13

    if-lez v11, :cond_2

    .line 2236
    iget-object v11, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v11, v1, v2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 2239
    .end local v1           #accountId:J
    :cond_2
    if-eqz v0, :cond_4

    iget v11, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v11, v11, 0x800

    if-eqz v11, :cond_4

    move v3, v9

    .line 2241
    :goto_1
    if-eqz v3, :cond_0

    .line 2244
    const/4 v7, 0x0

    .line 2245
    .local v7, mailboxHasServerCounterpart:Z
    iget-object v11, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 2246
    .local v8, protocol:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailbox()Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v6

    .line 2247
    .local v6, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v6, :cond_3

    .line 2248
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v4

    .line 2249
    .local v4, mailBoxId:J
    cmp-long v11, v4, v13

    if-lez v11, :cond_3

    .line 2250
    iget-object v11, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v11, v4, v5}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v6

    .line 2253
    .end local v4           #mailBoxId:J
    :cond_3
    if-eqz v6, :cond_5

    invoke-virtual {v6, v8}, Lcom/android/emailcommon/provider/Mailbox;->loadsFromServer(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    move v7, v9

    .line 2254
    :goto_2
    if-eqz v7, :cond_6

    if-eqz v3, :cond_6

    :goto_3
    move v10, v9

    goto :goto_0

    .end local v6           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v7           #mailboxHasServerCounterpart:Z
    .end local v8           #protocol:Ljava/lang/String;
    :cond_4
    move v3, v10

    .line 2239
    goto :goto_1

    .restart local v6       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v7       #mailboxHasServerCounterpart:Z
    .restart local v8       #protocol:Ljava/lang/String;
    :cond_5
    move v7, v10

    .line 2253
    goto :goto_2

    :cond_6
    move v9, v10

    .line 2254
    goto :goto_3
.end method

.method private testMultiple(Ljava/util/Set;IZ)Z
    .locals 7
    .parameter
    .parameter "columnId"
    .parameter "defaultflag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1221
    iget-object v5, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v5}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1222
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v3, v4

    .line 1234
    :goto_0
    return v3

    .line 1225
    :cond_1
    const/4 v5, -0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1226
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1227
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v1, v5

    .line 1228
    .local v1, id:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1229
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz p3, :cond_3

    move v5, v3

    :goto_1
    if-ne v6, v5, :cond_2

    goto :goto_0

    :cond_3
    move v5, v4

    goto :goto_1

    .end local v1           #id:J
    :cond_4
    move v3, v4

    .line 1234
    goto :goto_0
.end method

.method private toggleFavorite(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1086
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/email/activity/MessageListFragment$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListFragment$2;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessageListFragment;->toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;)V

    .line 1103
    return-void
.end method

.method private toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;)V
    .locals 12
    .parameter
    .parameter "helper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1153
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v7

    .line 1154
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1211
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1159
    .local v3, setValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    const/4 v6, 0x1

    .line 1162
    .local v6, allWereSet:Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1163
    .local v2, messageResort:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v8

    .line 1164
    .local v8, currentItemPosition:I
    add-int/lit8 v0, v8, -0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1165
    :cond_2
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1166
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v9, v0

    .line 1167
    .local v9, id:J
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1168
    invoke-interface {p2, v7}, Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;->getField(Landroid/database/Cursor;)Z

    move-result v11

    .line 1169
    .local v11, value:Z
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    if-eqz v6, :cond_3

    if-eqz v11, :cond_3

    const/4 v6, 0x1

    :goto_2
    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 1174
    .end local v9           #id:J
    .end local v11           #value:Z
    :cond_4
    const/4 v0, -0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1175
    :cond_5
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    if-ge v0, v8, :cond_7

    .line 1176
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v9, v0

    .line 1177
    .restart local v9       #id:J
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1178
    invoke-interface {p2, v7}, Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;->getField(Landroid/database/Cursor;)Z

    move-result v11

    .line 1179
    .restart local v11       #value:Z
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    if-eqz v6, :cond_6

    if-eqz v11, :cond_6

    const/4 v6, 0x1

    :goto_4
    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    goto :goto_4

    .line 1185
    .end local v9           #id:J
    .end local v11           #value:Z
    :cond_7
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1186
    if-nez v6, :cond_9

    const/4 v4, 0x1

    .line 1187
    .local v4, newValue:Z
    :goto_5
    const/4 v0, -0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1190
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 1192
    new-instance v0, Lcom/android/email/activity/MessageListFragment$3;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageListFragment$3;-><init>(Lcom/android/email/activity/MessageListFragment;Ljava/util/ArrayList;Ljava/util/HashMap;ZLcom/android/email/activity/MessageListFragment$MultiToggleHelper;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1209
    .end local v4           #newValue:Z
    :cond_8
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 1210
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    goto/16 :goto_0

    .line 1186
    :cond_9
    const/4 v4, 0x0

    goto :goto_5
.end method

.method private toggleRead(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1061
    .local p1, selectedSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v0, Lcom/android/email/activity/MessageListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageListFragment$1;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    invoke-direct {p0, p1, v0}, Lcom/android/email/activity/MessageListFragment;->toggleMultiple(Ljava/util/Set;Lcom/android/email/activity/MessageListFragment$MultiToggleHelper;)V

    .line 1078
    return-void
.end method

.method private toggleSelection(Lcom/android/email/activity/MessageListItem;)V
    .locals 1
    .parameter "itemView"

    .prologue
    .line 907
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 908
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessagesAdapter;->toggleSelected(Lcom/android/email/activity/MessageListItem;)V

    .line 909
    return-void
.end method

.method private updateFooterView()V
    .locals 6

    .prologue
    .line 1368
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->determineFooterMode()I

    move-result v2

    .line 1370
    .local v2, mode:I
    iget v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    if-ne v3, v2, :cond_0

    .line 1371
    const-string v3, "MessageListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateFooterView mListFooterMode already is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    :goto_0
    return-void

    .line 1374
    :cond_0
    iput v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    .line 1375
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1376
    .local v1, lv:Landroid/widget/ListView;
    iget v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    if-eqz v3, :cond_3

    .line 1379
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 1384
    iget v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->supportRemoteSearch()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1386
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1387
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1390
    invoke-virtual {v1}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1391
    .local v0, listState:Landroid/os/Parcelable;
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {p0, v3}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1392
    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1398
    .end local v0           #listState:Landroid/os/Parcelable;
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateListFooter()V

    goto :goto_0

    .line 1396
    :cond_3
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_1
.end method

.method private updateListFooter()V
    .locals 6

    .prologue
    const/16 v2, 0x8

    .line 1405
    iget v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    if-eqz v3, :cond_0

    .line 1406
    const-string v3, "MessageListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateListFooter mListFooterMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    const/4 v1, 0x0

    .line 1408
    .local v1, footerTextId:I
    iget v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    packed-switch v3, :pswitch_data_0

    .line 1423
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1425
    .end local v1           #footerTextId:I
    :cond_0
    return-void

    .line 1410
    .restart local v1       #footerTextId:I
    :pswitch_0
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/email/RefreshManager;->isMessageListRefreshing(J)Z

    move-result v0

    .line 1411
    .local v0, active:Z
    if-eqz v0, :cond_2

    const v1, 0x7f08009c

    .line 1413
    :goto_1
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterProgress:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1411
    :cond_2
    const v1, 0x7f0800cf

    goto :goto_1

    .line 1416
    .end local v0           #active:Z
    :pswitch_1
    iget-boolean v3, p0, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v3, :cond_3

    const v1, 0x7f08002d

    .line 1418
    :goto_2
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterProgress:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1416
    :cond_3
    const v1, 0x7f08002b

    goto :goto_2

    .line 1408
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateMailboxSpecificActions()V
    .locals 4

    .prologue
    .line 1518
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v0

    .line 1519
    .local v0, mailboxId:J
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/emailcommon/provider/Account;->supportsMoveMessages(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/Mailbox;->canHaveMessagesMoved()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-wide/16 v2, -0x7

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const-wide/16 v2, -0x4

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const-wide/16 v2, -0x5

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const-wide/16 v2, -0x6

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mShowMoveCommand:Z

    .line 1527
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1528
    return-void

    .line 1519
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateSearchHeader(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 1306
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mLocalSearchListContext:Lcom/android/email/MessageListContext;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mLocalSearchCallback:Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 1308
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mLocalSearchCallback:Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;->onLocalSearchFinished(I)V

    .line 1333
    :cond_0
    :goto_0
    return-void

    .line 1313
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListContext()Lcom/android/email/MessageListContext;

    move-result-object v0

    .line 1314
    .local v0, listContext:Lcom/android/email/MessageListContext;
    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->isRemoteSearch()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p1, :cond_3

    .line 1315
    :cond_2
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mSearchHeader:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;I)V

    goto :goto_0

    :cond_3
    move-object v2, p1

    .line 1320
    check-cast v2, Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;

    .line 1321
    .local v2, searchCursor:Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;
    invoke-virtual {v2}, Lcom/android/email/activity/MessagesAdapter$SearchResultsCursor;->getResultsCount()I

    move-result v1

    .line 1322
    .local v1, resultCount:I
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mRemoteSearchCallback:Lcom/android/email/activity/MessageListFragment$RemoteSearchCallback;

    if-eqz v3, :cond_4

    if-ltz v1, :cond_4

    .line 1323
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mRemoteSearchCallback:Lcom/android/email/activity/MessageListFragment$RemoteSearchCallback;

    invoke-interface {v3, v1}, Lcom/android/email/activity/MessageListFragment$RemoteSearchCallback;->onRemoteSearchFinished(I)V

    .line 1328
    :cond_4
    if-gez v1, :cond_0

    .line 1329
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->initSearchHeader()V

    .line 1330
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mSearchHeader:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1331
    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mSearchHeaderText:Landroid/widget/TextView;

    const v4, 0x7f08002a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private updateSelectionModeView()V
    .locals 1

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 1871
    return-void
.end method

.method private updateSendMenu()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1502
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v3

    const-wide/16 v5, -0x6

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v3, v3, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    :cond_0
    move v0, v1

    .line 1504
    .local v0, isOutbox:Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageListFragment;->showSendCommand(Z)V

    .line 1506
    return-void

    .end local v0           #isOutbox:Z
    :cond_1
    move v0, v2

    .line 1502
    goto :goto_0

    .restart local v0       #isOutbox:Z
    :cond_2
    move v1, v2

    .line 1504
    goto :goto_1
.end method


# virtual methods
.method doFooterClick()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1432
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    packed-switch v0, :pswitch_data_0

    .line 1443
    :goto_0
    :pswitch_0
    return-void

    .line 1436
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onLoadMoreMessages()V

    goto :goto_0

    .line 1439
    :pswitch_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/EmailActivity;->sRecordOpening:Z

    .line 1440
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->startRemoteSearch()V

    goto :goto_0

    .line 1432
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public doesSelectionContainNonStarredMessage()Z
    .locals 3

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->testMultiple(Ljava/util/Set;IZ)Z

    move-result v0

    return v0
.end method

.method public doesSelectionContainReadMessage()Z
    .locals 3

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/email/activity/MessageListFragment;->testMultiple(Ljava/util/Set;IZ)Z

    move-result v0

    return v0
.end method

.method public enterLocalSearchMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2263
    invoke-virtual {p0, v1}, Landroid/app/ListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 2264
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 2265
    return-void
.end method

.method public exitLocalSearchMode()V
    .locals 2

    .prologue
    .line 2270
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2271
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 2272
    const v0, 0x7f0800d0

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 2274
    :cond_0
    return-void
.end method

.method public getAccount()Lcom/android/emailcommon/provider/Account;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->initializeArgCache()V

    .line 335
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;

    iget-wide v0, v0, Lcom/android/email/MessageListContext;->mAccountId:J

    return-wide v0
.end method

.method public getListContext()Lcom/android/email/MessageListContext;
    .locals 1

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->initializeArgCache()V

    .line 355
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;

    return-object v0
.end method

.method public getMailbox()Lcom/android/emailcommon/provider/Mailbox;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    return-object v0
.end method

.method public getMailboxId()J
    .locals 2

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->initializeArgCache()V

    .line 343
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v0

    return-wide v0
.end method

.method getMessagesAdapter()Lcom/android/email/activity/MessagesAdapter;
    .locals 1

    .prologue
    .line 2278
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    return-object v0
.end method

.method public getSearchedMailbox()Lcom/android/emailcommon/provider/Mailbox;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSearchedMailbox:Lcom/android/emailcommon/provider/Mailbox;

    return-object v0
.end method

.method public hasDataLoaded()Z
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/android/email/activity/MessageListFragment;->mCountTotalAccounts:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCombinedMailbox()Z
    .locals 4

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v0

    const-wide/high16 v2, 0x1000

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInSelectionMode()Z
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInboxList()Z
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 384
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListContext()Lcom/android/email/MessageListContext;

    move-result-object v4

    .line 385
    .local v4, listContext:Lcom/android/email/MessageListContext;
    iget-wide v0, v4, Lcom/android/email/MessageListContext;->mAccountId:J

    .line 386
    .local v0, accountId:J
    const-wide/high16 v7, 0x1000

    cmp-long v7, v0, v7

    if-nez v7, :cond_2

    .line 387
    invoke-virtual {v4}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v7

    const-wide/16 v9, -0x2

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 395
    :cond_0
    :goto_0
    return v5

    :cond_1
    move v5, v6

    .line 387
    goto :goto_0

    .line 390
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->hasDataLoaded()Z

    move-result v7

    if-nez v7, :cond_3

    .line 392
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v7, v0, v1, v6}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v2

    .line 393
    .local v2, inboxId:J
    invoke-virtual {v4}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-eqz v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 395
    .end local v2           #inboxId:J
    :cond_3
    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget v7, v7, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-eqz v7, :cond_0

    :cond_4
    move v5, v6

    goto :goto_0
.end method

.method public isRefreshable()Z
    .locals 1

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    .line 484
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " onActivityCreated"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 486
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 488
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 489
    .local v5, lv:Landroid/widget/ListView;
    invoke-virtual {v5, p0}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 490
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 491
    invoke-virtual {v5, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 492
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 497
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v4, v6, Landroid/util/DisplayMetrics;->density:F

    .line 498
    .local v4, density:F
    const/high16 v0, 0x4000

    .line 499
    .local v0, DEFAULT_DENSITY:F
    const v3, 0x3f19999a

    .line 500
    .local v3, FHD_VELOCITY_SCALE:F
    const v2, 0x3ecccccd

    .line 501
    .local v2, DEFAULT_VELOCITY_SCALE:F
    const v1, 0x3ba3d70a

    .line 502
    .local v1, DEFAULT_FRICTION:F
    const-string v6, "MessageListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDisplayMetrics().density: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const/high16 v6, 0x4000

    cmpl-float v6, v4, v6

    if-lez v6, :cond_0

    const v6, 0x3f19999a

    :goto_0
    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->setVelocityScale(F)V

    .line 505
    const v6, 0x3ba3d70a

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->setFriction(F)V

    .line 508
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04003f

    invoke-virtual {v6, v7, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    .line 511
    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const v7, 0x7f0f00af

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterProgress:Landroid/view/View;

    .line 512
    iget-object v6, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    const v7, 0x7f0f00b0

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterText:Landroid/widget/TextView;

    .line 514
    const v6, 0x7f0800d0

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/app/ListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 515
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getEmptyView()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/email/activity/MessageListFragment;->mEmptyView:Landroid/view/View;

    .line 517
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->startLoading()V

    .line 519
    invoke-static {p0}, Lcom/android/email/activity/UiUtilities;->installFragment(Landroid/app/Fragment;)V

    .line 520
    return-void

    .line 504
    :cond_0
    const v6, 0x3ecccccd

    goto :goto_0
.end method

.method public onAdapterFavoriteChanged(Lcom/android/email/activity/MessageListItem;Z)V
    .locals 5
    .parameter "itemView"
    .parameter "newFavorite"

    .prologue
    .line 1287
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListContext()Lcom/android/email/MessageListContext;

    move-result-object v0

    .line 1288
    .local v0, messageListContext:Lcom/android/email/MessageListContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v1

    const-wide/16 v3, -0x4

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1290
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/MessagesAdapter;->isSelected(Lcom/android/email/activity/MessageListItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1291
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1, p1}, Lcom/android/email/activity/MessagesAdapter;->toggleSelected(Lcom/android/email/activity/MessageListItem;)V

    .line 1294
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    iget-wide v2, p1, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/email/Controller;->setMessageFavorite(JZ)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1295
    return-void
.end method

.method public onAdapterSelectedChanged(Lcom/android/email/activity/MessageListItem;ZI)V
    .locals 0
    .parameter "itemView"
    .parameter "newSelected"
    .parameter "mSelectedCount"

    .prologue
    .line 1301
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    .line 1302
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onAttach"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 411
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 412
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onCreate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 419
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 421
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    .line 422
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 423
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mController:Lcom/android/email/Controller;

    .line 424
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    .line 426
    new-instance v0, Lcom/android/email/activity/MessagesAdapter;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getListContext()Lcom/android/email/MessageListContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/MessageListContext;->isSearch()Z

    move-result v2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/email/activity/MessagesAdapter;-><init>(Landroid/content/Context;Lcom/android/email/activity/MessagesAdapter$Callback;Z)V

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    .line 427
    iput-boolean v3, p0, Lcom/android/email/activity/MessageListFragment;->mIsFirstLoad:Z

    .line 430
    if-eqz p1, :cond_0

    .line 432
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageListFragment;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 435
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCreateView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 444
    const v1, 0x7f04003e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 445
    .local v0, root:Landroid/view/View;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mIsViewCreated:Z

    .line 446
    const v1, 0x7f0f00ae

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListPanel:Landroid/view/View;

    .line 447
    return-object v0
.end method

.method public onDeleteMessageConfirmationDialogOkPressed()V
    .locals 0

    .prologue
    .line 2308
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onDelete()V

    .line 2309
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 586
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->finishSelectionMode()V

    .line 593
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mHasRestartLoader:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 598
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 600
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 601
    .local v0, a:Landroid/app/Activity;
    instance-of v1, v0, Lcom/android/email/activity/FragmentInstallable;

    if-eqz v1, :cond_1

    .line 602
    check-cast v0, Lcom/android/email/activity/FragmentInstallable;

    .end local v0           #a:Landroid/app/Activity;
    invoke-interface {v0, p0}, Lcom/android/email/activity/FragmentInstallable;->onRemoveFragment(Landroid/app/Fragment;)V

    .line 605
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onDestroyView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 570
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mIsViewCreated:Z

    .line 571
    invoke-static {p0}, Lcom/android/email/activity/UiUtilities;->uninstallFragment(Landroid/app/Fragment;)V

    .line 572
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    .line 576
    iput v2, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterMode:I

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSearchHeader:Landroid/view/ViewGroup;

    .line 578
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 579
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onDetach"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 612
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 613
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 812
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 820
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 814
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageListFragment$Callback;->onDragEnded()V

    goto :goto_0

    .line 812
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onHidden(Z)V
    .locals 1
    .parameter "hidden"

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mDisableCab:Z

    if-ne p1, v0, :cond_0

    .line 670
    :goto_0
    return-void

    .line 668
    :cond_0
    iput-boolean p1, p0, Lcom/android/email/activity/MessageListFragment;->mDisableCab:Z

    .line 669
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionMode()V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 15
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 851
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    iget-boolean v10, v10, Lcom/android/email/activity/MessagesAdapter;->mIsEasRemoteMode:Z

    if-eqz v10, :cond_1

    .line 852
    const/4 v9, 0x0

    .line 903
    :cond_0
    :goto_0
    return v9

    .line 855
    :cond_1
    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    move-object/from16 v0, p2

    if-eq v0, v10, :cond_8

    .line 857
    move-object/from16 v0, p2

    instance-of v10, v0, Lcom/android/email/activity/MessageListItem;

    if-eqz v10, :cond_8

    move-object/from16 v3, p2

    .line 858
    check-cast v3, Lcom/android/email/activity/MessageListItem;

    .line 859
    .local v3, listItem:Lcom/android/email/activity/MessageListItem;
    const/4 v9, 0x0

    .line 860
    .local v9, toggled:Z
    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v10, v3}, Lcom/android/email/activity/MessagesAdapter;->isSelected(Lcom/android/email/activity/MessageListItem;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 861
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageListFragment;->toggleSelection(Lcom/android/email/activity/MessageListItem;)V

    .line 862
    const/4 v9, 0x1

    .line 866
    :cond_2
    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-interface {v10}, Lcom/android/email/activity/MessageListFragment$Callback;->onDragStarted()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 871
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v4

    .line 872
    .local v4, mailboxId:J
    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-nez v10, :cond_4

    .line 873
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 874
    :cond_4
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_5

    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-virtual {v10}, Lcom/android/emailcommon/provider/Mailbox;->canHaveMessagesMoved()Z

    move-result v10

    if-nez v10, :cond_5

    .line 875
    const/4 v9, 0x0

    goto :goto_0

    .line 880
    :cond_5
    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "com.android.email.MESSAGE_LIST_ITEMS"

    sget-object v12, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    iget-wide v13, v3, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    const-string v13, "mailboxId"

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/content/ClipData;->newUri(Landroid/content/ContentResolver;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v1

    .line 888
    .local v1, data:Landroid/content/ClipData;
    iget-object v10, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v10}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v7

    .line 889
    .local v7, selectedMessageIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v8

    .line 891
    .local v8, size:I
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 892
    .local v6, messageId:Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-wide v12, v3, Lcom/android/email/activity/MessageListItem;->mMessageId:J

    cmp-long v10, v10, v12

    if-eqz v10, :cond_6

    .line 893
    new-instance v10, Landroid/content/ClipData$Item;

    sget-object v11, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v1, v10}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    goto :goto_1

    .line 898
    .end local v6           #messageId:Ljava/lang/Long;
    :cond_7
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 899
    new-instance v10, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;

    invoke-direct {v10, v3, v8}, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;-><init>(Landroid/view/View;I)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3, v1, v10, v11, v12}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 900
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 903
    .end local v1           #data:Landroid/content/ClipData;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listItem:Lcom/android/email/activity/MessageListItem;
    .end local v4           #mailboxId:J
    .end local v7           #selectedMessageIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v8           #size:I
    .end local v9           #toggled:Z
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 708
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListFooterView:Landroid/view/View;

    if-eq p2, v1, :cond_1

    .line 709
    instance-of v1, p2, Lcom/android/email/activity/MessageListItem;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 710
    check-cast v0, Lcom/android/email/activity/MessageListItem;

    .line 711
    .local v0, itemView:Lcom/android/email/activity/MessageListItem;
    iget-wide v1, v0, Lcom/android/email/activity/MessageListItem;->mMailboxId:J

    invoke-direct {p0, v1, v2, p4, p5}, Lcom/android/email/activity/MessageListFragment;->onMessageOpen(JJ)V

    .line 716
    .end local v0           #itemView:Lcom/android/email/activity/MessageListItem;
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->doFooterClick()V

    goto :goto_0
.end method

.method public onMoveToMailboxSelected(J[J)V
    .locals 3
    .parameter "newMailboxId"
    .parameter "messageIds"

    .prologue
    .line 986
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 987
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 997
    :goto_0
    return-void

    .line 992
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    invoke-static {p3}, Lcom/android/emailcommon/utility/Utility;->toLongSet([J)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/email/activity/MessageListFragment$Callback;->onAdvancingOpAccepted(Ljava/util/Set;)V

    .line 993
    invoke-static {v0, p1, p2, p3}, Lcom/android/email/activity/ActivityHelper;->moveMessages(Landroid/content/Context;J[J)V

    .line 996
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 648
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 653
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 650
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->onSendPendingMessages()V

    .line 651
    const/4 v0, 0x1

    goto :goto_0

    .line 648
    :pswitch_data_0
    .packed-switch 0x7f0f012c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onPause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    .line 549
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Landroid/os/Parcelable;

    .line 550
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->adjustMessageNotification(Z)V

    .line 551
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 552
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 640
    const v1, 0x7f0f012c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 641
    .local v0, send:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 642
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mShowSendCommand:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 644
    :cond_0
    return-void
.end method

.method public onRefresh(Z)V
    .locals 6
    .parameter "userRequest"

    .prologue
    .line 1005
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mIsRefreshable:Z

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getAccountId()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/RefreshManager;->refreshMessageList(JJZ)Z

    .line 1008
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 535
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 536
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    .line 537
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mClearSendNotifer:Z

    .line 538
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->adjustMessageNotification(Z)V

    .line 539
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateListFooter()V

    .line 540
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

    invoke-virtual {v0, v1}, Lcom/android/email/RefreshManager;->registerListener(Lcom/android/email/RefreshManager$Listener;)V

    .line 541
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 618
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

    .line 620
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 621
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessagesAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 622
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->isViewCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    const-string v0, "MessageListFragment.state.listState"

    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 625
    :cond_0
    const-string v0, "messageListFragment.state.listState.selected_message_id"

    iget-wide v1, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 626
    return-void
.end method

.method public onSendPendingMessages()V
    .locals 5

    .prologue
    .line 1040
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->hasConnectivity(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1041
    invoke-static {}, Lcom/android/email/activity/ConnectionAlertDialog;->newInstance()Lcom/android/email/activity/ConnectionAlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "connectionalertdialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1052
    :cond_0
    :goto_0
    return-void

    .line 1046
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v0

    .line 1047
    .local v0, rm:Lcom/android/email/RefreshManager;
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v1

    const-wide/16 v3, -0x6

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1048
    invoke-virtual {v0}, Lcom/android/email/RefreshManager;->sendPendingMessagesForAllAccounts()V

    goto :goto_0

    .line 1049
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    if-eqz v1, :cond_0

    .line 1050
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/RefreshManager;->sendPendingMessages(J)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onStart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 527
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 528
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onStop"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 560
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mRefreshListener:Lcom/android/email/activity/MessageListFragment$RefreshListener;

    invoke-virtual {v0, v1}, Lcom/android/email/RefreshManager;->unregisterListener(Lcom/android/email/RefreshManager$Listener;)V

    .line 562
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 563
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 825
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 827
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment$ShadowBuilder;->access$102(I)I

    .line 829
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/email/activity/EmailActivity;

    invoke-virtual {v0}, Lcom/android/email/activity/EmailActivity;->getUIController()Lcom/android/email/activity/UIControllerBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v0}, Lcom/android/email/activity/ActionBarController;->isLocalSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->hideSoftKeyboard()V

    .line 835
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method restoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 631
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

    .line 633
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessagesAdapter;->loadState(Landroid/os/Bundle;)V

    .line 634
    const-string v0, "MessageListFragment.state.listState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mSavedListState:Landroid/os/Parcelable;

    .line 635
    const-string v0, "messageListFragment.state.listState.selected_message_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    .line 636
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/MessageListFragment$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 657
    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;

    .line 658
    return-void

    .line 657
    .restart local p1
    :cond_0
    sget-object p1, Lcom/android/email/activity/MessageListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageListFragment$Callback;

    goto :goto_0
.end method

.method public setLayout(Lcom/android/email/activity/ThreePaneLayout;)V
    .locals 1
    .parameter "layout"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/activity/UiUtilities;->useTwoPane(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/MessagesAdapter;->setLayout(Lcom/android/email/activity/ThreePaneLayout;)V

    .line 454
    :cond_0
    return-void
.end method

.method public setRemoteSearchCallBack(Lcom/android/email/activity/MessageListFragment$RemoteSearchCallback;)V
    .locals 0
    .parameter "remoteSearchCallback"

    .prologue
    .line 2220
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mRemoteSearchCallback:Lcom/android/email/activity/MessageListFragment$RemoteSearchCallback;

    .line 2221
    return-void
.end method

.method public setSelectedMessage(J)V
    .locals 2
    .parameter "messageId"

    .prologue
    .line 673
    iget-wide v0, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    iput-wide p1, p0, Lcom/android/email/activity/MessageListFragment;->mSelectedMessageId:J

    .line 677
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment;->mResumed:Z

    if-eqz v0, :cond_0

    .line 678
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageListFragment;->highlightSelectedMessage(Z)V

    goto :goto_0
.end method

.method public startLocalSearch(Ljava/lang/String;Ljava/lang/String;Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;)V
    .locals 8
    .parameter "queryTerm"
    .parameter "queryField"
    .parameter "cb"

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 2154
    invoke-direct {p0, p1, p2}, Lcom/android/email/activity/MessageListFragment;->isSearchRequestSameAsPrevious(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mPendingLocalSearch:Z

    if-nez v1, :cond_1

    .line 2155
    const-string v1, "MessageListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " startLocalSearch same as privous just return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mLocalSearchListContext:Lcom/android/email/MessageListContext;

    if-eqz v1, :cond_0

    .line 2158
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mLocalSearchListContext:Lcom/android/email/MessageListContext;

    invoke-interface {p3, v1}, Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;->onMessageListContextChanged(Lcom/android/email/MessageListContext;)V

    .line 2205
    :cond_0
    :goto_0
    return-void

    .line 2163
    :cond_1
    iget-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mPendingLocalSearch:Z

    if-eqz v1, :cond_2

    .line 2164
    iput-boolean v2, p0, Lcom/android/email/activity/MessageListFragment;->mPendingLocalSearch:Z

    .line 2167
    :cond_2
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment;->mPendingQueryTerm:Ljava/lang/String;

    .line 2168
    iput-object p2, p0, Lcom/android/email/activity/MessageListFragment;->mPendingQueryField:Ljava/lang/String;

    .line 2170
    if-eqz p3, :cond_3

    .line 2171
    iput-object p3, p0, Lcom/android/email/activity/MessageListFragment;->mLocalSearchCallback:Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;

    .line 2176
    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2177
    :cond_4
    iput-object v7, p0, Lcom/android/email/activity/MessageListFragment;->mLocalSearchListContext:Lcom/android/email/MessageListContext;

    .line 2178
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mLocalSearchCallback:Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;

    if-eqz v1, :cond_5

    .line 2179
    invoke-interface {p3, v2}, Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;->onLocalSearchFinished(I)V

    .line 2182
    :cond_5
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;

    invoke-interface {p3, v1}, Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;->onMessageListContextChanged(Lcom/android/email/MessageListContext;)V

    .line 2183
    const-string v1, "MessageListFragment"

    const-string v2, "start local Search.with null queryTerm."

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    :goto_1
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/activity/MessagesAdapter;->setQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 2200
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v6

    .line 2201
    .local v6, lm:Landroid/app/LoaderManager;
    const/16 v1, 0x64

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->LOADER_CALLBACKS:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v6, v1, v7, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 2203
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListFragment;->mHasRestartLoader:Z

    goto :goto_0

    .line 2184
    .end local v6           #lm:Landroid/app/LoaderManager;
    :cond_6
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 2185
    new-instance v0, Lcom/android/emailcommon/service/SearchParams;

    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v1}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v1

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/emailcommon/service/SearchParams;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 2186
    .local v0, params:Lcom/android/emailcommon/service/SearchParams;
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;

    iget-wide v1, v1, Lcom/android/email/MessageListContext;->mAccountId:J

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v3}, Lcom/android/email/MessageListContext;->getMailboxId()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/email/MessageListContext;->forSearch(JJLcom/android/emailcommon/service/SearchParams;)Lcom/android/email/MessageListContext;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mLocalSearchListContext:Lcom/android/email/MessageListContext;

    .line 2188
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mLocalSearchListContext:Lcom/android/email/MessageListContext;

    invoke-interface {p3, v1}, Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;->onMessageListContextChanged(Lcom/android/email/MessageListContext;)V

    .line 2189
    const-string v1, "MessageListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " startLocalSearch mListContext "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageListFragment;->mLocalSearchListContext:Lcom/android/email/MessageListContext;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2193
    .end local v0           #params:Lcom/android/emailcommon/service/SearchParams;
    :cond_7
    const-string v1, "MessageListFragment"

    const-string v2, " start pending local Search.."

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    iput-boolean v5, p0, Lcom/android/email/activity/MessageListFragment;->mPendingLocalSearch:Z

    goto/16 :goto_0
.end method

.method public updateSelectionMode()V
    .locals 3

    .prologue
    .line 1841
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->getSelectedCount()I

    move-result v0

    .line 1842
    .local v0, numSelected:I
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/email/activity/MessageListFragment;->mDisableCab:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->isViewCreated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1843
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->finishSelectionMode()V

    .line 1852
    :goto_0
    return-void

    .line 1846
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/activity/MessageListFragment;->isInSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1847
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment;->updateSelectionModeView()V

    goto :goto_0

    .line 1849
    :cond_2
    new-instance v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;-><init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageListFragment;->mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    .line 1850
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment;->mLastSelectionModeCallback:Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    goto :goto_0
.end method
