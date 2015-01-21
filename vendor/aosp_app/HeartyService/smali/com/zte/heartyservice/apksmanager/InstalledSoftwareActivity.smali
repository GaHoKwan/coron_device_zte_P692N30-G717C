.class public Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;
.super Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;
.source "InstalledSoftwareActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/apksmanager/BaseListAdapter$ListViewCallBacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;,
        Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;
    }
.end annotation


# static fields
.field private static final ORDER_NAME:I = 0x2

.field private static final ORDER_SIZE:I = 0x0

.field private static final ORDER_TIME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "InstalledSoftwareActivity"


# instance fields
.field private final CUSTOMVIEW_DEFAULT:I

.field private final CUSTOMVIEW_UPDATE:I

.field private final DIALOG_BACKUP_FINISH:I

.field private final DIALOG_BACKUP_INPUT:I

.field private final DIALOG_ERROR:I

.field private final DIALOG_UNINSTALL_INDICATE:I

.field protected DisableOnClickListener:Landroid/view/View$OnClickListener;

.field private final MENUITEM_BACKUP_ID:I

.field private final MENUITEM_MOVE_ID:I

.field private final MENUITEM_NULL_GROUPID:I

.field private final MENUITEM_UNINSTALL_ID:I

.field private final MENUITEM_USED_GROUPID:I

.field private buttonData:Landroid/widget/Button;

.field private buttonSystem:Landroid/widget/Button;

.field private dataBackedListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/apksmanager/AbstractListItem;",
            ">;"
        }
    .end annotation
.end field

.field private defaultState:Z

.field private emptyTxtView:Landroid/widget/TextView;

.field private mCustomViewGroupNull:Landroid/view/View;

.field private mCustomViewGroupUsed:Landroid/view/View;

