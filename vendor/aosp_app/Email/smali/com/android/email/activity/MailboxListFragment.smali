.class public Lcom/android/email/activity/MailboxListFragment;
.super Landroid/app/ListFragment;
.source "MailboxListFragment.java"

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MailboxListFragment$LoadVipFolderMessageCountTask;,
        Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;,
        Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;,
        Lcom/android/email/activity/MailboxListFragment$EmptyCallback;,
        Lcom/android/email/activity/MailboxListFragment$Callback;
    }
.end annotation


# static fields
.field private static final ARG_ACCOUNT_ID:Ljava/lang/String; = "accountId"

.field private static final ARG_ENABLE_HIGHLIGHT:Ljava/lang/String; = "enablehighlight"

.field private static final ARG_INITIAL_CURRENT_MAILBOX_ID:Ljava/lang/String; = "initialParentMailboxId"

.field private static final BUNDLE_KEY_HIGHLIGHTED_MAILBOX_ID:Ljava/lang/String; = "MailboxListFragment.state.selected_mailbox_id"

.field private static final BUNDLE_KEY_PARENT_MAILBOX_ID:Ljava/lang/String; = "MailboxListFragment.state.parent_mailbox_id"

.field private static final BUNDLE_LIST_STATE:Ljava/lang/String; = "MailboxListFragment.state.listState"

.field private static final BUNDLE_VIP_MAIL_COUNT:Ljava/lang/String; = "MailboxListFragment.state.VipMailCount"

.field private static final DEBUG_DRAG_DROP:Z = false

.field private static final MAILBOX_LOADER_ID:I = 0x1

.field private static final NO_DROP_TARGET:I = -0x1

.field private static final SCROLL_SPEED:I = 0x4

.field private static final SCROLL_ZONE_SIZE:I = 0x40

.field private static final TAG:Ljava/lang/String; = "MailboxListFragment"

.field private static final sTouchFrame:Landroid/graphics/Rect;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

.field private mDragInProgress:Z

.field private mDragItemHeight:I

.field private mDragItemMailboxId:J

.field private mDropTargetId:I

.field private mDropTargetView:Lcom/android/email/activity/MailboxListItem;

.field private mHighlightedMailboxId:J

.field private mImmutableAccountId:Ljava/lang/Long;

.field private mImmutableEnableHighlight:Z

.field private mImmutableInitialCurrentMailboxId:J

.field private mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

.field private final mMailboxesAdapterCallback:Lcom/android/email/activity/MailboxFragmentAdapter$Callback;

.field private mNextHighlightedMailboxId:J

.field private mParentDetermined:Z

.field private mParentMailboxId:J

.field private mRefreshManager:Lcom/android/email/RefreshManager;

.field private mSavedListState:Landroid/os/Parcelable;

.field private mTargetScrolling:Z

.field private final mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

