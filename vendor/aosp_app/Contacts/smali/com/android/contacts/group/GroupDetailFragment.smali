.class public Lcom/android/contacts/group/GroupDetailFragment;
.super Landroid/app/Fragment;
.source "GroupDetailFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/GroupDetailFragment$GroupDeleteHandler;,
        Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;,
        Lcom/android/contacts/group/GroupDetailFragment$SimReceiver;,
        Lcom/android/contacts/group/GroupDetailFragment$SendGroupEmailTask;,
        Lcom/android/contacts/group/GroupDetailFragment$SendGroupSmsTask;,
        Lcom/android/contacts/group/GroupDetailFragment$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOADER_MEMBERS:I = 0x1

.field private static final LOADER_METADATA:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GroupDetailFragment"

.field private static isFinished:Z

.field private static sProgressDialog:Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;


# instance fields
.field private DISABLE_MOVE_MENU:Z

.field private OCL:J

.field private OCL1:J

.field private OLF:J

.field private OLF1:J

.field private groupMemberSize:I

.field private mAccountName:Ljava/lang/String;

.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private mAccountTypeString:Ljava/lang/String;

.field private mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

.field private mCategoryId:Ljava/lang/String;

.field private mCloseActivityAfterDelete:Z

.field private final mContactTileListener:Lcom/android/contacts/list/ContactTileView$Listener;

.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/lang/String;

.field private mDeleteEndListener:Lcom/android/contacts/ContactSaveService$DeleteEndListener;

.field private mEmptyView:Landroid/view/View;

.field private mGroupId:J

.field private final mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupMetadataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupName:Ljava/lang/String;

.field private mGroupSize:Landroid/widget/TextView;

.field private mGroupSourceView:Landroid/view/View;

.field private mGroupSourceViewContainer:Landroid/view/ViewGroup;

.field private mGroupTitle:Landroid/widget/TextView;

.field private mGroupUri:Landroid/net/Uri;

.field private mIsReadOnly:Z

.field private mIsVisible:Z

.field private mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

.field private mLoadingContact:Landroid/widget/TextView;

.field private mLoadingContainer:Landroid/view/View;

.field private mMemberListView:Landroid/widget/ListView;

.field private mOptionsMenuGroupDeletable:Z

.field private mOptionsMenuGroupPresent:Z

.field private mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRootView:Landroid/view/View;

.field private mShowGroupActionInActionBar:Z

.field private mSimId:I

.field private mSimName:Ljava/lang/String;

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I