.field private mInstruction:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOrder:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSystemAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUninstallableAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private systemBackedListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/apksmanager/AbstractListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 64
    iput-boolean v1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->defaultState:Z

    .line 65
    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mUninstallableAppList:Ljava/util/List;

    .line 66
    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mSystemAppList:Ljava/util/List;

    .line 67
    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->dataBackedListItems:Ljava/util/ArrayList;

    .line 68
    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->systemBackedListItems:Ljava/util/ArrayList;

    .line 69
    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    .line 70
    iput v2, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->MENUITEM_NULL_GROUPID:I

    .line 71
    iput v1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->MENUITEM_USED_GROUPID:I

    .line 72
    iput v2, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->MENUITEM_MOVE_ID:I

    .line 73
    iput v1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->MENUITEM_BACKUP_ID:I

    .line 74
    iput v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->MENUITEM_UNINSTALL_ID:I

    .line 76
    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mCustomViewGroupNull:Landroid/view/View;

    .line 77
    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mCustomViewGroupUsed:Landroid/view/View;

    .line 78
    iput v2, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->CUSTOMVIEW_DEFAULT:I

    .line 79
    iput v1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->CUSTOMVIEW_UPDATE:I

    .line 81
    iput v1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->DIALOG_BACKUP_INPUT:I

    .line 82
    const/4 v0, 0x3

    iput v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->DIALOG_BACKUP_FINISH:I

    .line 83
    const/4 v0, 0x4

    iput v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->DIALOG_ERROR:I

    .line 84
    const/4 v0, 0x5

    iput v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->DIALOG_UNINSTALL_INDICATE:I

    .line 96
    iput v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mOrder:I

    .line 679
    new-instance v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$9;-><init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1264
    new-instance v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$DisableBtnOnClickListener;-><init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->DisableOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->createBackupProgressDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->backupAllSelectedApk(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mInstruction:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->defaultState:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->defaultState:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->systemBackedListItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->disableSelected(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mSystemAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->createUninstallingProgressDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->uninstallApplications()V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->buttonData:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->buttonSystem:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->dataBackedListItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mOrder:I

    return v0
.end method

.method static synthetic access$702(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mOrder:I

    return p1
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->emptyTxtView:Landroid/widget/TextView;

    return-object v0
.end method

.method private backupAllSelectedApk(Ljava/lang/String;)V
    .locals 13
    .parameter "restorePoints"

    .prologue
    .line 994
    const-string v10, "<==>tsj"

    const-string v11, "backupAllSelectedApk"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getmListView()Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v7

    .line 996
    .local v7, items:[J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1000
    .local v0, backupApkList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    :try_start_0
    array-length v10, v7

    if-ge v3, v10, :cond_0

    .line 1001
    aget-wide v10, v7, v3

    long-to-int v6, v10

    .line 1002
    .local v6, itemID:I
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mUninstallableAppList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    invoke-virtual {v10}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->getIndex()I

    move-result v10

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1004
    .end local v6           #itemID:I
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 1006
    const-wide/16 v8, 0x0

    .line 1007
    .local v8, storageSum:J
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    .line 1008
    .local v5, info:Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    iget-wide v10, v5, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->storageSpace:J

    add-long/2addr v8, v10

    goto :goto_1

    .line 1011
    .end local v5           #info:Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getExternalSD()Ljava/io/File;

    move-result-object v10

    invoke-static {v10}, Lcom/zte/heartyservice/common/utils/SDUtils;->getAvailableSDSize(Ljava/io/File;)J

    move-result-wide v10

    cmp-long v10, v8, v10

    if-ltz v10, :cond_3

    .line 1012
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0a0125

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0a012a

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x7f0a0173

    new-instance v12, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$16;

    invoke-direct {v12, p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$16;-><init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1022
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1023
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->dismissUpdateListProgressDialog()V

    .line 1024
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->setMenuItemEnabled(Z)V

    .line 1034
    .end local v1           #dialog:Landroid/app/Dialog;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v8           #storageSum:J
    :cond_2
    :goto_2
    return-void

    .line 1028
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v8       #storageSum:J
    :cond_3
    iget-object v10, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1029
    iget-object v10, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    invoke-interface {v10, v0, p1}, Lcom/zte/heartyservice/apksmanager/IApksManagerService;->backupApks(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1031
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v8           #storageSum:J
    :catch_0
    move-exception v2

    .line 1032
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method private clearLists()V
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mUninstallableAppList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mUninstallableAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1095
    :cond_0
    return-void
.end method

.method private createBackupProgressDialog()V
    .locals 3

    .prologue
    .line 566
    const v0, 0x7f0a0126

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0127

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->createUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 568
    return-void
.end method

.method private createDialog(I)Landroid/app/AlertDialog;
    .locals 13
    .parameter "id"

    .prologue
    .line 427
    const-string v10, "<==>tsj"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onCreateDialog id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    packed-switch p1, :pswitch_data_0

    .line 519
    :pswitch_0
    const-string v10, "<==>tsj"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onCreateDialog default id = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    :goto_0
    return-object v3

    .line 431
    :pswitch_1
    const-string v10, "layout_inflater"

    invoke-virtual {p0, v10}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 433
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f030092

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 435
    .local v6, layout:Landroid/view/View;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 436
    .local v3, inputDialog:Landroid/app/AlertDialog;
    const v10, 0x7f0a0125

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 437
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 439
    const v10, 0x7f0e01f3

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 440
    .local v4, inputText:Landroid/widget/EditText;
    const v10, 0x7f0e0192

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 441
    .local v7, msg:Landroid/widget/TextView;
    const v10, 0x7f0a0128

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(I)V

    .line 442
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 444
    const/4 v10, -0x1

    const v11, 0x7f0a0123

    invoke-virtual {p0, v11}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$2;

    invoke-direct {v12, p0, v4}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$2;-><init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;Landroid/widget/EditText;)V

    invoke-virtual {v3, v10, v11, v12}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 456
    const/4 v10, -0x2

    const v11, 0x7f0a0124

    invoke-virtual {p0, v11}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$3;

    invoke-direct {v12, p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$3;-><init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V

    invoke-virtual {v3, v10, v11, v12}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 466
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #inputDialog:Landroid/app/AlertDialog;
    .end local v4           #inputText:Landroid/widget/EditText;
    .end local v6           #layout:Landroid/view/View;
    .end local v7           #msg:Landroid/widget/TextView;
    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 467
    .local v1, finishBuilder:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0a0129

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 468
    const v10, 0x7f0a0123

    new-instance v11, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$4;

    invoke-direct {v11, p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$4;-><init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 476
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 479
    .end local v1           #finishBuilder:Landroid/app/AlertDialog$Builder;
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 480
    .local v0, errorBuilder:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0a013b

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 481
    const v10, 0x7f0a0123

    new-instance v11, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$5;

    invoke-direct {v11, p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$5;-><init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 489
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 492
    .end local v0           #errorBuilder:Landroid/app/AlertDialog$Builder;
    :pswitch_4
    const-string v10, "<==>tsj"

    const-string v11, "onCreateDialog DIALOG_UNINSTALL_INDICATE"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getmListView()Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v5

    .line 495
    .local v5, items:[J
    array-length v8, v5

    .line 496
    .local v8, num:I
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 497
    .local v9, uninstalBuilder:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0a012b

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 498
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a012c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 500
    const v10, 0x7f0a0124

    new-instance v11, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$6;

    invoke-direct {v11, p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$6;-><init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 506
    const v10, 0x7f0a0123

    new-instance v11, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$7;

    invoke-direct {v11, p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$7;-><init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 516
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 429
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private createUninstallingProgressDialog()V
    .locals 3

    .prologue
    .line 571
    const v0, 0x7f0a012d

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a012e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->createUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 573
    return-void
.end method

.method private disableSelected(II)V
    .locals 8
    .parameter "position"
    .parameter "dataorsys"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1269
    .local v0, disableList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;>;"
    if-nez p2, :cond_3

    .line 1270
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mUninstallableAppList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    invoke-virtual {v2}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->getIndex()I

    move-result v2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1275
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1276
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v2, :cond_2

    .line 1277
    const-string v3, "LIXI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app name="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    iget-object v2, v2, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    iget-object v2, v2, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_1

    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    iget-object v2, v2, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 1281
    :cond_1
    const-string v2, "LIXI"

    const-string v3, "app disable"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    iget-object v2, v2, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1293
    :cond_2
    :goto_1
    return-void

    .line 1272
    :cond_3
    if-ne p2, v6, :cond_0

    .line 1273
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mSystemAppList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    invoke-virtual {v2}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->getIndex()I

    move-result v2

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1283
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    iget-object v2, v2, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    iget-object v2, v2, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 1285
    :cond_5
    const-string v2, "LIXI"

    const-string v3, "app enable"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    iget-object v2, v2, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1288
    :catch_0
    move-exception v1

    .line 1289
    .local v1, e:Ljava/lang/SecurityException;
    const-string v2, "InstalledSoftwareActivity"

    const-string v3, "java.lang.SecurityException: Permission Denial: attempt to change component state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getDate()Ljava/lang/String;
    .locals 15

    .prologue
    .line 1054
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1055
    .local v0, cal:Ljava/util/Calendar;
    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 1056
    .local v12, y:I
    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/lit8 v3, v13, 0x1

    .line 1057
    .local v3, m:I
    const/4 v13, 0x5

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1058
    .local v1, d:I
    const/16 v13, 0xb

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1059
    .local v2, h:I
    const/16 v13, 0xc

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1060
    .local v4, mi:I
    const/16 v13, 0xd

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1062
    .local v6, s:I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1063
    .local v9, sM:Ljava/lang/String;
    const/16 v13, 0xa

    if-ge v3, v13, :cond_0

    .line 1064
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1067
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1068
    .local v7, sD:Ljava/lang/String;
    const/16 v13, 0xa

    if-ge v1, v13, :cond_1

    .line 1069
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1072
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1073
    .local v8, sH:Ljava/lang/String;
    const/16 v13, 0xa

    if-ge v2, v13, :cond_2

    .line 1074
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1077
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1078
    .local v10, sMi:Ljava/lang/String;
    const/16 v13, 0xa

    if-ge v4, v13, :cond_3

    .line 1079
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1082
    :cond_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1083
    .local v11, sS:Ljava/lang/String;
    const/16 v13, 0xa

    if-ge v6, v13, :cond_4

    .line 1084
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1087
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1088
    .local v5, result:Ljava/lang/String;
    return-object v5
.end method

.method private initActionBar()V
    .locals 7

    .prologue
    const/4 v5, 0x5

    const/4 v6, 0x0

    .line 622
    new-array v3, v5, [I

    fill-array-data v3, :array_0

    .line 623
    .local v3, menuItemMove:[I
    new-array v2, v5, [I

    fill-array-data v2, :array_1

    .line 624
    .local v2, menuItemBackup:[I
    new-array v4, v5, [I

    fill-array-data v4, :array_2

    .line 627
    .local v4, menuItemUninstall:[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    const/4 v5, 0x2

    invoke-virtual {p0, v1, v5, v6}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->setGroupMenuItemData(Ljava/util/ArrayList;II)V

    .line 634
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 635
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 639
    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->changeCustomView(I)V

    .line 641
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->initActionBarSpinner()V

    .line 642
    return-void

    .line 622
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2ft 0x1t 0xat 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 623
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x25t 0x1t 0xat 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 624
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2bt 0x1t 0xat 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private initActionBarSpinner()V
    .locals 5

    .prologue
    .line 645
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 646
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04f5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04f6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a04f7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x7f0300fc

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 652
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 654
    new-instance v2, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$8;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$8;-><init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V

    .line 677
    .local v2, mOnNavigationListener:Landroid/app/ActionBar$OnNavigationListener;
    return-void
.end method

.method private optionsItemSelectedHandler(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v9, 0x0

    .line 362
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 410
    const-string v7, "<==>tsj"

    const-string v8, "optionsItemSelectedHandler unexpected!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :goto_0
    return v9

    .line 366
    :pswitch_0
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 367
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 368
    .end local v4           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 369
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 378
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.zte.backup.action.backupApk"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    .restart local v4       #intent:Landroid/content/Intent;
    const-string v7, "startType"

    const-string v8, "backupApk2SD"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v0, apks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getmListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v6

    .line 382
    .local v6, items:[J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v6

    if-ge v2, v7, :cond_1

    .line 383
    aget-wide v7, v6, v2

    long-to-int v5, v7

    .line 384
    .local v5, itemID:I
    iget-object v8, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mUninstallableAppList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    invoke-virtual {v7}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->getIndex()I

    move-result v7

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    .line 385
    .local v3, info:Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    if-eqz v3, :cond_0

    iget-object v7, v3, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 386
    iget-object v7, v3, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 389
    .end local v3           #info:Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    .end local v5           #itemID:I
    :cond_1
    const-string v7, "apkPakNames"

    invoke-virtual {v4, v7, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 391
    :try_start_1
    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->startActivity(Landroid/content/Intent;)V

    .line 392
    iget-object v7, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->triggerByAllBtn(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 393
    :catch_1
    move-exception v1

    .line 394
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v7, "InstalledSoftwareActivity"

    const-string v8, "backup app not support this function"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getExternalSD()Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 396
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->showAlertDialog(I)V

    goto/16 :goto_0

    .line 398
    :cond_2
    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->showAlertDialog(I)V

    goto/16 :goto_0

    .line 406
    .end local v0           #apks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #i:I
    .end local v4           #intent:Landroid/content/Intent;
    .end local v6           #items:[J
    :pswitch_2
    const/4 v7, 0x5

    invoke-direct {p0, v7}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->showAlertDialog(I)V

    goto/16 :goto_0

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showAlertDialog(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 419
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    .line 420
    .local v0, dialog:Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 422
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 424
    :cond_0
    return-void
.end method

.method private uninstallApplications()V
    .locals 7

    .prologue
    .line 1038
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getmListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v3

    .line 1039
    .local v3, items:[J
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1040
    .local v4, uninstallList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 1041
    aget-wide v5, v3, v1

    long-to-int v2, v5

    .line 1042
    .local v2, itemID:I
    iget-object v6, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mUninstallableAppList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    invoke-virtual {v5}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->getIndex()I

    move-result v5

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1040
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1044
    .end local v2           #itemID:I
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1045
    iget-object v5, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1046
    iget-object v5, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    invoke-interface {v5, v4}, Lcom/zte/heartyservice/apksmanager/IApksManagerService;->uninstallApp(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1051
    .end local v1           #i:I
    .end local v3           #items:[J
    .end local v4           #uninstallList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;>;"
    :cond_1
    :goto_1
    return-void

    .line 1048
    :catch_0
    move-exception v0

    .line 1049
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected BroadcastReceiverOperation(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 541
    const v1, 0x7f0a0148

    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0148

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, p0, v1, v2, v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->createUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 543
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/apksmanager/IApksManagerService;->listUninstallableApp(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected ItemSingleClickOperation(I)V
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    .line 824
    const/4 v1, 0x0

    .line 825
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;>;"
    iget-boolean v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->defaultState:Z

    if-eqz v3, :cond_1

    .line 826
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mUninstallableAppList:Ljava/util/List;

    .line 830
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, p1, :cond_2

    .line 846
    :cond_0
    :goto_1
    return-void

    .line 828
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mSystemAppList:Ljava/util/List;

    goto :goto_0

    .line 833
    :cond_2
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 834
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->getIndex()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    .line 836
    .local v2, localItem:Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    iget-object v3, v2, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/zte/heartyservice/common/utils/SysInfo;->showInstalledAppDetails(Landroid/content/Context;Ljava/lang/String;)V

    .line 839
    .end local v2           #localItem:Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    :cond_3
    iget-boolean v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->defaultState:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    if-lt v3, v4, :cond_0

    .line 840
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 841
    .local v0, isChecked:Z
    if-ne v0, v4, :cond_4

    .line 842
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->multiClickHandler(IZ)V

    goto :goto_1

    .line 844
    :cond_4
    invoke-virtual {p0, p1, v4}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->multiClickHandler(IZ)V

    goto :goto_1
.end method

.method protected ServiceConnectedOperation()V
    .locals 4

    .prologue
    .line 528
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 529
    const v1, 0x7f0a0148

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0148

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, p0, v1, v2, v3}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->createUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 532
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/zte/heartyservice/apksmanager/IApksManagerService;->listUninstallableApp(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :goto_0
    return-void

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected UpdateCustomView(I)V
    .locals 6
    .parameter "group"

    .prologue
    .line 880
    const-string v3, "InstalledSoftwareActivity"

    const-string v4, "liuji debug UpdateCustomView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 883
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v3, 0x1

    if-ne v3, p1, :cond_0

    .line 884
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mCustomViewGroupUsed:Landroid/view/View;

    const v4, 0x7f0e002e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 885
    .local v1, customText:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v3

    array-length v2, v3

    .line 886
    .local v2, nSelected:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a011b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 887
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mCustomViewGroupUsed:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 889
    .end local v1           #customText:Landroid/widget/TextView;
    .end local v2           #nSelected:I
    :cond_0
    return-void
.end method

.method protected changeCustomView(I)V
    .locals 14
    .parameter "group"

    .prologue
    .line 894
    const-string v11, "InstalledSoftwareActivity"

    const-string v12, "liuji debug changeCustomView"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 896
    .local v0, actionBar:Landroid/app/ActionBar;
    const-string v11, "layout_inflater"

    invoke-virtual {p0, v11}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 898
    .local v6, layoutInflater:Landroid/view/LayoutInflater;
    if-nez p1, :cond_1

    .line 899
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mCustomViewGroupNull:Landroid/view/View;

    if-nez v11, :cond_0

    .line 901
    const v11, 0x7f030105

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 903
    .local v5, layout:Landroid/view/View;
    const v11, 0x7f0e0370

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    .line 904
    .local v9, spinner:Landroid/widget/Spinner;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 905
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a04f5

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 906
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a04f6

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a04f7

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 909
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v11, 0x7f0300fc

    invoke-direct {v1, p0, v11, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 911
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v11, 0x1090009

    invoke-virtual {v1, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 912
    invoke-virtual {v9, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 913
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/Spinner;->setSelection(I)V

    .line 914
    new-instance v11, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$13;

    invoke-direct {v11, p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$13;-><init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V

    invoke-virtual {v9, v11}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 937
    const v11, 0x7f0e036f

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 938
    .local v10, top_text:Landroid/widget/TextView;
    const v11, 0x7f0a0130

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 942
    const/16 v11, 0x10

    const/16 v12, 0x10

    invoke-virtual {v0, v11, v12}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 943
    iput-object v5, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mCustomViewGroupNull:Landroid/view/View;

    .line 944
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 991
    .end local v1           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v5           #layout:Landroid/view/View;
    .end local v7           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v9           #spinner:Landroid/widget/Spinner;
    .end local v10           #top_text:Landroid/widget/TextView;
    :goto_0
    return-void

    .line 947
    :cond_0
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mCustomViewGroupNull:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto :goto_0

    .line 950
    :cond_1
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mCustomViewGroupUsed:Landroid/view/View;

    if-nez v11, :cond_2

    .line 952
    const v11, 0x7f03000d

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 954
    .restart local v5       #layout:Landroid/view/View;
    const v11, 0x7f0e0030

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 955
    .local v2, allButton:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->setSelectAllBtn(Landroid/view/View;)V

    .line 956
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 957
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/view/View;->setSelected(Z)V

    .line 959
    new-instance v11, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$14;

    invoke-direct {v11, p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$14;-><init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V

    invoke-virtual {v2, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 966
    const v11, 0x7f0e002c

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 967
    .local v3, backButton:Landroid/view/View;
    new-instance v11, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$15;

    invoke-direct {v11, p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$15;-><init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V

    invoke-virtual {v3, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 973
    const v11, 0x7f0e002e

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 974
    .local v4, customText:Landroid/widget/TextView;
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v11

    array-length v8, v11

    .line 976
    .local v8, nSelected:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a011b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 978
    const/16 v11, 0x10

    const/16 v12, 0x10

    invoke-virtual {v0, v11, v12}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 980
    iput-object v5, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mCustomViewGroupUsed:Landroid/view/View;

    .line 981
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 984
    .end local v2           #allButton:Landroid/view/View;
    .end local v3           #backButton:Landroid/view/View;
    .end local v4           #customText:Landroid/widget/TextView;
    .end local v5           #layout:Landroid/view/View;
    .end local v8           #nSelected:I
    :cond_2
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mCustomViewGroupUsed:Landroid/view/View;

    const v12, 0x7f0e002e

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 985
    .restart local v4       #customText:Landroid/widget/TextView;
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v11}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v11

    array-length v8, v11

    .line 986
    .restart local v8       #nSelected:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a011b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 988
    iget-object v11, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mCustomViewGroupUsed:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method protected getActivityView()I
    .locals 1

    .prologue
    .line 562
    const v0, 0x7f030063

    return v0
.end method

.method protected getCustomViewGroupByState(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 869
    if-nez p1, :cond_0

    .line 870
    const/4 v0, 0x0

    .line 872
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getEnabledMenuItemGroupID()[I
    .locals 2

    .prologue
    .line 851
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 853
    .local v0, list:[I
    return-object v0

    .line 851
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
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
    .line 551
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .local v1, ifList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;>;"
    new-instance v0, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;

    const-string v2, "package"

    invoke-direct {v0, p0, v2}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;-><init>(Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;Ljava/lang/String;)V

    .line 553
    .local v0, ifArray:Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->addAction(Ljava/lang/String;)V

    .line 554
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->addAction(Ljava/lang/String;)V

    .line 555
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity$IntentFilterArray;->addAction(Ljava/lang/String;)V

    .line 556
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    return-object v1
.end method

.method protected getMenuItemGroupByState(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 859
    if-nez p1, :cond_0

    .line 860
    const/4 v0, 0x0

    .line 862
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 576
    const-string v0, "<==>tsj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; onCreate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-super {p0, p1}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->onCreate(Landroid/os/Bundle;)V

    .line 578
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 580
    const v0, 0x7f0e009a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    .line 581
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->initActionBar()V

    .line 582
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 584
    const v0, 0x7f0e0069

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->emptyTxtView:Landroid/widget/TextView;

    .line 586
    const v0, 0x7f0e0114

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mInstruction:Landroid/view/View;

    .line 587
    const v0, 0x7f0e0112

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->buttonData:Landroid/widget/Button;

    .line 588
    const v0, 0x7f0e0113

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->buttonSystem:Landroid/widget/Button;

    .line 589
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->buttonData:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->buttonSystem:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 592
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->buttonData:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 593
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->buttonSystem:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 594
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mInstruction:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 595
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 599
    const-string v1, "<==>tsj"

    const-string v2, " InstalledSoftwareActivity:: onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-super {p0}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->onDestroy()V

    .line 601
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->clearLists()V

    .line 605
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;

    .line 606
    .local v0, adapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;
    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->setListViewCallBacks(Lcom/zte/heartyservice/apksmanager/BaseListAdapter$ListViewCallBacks;)V

    .line 608
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 609
    iput-object v3, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    .line 611
    :cond_0
    return-void
.end method

.method public onNotifyBackupApkResult(Z)V
    .locals 2
    .parameter "result"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x3

    .line 337
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->dismissUpdateListProgressDialog()V

    .line 338
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->removeDialog(I)V

    .line 339
    invoke-direct {p0, v0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->showAlertDialog(I)V

    .line 340
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 341
    return-void
.end method

.method public onNotifyProgress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "progress"
    .parameter "taskName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0a0148

    const/4 v1, 0x1

    .line 345
    const-string v0, "backupApksTask"

    if-ne v0, p2, :cond_1

    .line 346
    const v0, 0x7f0a0149

    invoke-virtual {p0, p0, v0, p1, v1}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->showUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    const-string v0, "uninstallAppTask"

    if-ne v0, p2, :cond_2

    .line 348
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p0, v2, v0, v1}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->showUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    goto :goto_0

    .line 350
    :cond_2
    const-string v0, "listUninstallableAppTask"

    if-ne v0, p2, :cond_0

    .line 351
    invoke-virtual {p0, p0, v2, p1, v1}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->showUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->optionsItemSelectedHandler(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 615
    invoke-super {p0}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->onResume()V

    .line 616
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V

    .line 617
    return-void
.end method

.method public onUpdateSystemAppList(Ljava/util/List;)V
    .locals 19
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, uninstallableAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;>;"
    const-string v5, "InstalledSoftwareActivity"

    const-string v8, "liuji debug onUpdateSystemAppList begin!"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mSystemAppList:Ljava/util/List;

    .line 214
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->systemBackedListItems:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 215
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->systemBackedListItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 221
    :goto_0
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v13, v5, :cond_5

    .line 222
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    .line 223
    .local v15, loaclUninstallableAppInfo:Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v15, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    const/16 v17, 0x80

    move/from16 v0, v17

    invoke-virtual {v5, v8, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 225
    .local v11, appInfo:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v11}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 226
    .local v4, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v11}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 227
    .local v6, icon:Landroid/graphics/drawable/Drawable;
    iget-object v3, v15, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->versionName:Ljava/lang/String;

    .line 229
    .local v3, version:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 230
    .local v9, Disabled:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v15, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_3

    .line 231
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 237
    :cond_0
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v0, v15, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->storageSpace:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    invoke-static {v5, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 238
    .local v7, appSize:Ljava/lang/String;
    new-instance v2, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;

    const-string v5, ""

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct/range {v2 .. v9}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 239
    .local v2, backedListItem:Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
    const/4 v5, 0x1

    iput v5, v2, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->type:I

    .line 240
    invoke-virtual {v2, v13}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->setIndex(I)V

    .line 242
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v8, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .line 243
    .local v16, pInfo:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    iput-wide v0, v2, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->lastUpdateTime:J

    .line 244
    iget-wide v0, v15, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->storageSpace:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    iput-wide v0, v2, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->size:J

    .line 248
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 249
    .local v14, intent:Landroid/content/Intent;
    if-eqz v14, :cond_4

    .line 250
    const-string v5, "lixi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "LaunchIntent package ="

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v0, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.android.contacts"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.android.mms"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.android.settings"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.zte.input"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.zte.heartyservice"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.android.providers.downloads"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.zte.backup.mmi"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.android.gallery3d"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "zte.com.cn.camera"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "zte.com.cn.filer"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.android.quicksearchbox"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.android.stk"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "zte.com.cn.taskmanager"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.android.mipop"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.zte.videoplayer"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "zte.com.cn.gallery3d"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.android.screen"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "zte.com.cn.alarmclock"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 269
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->systemBackedListItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_1
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 217
    .end local v2           #backedListItem:Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
    .end local v3           #version:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v6           #icon:Landroid/graphics/drawable/Drawable;
    .end local v7           #appSize:Ljava/lang/String;
    .end local v9           #Disabled:Ljava/lang/Boolean;
    .end local v11           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v13           #i:I
    .end local v14           #intent:Landroid/content/Intent;
    .end local v15           #loaclUninstallableAppInfo:Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    .end local v16           #pInfo:Landroid/content/pm/PackageInfo;
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->systemBackedListItems:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 232
    .restart local v3       #version:Ljava/lang/String;
    .restart local v4       #name:Ljava/lang/String;
    .restart local v6       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v9       #Disabled:Ljava/lang/Boolean;
    .restart local v11       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v13       #i:I
    .restart local v15       #loaclUninstallableAppInfo:Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v15, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_0

    .line 233
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto/16 :goto_2

    .line 271
    .restart local v2       #backedListItem:Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
    .restart local v7       #appSize:Ljava/lang/String;
    .restart local v14       #intent:Landroid/content/Intent;
    .restart local v16       #pInfo:Landroid/content/pm/PackageInfo;
    :cond_4
    iget-boolean v5, v11, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_1

    .line 272
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->systemBackedListItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 277
    .end local v2           #backedListItem:Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
    .end local v3           #version:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v6           #icon:Landroid/graphics/drawable/Drawable;
    .end local v7           #appSize:Ljava/lang/String;
    .end local v9           #Disabled:Ljava/lang/Boolean;
    .end local v11           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v14           #intent:Landroid/content/Intent;
    .end local v15           #loaclUninstallableAppInfo:Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    .end local v16           #pInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v12

    .line 278
    .local v12, e:Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 281
    .end local v12           #e:Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->systemBackedListItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mOrder:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->sortList(Ljava/util/ArrayList;I)V

    .line 283
    new-instance v10, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;

    const v5, 0x7f03011c

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->systemBackedListItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v5, v8}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 285
    .local v10, adapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->setListViewCallBacks(Lcom/zte/heartyservice/apksmanager/BaseListAdapter$ListViewCallBacks;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->systemBackedListItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 288
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->emptyTxtView:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    :goto_4
    invoke-virtual {v10}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->notifyDataSetChanged()V

    .line 293
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 294
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 297
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    new-instance v8, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemSingleClickListener;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemSingleClickListener;-><init>(Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;)V

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    new-instance v8, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$1;-><init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->setmListView(Landroid/widget/ListView;)V

    .line 313
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->setMenuItemEnabled(Z)V

    .line 316
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->triggerByAllBtn(Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->systemBackedListItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_7

    .line 319
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 324
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->dismissUpdateListProgressDialog()V

    .line 325
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_8

    .line 326
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mInstruction:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    const v8, 0x7f0a04fd

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 330
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mInstruction:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 332
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->defaultState:Z

    .line 333
    return-void

    .line 290
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->emptyTxtView:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 321
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_5

    .line 328
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mInstruction:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    const v8, 0x7f0a04fc

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6
.end method

.method public onUpdateUninstallableAppList(Ljava/util/List;)V
    .locals 18
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    .local p1, uninstallableAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;>;"
    const-string v5, "<==>tsj"

    const-string v8, "onUpdateUninstallableAppList begin!"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mUninstallableAppList:Ljava/util/List;

    .line 115
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->dataBackedListItems:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 116
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->dataBackedListItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 122
    :goto_0
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v14, v5, :cond_5

    .line 123
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    .line 124
    .local v16, loaclUninstallableAppInfo:Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    const/16 v9, 0x80

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 126
    .local v12, appInfo:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 127
    .local v4, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v12}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 128
    .local v6, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->versionName:Ljava/lang/String;

    .line 130
    .local v3, version:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 131
    .local v10, Disabled:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v5

    const/4 v8, 0x1

    if-ne v5, v8, :cond_3

    .line 132
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 138
    :cond_0
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->storageSpace:J

    invoke-static {v5, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    .line 139
    .local v7, appSize:Ljava/lang/String;
    new-instance v2, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;

    const-string v5, ""

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct/range {v2 .. v9}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 140
    .local v2, backedListItem:Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
    invoke-virtual {v2, v14}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->setIndex(I)V

    .line 142
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    .line 143
    .local v17, pInfo:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v17

    iget-wide v8, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iput-wide v8, v2, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->lastUpdateTime:J

    .line 144
    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->storageSpace:J

    iput-wide v8, v2, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->size:J

    .line 148
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    .line 149
    .local v15, intent:Landroid/content/Intent;
    if-eqz v15, :cond_4

    .line 150
    const-string v5, "lixi"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LaunchIntent package ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->dataBackedListItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_1
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 118
    .end local v2           #backedListItem:Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
    .end local v3           #version:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v6           #icon:Landroid/graphics/drawable/Drawable;
    .end local v7           #appSize:Ljava/lang/String;
    .end local v10           #Disabled:Ljava/lang/Boolean;
    .end local v12           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v14           #i:I
    .end local v15           #intent:Landroid/content/Intent;
    .end local v16           #loaclUninstallableAppInfo:Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    .end local v17           #pInfo:Landroid/content/pm/PackageInfo;
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->dataBackedListItems:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 133
    .restart local v3       #version:Ljava/lang/String;
    .restart local v4       #name:Ljava/lang/String;
    .restart local v6       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v10       #Disabled:Ljava/lang/Boolean;
    .restart local v12       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v14       #i:I
    .restart local v16       #loaclUninstallableAppInfo:Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_0

    .line 134
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto/16 :goto_2

    .line 153
    .restart local v2       #backedListItem:Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
    .restart local v7       #appSize:Ljava/lang/String;
    .restart local v15       #intent:Landroid/content/Intent;
    .restart local v17       #pInfo:Landroid/content/pm/PackageInfo;
    :cond_4
    iget-boolean v5, v12, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v5, :cond_1

    .line 154
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->dataBackedListItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 159
    .end local v2           #backedListItem:Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
    .end local v3           #version:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v6           #icon:Landroid/graphics/drawable/Drawable;
    .end local v7           #appSize:Ljava/lang/String;
    .end local v10           #Disabled:Ljava/lang/Boolean;
    .end local v12           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v15           #intent:Landroid/content/Intent;
    .end local v16           #loaclUninstallableAppInfo:Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;
    .end local v17           #pInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v13

    .line 160
    .local v13, e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    .end local v13           #e:Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->dataBackedListItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mOrder:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->sortList(Ljava/util/ArrayList;I)V

    .line 165
    new-instance v11, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;

    const v5, 0x7f03000e

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->dataBackedListItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v5, v8}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 167
    .local v11, adapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->setListViewCallBacks(Lcom/zte/heartyservice/apksmanager/BaseListAdapter$ListViewCallBacks;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->dataBackedListItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 170
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->emptyTxtView:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    :goto_4
    invoke-virtual {v11}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->notifyDataSetChanged()V

    .line 175
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 176
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    new-instance v8, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemSingleClickListener;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemSingleClickListener;-><init>(Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;)V

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->setmListView(Landroid/widget/ListView;)V

    .line 187
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->setMenuItemEnabled(Z)V

    .line 190
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->triggerByAllBtn(Ljava/lang/String;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->dataBackedListItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_7

    .line 193
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 198
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->dismissUpdateListProgressDialog()V

    .line 199
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_8

    .line 200
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mInstruction:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    const v8, 0x7f0a04fd

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    .line 204
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mInstruction:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 206
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->defaultState:Z

    .line 207
    return-void

    .line 172
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->emptyTxtView:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 195
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mListView:Landroid/widget/ListView;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_5

    .line 202
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mInstruction:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    const v8, 0x7f0a04fb

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6
.end method

.method public sortList(Ljava/util/ArrayList;I)V
    .locals 1
    .parameter
    .parameter "order"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/apksmanager/AbstractListItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 758
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/apksmanager/AbstractListItem;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 819
    :goto_1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->setBackedList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 764
    :pswitch_0
    new-instance v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$10;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$10;-><init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 777
    :pswitch_1
    new-instance v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$11;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$11;-><init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 797
    :pswitch_2
    new-instance v0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$12;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$12;-><init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 762
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateViewInfo(Lcom/zte/heartyservice/apksmanager/AbstractListItem;ILandroid/view/View;)Landroid/view/View;
    .locals 11
    .parameter "listItem"
    .parameter "position"
    .parameter "convertView"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 1099
    move-object v3, p1

    check-cast v3, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;

    .line 1101
    .local v3, sfManagerItem:Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
    iget v4, v3, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->type:I

    if-nez v4, :cond_7

    .line 1102
    const/4 v1, 0x0

    .line 1104
    .local v1, holder:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;
    if-nez p3, :cond_1

    .line 1105
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1106
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03000e

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 1108
    new-instance v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;

    .end local v1           #holder:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;
    invoke-direct {v1}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;-><init>()V

    .line 1109
    .restart local v1       #holder:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;
    const v4, 0x7f0e0034

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->appName:Landroid/widget/TextView;

    .line 1110
    const v4, 0x7f0e0032

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->imageChoosed:Landroid/widget/CheckBox;

    .line 1111
    const v4, 0x7f0e0033

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->iconImg:Landroid/widget/ImageView;

    .line 1112
    const v4, 0x7f0e0035

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->verName:Landroid/widget/TextView;

    .line 1114
    const v4, 0x7f0e0038

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->buttonDisable:Landroid/widget/Button;

    .line 1116
    const v4, 0x7f0e0036

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->storageSpace:Landroid/widget/TextView;

    .line 1117
    const v4, 0x7f0e0037

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->apkState:Landroid/widget/TextView;

    .line 1118
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1122
    .end local v2           #layoutInflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->imageChoosed:Landroid/widget/CheckBox;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1123
    const-string v4, "InstalledSoftwareActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "liuji debug updateViewInfo setChecked:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->isAppSelected()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->imageChoosed:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->isAppSelected()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1125
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->imageChoosed:Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mApkCheckedChangeListener:Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemCheckedChangeListener;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1127
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->iconImg:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1128
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->verName:Landroid/widget/TextView;

    const v5, 0x7f0a04fa

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->getVersion()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1130
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->storageSpace:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->getAppSize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1132
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v4

    if-ne v4, v9, :cond_2

    .line 1133
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->buttonDisable:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 1215
    .end local v1           #holder:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;
    :cond_0
    :goto_1
    return-object p3

    .line 1120
    .restart local v1       #holder:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;
    check-cast v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;

    .restart local v1       #holder:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;
    goto/16 :goto_0

    .line 1136
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mUninstallableAppList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    invoke-virtual {v4}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->getIndex()I

    move-result v4

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    iget-object v4, v4, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_3

    iget-object v5, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mUninstallableAppList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    invoke-virtual {v4}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->getIndex()I

    move-result v4

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    iget-object v4, v4, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_5

    .line 1140
    :cond_3
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->buttonDisable:Landroid/widget/Button;

    const v5, 0x7f0a0661

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 1141
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->buttonDisable:Landroid/widget/Button;

    const v5, -0xcc4a1b

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 1150
    :cond_4
    :goto_2
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->buttonDisable:Landroid/widget/Button;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1151
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->buttonDisable:Landroid/widget/Button;

    iget-object v5, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->DisableOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1152
    :catch_0
    move-exception v0

    .line 1153
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "InstalledSoftwareActivity"

    const-string v5, "the updated item is already uninstalled,so just do nothing"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1143
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_5
    :try_start_1
    iget-object v5, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mUninstallableAppList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    invoke-virtual {v4}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->getIndex()I

    move-result v4

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    iget-object v4, v4, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    iget-object v5, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mUninstallableAppList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    invoke-virtual {v4}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->getIndex()I

    move-result v4

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    iget-object v4, v4, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 1147
    :cond_6
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->buttonDisable:Landroid/widget/Button;

    const v5, 0x7f0a0662

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 1148
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->buttonDisable:Landroid/widget/Button;

    const v5, -0x663400

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1157
    .end local v1           #holder:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;
    :cond_7
    iget v4, v3, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->type:I

    if-ne v4, v8, :cond_0

    .line 1158
    const/4 v1, 0x0

    .line 1160
    .restart local v1       #holder:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;
    if-nez p3, :cond_8

    .line 1161
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1162
    .restart local v2       #layoutInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f03011c

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 1164
    new-instance v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;

    .end local v1           #holder:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;
    invoke-direct {v1}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;-><init>()V

    .line 1165
    .restart local v1       #holder:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;
    const v4, 0x7f0e0034

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->appName:Landroid/widget/TextView;

    .line 1167
    const v4, 0x7f0e0033

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->iconImg:Landroid/widget/ImageView;

    .line 1168
    const v4, 0x7f0e0035

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->verName:Landroid/widget/TextView;

    .line 1170
    const v4, 0x7f0e03b0

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->buttonDisable:Landroid/widget/Button;

    .line 1172
    const v4, 0x7f0e0036

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->storageSpace:Landroid/widget/TextView;

    .line 1173
    const v4, 0x7f0e0037

    invoke-virtual {p3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->apkState:Landroid/widget/TextView;

    .line 1174
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1182
    .end local v2           #layoutInflater:Landroid/view/LayoutInflater;
    :goto_3
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->iconImg:Landroid/widget/ImageView;

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1183
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1184
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->verName:Landroid/widget/TextView;

    const v5, 0x7f0a04fa

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->getVersion()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->storageSpace:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->getAppSize()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1188
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getSecurityExtentionVersion()I

    move-result v4

    if-ne v4, v9, :cond_9

    .line 1189
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->buttonDisable:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    .line 1176
    :cond_8
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;
    check-cast v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;

    .restart local v1       #holder:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;
    goto :goto_3

    .line 1192
    :cond_9
    :try_start_2
    iget-object v5, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mSystemAppList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    invoke-virtual {v4}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->getIndex()I

    move-result v4

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    iget-object v4, v4, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_a

    iget-object v5, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mSystemAppList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    invoke-virtual {v4}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->getIndex()I

    move-result v4

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    iget-object v4, v4, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_c

    .line 1196
    :cond_a
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->buttonDisable:Landroid/widget/Button;

    const v5, 0x7f0a0661

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 1197
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->buttonDisable:Landroid/widget/Button;

    const v5, -0xcc4a1b

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 1206
    :cond_b
    :goto_4
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->buttonDisable:Landroid/widget/Button;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 1207
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->buttonDisable:Landroid/widget/Button;

    iget-object v5, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->DisableOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 1208
    :catch_1
    move-exception v0

    .line 1209
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v4, "InstalledSoftwareActivity"

    const-string v5, "the updated item is already uninstalled,so just do nothing"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1199
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_c
    :try_start_3
    iget-object v5, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mSystemAppList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    invoke-virtual {v4}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->getIndex()I

    move-result v4

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    iget-object v4, v4, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_d

    iget-object v5, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mSystemAppList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    invoke-virtual {v4}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->getIndex()I

    move-result v4

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;

    iget-object v4, v4, Lcom/zte/heartyservice/common/datatype/UninstallableAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_b

    .line 1203
    :cond_d
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->buttonDisable:Landroid/widget/Button;

    const v5, 0x7f0a0662

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 1204
    iget-object v4, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$ViewHolder;->buttonDisable:Landroid/widget/Button;

    const v5, -0x663400

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4
.end method