.field private mVipMailCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 181
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/email/activity/MailboxListFragment;->sTouchFrame:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    .line 152
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 178
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 188
    sget-object v0, Lcom/android/email/activity/MailboxListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MailboxListFragment$Callback;

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    .line 202
    iput-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mNextHighlightedMailboxId:J

    .line 207
    iput-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    .line 209
    iput v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetId:I

    .line 213
    iput v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MailboxListFragment;->mVipMailCount:I

    .line 224
    new-instance v0, Lcom/android/email/activity/MailboxListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MailboxListFragment$1;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxesAdapterCallback:Lcom/android/email/activity/MailboxFragmentAdapter$Callback;

    .line 1099
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/MailboxListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/MailboxListFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/email/activity/MailboxListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/android/email/activity/MailboxListFragment;->mParentDetermined:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MailboxListFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mNextHighlightedMailboxId:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/email/activity/MailboxListFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/android/email/activity/MailboxListFragment;->mNextHighlightedMailboxId:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MailboxListFragment;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxListFragment;->updateHighlightedMailbox(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1302(Lcom/android/email/activity/MailboxListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput p1, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetId:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/email/activity/MailboxListFragment;Lcom/android/email/activity/MailboxListItem;)Lcom/android/email/activity/MailboxListItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/email/activity/MailboxListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput p1, p0, Lcom/android/email/activity/MailboxListFragment;->mVipMailCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/email/activity/MailboxListFragment;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MailboxListFragment;->startLoading(JJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/activity/MailboxListFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/email/activity/MailboxListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->isRoot()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/email/activity/MailboxFragmentAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/MailboxListFragment;)Landroid/os/Parcelable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/email/activity/MailboxListFragment;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Landroid/os/Parcelable;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/email/activity/MailboxListFragment;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/MailboxListFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private initializeArgCache()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mImmutableAccountId:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "accountId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mImmutableAccountId:Ljava/lang/Long;

    .line 338
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "initialParentMailboxId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mImmutableInitialCurrentMailboxId:J

    .line 339
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "enablehighlight"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mImmutableEnableHighlight:Z

    goto :goto_0
.end method

.method private isRoot()Z
    .locals 4

    .prologue
    .line 593
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isViewCreated()Z
    .locals 1

    .prologue
    .line 443
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance(JJZ)Lcom/android/email/activity/MailboxListFragment;
    .locals 3
    .parameter "accountId"
    .parameter "initialCurrentMailboxId"
    .parameter "enableHighlight"

    .prologue
    .line 300
    new-instance v1, Lcom/android/email/activity/MailboxListFragment;

    invoke-direct {v1}, Lcom/android/email/activity/MailboxListFragment;-><init>()V

    .line 301
    .local v1, instance:Lcom/android/email/activity/MailboxListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 302
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "accountId"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 303
    const-string v2, "initialParentMailboxId"

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 304
    const-string v2, "enablehighlight"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 305
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 306
    return-object v1
.end method

.method private onDragEnded()V
    .locals 1

    .prologue
    .line 1134
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    if-eqz v0, :cond_0

    .line 1135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    .line 1137
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/email/activity/MailboxFragmentAdapter;->enableUpdates(Z)V

    .line 1138
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1140
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->updateChildViews()V

    .line 1142
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->stopScrolling()V

    .line 1144
    :cond_0
    return-void
.end method

.method private onDragExited()V
    .locals 4

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    iget-boolean v1, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    iget-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/activity/MailboxListItem;->setDropTargetBackground(ZJ)V

    .line 991
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    .line 993
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetId:I

    .line 994
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->stopScrolling()V

    .line 995
    return-void
.end method

.method private onDragLocation(Landroid/view/DragEvent;)V
    .locals 19
    .parameter "event"

    .prologue
    .line 1001
    invoke-virtual/range {p0 .. p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 1004
    .local v5, lv:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    if-gtz v15, :cond_1

    .line 1006
    const-string v15, "MailboxListFragment"

    const-string v16, "drag item height is not set"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 1010
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v15

    float-to-int v8, v15

    .line 1011
    .local v8, rawTouchX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v15

    float-to-int v9, v15

    .line 1012
    .local v9, rawTouchY:I
    invoke-static {v5, v8, v9}, Lcom/android/email/activity/MailboxListFragment;->pointToIndex(Landroid/widget/ListView;II)I

    move-result v14

    .line 1013
    .local v14, viewIndex:I
    move v13, v14

    .line 1014
    .local v13, targetId:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetId:I

    if-eq v13, v15, :cond_4

    .line 1019
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    if-eqz v15, :cond_2

    .line 1020
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v15 .. v18}, Lcom/android/email/activity/MailboxListItem;->setDropTargetBackground(ZJ)V

    .line 1021
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    .line 1024
    :cond_2
    invoke-virtual {v5, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1026
    .local v3, childView:Landroid/view/View;
    if-nez v3, :cond_5

    .line 1031
    const/4 v6, 0x0

    .line 1032
    .local v6, newTarget:Lcom/android/email/activity/MailboxListItem;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1033
    .local v2, childCount:I
    if-lt v14, v2, :cond_3

    .line 1035
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MailboxListFragment;->onDragExited()V

    goto :goto_0

    .line 1039
    :cond_3
    const-string v15, "MailboxListFragment"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "null view; idx: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", cnt: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    .end local v2           #childCount:I
    :goto_1
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetId:I

    .line 1068
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    .line 1073
    .end local v3           #childView:Landroid/view/View;
    .end local v6           #newTarget:Lcom/android/email/activity/MailboxListItem;
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/lit8 v15, v15, -0x40

    sub-int v10, v9, v15

    .line 1074
    .local v10, scrollDiff:I
    if-lez v10, :cond_9

    const/4 v11, 0x1

    .line 1075
    .local v11, scrollDown:Z
    :goto_2
    const/16 v15, 0x40

    if-le v15, v9, :cond_a

    const/4 v12, 0x1

    .line 1076
    .local v12, scrollUp:Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    if-nez v15, :cond_b

    if-eqz v11, :cond_b

    .line 1077
    invoke-virtual {v5}, Landroid/widget/AdapterView;->getCount()I

    move-result v15

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v16

    sub-int v4, v15, v16

    .line 1078
    .local v4, itemsToScroll:I
    add-int/lit8 v15, v4, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    move/from16 v16, v0

    mul-int v7, v15, v16

    .line 1079
    .local v7, pixelsToScroll:I
    mul-int/lit8 v15, v7, 0x4

    invoke-virtual {v5, v7, v15}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1083
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    goto/16 :goto_0

    .line 1041
    .end local v4           #itemsToScroll:I
    .end local v7           #pixelsToScroll:I
    .end local v10           #scrollDiff:I
    .end local v11           #scrollDown:Z
    .end local v12           #scrollUp:Z
    .restart local v3       #childView:Landroid/view/View;
    :cond_5
    instance-of v15, v3, Lcom/android/email/activity/MailboxListItem;

    if-nez v15, :cond_6

    .line 1044
    const/4 v6, 0x0

    .line 1045
    .restart local v6       #newTarget:Lcom/android/email/activity/MailboxListItem;
    const/4 v13, -0x1

    goto :goto_1

    .end local v6           #newTarget:Lcom/android/email/activity/MailboxListItem;
    :cond_6
    move-object v6, v3

    .line 1047
    check-cast v6, Lcom/android/email/activity/MailboxListItem;

    .line 1048
    .restart local v6       #newTarget:Lcom/android/email/activity/MailboxListItem;
    iget-object v15, v6, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v16, 0x6

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 1052
    invoke-virtual {v6}, Lcom/android/email/activity/MailboxListItem;->setDropTrashBackground()V

    goto :goto_1

    .line 1053
    :cond_7
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    move-wide v0, v15

    invoke-virtual {v6, v0, v1}, Lcom/android/email/activity/MailboxListItem;->isDropTarget(J)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 1057
    invoke-virtual {v6}, Lcom/android/email/activity/MailboxListItem;->setDropActiveBackground()V

    goto :goto_1

    .line 1062
    :cond_8
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v6, v15, v0, v1}, Lcom/android/email/activity/MailboxListItem;->setDropTargetBackground(ZJ)V

    .line 1063
    const/4 v13, -0x1

    goto :goto_1

    .line 1074
    .end local v3           #childView:Landroid/view/View;
    .end local v6           #newTarget:Lcom/android/email/activity/MailboxListItem;
    .restart local v10       #scrollDiff:I
    :cond_9
    const/4 v11, 0x0

    goto :goto_2

    .line 1075
    .restart local v11       #scrollDown:Z
    :cond_a
    const/4 v12, 0x0

    goto :goto_3

    .line 1084
    .restart local v12       #scrollUp:Z
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    if-nez v15, :cond_c

    if-eqz v12, :cond_c

    .line 1085
    invoke-virtual {v5}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    move/from16 v16, v0

    mul-int v7, v15, v16

    .line 1086
    .restart local v7       #pixelsToScroll:I
    neg-int v15, v7

    mul-int/lit8 v16, v7, 0x4

    move/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1090
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    goto/16 :goto_0

    .line 1091
    .end local v7           #pixelsToScroll:I
    :cond_c
    if-nez v12, :cond_0

    if-nez v11, :cond_0

    .line 1092
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/MailboxListFragment;->stopScrolling()V

    goto/16 :goto_0
.end method

.method private onDragStarted(Landroid/view/DragEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1150
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v1

    .line 1151
    .local v1, description:Landroid/content/ClipDescription;
    invoke-virtual {v1}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v4

    .line 1152
    .local v4, mimeTypeCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 1153
    invoke-virtual {v1, v2}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v3

    .line 1154
    .local v3, mimeType:Ljava/lang/String;
    const-string v7, "vnd.android.cursor.item/email-message"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1158
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    .line 1160
    const/16 v7, 0x2d

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1161
    .local v0, dash:I
    if-lez v0, :cond_0

    .line 1163
    add-int/lit8 v7, v0, 0x1

    :try_start_0
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1168
    :cond_0
    :goto_1
    iput-boolean v5, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    .line 1170
    invoke-static {v6}, Lcom/android/email/activity/MailboxFragmentAdapter;->enableUpdates(Z)V

    .line 1172
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->updateChildViews()V

    .line 1176
    .end local v0           #dash:I
    .end local v3           #mimeType:Ljava/lang/String;
    :goto_2
    return v5

    .line 1152
    .restart local v3       #mimeType:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3           #mimeType:Ljava/lang/String;
    :cond_2
    move v5, v6

    .line 1176
    goto :goto_2

    .line 1164
    .restart local v0       #dash:I
    .restart local v3       #mimeType:Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private onDrop(Landroid/view/DragEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    .line 1185
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->stopScrolling()V

    .line 1187
    iget v10, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetId:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    .line 1188
    const/4 v9, 0x0

    .line 1210
    :goto_0
    return v9

    .line 1190
    :cond_0
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v10}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    .line 1191
    .local v1, controller:Lcom/android/email/Controller;
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    .line 1192
    .local v0, clipData:Landroid/content/ClipData;
    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    .line 1197
    .local v2, count:I
    new-array v6, v2, [J

    .line 1198
    .local v6, messageIds:[J
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 1199
    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v8

    .line 1200
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1201
    .local v7, msgNum:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1202
    .local v4, id:J
    aput-wide v4, v6, v3

    .line 1198
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1205
    .end local v4           #id:J
    .end local v7           #msgNum:Ljava/lang/String;
    .end local v8           #uri:Landroid/net/Uri;
    :cond_1
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    iget-object v10, v10, Lcom/android/email/activity/MailboxListItem;->mMailboxType:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_2

    .line 1206
    invoke-static {v6}, Lcom/android/emailcommon/utility/Utility;->toLongSet([J)Ljava/util/Set;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/email/Controller;->deleteMessages(Ljava/util/Set;)V

    goto :goto_0

    .line 1208
    :cond_2
    iget-object v10, p0, Lcom/android/email/activity/MailboxListFragment;->mDropTargetView:Lcom/android/email/activity/MailboxListItem;

    iget-wide v10, v10, Lcom/android/email/activity/MailboxListItem;->mMailboxId:J

    invoke-virtual {v1, v6, v10, v11}, Lcom/android/email/Controller;->moveMessages([JJ)Lcom/android/emailcommon/utility/EmailAsyncTask;

    goto :goto_0
.end method

.method private static pointToIndex(Landroid/widget/ListView;II)I
    .locals 4
    .parameter "list"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 274
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 275
    .local v1, count:I
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 276
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 277
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 278
    sget-object v3, Lcom/android/email/activity/MailboxListFragment;->sTouchFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 279
    sget-object v3, Lcom/android/email/activity/MailboxListFragment;->sTouchFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    .end local v0           #child:Landroid/view/View;
    .end local v2           #i:I
    :goto_1
    return v2

    .line 275
    .restart local v0       #child:Landroid/view/View;
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 284
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private restoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 570
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

    .line 572
    const-string v0, "MailboxListFragment.state.parent_mailbox_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    .line 573
    const-string v0, "MailboxListFragment.state.selected_mailbox_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mNextHighlightedMailboxId:J

    .line 574
    const-string v0, "MailboxListFragment.state.listState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Landroid/os/Parcelable;

    .line 576
    const-string v0, "MailboxListFragment.state.VipMailCount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MailboxListFragment;->mVipMailCount:I

    .line 577
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

    iget v1, p0, Lcom/android/email/activity/MailboxListFragment;->mVipMailCount:I

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MailboxFragmentAdapter;->updateVipMessageCount(I)V

    .line 579
    return-void
.end method

.method private setInitialParentAndHighlight()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    .line 403
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getInitialCurrentMailboxId()J

    move-result-wide v2

    .line 404
    .local v2, initialMailboxId:J
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getAccountId()J

    move-result-wide v4

    const-wide/high16 v6, 0x1000

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 406
    iput-wide v8, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    .line 424
    :goto_0
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getEnableHighlight()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 425
    iput-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mHighlightedMailboxId:J

    .line 427
    :cond_0
    return-void

    .line 410
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getAccountId()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 413
    .local v0, inboxId:J
    cmp-long v4, v2, v0

    if-eqz v4, :cond_2

    const-wide/16 v4, -0x7

    cmp-long v4, v2, v4

    if-nez v4, :cond_3

    .line 416
    :cond_2
    iput-wide v8, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    goto :goto_0

    .line 420
    :cond_3
    iput-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    goto :goto_0
.end method

.method private startLoading(JJ)V
    .locals 6
    .parameter "parentMailboxId"
    .parameter "highlightedMailboxId"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x65

    .line 718
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " startLoading  parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " highlighted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 722
    .local v0, lm:Landroid/app/LoaderManager;
    const/4 v1, 0x0

    .line 725
    .local v1, parentMailboxChanging:Z
    iget-wide v2, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    cmp-long v2, v2, p1

    if-eqz v2, :cond_0

    .line 726
    invoke-virtual {v0, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 727
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/app/ListFragment;->setListShown(Z)V

    .line 728
    const/4 v1, 0x1

    .line 730
    :cond_0
    iput-wide p1, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    .line 731
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getEnableHighlight()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 732
    iput-wide p3, p0, Lcom/android/email/activity/MailboxListFragment;->mNextHighlightedMailboxId:J

    .line 735
    :cond_1
    new-instance v2, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;

    invoke-direct {v2, p0, v5}, Lcom/android/email/activity/MailboxListFragment$MailboxListLoaderCallbacks;-><init>(Lcom/android/email/activity/MailboxListFragment;Lcom/android/email/activity/MailboxListFragment$1;)V

    invoke-virtual {v0, v4, v5, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 737
    if-eqz v1, :cond_2

    .line 738
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getAccountId()J

    move-result-wide v3

    invoke-interface {v2, v3, v4, p3, p4}, Lcom/android/email/activity/MailboxListFragment$Callback;->onParentMailboxChanged(JJ)V

    .line 740
    :cond_2
    return-void
.end method

.method private stopScrolling()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1122
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1123
    .local v0, lv:Landroid/widget/ListView;
    iget-boolean v1, p0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    if-eqz v1, :cond_0

    .line 1124
    iput-boolean v2, p0, Lcom/android/email/activity/MailboxListFragment;->mTargetScrolling:Z

    .line 1129
    invoke-virtual {v0, v2, v2}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1131
    :cond_0
    return-void
.end method

.method private updateChildViews()V
    .locals 8

    .prologue
    .line 968
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 969
    .local v4, lv:Landroid/widget/ListView;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 971
    .local v3, itemCount:I
    if-lez v3, :cond_0

    iget v5, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    if-gez v5, :cond_0

    .line 972
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    iput v5, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemHeight:I

    .line 974
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 975
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 976
    .local v0, child:Landroid/view/View;
    instance-of v5, v0, Lcom/android/email/activity/MailboxListItem;

    if-nez v5, :cond_1

    .line 974
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 979
    check-cast v2, Lcom/android/email/activity/MailboxListItem;

    .line 980
    .local v2, item:Lcom/android/email/activity/MailboxListItem;
    iget-boolean v5, p0, Lcom/android/email/activity/MailboxListFragment;->mDragInProgress:Z

    iget-wide v6, p0, Lcom/android/email/activity/MailboxListFragment;->mDragItemMailboxId:J

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/email/activity/MailboxListItem;->setDropTargetBackground(ZJ)V

    goto :goto_1

    .line 982
    .end local v0           #child:Landroid/view/View;
    .end local v2           #item:Lcom/android/email/activity/MailboxListItem;
    :cond_2
    return-void
.end method

.method private updateHighlightedMailbox(Z)Z
    .locals 11
    .parameter "ensureSelectionVisible"

    .prologue
    const-wide/16 v9, -0x1

    const/4 v4, 0x1

    .line 931
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getEnableHighlight()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->isViewCreated()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v1, v4

    .line 958
    :cond_1
    :goto_0
    return v1

    .line 934
    :cond_2
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 935
    .local v3, lv:Landroid/widget/ListView;
    const/4 v1, 0x0

    .line 936
    .local v1, found:Z
    iget-wide v5, p0, Lcom/android/email/activity/MailboxListFragment;->mHighlightedMailboxId:J

    cmp-long v5, v5, v9

    if-nez v5, :cond_4

    .line 938
    invoke-virtual {v3}, Landroid/widget/AbsListView;->clearChoices()V

    .line 939
    const/4 v1, 0x1

    .line 955
    :cond_3
    :goto_1
    if-nez v1, :cond_1

    .line 956
    iput-wide v9, p0, Lcom/android/email/activity/MailboxListFragment;->mHighlightedMailboxId:J

    goto :goto_0

    .line 942
    :cond_4
    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    .line 943
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_3

    .line 944
    iget-object v5, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

    invoke-virtual {v5, v2}, Lcom/android/email/activity/MailboxFragmentAdapter;->getId(I)J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/email/activity/MailboxListFragment;->mHighlightedMailboxId:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5

    .line 943
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 947
    :cond_5
    const/4 v1, 0x1

    .line 948
    invoke-virtual {v3, v2, v4}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 949
    if-eqz p1, :cond_3

    .line 950
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3, v2}, Lcom/android/emailcommon/utility/Utility;->listViewSmoothScrollToPosition(Landroid/app/Activity;Landroid/widget/ListView;I)V

    goto :goto_1
.end method


# virtual methods
.method public canNavigateUp()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 624
    iget-boolean v1, p0, Lcom/android/email/activity/MailboxListFragment;->mParentDetermined:Z

    if-nez v1, :cond_1

    .line 627
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->isRoot()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->initializeArgCache()V

    .line 347
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mImmutableAccountId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEnableHighlight()Z
    .locals 1

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->initializeArgCache()V

    .line 365
    iget-boolean v0, p0, Lcom/android/email/activity/MailboxListFragment;->mImmutableEnableHighlight:Z

    return v0
.end method

.method public getInitialCurrentMailboxId()J
    .locals 2

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->initializeArgCache()V

    .line 356
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mImmutableInitialCurrentMailboxId:J

    return-wide v0
.end method

.method public getSelectedMailboxId()J
    .locals 4

    .prologue
    .line 585
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mHighlightedMailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mHighlightedMailboxId:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    goto :goto_0
.end method

.method public navigateUp()Z
    .locals 11

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    const/4 v0, 0x0

    .line 614
    :goto_0
    return v0

    .line 603
    :cond_0
    new-instance v10, Lcom/android/email/activity/MailboxListFragment$2;

    invoke-direct {v10, p0}, Lcom/android/email/activity/MailboxListFragment$2;-><init>(Lcom/android/email/activity/MailboxListFragment;)V

    .line 610
    .local v10, callback:Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask$ResultCallback;
    new-instance v0, Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getAccountId()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getEnableHighlight()Z

    move-result v5

    iget-wide v6, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    iget-wide v8, p0, Lcom/android/email/activity/MailboxListFragment;->mHighlightedMailboxId:J

    invoke-direct/range {v0 .. v10}, Lcom/android/email/activity/MailboxListFragment$FindParentMailboxTask;-><init>(Landroid/content/Context;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;JZJJLcom/android/email/activity/MailboxListFragment$FindParentMailboxTask$ResultCallback;)V

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->cancelPreviousAndExecuteParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 614
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onActivityCreated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 451
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 455
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 456
    .local v0, lv:Landroid/widget/ListView;
    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 457
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 458
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 460
    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    iget-wide v3, p0, Lcom/android/email/activity/MailboxListFragment;->mHighlightedMailboxId:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/email/activity/MailboxListFragment;->startLoading(JJ)V

    .line 462
    invoke-static {p0}, Lcom/android/email/activity/UiUtilities;->installFragment(Landroid/app/Fragment;)V

    .line 463
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 371
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

    .line 373
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 374
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 383
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

    .line 385
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 387
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    .line 388
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/email/RefreshManager;->getInstance(Landroid/content/Context;)Lcom/android/email/RefreshManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    .line 389
    new-instance v0, Lcom/android/email/activity/MailboxFragmentAdapter;

    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mMailboxesAdapterCallback:Lcom/android/email/activity/MailboxFragmentAdapter$Callback;

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/MailboxFragmentAdapter;-><init>(Landroid/content/Context;Lcom/android/email/activity/MailboxFragmentAdapter$Callback;)V

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

    .line 390
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 392
    if-nez p1, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->setInitialParentAndHighlight()V

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/email/activity/MailboxListFragment;->restoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onCreateView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 435
    const v0, 0x7f040036

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 533
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

    .line 535
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 536
    iget-object v1, p0, Lcom/android/email/activity/MailboxListFragment;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v1}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 538
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 539
    .local v0, a:Landroid/app/Activity;
    instance-of v1, v0, Lcom/android/email/activity/FragmentInstallable;

    if-eqz v1, :cond_0

    .line 540
    check-cast v0, Lcom/android/email/activity/FragmentInstallable;

    .end local v0           #a:Landroid/app/Activity;
    invoke-interface {v0, p0}, Lcom/android/email/activity/FragmentInstallable;->onRemoveFragment(Landroid/app/Fragment;)V

    .line 543
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 521
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

    .line 523
    invoke-static {p0}, Lcom/android/email/activity/UiUtilities;->uninstallFragment(Landroid/app/Fragment;)V

    .line 524
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 525
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 548
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

    .line 550
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 551
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1215
    const/4 v0, 0x0

    .line 1216
    .local v0, result:Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1254
    :goto_0
    :pswitch_0
    return v0

    .line 1218
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/email/activity/MailboxListFragment;->onDragStarted(Landroid/view/DragEvent;)Z

    move-result v0

    .line 1219
    goto :goto_0

    .line 1231
    :pswitch_2
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->onDragExited()V

    goto :goto_0

    .line 1238
    :pswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->onDragEnded()V

    goto :goto_0

    .line 1242
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/android/email/activity/MailboxListFragment;->onDragLocation(Landroid/view/DragEvent;)V

    goto :goto_0

    .line 1249
    :pswitch_5
    invoke-direct {p0, p2}, Lcom/android/email/activity/MailboxListFragment;->onDrop(Landroid/view/DragEvent;)Z

    move-result v0

    .line 1250
    goto :goto_0

    .line 1216
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "doNotUse"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 885
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    if-nez v0, :cond_1

    .line 891
    const-string v0, "MailboxListFragment"

    const-string v6, "fragment has been destroyed, ignore the click event"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 894
    .restart local p2
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

    invoke-virtual {v0, p3}, Lcom/android/email/activity/MailboxFragmentAdapter;->getId(I)J

    move-result-wide v3

    .line 895
    .local v3, id:J
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

    invoke-virtual {v0, p3}, Lcom/android/email/activity/MailboxFragmentAdapter;->isAccountRow(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 896
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    invoke-interface {v0, v3, v4}, Lcom/android/email/activity/MailboxListFragment$Callback;->onAccountSelected(J)V

    goto :goto_0

    .line 897
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

    invoke-virtual {v0, p3}, Lcom/android/email/activity/MailboxFragmentAdapter;->isMailboxRow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

    invoke-virtual {v0, p3}, Lcom/android/email/activity/MailboxFragmentAdapter;->getAccountId(I)J

    move-result-wide v1

    .line 903
    .local v1, accountId:J
    const/4 v5, 0x0

    .line 904
    .local v5, nestedNavigation:Z
    instance-of v0, p2, Lcom/android/email/activity/MailboxListItem;

    if-eqz v0, :cond_3

    check-cast p2, Lcom/android/email/activity/MailboxListItem;

    .end local p2
    invoke-virtual {p2}, Lcom/android/email/activity/MailboxListItem;->isNavigable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v6, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    cmp-long v0, v3, v6

    if-eqz v0, :cond_3

    .line 908
    invoke-direct {p0, v3, v4, v3, v4}, Lcom/android/email/activity/MailboxListFragment;->startLoading(JJ)V

    .line 909
    const/4 v5, 0x1

    .line 911
    :cond_3
    const-wide/high16 v6, 0x1000

    cmp-long v0, v1, v6

    if-nez v0, :cond_4

    .line 915
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getAccountId()J

    move-result-wide v1

    .line 917
    :cond_4
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    invoke-interface/range {v0 .. v5}, Lcom/android/email/activity/MailboxListFragment$Callback;->onMailboxSelected(JJZ)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 501
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

    .line 503
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mSavedListState:Landroid/os/Parcelable;

    .line 504
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 505
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onResume"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 488
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 492
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getAccountId()J

    move-result-wide v0

    .line 493
    .local v0, accountId:J
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {v2, v0, v1}, Lcom/android/email/RefreshManager;->isMailboxListStale(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    iget-object v2, p0, Lcom/android/email/activity/MailboxListFragment;->mRefreshManager:Lcom/android/email/RefreshManager;

    invoke-virtual {v2, v0, v1}, Lcom/android/email/RefreshManager;->refreshMailboxList(J)Z

    .line 496
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 556
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

    .line 558
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 559
    const-string v0, "MailboxListFragment.state.parent_mailbox_id"

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mParentMailboxId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 560
    const-string v0, "MailboxListFragment.state.selected_mailbox_id"

    iget-wide v1, p0, Lcom/android/email/activity/MailboxListFragment;->mHighlightedMailboxId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 561
    invoke-direct {p0}, Lcom/android/email/activity/MailboxListFragment;->isViewCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    const-string v0, "MailboxListFragment.state.listState"

    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 565
    :cond_0
    const-string v0, "MailboxListFragment.state.VipMailCount"

    iget v1, p0, Lcom/android/email/activity/MailboxListFragment;->mVipMailCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 566
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 475
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

    .line 477
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 478
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 513
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

    .line 515
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 516
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/MailboxListFragment$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 466
    if-nez p1, :cond_0

    sget-object p1, Lcom/android/email/activity/MailboxListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MailboxListFragment$Callback;

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/MailboxListFragment;->mCallback:Lcom/android/email/activity/MailboxListFragment$Callback;

    .line 467
    return-void
.end method

.method public setHighlightedMailbox(J)V
    .locals 2
    .parameter "mailboxId"

    .prologue
    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " setHighlightedMailbox  mailbox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->lifecycle(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p0}, Lcom/android/email/activity/MailboxListFragment;->getEnableHighlight()Z

    move-result v0

    if-nez v0, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    iget-wide v0, p0, Lcom/android/email/activity/MailboxListFragment;->mHighlightedMailboxId:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/android/email/activity/MailboxListFragment;->mListAdapter:Lcom/android/email/activity/MailboxFragmentAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    .line 768
    iput-wide p1, p0, Lcom/android/email/activity/MailboxListFragment;->mNextHighlightedMailboxId:J

    goto :goto_0

    .line 771
    :cond_2
    iput-wide p1, p0, Lcom/android/email/activity/MailboxListFragment;->mHighlightedMailboxId:J

    .line 772
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MailboxListFragment;->updateHighlightedMailbox(Z)Z

    goto :goto_0
.end method
