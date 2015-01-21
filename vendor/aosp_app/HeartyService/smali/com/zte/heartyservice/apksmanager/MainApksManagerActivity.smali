.class public Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;
.super Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;
.source "MainApksManagerActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/apksmanager/BaseListAdapter$ListViewCallBacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$ViewHolder;
    }
.end annotation


# instance fields
.field private final CUSTOMVIEW_GROUPID_NULL:I

.field private final CUSTOMVIEW_GROUPID_USED:I

.field private final DIALOG_DELETE_INDICATE:I

.field private final MENUITEM_GROUPID_NULL:I

.field private final MENUITEM_GROUPID_USED:I

.field private final MENUITEM_ID_DELETE:I

.field private final MENUITEM_ID_INSTALL:I

.field private final PROGRESSDIALOG_UNINSTALL:I

.field private final PROGRESSDIALOG_UPDATE_LIST:I

.field private final SPINNER_ITEM_ID_ALL:I

.field private final SPINNER_ITEM_ID_INSTALLED:I

.field private final SPINNER_ITEM_ID_UNERECTED:I

.field private emptyTxtView:Landroid/widget/TextView;

.field private endInstall:J

.field private globalRequestCode:I

.field private installList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private installTime:J

.field private mAdapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;

.field private mCustomViewGroupNull:Landroid/view/View;

.field private mCustomViewGroupUsed:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mLockUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private mSDCardApkListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/apksmanager/ApksListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedSpinnerIndex:I

.field private mShowinglistItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/apksmanager/AbstractListItem;",
            ">;"
        }
    .end annotation
.end field

.field private noRecordsView:Landroid/view/View;

.field private packageManager:Landroid/content/pm/PackageManager;

