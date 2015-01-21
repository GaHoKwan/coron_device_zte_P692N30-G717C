.class public Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;
.super Lcom/autonavi/xmgd/controls/GDBaseActivity;

# interfaces
.implements Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileRemovedListener;


# static fields
.field private static final DIALOG_ID_ALL_COMPLETION_EXIT:I = 0x6

.field private static final DIALOG_ID_CHECK_REMOVE_DATA:I = 0x1

.field private static final DIALOG_ID_GETTING_DATA_LIST:I = 0x3

.field private static final DIALOG_ID_NAVIGATOR_HAS_EXITED:I = 0x2

.field private static final DIALOG_ID_NODOWNLOAD_DATA:I = 0x5

.field private static final DIALOG_ID_REMOVING_DATA:I = 0x4

.field private static final TABDOWNLOAD:I = 0x0

.field private static final TAB_MAX:I = 0x1


# instance fields
.field private btnDownload:Landroid/widget/Button;

.field private btnDownloading:Landroid/widget/Button;

.field private btnNoDownload:Landroid/widget/Button;

.field private dialogCheckRemoveData:Lcom/autonavi/xmgd/utility/CustomDialog;

.field private homePressReceiver:Landroid/content/BroadcastReceiver;

.field private isInitViews:Z

.field private mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

.field private mBtnDownloadCancle:Landroid/widget/ImageButton;

.field private mBtnDownloadSure:Landroid/widget/Button;

.field private mCurrentScreen:I

.field private mDownloadAdapter:Lcom/autonavi/xmgd/citydata/DownloadAdapter;

.field private mDownloadData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadItemPosition:I

.field private mDownloadList:Landroid/widget/ExpandableListView;

.field private mDownloadSelectItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/citydata/DataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadSelectListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mDownloadSelectionCount:I

.field private mDownloadSelectionTotalSize:J

.field private mDownloadView:Landroid/view/View;

.field private mGrpDownloadDataBar:Landroid/view/ViewGroup;

.field private mIsGetDataListSuccess:Z

.field private mLastErrorStr:Ljava/lang/String;

.field private mListViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPagerAdapter:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$MyPagerAdapter;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private tvNoDownloadTask:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/GDBaseActivity;-><init>()V

    iput v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectionCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectionTotalSize:J

    iput v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadItemPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectItem:Ljava/util/ArrayList;

    iput v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mCurrentScreen:I

    iput-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mIsGetDataListSuccess:Z

    iput-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->isInitViews:Z

    new-instance v0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$1;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$1;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->homePressReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$12;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$12;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    return-object v0
.end method