.field private mWaitCursorView:Lcom/mediatek/contacts/widget/WaitCursorView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1310
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/group/GroupDetailFragment;->isFinished:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 178
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 294
    new-instance v0, Lcom/android/contacts/group/GroupDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupDetailFragment$1;-><init>(Lcom/android/contacts/group/GroupDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContactTileListener:Lcom/android/contacts/list/ContactTileView$Listener;

    .line 317
    new-instance v0, Lcom/android/contacts/group/GroupDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupDetailFragment$2;-><init>(Lcom/android/contacts/group/GroupDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupMetadataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 412
    new-instance v0, Lcom/android/contacts/group/GroupDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupDetailFragment$3;-><init>(Lcom/android/contacts/group/GroupDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 773
    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mCategoryId:Ljava/lang/String;

    .line 774
    iput v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mSlotId:I

    .line 775
    iput v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mSimId:I

    .line 778
    iput v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->groupMemberSize:I

    .line 779
    iput-boolean v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->DISABLE_MOVE_MENU:Z

    .line 1199
    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 1358
    new-instance v0, Lcom/android/contacts/group/GroupDetailFragment$GroupDeleteHandler;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/group/GroupDetailFragment$GroupDeleteHandler;-><init>(Lcom/android/contacts/group/GroupDetailFragment;Lcom/android/contacts/group/GroupDetailFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mDeleteEndListener:Lcom/android/contacts/ContactSaveService$DeleteEndListener;

    .line 1438
    iput-boolean v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mIsVisible:Z

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/android/contacts/group/GroupDetailFragment$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/android/contacts/list/ContactTileAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/group/GroupDetailFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupDetailFragment;->updateSize(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/contacts/group/GroupDetailFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupDetailFragment;->updateTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/group/GroupDetailFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->OCL1:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/contacts/group/GroupDetailFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->OCL1:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/contacts/group/GroupDetailFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/group/GroupDetailFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->OLF1:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/contacts/group/GroupDetailFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->OLF1:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/contacts/group/GroupDetailFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->groupMemberSize:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/contacts/group/GroupDetailFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->groupMemberSize:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/contacts/group/GroupDetailFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/contacts/group/GroupDetailFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->DISABLE_MOVE_MENU:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/mediatek/contacts/widget/WaitCursorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mWaitCursorView:Lcom/mediatek/contacts/widget/WaitCursorView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/group/GroupDetailFragment;Landroid/content/ContentResolver;JLjava/util/HashSet;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/group/GroupDetailFragment;->getWhere(Landroid/content/ContentResolver;JLjava/util/HashSet;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/contacts/group/GroupDetailFragment;Landroid/content/Context;Ljava/lang/StringBuilder;Landroid/content/ContentResolver;Ljava/util/HashSet;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 111
    invoke-direct/range {p0 .. p5}, Lcom/android/contacts/group/GroupDetailFragment;->showNoTelphoneOrEmailToast(Landroid/content/Context;Ljava/lang/StringBuilder;Landroid/content/ContentResolver;Ljava/util/HashSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/contacts/group/GroupDetailFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mSlotId:I

    return v0
.end method

.method static synthetic access$2500()Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/android/contacts/group/GroupDetailFragment;->sProgressDialog:Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;)Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    sput-object p0, Lcom/android/contacts/group/GroupDetailFragment;->sProgressDialog:Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;

    return-object p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/android/contacts/group/GroupDetailFragment;->isFinished:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    sput-boolean p0, Lcom/android/contacts/group/GroupDetailFragment;->isFinished:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/contacts/group/GroupDetailFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->OCL:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/contacts/group/GroupDetailFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->OCL:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/group/GroupDetailFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->OLF:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/contacts/group/GroupDetailFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    iput-wide p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->OLF:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/contacts/group/GroupDetailFragment;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupDetailFragment;->bindGroupMetaData(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/group/GroupDetailFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->startGroupMembersLoader()V

    return-void
.end method

.method private bindGroupMetaData(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 488
    const/4 v4, -0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 489
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 490
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeString:Ljava/lang/String;

    .line 492
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountName:Ljava/lang/String;

    .line 494
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mDataSet:Ljava/lang/String;

    .line 495
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    .line 496
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupName:Ljava/lang/String;

    .line 497
    const/4 v4, 0x7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mIsReadOnly:Z

    .line 498
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/contacts/group/GroupDetailFragment;->updateTitle(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 502
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, accountTypeString:Ljava/lang/String;
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 504
    .local v1, dataSet:Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/group/GroupDetailFragment;->updateAccountType(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    .end local v0           #accountTypeString:Ljava/lang/String;
    .end local v1           #dataSet:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private configurePhotoLoader()V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    .line 261
    :cond_2
    return-void
.end method

.method private getAllRawContactIds(Landroid/content/ContentResolver;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 16
    .parameter "resolver"
    .parameter "ids"

    .prologue
    .line 1378
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1379
    .local v15, whereId:Ljava/lang/StringBuilder;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1381
    .local v14, rawContactIds:Ljava/lang/StringBuilder;
    const-string v0, "_id IN("

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1382
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    const-string v0, ")"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    const-string v0, "GroupDetailFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getAllRawContactIds]query allrawcontactids cursor selection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "name_raw_contact_id"

    aput-object v3, v2, v0

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1390
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 1391
    .local v13, rawContactIdSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    if-eqz v8, :cond_1

    .line 1392
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1393
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 1394
    .local v12, rawContactId:Ljava/lang/Long;
    invoke-virtual {v13, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1396
    .end local v12           #rawContactId:Ljava/lang/Long;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1400
    :cond_1
    invoke-virtual {v13}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1401
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Long;

    invoke-virtual {v13, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Long;

    .line 1402
    .local v6, allRawContactsIdArray:[Ljava/lang/Long;
    move-object v7, v6

    .local v7, arr$:[Ljava/lang/Long;
    array-length v11, v7

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v11, :cond_3

    aget-object v10, v7, v9

    .line 1403
    .local v10, id:Ljava/lang/Long;
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1404
    const-string v0, ","

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1406
    :cond_2
    invoke-virtual {v10}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1410
    .end local v6           #allRawContactsIdArray:[Ljava/lang/Long;
    .end local v7           #arr$:[Ljava/lang/Long;
    .end local v9           #i$:I
    .end local v10           #id:Ljava/lang/Long;
    .end local v11           #len$:I
    :cond_3
    return-object v14
.end method

.method private getWhere(Landroid/content/ContentResolver;JLjava/util/HashSet;)Ljava/lang/StringBuilder;
    .locals 10
    .parameter "resolver"
    .parameter "groupId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .prologue
    .line 1164
    .local p4, allContacts:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "contact_id"

    aput-object v3, v2, v0

    const-string v3, "mimetype=? AND data1=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "vnd.android.cursor.item/group_membership"

    aput-object v5, v4, v0

    const/4 v0, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1168
    .local v6, contactCursor:Landroid/database/Cursor;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1169
    .local v8, ids:Ljava/lang/StringBuilder;
    if-eqz v6, :cond_2

    .line 1170
    const-string v0, "GroupDetailFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contactCusor count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1172
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1173
    .local v7, contactId:Ljava/lang/Long;
    invoke-virtual {p4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1174
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    invoke-virtual {p4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1178
    .end local v7           #contactId:Ljava/lang/Long;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1180
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1181
    .local v9, where:Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 1182
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1183
    const-string v0, "contact_id IN ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    const-string v0, " AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    .end local v9           #where:Ljava/lang/StringBuilder;
    :goto_1
    return-object v9

    .line 1187
    .restart local v9       #where:Ljava/lang/StringBuilder;
    :cond_3
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private registerSimReceiver()V
    .locals 4

    .prologue
    .line 1202
    const-string v1, "GroupDetailFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[registerSimReceiver]mSimReceiver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mSimReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1204
    new-instance v1, Lcom/android/contacts/group/GroupDetailFragment$SimReceiver;

    invoke-direct {v1, p0}, Lcom/android/contacts/group/GroupDetailFragment$SimReceiver;-><init>(Lcom/android/contacts/group/GroupDetailFragment;)V

    iput-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 1205
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1206
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PHB_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1207
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1209
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private showNoTelphoneOrEmailToast(Landroid/content/Context;Ljava/lang/StringBuilder;Landroid/content/ContentResolver;Ljava/util/HashSet;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .parameter "context"
    .parameter "builder"
    .parameter "resolver"
    .parameter
    .parameter "emailOrSms"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/StringBuilder;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 959
    .local p4, allContacts:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 960
    .local v13, ids:Ljava/lang/StringBuilder;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 961
    .local v18, where:Ljava/lang/StringBuilder;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 962
    .local v15, noNumberContactList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 963
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Long;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Long;

    .line 964
    .local v8, allContactsArray:[Ljava/lang/Long;
    move-object v9, v8

    .local v9, arr$:[Ljava/lang/Long;
    array-length v14, v9

    .local v14, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v14, :cond_1

    aget-object v12, v9, v11

    .line 965
    .local v12, id:Ljava/lang/Long;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 966
    const-string v2, ","

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    :cond_0
    invoke-virtual {v12}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 973
    .end local v8           #allContactsArray:[Ljava/lang/Long;
    .end local v9           #arr$:[Ljava/lang/Long;
    .end local v11           #i$:I
    .end local v12           #id:Ljava/lang/Long;
    .end local v14           #len$:I
    :cond_1
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 974
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v13}, Lcom/android/contacts/group/GroupDetailFragment;->getAllRawContactIds(Landroid/content/ContentResolver;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 975
    const-string v2, "GroupDetailFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getSmsAddressFromGroup]the best available rawcontactsids:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 982
    const-string v2, "_id IN("

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    const-string v2, ")"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    const-string v2, " AND "

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    const-string v2, "deleted= 0"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    const-string v2, "GroupDetailFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getSmsAddressFromGroup]query no name cursor selection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "display_name"

    aput-object v5, v4, v2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "contact_id ASC "

    move-object/from16 v2, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 996
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_6

    .line 997
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 998
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 977
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_2
    const-string v2, "GroupDetailFragment"

    const-string v3, "[getSmsAddressFromGroup] without any empty properties contacts, return."

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1026
    :cond_3
    :goto_2
    return-object v16

    .line 986
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_2

    .line 1000
    .restart local v10       #cursor:Landroid/database/Cursor;
    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1002
    :cond_6
    const-string v17, ""

    .line 1003
    .local v17, str:Ljava/lang/String;
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 1004
    const-string v2, "sms"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const v2, 0x7f0c0052

    :goto_3
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 1021
    :cond_7
    :goto_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1022
    .local v16, result:Ljava/lang/String;
    const-string v2, "GroupDetailFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getSmsAddressFromGroup]result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 1024
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_2

    .line 1004
    .end local v16           #result:Ljava/lang/String;
    :cond_8
    const v2, 0x7f0c00b7

    goto :goto_3

    .line 1008
    :cond_9
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 1009
    const-string v2, "sms"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x7f0c0053

    :goto_5
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto :goto_4

    :cond_a
    const v2, 0x7f0c00b8

    goto :goto_5

    .line 1014
    :cond_b
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_7

    .line 1015
    const-string v2, "sms"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const v2, 0x7f0c0051

    :goto_6
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_4

    :cond_c
    const v2, 0x7f0c00b6

    goto :goto_6
.end method

.method private startGroupMembersLoader()V
    .locals 4

    .prologue
    .line 286
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    const-string v0, "GroupDetailFragment"

    const-string v1, "#startGroupMembersLoader(),the fragment is not attach to  Activity."

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method private startGroupMetadataLoader()V
    .locals 4

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupMetadataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 280
    return-void
.end method

.method private unregisterSimReceiver()V
    .locals 3

    .prologue
    .line 1212
    const-string v0, "GroupDetailFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unregisterSimReceiver]mSimReceiver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mSimReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1214
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 1217
    :cond_0
    return-void
.end method

.method private updateAccountType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "accountTypeString"
    .parameter "dataSet"

    .prologue
    .line 551
    iget-boolean v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mShowGroupActionInActionBar:Z

    if-eqz v2, :cond_1

    .line 552
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    invoke-interface {v2, p1, p2}, Lcom/android/contacts/group/GroupDetailFragment$Listener;->onAccountTypeUpdated(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 557
    .local v1, manager:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    .line 562
    .local v0, accountType:Lcom/android/contacts/model/account/AccountType;
    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountType;->getViewGroupActivity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 563
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    if-nez v2, :cond_2

    .line 564
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/group/GroupDetailDisplayUtils;->getNewGroupSourceView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    .line 568
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceViewContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 569
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceViewContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 574
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 575
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    invoke-static {v2, v3, p1, p2}, Lcom/android/contacts/group/GroupDetailDisplayUtils;->bindGroupSourceView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    new-instance v3, Lcom/android/contacts/group/GroupDetailFragment$4;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/group/GroupDetailFragment$4;-><init>(Lcom/android/contacts/group/GroupDetailFragment;Lcom/android/contacts/model/account/AccountType;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 587
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 588
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSize(I)V
    .locals 6
    .parameter "size"

    .prologue
    .line 522
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 523
    const/4 v1, 0x0

    .line 533
    .local v1, groupSizeString:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSize:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 534
    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSize:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    :goto_1
    return-void

    .line 525
    .end local v1           #groupSizeString:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0007

    invoke-virtual {v3, v4, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 527
    .local v2, groupSizeTemplateString:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    iget-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeString:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/contacts/group/GroupDetailFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    .line 529
    .local v0, accountType:Lcom/android/contacts/model/account/AccountType;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #groupSizeString:Ljava/lang/String;
    goto :goto_0

    .line 536
    .end local v0           #accountType:Lcom/android/contacts/model/account/AccountType;
    .end local v2           #groupSizeTemplateString:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    invoke-interface {v3, v1}, Lcom/android/contacts/group/GroupDetailFragment$Listener;->onGroupSizeUpdated(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    invoke-interface {v0, p1}, Lcom/android/contacts/group/GroupDetailFragment$Listener;->onGroupTitleUpdated(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public closeActivityAfterDelete(Z)V
    .locals 0
    .parameter "closeActivity"

    .prologue
    .line 764
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mCloseActivityAfterDelete:Z

    .line 765
    return-void
.end method

.method public dismissDialog()V
    .locals 2

    .prologue
    .line 1254
    sget-object v0, Lcom/android/contacts/group/GroupDetailFragment;->sProgressDialog:Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/group/GroupDetailFragment;->sProgressDialog:Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/group/GroupDetailFragment;->sProgressDialog:Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1256
    sget-object v0, Lcom/android/contacts/group/GroupDetailFragment;->sProgressDialog:Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;

    #getter for: Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;->mShouldDismiss:Z
    invoke-static {v0}, Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;->access$2400(Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1257
    sget-object v0, Lcom/android/contacts/group/GroupDetailFragment;->sProgressDialog:Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;

    const/4 v1, 0x1

    #setter for: Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;->mIsDismiss:Z
    invoke-static {v0, v1}, Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;->access$2302(Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;Z)Z

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1260
    :cond_1
    sget-object v0, Lcom/android/contacts/group/GroupDetailFragment;->sProgressDialog:Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 1261
    sget-object v0, Lcom/android/contacts/group/GroupDetailFragment;->sProgressDialog:Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;

    const/4 v1, 0x0

    #setter for: Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;->mIsDismiss:Z
    invoke-static {v0, v1}, Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;->access$2302(Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;Z)Z

    goto :goto_0
.end method

.method public getGroupId()J
    .locals 2

    .prologue
    .line 768
    iget-wide v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    return-wide v0
.end method

.method public getGroupUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isFragmentVisible()Z
    .locals 1

    .prologue
    .line 1435
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mIsVisible:Z

    return v0
.end method

.method public isGroupDeletable()Z
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mIsReadOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupPresent()Z
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOptionsMenuChanged()Z
    .locals 2

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupDeletable:Z

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isGroupDeletable()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupPresent:Z

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isGroupPresent()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadExtras(I)V
    .locals 0
    .parameter "slotId"

    .prologue
    .line 789
    iput p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mSlotId:I

    .line 790
    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->registerSimReceiver()V

    .line 791
    return-void
.end method

.method public loadExtras(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .parameter "CategoryId"
    .parameter "slotId"
    .parameter "simIndicator"
    .parameter "simName"

    .prologue
    .line 781
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mCategoryId:Ljava/lang/String;

    .line 782
    iput p2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mSlotId:I

    .line 783
    iput p3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mSimId:I

    .line 784
    iput-object p4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mSimName:Ljava/lang/String;

    .line 785
    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->registerSimReceiver()V

    .line 786
    return-void
.end method

.method public loadGroup(Landroid/net/Uri;)V
    .locals 0
    .parameter "groupUri"

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    .line 242
    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->startGroupMetadataLoader()V

    .line 243
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 183
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 184
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    .line 185
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 187
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 188
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 190
    .local v0, columnCount:I
    new-instance v2, Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContactTileListener:Lcom/android/contacts/list/ContactTileView$Listener;

    sget-object v4, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->GROUP_MEMBERS:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-direct {v2, p1, v3, v0, v4}, Lcom/android/contacts/list/ContactTileAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ContactTileView$Listener;ILcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    .line 193
    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->configurePhotoLoader()V

    .line 194
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 608
    const v0, 0x7f100014

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 609
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 204
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mDeleteEndListener:Lcom/android/contacts/ContactSaveService$DeleteEndListener;

    invoke-static {v0}, Lcom/android/contacts/ContactSaveService;->setDeleteEndListener(Lcom/android/contacts/ContactSaveService$DeleteEndListener;)V

    .line 205
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 206
    const v0, 0x7f040072

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    .line 207
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f07014d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupTitle:Landroid/widget/TextView;

    .line 208
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f07014e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSize:Landroid/widget/TextView;

    .line 209
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f07014c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceViewContainer:Landroid/view/ViewGroup;

    .line 211
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mEmptyView:Landroid/view/View;

    .line 212
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    .line 213
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 221
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0701da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mLoadingContainer:Landroid/view/View;

    .line 226
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0701dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mLoadingContact:Landroid/widget/TextView;

    .line 227
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mLoadingContact:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0701db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mProgress:Landroid/widget/ProgressBar;

    .line 229
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 231
    new-instance v0, Lcom/mediatek/contacts/widget/WaitCursorView;

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mLoadingContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mProgress:Landroid/widget/ProgressBar;

    iget-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mLoadingContact:Landroid/widget/TextView;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mediatek/contacts/widget/WaitCursorView;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mWaitCursorView:Lcom/mediatek/contacts/widget/WaitCursorView;

    .line 237
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1195
    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->unregisterSimReceiver()V

    .line 1196
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1197
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 1365
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 1366
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mDeleteEndListener:Lcom/android/contacts/ContactSaveService$DeleteEndListener;

    invoke-static {v0}, Lcom/android/contacts/ContactSaveService;->removeDeleteEndListener(Lcom/android/contacts/ContactSaveService$DeleteEndListener;)V

    .line 1367
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    .line 200
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 706
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->isContactsApplicationBusy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 707
    const-string v1, "GroupDetailFragment"

    const-string v2, "[onOptionsItemSelected]contacts busy doing something"

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c0040

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/MtkToast;->toast(Landroid/content/Context;I)V

    .line 760
    :cond_0
    :goto_0
    return v0

    .line 712
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 715
    :pswitch_0
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mSlotId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    .line 717
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    if-eqz v1, :cond_0

    .line 718
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    invoke-interface {v1, v2}, Lcom/android/contacts/group/GroupDetailFragment$Listener;->onEditRequested(Landroid/net/Uri;)V

    goto :goto_0

    .line 724
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mCloseActivityAfterDelete:Z

    iget v5, p0, Lcom/android/contacts/group/GroupDetailFragment;->mSimId:I

    iget v6, p0, Lcom/android/contacts/group/GroupDetailFragment;->mSlotId:I

    invoke-static/range {v0 .. v6}, Lcom/android/contacts/interactions/GroupDeletionDialogFragment;->show(Landroid/app/FragmentManager;JLjava/lang/String;ZII)V

    move v0, v9

    .line 727
    goto :goto_0

    .line 732
    :pswitch_2
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;

    invoke-direct {v7, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 733
    .local v7, moveIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.contacts.list.group.MOVEMULTICONTACTS"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    const-string v1, "mGroupName"

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupName:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    const-string v1, "mSlotId"

    iget v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mSlotId:I

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 736
    const-string v1, "mGroupId"

    iget-wide v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    invoke-virtual {v7, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 737
    const-string v1, "mAccountName"

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 738
    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 740
    new-instance v8, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeString:Ljava/lang/String;

    invoke-direct {v8, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    .local v8, tmpAccount:Landroid/accounts/Account;
    const-string v1, "account"

    invoke-virtual {v7, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 744
    .end local v8           #tmpAccount:Landroid/accounts/Account;
    :cond_2
    invoke-virtual {p0, v7}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 745
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 746
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 751
    .end local v7           #moveIntent:Landroid/content/Intent;
    :pswitch_3
    new-instance v1, Lcom/android/contacts/group/GroupDetailFragment$SendGroupSmsTask;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/group/GroupDetailFragment$SendGroupSmsTask;-><init>(Lcom/android/contacts/group/GroupDetailFragment;Landroid/app/Activity;)V

    new-array v2, v9, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupName:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 755
    :pswitch_4
    new-instance v1, Lcom/android/contacts/group/GroupDetailFragment$SendGroupEmailTask;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/group/GroupDetailFragment$SendGroupEmailTask;-><init>(Lcom/android/contacts/group/GroupDetailFragment;Landroid/app/Activity;)V

    new-array v2, v9, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupName:Ljava/lang/String;

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 712
    nop

    :pswitch_data_0
    .packed-switch 0x7f070216
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 14
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 632
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isGroupDeletable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/contacts/group/GroupDetailFragment;->isFinished:Z

    if-eqz v0, :cond_4

    move v0, v12

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupDeletable:Z

    .line 633
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isGroupPresent()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/contacts/group/GroupDetailFragment;->isFinished:Z

    if-eqz v0, :cond_5

    move v0, v12

    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupPresent:Z

    .line 637
    const v0, 0x7f070216

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 638
    .local v8, editMenu:Landroid/view/MenuItem;
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupPresent:Z

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 640
    const v0, 0x7f070217

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 641
    .local v7, deleteMenu:Landroid/view/MenuItem;
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupDeletable:Z

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 645
    const-string v0, "GroupDetailFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->groupMemberSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "------groupMemberSize onPrepareOptionsMenu [fragment]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const v0, 0x7f070218

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 649
    .local v9, moveMenu:Landroid/view/MenuItem;
    const v0, 0x7f070219

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 650
    .local v11, sendMsgMenu:Landroid/view/MenuItem;
    const v0, 0x7f07021a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 651
    .local v10, sendEmailMenu:Landroid/view/MenuItem;
    iget v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->groupMemberSize:I

    if-gtz v0, :cond_6

    .line 652
    invoke-interface {v9, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 653
    invoke-interface {v11, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 654
    invoke-interface {v10, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 674
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 675
    const-string v0, "GroupDetailFragment"

    const-string v1, "it is tablet"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v13

    const-string v3, "title"

    aput-object v3, v2, v12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleted=0 AND account_name= \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 685
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 686
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    iget-wide v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 692
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-ne v0, v12, :cond_2

    .line 693
    invoke-interface {v8, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 694
    invoke-interface {v7, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 697
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 700
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_3
    return-void

    .end local v7           #deleteMenu:Landroid/view/MenuItem;
    .end local v8           #editMenu:Landroid/view/MenuItem;
    .end local v9           #moveMenu:Landroid/view/MenuItem;
    .end local v10           #sendEmailMenu:Landroid/view/MenuItem;
    .end local v11           #sendMsgMenu:Landroid/view/MenuItem;
    :cond_4
    move v0, v13

    .line 632
    goto/16 :goto_0

    :cond_5
    move v0, v13

    .line 633
    goto/16 :goto_1

    .line 656
    .restart local v7       #deleteMenu:Landroid/view/MenuItem;
    .restart local v8       #editMenu:Landroid/view/MenuItem;
    .restart local v9       #moveMenu:Landroid/view/MenuItem;
    .restart local v10       #sendEmailMenu:Landroid/view/MenuItem;
    .restart local v11       #sendMsgMenu:Landroid/view/MenuItem;
    :cond_6
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->DISABLE_MOVE_MENU:Z

    if-ne v0, v12, :cond_7

    .line 657
    invoke-interface {v9, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 661
    :goto_3
    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 662
    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 659
    :cond_7
    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1424
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mIsVisible:Z

    .line 1426
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 1418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mIsVisible:Z

    .line 1419
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1420
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 595
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 599
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->pause()V

    .line 604
    :goto_0
    return-void

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->resume()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 1443
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 1444
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1445
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mIsVisible:Z

    .line 1431
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 1432
    return-void
.end method

.method public setListener(Lcom/android/contacts/group/GroupDetailFragment$Listener;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    .line 265
    return-void
.end method

.method public setQuickContact(Z)V
    .locals 1
    .parameter "enableQuickContact"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactTileAdapter;->enableQuickContact(Z)V

    .line 247
    return-void
.end method

.method public setShowGroupSourceInActionBar(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 268
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mShowGroupActionInActionBar:Z

    .line 269
    return-void
.end method

.method public showDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1243
    new-instance v0, Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;

    invoke-direct {v0}, Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;-><init>()V

    sput-object v0, Lcom/android/contacts/group/GroupDetailFragment;->sProgressDialog:Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;

    .line 1244
    sget-object v0, Lcom/android/contacts/group/GroupDetailFragment;->sProgressDialog:Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;

    invoke-virtual {v0, p0, v3}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1246
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1247
    sget-object v0, Lcom/android/contacts/group/GroupDetailFragment;->sProgressDialog:Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "wait"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1248
    sget-object v0, Lcom/android/contacts/group/GroupDetailFragment;->sProgressDialog:Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;

    #setter for: Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;->mIsDismiss:Z
    invoke-static {v0, v3}, Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;->access$2302(Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;Z)Z

    .line 1249
    sget-object v0, Lcom/android/contacts/group/GroupDetailFragment;->sProgressDialog:Lcom/android/contacts/group/GroupDetailFragment$MyProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 1251
    :cond_0
    return-void
.end method
