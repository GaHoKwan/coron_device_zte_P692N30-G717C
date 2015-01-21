.class public Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;
.super Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;
.source "SoftwareMoveActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/apksmanager/BaseListAdapter$ListViewCallBacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MoveBtnOnClickListener;,
        Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;,
        Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MoveItemOnClickListener;,
        Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$ViewHolder;
    }
.end annotation


# instance fields
.field private final DIALOG_ERROR:I

.field private final DIALOG_ERROR_MOVE_ZERO:I

.field private final DIALOG_MOVE_ALL_CONFIG:I

.field private final MENUITEM_MOVE_ALL_ID:I

.field private final MENUITEM_NULL_GROUPID:I

.field private final MENUITEM_USED_GROUPID:I

.field private comment_txt:Landroid/widget/TextView;

.field private extentionVersion:Z

.field private is_show_internal_app:Z

.field private left_space_txt:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field private mMoveableAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private moveAllText:Landroid/widget/TextView;

.field private moveAllView:Landroid/view/View;

.field protected moveOnClickListener:Landroid/view/View$OnClickListener;

.field private noSoftWearMove:Landroid/view/View;

.field private packageManager:Landroid/content/pm/PackageManager;

.field private total_space_txt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->packageManager:Landroid/content/pm/PackageManager;

    .line 55
    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mMoveableAppInfoList:Ljava/util/List;

    .line 56
    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mListView:Landroid/widget/ListView;

    .line 57
    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->total_space_txt:Landroid/widget/TextView;

    .line 58
    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->left_space_txt:Landroid/widget/TextView;

    .line 59
    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->comment_txt:Landroid/widget/TextView;

    .line 63
    iput-boolean v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->is_show_internal_app:Z

    .line 65
    iput v2, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->MENUITEM_NULL_GROUPID:I

    .line 66
    iput v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->MENUITEM_USED_GROUPID:I

    .line 67
    iput v2, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->MENUITEM_MOVE_ALL_ID:I

    .line 69
    iput v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->DIALOG_ERROR:I

    .line 70
    const/4 v0, 0x2

    iput v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->DIALOG_ERROR_MOVE_ZERO:I

    .line 71
    const/4 v0, 0x3

    iput v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->DIALOG_MOVE_ALL_CONFIG:I

    .line 74
    iput-boolean v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->extentionVersion:Z

    .line 615
    new-instance v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MoveBtnOnClickListener;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MoveBtnOnClickListener;-><init>(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->moveOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mMoveableAppInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->moveAllSelected()V

    return-void
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->moveSelected(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->is_show_internal_app:Z

    return p1
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->comment_txt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->extentionVersion:Z

    return v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->createSoftwareManagerProgressDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->total_space_txt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->left_space_txt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->createSoftwareMoveProgressDialog()V

    return-void
.end method

.method private clearLists()V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mMoveableAppInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mMoveableAppInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 685
    :cond_0
    return-void
.end method

.method private createSoftwareManagerProgressDialog()V
    .locals 3

    .prologue
    const v2, 0x7f0a0148

    .line 497
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p0, v2, v0, v1}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->createUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 502
    return-void
.end method

.method private createSoftwareMoveProgressDialog()V
    .locals 3

    .prologue
    .line 505
    const v0, 0x7f0a012f

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0135

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->createUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 510
    return-void
.end method

.method private initActionBar()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 455
    const/4 v3, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 458
    .local v2, menuItemAll:[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 459
    .local v1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 464
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 465
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 466
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->initActionBarTabs()V

    .line 467
    return-void

    .line 455
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x34t 0x1t 0xat 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private initActionBarTabs()V
    .locals 6

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 472
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 473
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 474
    const-string v2, "<==>tsj"

    const-string v3, "initActionBarTabs bp1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f0a0139

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    new-instance v3, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;

    const-string v4, "phone"

    const-class v5, Landroid/app/Fragment;

    invoke-direct {v3, p0, p0, v4, v5}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;-><init>(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 484
    .local v1, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 487
    invoke-virtual {v0}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f0a013a

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    new-instance v3, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;

    const-string v4, "sd card"

    const-class v5, Landroid/app/Fragment;

    invoke-direct {v3, p0, p0, v4, v5}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MyTabListener;-><init>(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 493
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 494
    return-void
.end method

.method private moveAllSelected()V
    .locals 7

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getmListView()Landroid/widget/ListView;

    move-result-object v5

    if-nez v5, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 623
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getmListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v3

    .line 624
    .local v3, items:[J
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .local v4, moveList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_2

    .line 626
    aget-wide v5, v3, v1

    long-to-int v2, v5

    .line 627
    .local v2, item:I
    iget-object v5, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mMoveableAppInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 631
    iget-object v6, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mMoveableAppInfoList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    invoke-virtual {v5}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->getIndex()I

    move-result v5

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 634
    .end local v2           #item:I
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 635
    iget-object v5, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mListView:Landroid/widget/ListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 637
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->setMenuItemEnabled(Z)V

    .line 639
    iget-boolean v5, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->is_show_internal_app:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 640
    iget-object v5, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    invoke-interface {v5, v4}, Lcom/zte/heartyservice/apksmanager/IApksManagerService;->moveApptoSD(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 647
    .end local v1           #i:I
    .end local v3           #items:[J
    .end local v4           #moveList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;>;"
    :catch_0
    move-exception v0

    .line 648
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 642
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #i:I
    .restart local v3       #items:[J
    .restart local v4       #moveList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;>;"
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    invoke-interface {v5, v4}, Lcom/zte/heartyservice/apksmanager/IApksManagerService;->moveApptoInternal(Ljava/util/List;)V

    goto :goto_0

    .line 645
    :cond_4
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->noAppMoved()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private moveSelected(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 654
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v1, moveList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;>;"
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mMoveableAppInfoList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    invoke-virtual {v2}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->getIndex()I

    move-result v2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 659
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 661
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->setMenuItemEnabled(Z)V

    .line 663
    iget-boolean v2, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->is_show_internal_app:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 664
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    invoke-interface {v2, v1}, Lcom/zte/heartyservice/apksmanager/IApksManagerService;->moveApptoSD(Ljava/util/List;)V

    .line 674
    .end local v1           #moveList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;>;"
    :goto_0
    return-void

    .line 666
    .restart local v1       #moveList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;>;"
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    invoke-interface {v2, v1}, Lcom/zte/heartyservice/apksmanager/IApksManagerService;->moveApptoInternal(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 671
    .end local v1           #moveList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;>;"
    :catch_0
    move-exception v0

    .line 672
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 669
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #moveList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;>;"
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->noAppMoved()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private noAppMoved()V
    .locals 1

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->dismissUpdateListProgressDialog()V

    .line 678
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->showDialog(I)V

    .line 679
    return-void
.end method


# virtual methods
.method protected BroadcastReceiverOperation(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 269
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    if-eqz v1, :cond_0

    .line 271
    const v1, 0x7f0a0148

    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0148

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, p0, v1, v2, v3}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->createUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 277
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    invoke-interface {v1}, Lcom/zte/heartyservice/apksmanager/IApksManagerService;->listMoveableApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected ServiceConnectedOperation()V
    .locals 4

    .prologue
    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mListView:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 248
    const v1, 0x7f0a0148

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0148

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, p0, v1, v2, v3}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->createUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 255
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->total_space_txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0137

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->left_space_txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0138

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->is_show_internal_app:Z

    .line 261
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    invoke-interface {v1}, Lcom/zte/heartyservice/apksmanager/IApksManagerService;->listMoveableApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getActivityView()I
    .locals 1

    .prologue
    .line 297
    const v0, 0x7f030084

    return v0
.end method

.method protected getIntentFilterArray()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v1, ifList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;>;"
    new-instance v0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;

    const-string v2, "package"

    invoke-direct {v0, p0, v2}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;-><init>(Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;Ljava/lang/String;)V

    .line 288
    .local v0, ifArray:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->addAction(Ljava/lang/String;)V

    .line 289
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->addAction(Ljava/lang/String;)V

    .line 290
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->addAction(Ljava/lang/String;)V

    .line 291
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 390
    invoke-super {p0, p1}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->onCreate(Landroid/os/Bundle;)V

    .line 391
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->packageManager:Landroid/content/pm/PackageManager;

    .line 393
    const v0, 0x7f0e009a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mListView:Landroid/widget/ListView;

    .line 394
    const v0, 0x7f0e01af

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->total_space_txt:Landroid/widget/TextView;

    .line 395
    const v0, 0x7f0e01b0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->left_space_txt:Landroid/widget/TextView;

    .line 396
    const v0, 0x7f0e01b1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->comment_txt:Landroid/widget/TextView;

    .line 397
    const v0, 0x7f0e01b3

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->moveAllView:Landroid/view/View;

    .line 398
    const v0, 0x7f0e01b2

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->noSoftWearMove:Landroid/view/View;

    .line 399
    const v0, 0x7f0e01b4

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->moveAllText:Landroid/widget/TextView;

    .line 401
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->moveAllView:Landroid/view/View;

    new-instance v1, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$4;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$4;-><init>(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 410
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->extentionVersion:Z

    .line 412
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->initActionBar()V

    .line 413
    return-void

    .line 410
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const v4, 0x7f0a0123

    .line 302
    const-string v1, "<==>tsj"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 375
    const-string v1, "<==>tsj"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog default id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 317
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 318
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a013b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 319
    new-instance v1, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$1;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$1;-><init>(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 331
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 332
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0136

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 333
    new-instance v1, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$2;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$2;-><init>(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 344
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 345
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a04d6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 346
    const v1, 0x7f0a0617

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 347
    const v1, 0x7f0a0174

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 348
    const v1, 0x7f0a0173

    new-instance v2, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$3;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$3;-><init>(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 417
    const-string v1, "<==>tsj"

    const-string v2, " SoftwareMoveActivity:: onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-super {p0}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->onDestroy()V

    .line 419
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->clearLists()V

    .line 423
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;

    .line 424
    .local v0, adapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;
    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->setListViewCallBacks(Lcom/zte/heartyservice/apksmanager/BaseListAdapter$ListViewCallBacks;)V

    .line 426
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 427
    iput-object v3, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mListView:Landroid/widget/ListView;

    .line 429
    :cond_0
    return-void
.end method

.method public onNotifyProgress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "progress"
    .parameter "taskName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 210
    const-string v0, "listMoveableAppTask"

    if-ne v0, p2, :cond_0

    .line 211
    const v0, 0x7f0a0148

    const/4 v1, 0x1

    invoke-virtual {p0, p0, v0, p1, v1}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->showUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 215
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 384
    invoke-super {p0, p1, p2}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 385
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-static {p2}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 386
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 433
    invoke-super {p0}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->onResume()V

    .line 434
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V

    .line 436
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 438
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->createSoftwareManagerProgressDialog()V

    .line 439
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->setMenuItemEnabled(Z)V

    .line 441
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->total_space_txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0137

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->left_space_txt:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0138

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    invoke-interface {v0}, Lcom/zte/heartyservice/apksmanager/IApksManagerService;->listMoveableApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 447
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onUpdateMoveableAppList(Ljava/util/List;)V
    .locals 29
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 87
    .local p1, moveableAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v22, localMoveableAppInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;>;"
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->is_show_internal_app:Z

    if-ne v6, v9, :cond_2

    .line 90
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getTotalInternalMemorySize()J

    move-result-wide v25

    .line 91
    .local v25, totalInternalMemorySize:J
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getAvailableInternalMemorySize()J

    move-result-wide v14

    .line 93
    .local v14, availableInternalMemorySize:J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->total_space_txt:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a0137

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->left_space_txt:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a0138

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v0, v14, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .end local v14           #availableInternalMemorySize:J
    .end local v25           #totalInternalMemorySize:J
    :goto_0
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v16, backedListItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/apksmanager/AbstractListItem;>;"
    const/16 v19, 0x0

    .line 130
    .local v19, iIndex:I
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    move/from16 v20, v19

    .end local v19           #iIndex:I
    .local v20, iIndex:I
    :cond_0
    :goto_1
    :try_start_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;

    .line 131
    .local v21, localMoveableAppInfo:Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->is_show_internal_app:Z

    const/4 v9, 0x1

    if-ne v6, v9, :cond_5

    .line 132
    move-object/from16 v0, v21

    iget v6, v0, Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;->moveFlags:I

    const-string v9, "android.content.pm.PackageManager"

    const-string v27, "MOVE_EXTERNAL_MEDIA"

    move-object/from16 v0, v27

    invoke-static {v9, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->get_class_var_int(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-ne v6, v9, :cond_0

    .line 144
    :cond_1
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->packageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;->packageName:Ljava/lang/String;

    const/16 v27, 0x80

    move/from16 v0, v27

    invoke-virtual {v6, v9, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 148
    .local v11, appInfo:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v11}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 150
    .local v7, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 152
    .local v5, name:Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;->versionName:Ljava/lang/String;

    .line 153
    .local v4, version:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;->storageSpace:J

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    invoke-static {v6, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 156
    .local v8, appSize:Ljava/lang/String;
    new-instance v3, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;

    const-string v6, ""

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct/range {v3 .. v9}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    .local v3, backedListItem:Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
    add-int/lit8 v19, v20, 0x1

    .end local v20           #iIndex:I
    .restart local v19       #iIndex:I
    :try_start_2
    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->setIndex(I)V

    .line 159
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move/from16 v20, v19

    .line 160
    .end local v19           #iIndex:I
    .restart local v20       #iIndex:I
    goto :goto_1

    .line 102
    .end local v3           #backedListItem:Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
    .end local v4           #version:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #icon:Landroid/graphics/drawable/Drawable;
    .end local v8           #appSize:Ljava/lang/String;
    .end local v11           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v16           #backedListItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/apksmanager/AbstractListItem;>;"
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v20           #iIndex:I
    .end local v21           #localMoveableAppInfo:Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;
    :cond_2
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getTotalDefaultMemorySize()J

    move-result-wide v23

    .line 103
    .local v23, totalExternalMemorySize:J
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getAvailableDefaultMemorySize()J

    move-result-wide v12

    .line 106
    .local v12, availableExternalMemorySize:J
    const-wide/16 v27, -0x1

    cmp-long v6, v23, v27

    if-nez v6, :cond_3

    .line 107
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->total_space_txt:Landroid/widget/TextView;

    const v9, 0x7f0a0147

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    .line 115
    :goto_2
    const-wide/16 v27, -0x1

    cmp-long v6, v12, v27

    if-nez v6, :cond_4

    .line 117
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->left_space_txt:Landroid/widget/TextView;

    const-string v9, ""

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 109
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->total_space_txt:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a0137

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, v27

    move-wide/from16 v1, v23

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 119
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->left_space_txt:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a0138

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v0, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 138
    .end local v12           #availableExternalMemorySize:J
    .end local v23           #totalExternalMemorySize:J
    .restart local v16       #backedListItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/apksmanager/AbstractListItem;>;"
    .restart local v18       #i$:Ljava/util/Iterator;
    .restart local v20       #iIndex:I
    .restart local v21       #localMoveableAppInfo:Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;
    :cond_5
    :try_start_3
    move-object/from16 v0, v21

    iget v6, v0, Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;->moveFlags:I

    const-string v9, "android.content.pm.PackageManager"

    const-string v27, "MOVE_INTERNAL"

    move-object/from16 v0, v27

    invoke-static {v9, v0}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->get_class_var_int(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v9

    if-eq v6, v9, :cond_1

    goto/16 :goto_1

    .end local v21           #localMoveableAppInfo:Lcom/zte/heartyservice/common/datatype/MoveableAppInfo;
    :cond_6
    move/from16 v19, v20

    .line 165
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v20           #iIndex:I
    .restart local v19       #iIndex:I
    :goto_3
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mMoveableAppInfoList:Ljava/util/List;

    .line 166
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->setBackedListItems(Ljava/util/ArrayList;)V

    .line 168
    new-instance v10, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;

    const v6, 0x7f030083

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v10, v0, v6, v1}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 171
    .local v10, adapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->setListViewCallBacks(Lcom/zte/heartyservice/apksmanager/BaseListAdapter$ListViewCallBacks;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 173
    invoke-virtual {v10}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->notifyDataSetChanged()V

    .line 174
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mListView:Landroid/widget/ListView;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 175
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mListView:Landroid/widget/ListView;

    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 176
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mListView:Landroid/widget/ListView;

    new-instance v9, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MoveItemOnClickListener;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$MoveItemOnClickListener;-><init>(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)V

    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 178
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->setMenuItemEnabled(Z)V

    .line 180
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->setmListView(Landroid/widget/ListView;)V

    .line 182
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->setAllListCheckStates(Z)V

    .line 184
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->triggerByAllBtn(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_8

    .line 187
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mListView:Landroid/widget/ListView;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setVisibility(I)V

    .line 188
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->noSoftWearMove:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->moveAllText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v27, 0x7f080012

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->moveAllView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 199
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->extentionVersion:Z

    if-nez v6, :cond_7

    .line 200
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->moveAllView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 203
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->dismissUpdateListProgressDialog()V

    .line 205
    return-void

    .line 161
    .end local v10           #adapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;
    :catch_0
    move-exception v17

    .line 162
    .local v17, e:Ljava/lang/Exception;
    :goto_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 192
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v10       #adapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mListView:Landroid/widget/ListView;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setVisibility(I)V

    .line 193
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->noSoftWearMove:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 194
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->moveAllText:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v27, 0x7f08005b

    move/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 196
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->moveAllView:Landroid/view/View;

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4

    .line 161
    .end local v10           #adapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;
    .end local v19           #iIndex:I
    .restart local v18       #i$:Ljava/util/Iterator;
    .restart local v20       #iIndex:I
    :catch_1
    move-exception v17

    move/from16 v19, v20

    .end local v20           #iIndex:I
    .restart local v19       #iIndex:I
    goto :goto_5
.end method

.method public updateViewInfo(Lcom/zte/heartyservice/apksmanager/AbstractListItem;ILandroid/view/View;)Landroid/view/View;
    .locals 10
    .parameter "listItem"
    .parameter "position"
    .parameter "convertView"

    .prologue
    const v9, 0x7f020067

    .line 690
    move-object v3, p1

    check-cast v3, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;

    .line 692
    .local v3, softListItem:Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
    const/4 v0, 0x0

    .line 693
    .local v0, holder:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$ViewHolder;
    if-nez p3, :cond_2

    .line 694
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 695
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030083

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 697
    new-instance v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$ViewHolder;

    .end local v0           #holder:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$ViewHolder;
    invoke-direct {v0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$ViewHolder;-><init>()V

    .line 698
    .restart local v0       #holder:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$ViewHolder;
    const v4, 0x7f0e0097

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$ViewHolder;->appName:Landroid/widget/TextView;

    .line 700
    const v4, 0x7f0e0098

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$ViewHolder;->appRef:Landroid/widget/TextView;

    .line 701
    const v4, 0x7f0e01ad

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$ViewHolder;->itemState:Landroid/widget/TextView;

    .line 703
    const v4, 0x7f0e0033

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$ViewHolder;->iconImg:Landroid/widget/ImageView;

    .line 705
    const v4, 0x7f0e01ac

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$ViewHolder;->itemSize:Landroid/widget/TextView;

    .line 707
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 711
    .end local v2           #layoutInflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v4, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$ViewHolder;->iconImg:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 712
    iget-object v4, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    iget-object v4, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$ViewHolder;->appRef:Landroid/widget/TextView;

    const v5, 0x7f0a04fa

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->getVersion()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    iget-object v4, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$ViewHolder;->itemSize:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->getAppSize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    iget-object v4, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$ViewHolder;->itemState:Landroid/widget/TextView;

    const v5, 0x7f0a012f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 718
    iget-boolean v4, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->is_show_internal_app:Z

    if-nez v4, :cond_3

    .line 720
    iget-object v4, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$ViewHolder;->itemState:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 727
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 728
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne p1, v4, :cond_4

    .line 733
    :cond_0
    iget-object v4, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$ViewHolder;->itemState:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 735
    iget-object v4, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$ViewHolder;->itemState:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->moveOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    iget-boolean v4, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->extentionVersion:Z

    if-nez v4, :cond_1

    .line 738
    iget-object v4, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$ViewHolder;->itemState:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 740
    :cond_1
    return-object p3

    .line 709
    .end local v1           #i:I
    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$ViewHolder;
    check-cast v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$ViewHolder;

    .restart local v0       #holder:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$ViewHolder;
    goto :goto_0

    .line 723
    :cond_3
    iget-object v4, v0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$ViewHolder;->itemState:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 727
    .restart local v1       #i:I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