.method static synthetic access$002(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->restartNavigation()V

    return-void
.end method

.method static synthetic access$102(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->exitNavigation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->refreshDownloadSelectedInfo()V

    return-void
.end method

.method static synthetic access$200(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->initViews()V

    return-void
.end method

.method static synthetic access$300(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mGrpDownloadDataBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->refreshDownloadScreen()V

    return-void
.end method

.method static synthetic access$702(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadItemPosition:I

    return p1
.end method

.method static synthetic access$800(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)Landroid/widget/ExpandableListView;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadList:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->addTaskToRemove()V

    return-void
.end method

.method private addTaskToRemove()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v2, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-boolean v3, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v3, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->addTaskToRemove(Lcom/autonavi/xmgd/citydata/DataItem;)V

    goto :goto_1

    :cond_2
    iget-boolean v2, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v2, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->addTaskToRemove(Lcom/autonavi/xmgd/citydata/DataItem;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private exitNavigation()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.plugin.action.exit_app"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->finish()V

    return-void
.end method

.method private initDownloadViews()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadView:Landroid/view/View;

    const v1, 0x7f0c018f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->tvNoDownloadTask:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadView:Landroid/view/View;

    const v1, 0x7f0c0193

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadList:Landroid/widget/ExpandableListView;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadView:Landroid/view/View;

    const v1, 0x7f0c0191

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBtnDownloadSure:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBtnDownloadSure:Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$5;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$5;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadView:Landroid/view/View;

    const v1, 0x7f0c0192

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBtnDownloadCancle:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBtnDownloadCancle:Landroid/widget/ImageButton;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$6;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$6;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadView:Landroid/view/View;

    const v1, 0x7f0c0190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mGrpDownloadDataBar:Landroid/view/ViewGroup;

    new-instance v0, Lcom/autonavi/xmgd/citydata/DownloadAdapter;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-direct {v0, p0, v1, v2}, Lcom/autonavi/xmgd/citydata/DownloadAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadAdapter:Lcom/autonavi/xmgd/citydata/DownloadAdapter;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->tvNoDownloadTask:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadAdapter:Lcom/autonavi/xmgd/citydata/DownloadAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadList:Landroid/widget/ExpandableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setFastScrollEnabled(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadAdapter:Lcom/autonavi/xmgd/citydata/DownloadAdapter;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DownloadAdapter;->getGroupCount()I

    move-result v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadList:Landroid/widget/ExpandableListView;

    iget v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadItemPosition:I

    if-lt v2, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setSelection(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadList:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$7;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$7;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->refreshDownloadScreen()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->tvNoDownloadTask:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadItemPosition:I

    goto :goto_1
.end method

.method private initViews()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->initDownloadViews()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->isInitViews:Z

    return-void
.end method

.method private refreshAllScreen()V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->refreshDownloadScreen()V

    return-void
.end method

.method private refreshDownloadScreen()V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getDownloadedDataListFromLocal()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v2

    :goto_0
    if-ge v4, v5, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iput-boolean v9, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v1, v2

    :goto_2
    if-ge v1, v7, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget v8, v0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->id:I

    if-ne v8, v0, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iput-boolean v9, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadAdapter:Lcom/autonavi/xmgd/citydata/DownloadAdapter;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DownloadAdapter;->setData(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadAdapter:Lcom/autonavi/xmgd/citydata/DownloadAdapter;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DownloadAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->tvNoDownloadTask:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void

    :cond_7
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->tvNoDownloadTask:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->refreshDownloadSelectedInfo()V

    goto :goto_3
.end method

.method private refreshDownloadSelectedInfo()V
    .locals 12

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v0, 0x0

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v3, v0

    move v1, v2

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-object v6, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-wide v6, v3

    move v4, v1

    move v3, v5

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-boolean v10, v1, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    iget-wide v10, v1, Lcom/autonavi/xmgd/citydata/DataItem;->supposeSize:J

    add-long/2addr v6, v10

    move v1, v3

    move v3, v4

    :goto_3
    move v4, v3

    move v3, v1

    goto :goto_2

    :cond_1
    move v1, v2

    move v3, v4

    goto :goto_3

    :cond_2
    if-eqz v3, :cond_3

    iput-boolean v5, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    :goto_4
    move v0, v4

    move-wide v3, v6

    :goto_5
    move v1, v0

    goto :goto_1

    :cond_3
    iput-boolean v2, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    goto :goto_4

    :cond_4
    iget-boolean v6, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    iget-wide v6, v0, Lcom/autonavi/xmgd/citydata/DataItem;->supposeSize:J

    add-long/2addr v3, v6

    move v0, v1

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadAdapter:Lcom/autonavi/xmgd/citydata/DownloadAdapter;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DownloadAdapter;->notifyDataSetChanged()V

    if-lez v1, :cond_8

    move v0, v2

    :goto_6
    iget-object v6, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mGrpDownloadDataBar:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v6

    if-eq v0, v6, :cond_6

    iget-object v6, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mGrpDownloadDataBar:Landroid/view/ViewGroup;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_6
    if-lez v1, :cond_7

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBtnDownloadSure:Landroid/widget/Button;

    const v6, 0x7f07021a

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v3, v4}, Lcom/autonavi/xmgd/citydata/GlobalCity;->formateFileSize(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iput v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectionCount:I

    iput-wide v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectionTotalSize:J

    goto/16 :goto_0

    :cond_8
    const/16 v0, 0x8

    goto :goto_6

    :cond_9
    move v0, v1

    goto :goto_5
.end method

.method private restartNavigation()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.plugin.action.restart_app.tob"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->finish()V

    return-void
.end method

.method private updateButtonStatus(ZZZ)V
    .locals 6

    const/4 v1, 0x1

    const v5, 0x7f08000c

    const v4, 0x7f08000b

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->btnNoDownload:Landroid/widget/Button;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->btnDownloading:Landroid/widget/Button;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->btnDownload:Landroid/widget/Button;

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->btnNoDownload:Landroid/widget/Button;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->btnDownloading:Landroid/widget/Button;

    if-eqz p2, :cond_5

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->btnDownload:Landroid/widget/Button;

    if-eqz p3, :cond_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setSelected(Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autonavi.xmgd.citydata.STOP_DATA_UPDATE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->finish()V

    return-void
.end method

.method public isConnectInternet()Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnectWifi()Z
    .locals 3

    const/4 v1, 0x1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/autonavi/xmgd/citydata/GlobalCity;->getInstance()Lcom/autonavi/xmgd/citydata/GlobalCity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/GlobalCity;->getDataUpdateDeleteModeBundle()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "mDownloadSelectionCount"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectionCount:I

    const-string v0, "mDownloadSelectionTotalSize"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectionTotalSize:J

    const-string v0, "mDownloadItemPosition"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadItemPosition:I

    const-string v0, "mLastErrorStr"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mLastErrorStr:Ljava/lang/String;

    const-string v0, "mDownloadData"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;

    const-string v0, "mCurrentScreen"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mCurrentScreen:I

    const-string v0, "mDownloadSelectItem"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectItem:Ljava/util/ArrayList;

    const-string v0, "mIsGetDataListSuccess"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mIsGetDataListSuccess:Z

    :cond_0
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->setContentView(I)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->homePressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v0, 0x7f0c002e

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDTitle;

    const v1, 0x7f0701f2

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDTitle;->setText(I)V

    const v0, 0x7f0c002f

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->btnNoDownload:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->btnNoDownload:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->btnNoDownload:Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$2;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$2;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0030

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->btnDownloading:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->btnDownloading:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->btnDownloading:Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$3;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$3;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0031

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->btnDownload:Landroid/widget/Button;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->btnDownload:Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$4;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$4;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mListViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030061

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadView:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mListViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$MyPagerAdapter;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mListViews:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$MyPagerAdapter;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mPagerAdapter:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$MyPagerAdapter;

    const v0, 0x7f0c0032

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mPagerAdapter:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$MyPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mCurrentScreen:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    invoke-direct {p0, v5, v5, v4}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->updateButtonStatus(ZZZ)V

    new-instance v0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$DataUpdateServiceConnection;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$DataUpdateServiceConnection;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/autonavi/xmgd/citydata/DataUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v4}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const/4 v6, 0x2

    const v5, 0x7f07001a

    const v4, 0x7f070019

    const v2, 0x7f07020a

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$8;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$8;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->dialogCheckRemoveData:Lcom/autonavi/xmgd/utility/CustomDialog;

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->dialogCheckRemoveData:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->dialogCheckRemoveData:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070214

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->dialogCheckRemoveData:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->dialogCheckRemoveData:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->dialogCheckRemoveData:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->dialogCheckRemoveData:Lcom/autonavi/xmgd/utility/CustomDialog;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$9;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$9;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070202

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v6, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleVisibility(Z)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0701f6

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setProgressBarContent(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v6, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07021b

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setProgressBarContent(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleVisibility(Z)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$10;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$10;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070220

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070016

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    new-instance v1, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$11;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$11;-><init>(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V

    invoke-direct {v0, p0, v3, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070200

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnSureText(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnCancelText(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setCancelable(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onDataRemoved(II)V
    .locals 1

    if-gtz p2, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->dismissDialog(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getIsMapRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->showDialog(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->exitNavigation()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    const-string v1, "DataUpdateDeleteMode  onDestroy"

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->removeOnFileRemovedListener(Lcom/autonavi/xmgd/citydata/DataUpdateService$IFileRemovedListener;)V

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->homePressReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->homePressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mIsGetDataListSuccess:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/autonavi/xmgd/citydata/GlobalCity;->shareInstance()Lcom/autonavi/xmgd/citydata/GlobalCity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/autonavi/xmgd/citydata/GlobalCity;->shareInstance()Lcom/autonavi/xmgd/citydata/GlobalCity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->setDataUpdateDeleteModeBundle(Landroid/os/Bundle;)V

    :cond_3
    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onPause()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mDownloadSelectionCount"

    iget v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectionCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mDownloadSelectionTotalSize"

    iget-wide v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectionTotalSize:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "mDownloadItemPosition"

    iget v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadItemPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mLastErrorStr"

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mLastErrorStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mDownloadData"

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "mCurrentScreen"

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mDownloadSelectItem"

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectItem:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v1, "mIsGetDataListSuccess"

    iget-boolean v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mIsGetDataListSuccess:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/autonavi/xmgd/citydata/GlobalCity;->shareInstance()Lcom/autonavi/xmgd/citydata/GlobalCity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/citydata/GlobalCity;->shareInstance()Lcom/autonavi/xmgd/citydata/GlobalCity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/citydata/GlobalCity;->setDataUpdateDeleteModeBundle(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x7f070214

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectionCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mDownloadSelectionTotalSize:J

    invoke-static {v3, v4}, Lcom/autonavi/xmgd/citydata/GlobalCity;->formateFileSize(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->dialogCheckRemoveData:Lcom/autonavi/xmgd/utility/CustomDialog;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTextContent(Ljava/lang/CharSequence;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDBaseActivity;->onStart()V

    iget-boolean v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->isInitViews:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getIsInBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->setInBackground(Z)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->refreshAllScreen()V

    goto :goto_0
.end method