.field private startInstall:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;-><init>()V

    .line 59
    iput-object v3, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->packageManager:Landroid/content/pm/PackageManager;

    .line 60
    iput-object v3, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mListView:Landroid/widget/ListView;

    .line 62
    iput v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->DIALOG_DELETE_INDICATE:I

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSDCardApkListItems:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mShowinglistItems:Ljava/util/ArrayList;

    .line 68
    iput-object v3, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mAdapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;

    .line 70
    iput v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSelectedSpinnerIndex:I

    .line 72
    iput-wide v4, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->startInstall:J

    .line 73
    iput-wide v4, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->endInstall:J

    .line 74
    iput-wide v4, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->installTime:J

    .line 75
    iput v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->globalRequestCode:I

    .line 78
    iput v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->MENUITEM_ID_DELETE:I

    .line 79
    iput v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->MENUITEM_ID_INSTALL:I

    .line 81
    iput v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->MENUITEM_GROUPID_NULL:I

    .line 82
    iput v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->MENUITEM_GROUPID_USED:I

    .line 84
    iput v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->CUSTOMVIEW_GROUPID_NULL:I

    .line 85
    iput v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->CUSTOMVIEW_GROUPID_USED:I

    .line 87
    iput v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->SPINNER_ITEM_ID_ALL:I

    .line 88
    iput v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->SPINNER_ITEM_ID_INSTALLED:I

    .line 89
    const/4 v0, 0x2

    iput v0, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->SPINNER_ITEM_ID_UNERECTED:I

    .line 91
    iput v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->PROGRESSDIALOG_UPDATE_LIST:I

    .line 92
    iput v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->PROGRESSDIALOG_UNINSTALL:I

    .line 95
    iput-object v3, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mCustomViewGroupNull:Landroid/view/View;

    .line 96
    iput-object v3, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mCustomViewGroupUsed:Landroid/view/View;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->installList:Ljava/util/ArrayList;

    .line 321
    new-instance v0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$3;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$3;-><init>(Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mLockUnlockReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->globalRequestCode:I

    return v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->installApk()V

    return-void
.end method

.method static synthetic access$202(Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSelectedSpinnerIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->switchListType(I)V

    return-void
.end method

.method private acquireApkInstallationState(Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;Lcom/zte/heartyservice/apksmanager/ApksListItem;)V
    .locals 7
    .parameter "info"
    .parameter "item"

    .prologue
    const v6, 0x7f0a011e

    .line 853
    if-nez p1, :cond_0

    .line 880
    :goto_0
    return-void

    .line 857
    :cond_0
    const/4 v2, 0x0

    .line 859
    .local v2, pinfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 865
    :goto_1
    iget v0, p1, Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;->versionCode:I

    .line 867
    .local v0, current_apk_version:I
    if-eqz v2, :cond_2

    .line 868
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v3, v0, :cond_1

    .line 869
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a011d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->setApkState(Ljava/lang/String;)V

    goto :goto_0

    .line 860
    .end local v0           #current_apk_version:I
    :catch_0
    move-exception v1

    .line 861
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->setApkState(Ljava/lang/String;)V

    goto :goto_1

    .line 872
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #current_apk_version:I
    :cond_1
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a011c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->setApkState(Ljava/lang/String;)V

    goto :goto_0

    .line 877
    :cond_2
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->setApkState(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private acquireUninstallAPKInfo(Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;Lcom/zte/heartyservice/apksmanager/ApksListItem;)V
    .locals 6
    .parameter "itemSDCardApks"
    .parameter "item"

    .prologue
    .line 885
    if-nez p1, :cond_0

    .line 899
    :goto_0
    return-void

    .line 888
    :cond_0
    iget-object v0, p1, Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;->apkPath:Ljava/lang/String;

    .line 889
    .local v0, apkPath:Ljava/lang/String;
    invoke-virtual {p2, v0}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->setApkPath(Ljava/lang/String;)V

    .line 891
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 892
    .local v3, f:Ljava/io/File;
    invoke-static {v3}, Lcom/zte/heartyservice/common/utils/PackageUtil;->getPackageInfo(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 893
    .local v4, mPkgInfo:Landroid/content/pm/PackageParser$Package;
    iget-object v5, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, v5, v3}, Lcom/zte/heartyservice/common/utils/PackageUtil;->getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Ljava/io/File;)Lcom/zte/heartyservice/common/utils/PackageUtil$AppSnippet;

    move-result-object v1

    .line 895
    .local v1, as:Lcom/zte/heartyservice/common/utils/PackageUtil$AppSnippet;
    invoke-static {p0, v1, p2}, Lcom/zte/heartyservice/common/utils/PackageUtil;->initSnippetForNewApp(Landroid/app/Activity;Lcom/zte/heartyservice/common/utils/PackageUtil$AppSnippet;Lcom/zte/heartyservice/apksmanager/ApksListItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 896
    .end local v1           #as:Lcom/zte/heartyservice/common/utils/PackageUtil$AppSnippet;
    .end local v3           #f:Ljava/io/File;
    .end local v4           #mPkgInfo:Landroid/content/pm/PackageParser$Package;
    :catch_0
    move-exception v2

    .line 897
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private constructShowingList()V
    .locals 5

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 490
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    .line 491
    .local v1, selectedSpinnerIndex:I
    const-string v2, "<==>tsj"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "constructShowingList, selectedSpinnerIndex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    .line 493
    iget v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSelectedSpinnerIndex:I

    .line 495
    :cond_0
    invoke-direct {p0, v1}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->switchListType(I)V

    .line 496
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->setEmptyListViewText(Z)V

    .line 497
    return-void
.end method

.method private createCustomView(Landroid/app/ActionBar;)Landroid/view/View;
    .locals 9
    .parameter "actionBar"

    .prologue
    .line 678
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 679
    .local v4, layoutInflater:Landroid/view/LayoutInflater;
    const v6, 0x7f03000d

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 681
    .local v3, layout:Landroid/view/View;
    const v6, 0x7f0e002e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 682
    .local v2, customText:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getmListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v5

    .line 684
    .local v5, nSelected:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a011b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    const v6, 0x7f0e0030

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 688
    .local v0, allButton:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->setSelectAllBtn(Landroid/view/View;)V

    .line 689
    iget-object v6, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 690
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setSelected(Z)V

    .line 692
    new-instance v6, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$5;

    invoke-direct {v6, p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$5;-><init>(Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    const v6, 0x7f0e002c

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 700
    .local v1, backButton:Landroid/view/View;
    new-instance v6, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$6;

    invoke-direct {v6, p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$6;-><init>(Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    return-object v3
.end method

.method private createDialog(I)Landroid/app/AlertDialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 202
    const-string v2, "<==>tsj"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateDialog default id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 181
    :pswitch_0
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v1

    .line 182
    .local v1, nSelected:I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 183
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0120

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0121

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 185
    const v2, 0x7f0a0124

    new-instance v3, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$1;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$1;-><init>(Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 191
    const v2, 0x7f0a0123

    new-instance v3, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$2;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$2;-><init>(Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private deleteApkFiles(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 778
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 779
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 780
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 782
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private eventInit()V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->initActionBar()V

    .line 387
    return-void
.end method

.method private initActionBar()V
    .locals 6

    .prologue
    const/4 v4, 0x5

    const/4 v5, 0x0

    .line 392
    new-array v2, v4, [I

    fill-array-data v2, :array_0

    .line 394
    .local v2, menuItemDelete:[I
    new-array v3, v4, [I

    fill-array-data v3, :array_1

    .line 397
    .local v3, menuItemInstall:[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    const/4 v4, 0x2

    invoke-virtual {p0, v1, v4, v5}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->setGroupMenuItemData(Ljava/util/ArrayList;II)V

    .line 407
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 408
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 409
    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->changeCustomView(I)V

    .line 414
    return-void

    .line 392
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x20t 0x1t 0xat 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 394
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1ft 0x1t 0xat 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private installApk()V
    .locals 5

    .prologue
    .line 806
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->installList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 807
    .local v1, size:I
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " size ===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    if-lez v1, :cond_0

    .line 809
    add-int/lit8 v1, v1, -0x1

    .line 810
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 812
    .local v0, intent:Landroid/content/Intent;
    new-instance v3, Ljava/io/File;

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->installList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->startInstall:J

    .line 816
    invoke-virtual {p0, v0, v1}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 818
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private setEmptyListViewText(Z)V
    .locals 3
    .parameter "bDefault"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->emptyTxtView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 537
    if-eqz p1, :cond_1

    .line 539
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->emptyTxtView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    :cond_0
    :goto_0
    const-string v0, "<==>tsj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEmptyListViewText, emptyText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->emptyTxtView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    return-void

    .line 540
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getExternalSD()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 542
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mShowinglistItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private setListViewAdapter(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 502
    :try_start_0
    new-instance v1, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;

    const v2, 0x7f03000e

    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mShowinglistItems:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mAdapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;

    .line 504
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mAdapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;

    invoke-virtual {v1, p0}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->setListViewCallBacks(Lcom/zte/heartyservice/apksmanager/BaseListAdapter$ListViewCallBacks;)V

    .line 505
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mAdapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 506
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mAdapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;

    invoke-virtual {v1}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->notifyDataSetChanged()V

    .line 507
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 511
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mShowinglistItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->setBackedListItems(Ljava/util/ArrayList;)V

    .line 514
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemSingleClickListener;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemSingleClickListener;-><init>(Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 517
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemLongClickListener;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemLongClickListener;-><init>(Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 519
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->setmListView(Landroid/widget/ListView;)V

    .line 521
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->triggerByAllBtn(Ljava/lang/String;)V

    .line 523
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 524
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mShowinglistItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mListView:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 526
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->noRecordsView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 533
    :goto_0
    return-void

    .line 528
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->noRecordsView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method private showAlertDialog(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    .line 171
    .local v0, dialog:Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 173
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 175
    :cond_0
    return-void
.end method

.method private switchListType(I)V
    .locals 5
    .parameter "position"

    .prologue
    const v4, 0x7f0a011e

    .line 441
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mShowinglistItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mShowinglistItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 445
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 485
    :cond_1
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->setListViewAdapter(I)V

    .line 486
    return-void

    .line 447
    :pswitch_0
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSDCardApkListItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 448
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSDCardApkListItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 449
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mShowinglistItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSDCardApkListItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 457
    .end local v1           #i:I
    :pswitch_1
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSDCardApkListItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 458
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSDCardApkListItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 459
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSDCardApkListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/apksmanager/ApksListItem;

    .line 460
    .local v0, apkListItem:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    invoke-virtual {v0}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->getApkState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 461
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mShowinglistItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 470
    .end local v0           #apkListItem:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    .end local v1           #i:I
    :pswitch_2
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSDCardApkListItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 471
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSDCardApkListItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 472
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSDCardApkListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/apksmanager/ApksListItem;

    .line 473
    .restart local v0       #apkListItem:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    invoke-virtual {v0}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->getApkState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 474
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mShowinglistItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 445
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected BroadcastReceiverOperation(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 224
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 225
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 226
    .local v2, data:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 296
    .end local v2           #data:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 229
    .restart local v2       #data:Landroid/net/Uri;
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, added_pkgName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 231
    .local v7, pinfo:Landroid/content/pm/PackageInfo;
    const/4 v8, 0x0

    .line 234
    .local v8, versionCode:I
    :try_start_0
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 235
    iget v8, v7, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_1
    const/4 v1, 0x0

    .line 242
    .local v1, apkItem:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    const/4 v6, 0x0

    .line 243
    .local v6, need_notify_adapter_changed:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mShowinglistItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_3

    .line 244
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mShowinglistItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #apkItem:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    check-cast v1, Lcom/zte/heartyservice/apksmanager/ApksListItem;

    .line 245
    .restart local v1       #apkItem:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    invoke-virtual {v1}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->getPackageName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v1}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v1}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->getVersionCode()I

    move-result v9

    if-ne v9, v8, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a011c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->setApkState(Ljava/lang/String;)V

    .line 249
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->setAppSelected(Ljava/lang/Boolean;)V

    .line 250
    const/4 v6, 0x1

    .line 243
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 236
    .end local v1           #apkItem:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    .end local v5           #i:I
    .end local v6           #need_notify_adapter_changed:Z
    :catch_0
    move-exception v4

    .line 237
    .local v4, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v8, -0x1

    .line 238
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 254
    .end local v4           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1       #apkItem:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    .restart local v5       #i:I
    .restart local v6       #need_notify_adapter_changed:Z
    :cond_3
    const/4 v5, 0x0

    :goto_3
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSDCardApkListItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_5

    .line 255
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSDCardApkListItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #apkItem:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    check-cast v1, Lcom/zte/heartyservice/apksmanager/ApksListItem;

    .line 256
    .restart local v1       #apkItem:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    invoke-virtual {v1}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->getPackageName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v1}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v1}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->getVersionCode()I

    move-result v9

    if-ne v9, v8, :cond_4

    .line 259
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a011c

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->setApkState(Ljava/lang/String;)V

    .line 260
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->setAppSelected(Ljava/lang/Boolean;)V

    .line 261
    const/4 v6, 0x1

    .line 254
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 265
    :cond_5
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mAdapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    if-ne v6, v9, :cond_0

    .line 266
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->clearChoices()V

    .line 267
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mAdapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;

    invoke-virtual {v9}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->notifyDataSetChanged()V

    .line 268
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->constructShowingList()V

    goto/16 :goto_0

    .line 270
    .end local v0           #added_pkgName:Ljava/lang/String;
    .end local v1           #apkItem:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    .end local v2           #data:Landroid/net/Uri;
    .end local v5           #i:I
    .end local v6           #need_notify_adapter_changed:Z
    .end local v7           #pinfo:Landroid/content/pm/PackageInfo;
    .end local v8           #versionCode:I
    :cond_6
    const-string v9, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 272
    :cond_7
    const-string v9, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 273
    const-string v9, "<==>tsj"

    const-string v10, "BroadcastReceiverOperation ACTION_MEDIA_UNMOUNTED!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_8
    const-string v9, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 276
    const-string v9, "<==>tsj"

    const-string v10, "BroadcastReceiverOperation ACTION_MEDIA_EJECT!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_9
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSDCardApkListItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 279
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->clearChoices()V

    .line 280
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mAdapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;

    invoke-virtual {v9}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->notifyDataSetChanged()V

    .line 281
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->constructShowingList()V

    goto/16 :goto_0

    .line 282
    :cond_a
    const-string v9, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 284
    :try_start_1
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mListView:Landroid/widget/ListView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setVisibility(I)V

    .line 285
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->setEmptyListViewText(Z)V

    .line 286
    const-string v9, "<==>tsj"

    const-string v10, "BroadcastReceiverOperation ACTION_MEDIA_MOUNTED!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const v9, 0x7f0a0148

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0148

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {p0, p0, v9, v10, v11}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->createUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 290
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    invoke-interface {v9}, Lcom/zte/heartyservice/apksmanager/IApksManagerService;->listSDCardApks()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 291
    :catch_1
    move-exception v3

    .line 292
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method protected ItemSingleClickOperation(I)V
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    .line 557
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mShowinglistItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/apksmanager/ApksListItem;

    .line 558
    .local v0, item:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    invoke-virtual {v0}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->isAppSelected()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 559
    .local v1, selected:Z
    if-ne v1, v3, :cond_0

    .line 560
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->multiClickHandler(IZ)V

    .line 563
    :goto_0
    return-void

    .line 562
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->multiClickHandler(IZ)V

    goto :goto_0
.end method

.method protected ServiceConnectedOperation()V
    .locals 4

    .prologue
    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mListView:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 212
    const-string v1, "wangwei"

    const-string v2, "ServiceConnectedOperation listSDCardApks"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const v1, 0x7f0a0148

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0148

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, p0, v1, v2, v3}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->createUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 216
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    invoke-interface {v1}, Lcom/zte/heartyservice/apksmanager/IApksManagerService;->listSDCardApks()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected UpdateCustomView(I)V
    .locals 7
    .parameter "group"

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 596
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    .line 598
    .local v2, layout:Landroid/view/View;
    const/4 v4, 0x1

    if-ne v4, p1, :cond_0

    .line 599
    const v4, 0x7f0e002e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 600
    .local v1, customText:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    .line 601
    .local v3, nSelected:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a011b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 603
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 605
    .end local v1           #customText:Landroid/widget/TextView;
    .end local v3           #nSelected:I
    :cond_0
    return-void
.end method

.method protected changeCustomView(I)V
    .locals 14
    .parameter "group"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/16 v11, 0x10

    .line 610
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 612
    .local v0, actionBar:Landroid/app/ActionBar;
    if-nez p1, :cond_1

    .line 613
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mCustomViewGroupNull:Landroid/view/View;

    if-nez v9, :cond_0

    .line 614
    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 615
    .local v4, layoutInflater:Landroid/view/LayoutInflater;
    const v9, 0x7f030105

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 617
    .local v3, layout:Landroid/view/View;
    const v9, 0x7f0e036f

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 618
    .local v8, top_text:Landroid/widget/TextView;
    const v9, 0x7f0a0017

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 620
    const v9, 0x7f0e0370

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    .line 622
    .local v7, spinner:Landroid/widget/Spinner;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 623
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0117

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0119

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0118

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v9, 0x7f0300fc

    invoke-direct {v1, p0, v9, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 629
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v9, 0x1090009

    invoke-virtual {v1, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 630
    invoke-virtual {v7, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 631
    invoke-virtual {v7, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 633
    new-instance v9, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$4;

    invoke-direct {v9, p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$4;-><init>(Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;)V

    invoke-virtual {v7, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 645
    iput-object v3, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mCustomViewGroupNull:Landroid/view/View;

    .line 647
    invoke-virtual {v0, v11, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 649
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 675
    .end local v1           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v3           #layout:Landroid/view/View;
    .end local v4           #layoutInflater:Landroid/view/LayoutInflater;
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #spinner:Landroid/widget/Spinner;
    .end local v8           #top_text:Landroid/widget/TextView;
    :goto_0
    return-void

    .line 651
    :cond_0
    invoke-virtual {v0, v11, v11}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 653
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mCustomViewGroupNull:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto :goto_0

    .line 656
    :cond_1
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mCustomViewGroupUsed:Landroid/view/View;

    if-nez v9, :cond_2

    .line 658
    invoke-direct {p0, v0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->createCustomView(Landroid/app/ActionBar;)Landroid/view/View;

    move-result-object v3

    .line 659
    .restart local v3       #layout:Landroid/view/View;
    iput-object v3, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mCustomViewGroupUsed:Landroid/view/View;

    .line 660
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 661
    invoke-virtual {v0, v13}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 662
    invoke-virtual {v0, v12}, Landroid/app/ActionBar;->setNavigationMode(I)V

    goto :goto_0

    .line 664
    .end local v3           #layout:Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mCustomViewGroupUsed:Landroid/view/View;

    .line 665
    .restart local v3       #layout:Landroid/view/View;
    const v9, 0x7f0e002e

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 666
    .local v2, customText:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v6

    .line 667
    .local v6, nSelected:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a011b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 670
    invoke-virtual {v0, v13}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 671
    invoke-virtual {v0, v12}, Landroid/app/ActionBar;->setNavigationMode(I)V

    goto :goto_0
.end method

.method protected deleteApksTask()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 713
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v6, mWaitingToDeleteApkListItemPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mShowinglistItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 715
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mShowinglistItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/apksmanager/ApksListItem;

    .line 716
    .local v5, localItem:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    invoke-virtual {v5}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->isAppSelected()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-ne v9, v12, :cond_0

    .line 718
    invoke-virtual {v5}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->getApkPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 722
    .end local v5           #localItem:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    :cond_1
    const/4 v2, 0x0

    .local v2, index:I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_a

    .line 723
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 724
    .local v7, path:Ljava/lang/String;
    const-string v9, "wangwei"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteApksTask path="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-direct {p0, v7}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->deleteApkFiles(Ljava/lang/String;)Z

    move-result v8

    .line 728
    .local v8, ret:Z
    if-ne v8, v12, :cond_5

    .line 729
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSDCardApkListItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 730
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSDCardApkListItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/apksmanager/ApksListItem;

    .line 731
    .local v0, apkItem:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    invoke-virtual {v0}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->getApkPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 733
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSDCardApkListItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 729
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 738
    .end local v0           #apkItem:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    :cond_3
    const/4 v4, 0x0

    .local v4, k:I
    :goto_3
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mShowinglistItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_9

    .line 739
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mShowinglistItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/apksmanager/ApksListItem;

    .line 740
    .restart local v0       #apkItem:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    invoke-virtual {v0}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->getApkPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 742
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mShowinglistItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 738
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 749
    .end local v0           #apkItem:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    .end local v3           #j:I
    .end local v4           #k:I
    :cond_5
    const-string v9, "wangwei"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deleteApksTask failed path="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v3, 0x0

    .restart local v3       #j:I
    :goto_4
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSDCardApkListItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_7

    .line 751
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSDCardApkListItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/apksmanager/ApksListItem;

    .line 752
    .restart local v0       #apkItem:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    invoke-virtual {v0}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->getApkPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 753
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->setAppSelected(Ljava/lang/Boolean;)V

    .line 750
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 757
    .end local v0           #apkItem:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    :cond_7
    const/4 v4, 0x0

    .restart local v4       #k:I
    :goto_5
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mShowinglistItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_9

    .line 758
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mShowinglistItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/apksmanager/ApksListItem;

    .line 759
    .restart local v0       #apkItem:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    invoke-virtual {v0}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->getApkPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 760
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->setAppSelected(Ljava/lang/Boolean;)V

    .line 757
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 722
    .end local v0           #apkItem:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 768
    .end local v3           #j:I
    .end local v4           #k:I
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #ret:Z
    :cond_a
    const-string v9, "wangwei"

    const-string v10, "deleteApksTask notifyDataSetChanged"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->clearChoices()V

    .line 770
    iget-object v9, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mAdapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;

    invoke-virtual {v9}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->notifyDataSetChanged()V

    .line 773
    invoke-virtual {p0, v12}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->setMenuItemEnabled(Z)V

    .line 774
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->triggerByListItem()V

    .line 775
    return-void
.end method

.method protected getActivityView()I
    .locals 1

    .prologue
    .line 317
    const v0, 0x7f030076

    return v0
.end method

.method protected getCustomViewGroupByState(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 585
    if-nez p1, :cond_0

    .line 586
    const/4 v0, 0x0

    .line 588
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getEnabledMenuItemGroupID()[I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 567
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 569
    .local v0, list:[I
    return-object v0
.end method

.method protected getIntentFilterArray()Ljava/util/List;
    .locals 4
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
    .line 300
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v2, ifList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;>;"
    new-instance v0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;

    const-string v3, "package"

    invoke-direct {v0, p0, v3}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;-><init>(Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;Ljava/lang/String;)V

    .line 302
    .local v0, ifArray1:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->addAction(Ljava/lang/String;)V

    .line 303
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->addAction(Ljava/lang/String;)V

    .line 304
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->addAction(Ljava/lang/String;)V

    .line 305
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance v1, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;

    const-string v3, "file"

    invoke-direct {v1, p0, v3}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;-><init>(Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;Ljava/lang/String;)V

    .line 308
    .local v1, ifArray2:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v3}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->addAction(Ljava/lang/String;)V

    .line 309
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v3}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->addAction(Ljava/lang/String;)V

    .line 310
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v3}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->addAction(Ljava/lang/String;)V

    .line 311
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    return-object v2
.end method

.method protected getMenuItemGroupByState(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 575
    if-nez p1, :cond_0

    .line 576
    const/4 v0, 0x0

    .line 578
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected installApksTask()V
    .locals 5

    .prologue
    .line 795
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mShowinglistItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 796
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mShowinglistItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/apksmanager/ApksListItem;

    .line 797
    .local v1, item:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    invoke-virtual {v1}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->getApkPath()Ljava/lang/String;

    move-result-object v2

    .line 798
    .local v2, path:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->isAppSelected()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    if-eqz v2, :cond_0

    .line 799
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->installList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 802
    .end local v1           #item:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    .end local v2           #path:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->installApk()V

    .line 803
    return-void
.end method

.method protected installOneApk(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 845
    const-string v1, "<==>tsj"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installOneApk fileName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 847
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 848
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 849
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 822
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onActivityResult =========="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " requestCode =========="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->endInstall:J

    .line 825
    iget-wide v0, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->endInstall:J

    iget-wide v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->startInstall:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->installTime:J

    .line 826
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " installTime =================="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->installTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    if-lez p1, :cond_0

    iget-wide v0, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->installTime:J

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 829
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->installApk()V

    .line 834
    :goto_0
    return-void

    .line 832
    :cond_0
    iput p1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->globalRequestCode:I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 344
    const-string v1, "<==>tsj"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; onCreate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-super {p0, p1}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->onCreate(Landroid/os/Bundle;)V

    .line 346
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->packageManager:Landroid/content/pm/PackageManager;

    .line 347
    const v1, 0x7f0e009a

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mListView:Landroid/widget/ListView;

    .line 348
    const v1, 0x7f0e014b

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->noRecordsView:Landroid/view/View;

    .line 349
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mListView:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 350
    const v1, 0x7f0e0069

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->emptyTxtView:Landroid/widget/TextView;

    .line 351
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->setEmptyListViewText(Z)V

    .line 353
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 354
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.zte.heartyservice.intent.action.install_by_heartyservice_finish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mLockUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 357
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->eventInit()V

    .line 358
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 362
    const-string v0, "<==>tsj"

    const-string v1, " MainApksManagerActivity:: onDestroy fg"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-super {p0}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->onDestroy()V

    .line 364
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mLockUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 365
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mAdapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mAdapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->setListViewCallBacks(Lcom/zte/heartyservice/apksmanager/BaseListAdapter$ListViewCallBacks;)V

    .line 367
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 368
    iput-object v2, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mListView:Landroid/widget/ListView;

    .line 370
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
    .line 138
    const v0, 0x7f0a0148

    const/4 v1, 0x1

    invoke-virtual {p0, p0, v0, p1, v1}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->showUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 139
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 142
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 146
    const-string v0, "<==>tsj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; onOptionsItemSelected id=\ufffd\ufffd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "title=\ufffd\ufffd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 161
    const-string v0, "<==>tsj"

    const-string v1, "button onClick unexpected!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 152
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->showAlertDialog(I)V

    goto :goto_0

    .line 157
    :pswitch_1
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->installApksTask()V

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 377
    invoke-super {p0}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->onResume()V

    .line 378
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V

    .line 379
    return-void
.end method

.method public onUpdateSDCardApksList(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    .local p1, SDCardApksList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;>;"
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->dismissUpdateListProgressDialog()V

    .line 113
    const/4 v2, 0x0

    .line 114
    .local v2, localSDCardApksInfo:Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSDCardApkListItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 115
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 116
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #localSDCardApksInfo:Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;
    check-cast v2, Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;

    .line 118
    .restart local v2       #localSDCardApksInfo:Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;
    new-instance v1, Lcom/zte/heartyservice/apksmanager/ApksListItem;

    invoke-direct {v1}, Lcom/zte/heartyservice/apksmanager/ApksListItem;-><init>()V

    .line 119
    .local v1, item:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    iget-object v3, v2, Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->setPackageName(Ljava/lang/String;)V

    .line 120
    iget-object v3, v2, Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;->version:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->setVersion(Ljava/lang/String;)V

    .line 121
    iget v3, v2, Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;->versionCode:I

    invoke-virtual {v1, v3}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->setVersionCode(I)V

    .line 122
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, v2, Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;->storageSpace:J

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->setAppSize(Ljava/lang/String;)V

    .line 123
    iget-object v3, v2, Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;->apkPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->setApkPath(Ljava/lang/String;)V

    .line 124
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->setAppSelected(Ljava/lang/Boolean;)V

    .line 125
    invoke-direct {p0, v2, v1}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->acquireUninstallAPKInfo(Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;Lcom/zte/heartyservice/apksmanager/ApksListItem;)V

    .line 126
    invoke-direct {p0, v2, v1}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->acquireApkInstallationState(Lcom/zte/heartyservice/common/datatype/SDCardApksInfo;Lcom/zte/heartyservice/apksmanager/ApksListItem;)V

    .line 128
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mSDCardApkListItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    .end local v1           #item:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    :cond_0
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->constructShowingList()V

    .line 133
    return-void
.end method

.method public updateViewInfo(Lcom/zte/heartyservice/apksmanager/AbstractListItem;ILandroid/view/View;)Landroid/view/View;
    .locals 8
    .parameter "listItem"
    .parameter "position"
    .parameter "convertView"

    .prologue
    const/4 v5, 0x0

    .line 903
    move-object v0, p1

    check-cast v0, Lcom/zte/heartyservice/apksmanager/ApksListItem;

    .line 904
    .local v0, apkListItem:Lcom/zte/heartyservice/apksmanager/ApksListItem;
    const/4 v1, 0x0

    .line 906
    .local v1, holder:Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$ViewHolder;
    if-nez p3, :cond_0

    .line 907
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 908
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f03000f

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 910
    new-instance v1, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$ViewHolder;

    .end local v1           #holder:Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$ViewHolder;
    invoke-direct {v1}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$ViewHolder;-><init>()V

    .line 911
    .restart local v1       #holder:Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$ViewHolder;
    const v3, 0x7f0e0034

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$ViewHolder;->appName:Landroid/widget/TextView;

    .line 912
    const v3, 0x7f0e0032

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v1, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$ViewHolder;->imageChoosed:Landroid/widget/CheckBox;

    .line 913
    const v3, 0x7f0e0033

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$ViewHolder;->iconImg:Landroid/widget/ImageView;

    .line 914
    const v3, 0x7f0e0035

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$ViewHolder;->verName:Landroid/widget/TextView;

    .line 915
    const v3, 0x7f0e0036

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$ViewHolder;->storageSpace:Landroid/widget/TextView;

    .line 916
    const v3, 0x7f0e0037

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$ViewHolder;->apkState:Landroid/widget/TextView;

    .line 917
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 922
    .end local v2           #layoutInflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, v1, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$ViewHolder;->imageChoosed:Landroid/widget/CheckBox;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 923
    iget-object v3, v1, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$ViewHolder;->imageChoosed:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 924
    iget-object v3, v1, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$ViewHolder;->imageChoosed:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->isAppSelected()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 925
    iget-object v3, v1, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$ViewHolder;->imageChoosed:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->mApkCheckedChangeListener:Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 927
    iget-object v3, v1, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$ViewHolder;->iconImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 928
    iget-object v3, v1, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 929
    iget-object v3, v1, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$ViewHolder;->verName:Landroid/widget/TextView;

    const v4, 0x7f0a04fa

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 930
    iget-object v3, v1, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$ViewHolder;->storageSpace:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->getAppSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 931
    iget-object v3, v1, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$ViewHolder;->apkState:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/apksmanager/ApksListItem;->getApkState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 932
    return-object p3

    .line 919
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$ViewHolder;
    check-cast v1, Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$ViewHolder;

    .restart local v1       #holder:Lcom/zte/heartyservice/apksmanager/MainApksManagerActivity$ViewHolder;
    goto :goto_0
.end method
