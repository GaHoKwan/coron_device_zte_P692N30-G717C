.class public Lcom/mediatek/contacts/activities/ContactImportExportActivity;
.super Landroid/app/Activity;
.source "ContactImportExportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountListAdapter;,
        Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;,
        Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountsLoader;,
        Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;
    }
.end annotation


# static fields
.field private static final ACCOUNT_LOADER_ID:I = 0x0

.field public static final REQUEST_CODE:I = 0x1b207

.field public static final RESULT_CODE:I = 0x1b208

.field private static final SELECTION_VIEW_STEP_NONE:I = 0x0

.field private static final SELECTION_VIEW_STEP_ONE:I = 0x1

.field private static final SELECTION_VIEW_STEP_TWO:I = 0x2

.field public static final STORAGE_ACCOUNT_TYPE:Ljava/lang/String; = "_STORAGE_ACCOUNT"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/model/AccountWithDataSetEx;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountListAdapter;

.field private mCheckedAccount1:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

.field private mCheckedAccount2:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

.field private mCheckedPosition:I

.field private mIsFinished:Z

.field private mIsFirstEntry:Z

.field private mListItemObjectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mShowingStep:I

.field private mWaitingDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 98
    iput-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mAccounts:Ljava/util/List;

    .line 100
    iput v2, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mShowingStep:I

    .line 101
    iput v2, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedPosition:I

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mIsFirstEntry:Z

    .line 103
    iput-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount1:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    .line 104
    iput-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount2:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mListItemObjectList:Ljava/util/List;

    .line 106
    iput-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mAdapter:Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountListAdapter;

    .line 707
    iput-boolean v2, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mIsFinished:Z

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->loadAccountFilters(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/contacts/activities/ContactImportExportActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mListItemObjectList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/contacts/activities/ContactImportExportActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->isActivityFinished()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/contacts/activities/ContactImportExportActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mAccounts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/contacts/activities/ContactImportExportActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mAccounts:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/contacts/activities/ContactImportExportActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mShowingStep:I

    return v0
.end method

.method static synthetic access$600(Lcom/mediatek/contacts/activities/ContactImportExportActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->setShowingStep(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/contacts/activities/ContactImportExportActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedPosition:I

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/contacts/activities/ContactImportExportActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->setCheckedAccount(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/contacts/activities/ContactImportExportActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->updateUi()V

    return-void
.end method

.method private checkSDCardAvaliable(Ljava/lang/String;)Z
    .locals 5
    .parameter "path"

    .prologue
    .line 589
    if-nez p1, :cond_0

    .line 590
    const/4 v3, 0x0

    .line 603
    :goto_0
    return v3

    .line 593
    :cond_0
    const-string v2, ""

    .line 596
    .local v2, volumeState:Ljava/lang/String;
    :try_start_0
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 598
    .local v0, mountService:Landroid/os/storage/IMountService;
    invoke-interface {v0, p1}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 603
    .end local v0           #mountService:Landroid/os/storage/IMountService;
    :goto_1
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 599
    :catch_0
    move-exception v1

    .line 600
    .local v1, rex:Landroid/os/RemoteException;
    sget-object v3, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getCheckedAccountPosition(Lcom/mediatek/contacts/model/AccountWithDataSetEx;)I
    .locals 3
    .parameter "checkedAccount"

    .prologue
    .line 524
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mListItemObjectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 525
    iget-object v2, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mListItemObjectList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;

    .line 526
    .local v1, obj:Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;
    iget-object v2, v1, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;->mAccount:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    if-ne v2, p1, :cond_0

    .line 530
    .end local v0           #i:I
    .end local v1           #obj:Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;
    :goto_1
    return v0

    .line 524
    .restart local v0       #i:I
    .restart local v1       #obj:Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 530
    .end local v1           #obj:Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleImportExportAction()V
    .locals 8

    .prologue
    const v7, 0x7f0c004d

    const v6, 0x104000a

    const v5, 0x1010355

    const v4, 0x1b207

    const/4 v3, 0x1

    .line 535
    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount1:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-static {v1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->isStorageAccount(Landroid/accounts/Account;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount1:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    iget-object v1, v1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->checkSDCardAvaliable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount2:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-static {v1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->isStorageAccount(Landroid/accounts/Account;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount2:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    iget-object v1, v1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->checkSDCardAvaliable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 538
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c01bb

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c000d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mediatek/contacts/activities/ContactImportExportActivity$1;

    invoke-direct {v2, p0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity$1;-><init>(Lcom/mediatek/contacts/activities/ContactImportExportActivity;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 586
    :cond_2
    :goto_0
    return-void

    .line 548
    :cond_3
    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount1:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-static {v1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->isStorageAccount(Landroid/accounts/Account;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 549
    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount2:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    if-eqz v1, :cond_2

    .line 550
    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount1:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    iget-object v1, v1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount2:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-static {p0, v1, v2}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportFromSdCard(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    goto :goto_0

    .line 555
    :cond_4
    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount2:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-static {v1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->isStorageAccount(Landroid/accounts/Account;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 557
    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount2:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    iget-object v1, v1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->isSDCardFull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 558
    sget-object v1, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->TAG:Ljava/lang/String;

    const-string v2, "[handleImportExportAction] isSDCardFull"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mediatek/contacts/activities/ContactImportExportActivity$2;

    invoke-direct {v2, p0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity$2;-><init>(Lcom/mediatek/contacts/activities/ContactImportExportActivity;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 569
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.contacts.list.PICKMULTICONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "request_type"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "toSDCard"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromaccount"

    iget-object v3, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount1:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "toaccount"

    iget-object v3, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount2:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 575
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 577
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "android.intent.action.contacts.list.PICKMULTICONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "request_type"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "toSDCard"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "fromaccount"

    iget-object v3, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount1:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "toaccount"

    iget-object v3, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount2:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 583
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method private isActivityFinished()Z
    .locals 1

    .prologue
    .line 704
    iget-boolean v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mIsFinished:Z

    return v0
.end method

.method private isSDCardFull(Ljava/lang/String;)Z
    .locals 9
    .parameter "path"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 607
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 630
    :goto_0
    return v5

    .line 610
    :cond_0
    sget-object v6, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSDCardFull storage path is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->checkSDCardAvaliable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 612
    const/4 v3, 0x0

    .line 614
    .local v3, sf:Landroid/os/StatFs;
    :try_start_0
    new-instance v3, Landroid/os/StatFs;

    .end local v3           #sf:Landroid/os/StatFs;
    invoke-direct {v3, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    .restart local v3       #sf:Landroid/os/StatFs;
    if-nez v3, :cond_1

    .line 622
    sget-object v4, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->TAG:Ljava/lang/String;

    const-string v6, "isSDCardFull sf is null "

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 615
    .end local v3           #sf:Landroid/os/StatFs;
    :catch_0
    move-exception v2

    .line 616
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 617
    sget-object v4, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 626
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #sf:Landroid/os/StatFs;
    :cond_1
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 627
    .local v0, availCount:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_2

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .end local v0           #availCount:J
    .end local v3           #sf:Landroid/os/StatFs;
    :cond_3
    move v5, v4

    .line 630
    goto :goto_0
.end method

.method private static isStorageAccount(Landroid/accounts/Account;)Z
    .locals 2
    .parameter "account"

    .prologue
    .line 246
    if-eqz p0, :cond_0

    .line 247
    iget-object v0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v1, "_STORAGE_ACCOUNT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 249
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadAccountFilters(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/model/AccountWithDataSetEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v4, accountsEx:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/contacts/model/AccountWithDataSetEx;>;"
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    .line 311
    .local v2, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v3

    .line 312
    .local v3, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/account/AccountWithDataSet;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountWithDataSet;

    .line 313
    .local v0, account:Lcom/android/contacts/model/account/AccountWithDataSet;
    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v1

    .line 314
    .local v1, accountType:Lcom/android/contacts/model/account/AccountType;
    invoke-virtual {v1}, Lcom/android/contacts/model/account/AccountType;->isExtension()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/contacts/model/account/AccountWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 319
    :cond_1
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getFirstSlotId()I

    move-result v6

    .line 320
    .local v6, slot:I
    instance-of v7, v0, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    if-eqz v7, :cond_2

    move-object v7, v0

    .line 321
    check-cast v7, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-virtual {v7}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->getSlotId()I

    move-result v6

    .line 324
    :cond_2
    new-instance v7, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v6}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 328
    .end local v0           #account:Lcom/android/contacts/model/account/AccountWithDataSet;
    .end local v1           #accountType:Lcom/android/contacts/model/account/AccountType;
    .end local v6           #slot:I
    :cond_3
    return-object v4
.end method

.method private onBackAction()V
    .locals 2

    .prologue
    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, pos:I
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->setShowingStep(I)V

    .line 477
    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount1:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->getCheckedAccountPosition(Lcom/mediatek/contacts/model/AccountWithDataSetEx;)I

    move-result v0

    .line 478
    iput v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedPosition:I

    .line 479
    iget v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedPosition:I

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->setCheckedAccount(I)V

    .line 480
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->updateUi()V

    .line 481
    return-void
.end method

.method private onNextAction()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 484
    const/4 v0, 0x0

    .line 485
    .local v0, pos:I
    iget v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mShowingStep:I

    if-lt v1, v2, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->doImportExport()V

    .line 499
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-direct {p0, v2}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->setShowingStep(I)V

    .line 490
    iget-boolean v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mIsFirstEntry:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount1:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount2:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    if-nez v1, :cond_2

    .line 491
    :cond_1
    const/4 v0, 0x0

    .line 495
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mIsFirstEntry:Z

    .line 496
    iput v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedPosition:I

    .line 497
    iget v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedPosition:I

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->setCheckedAccount(I)V

    .line 498
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->updateUi()V

    goto :goto_0

    .line 493
    :cond_2
    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount2:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->getCheckedAccountPosition(Lcom/mediatek/contacts/model/AccountWithDataSetEx;)I

    move-result v0

    goto :goto_1
.end method

.method private setButtonState(Z)V
    .locals 4
    .parameter "isTrue"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 169
    const v0, 0x7f070159

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mShowingStep:I

    if-le v0, v2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 172
    const v0, 0x7f07015a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    iget v3, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mShowingStep:I

    if-lez v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 174
    return-void

    .line 169
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setCheckedAccount(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 290
    iget v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mShowingStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 291
    iget-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mListItemObjectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;

    iget-object v0, v0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;->mAccount:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    iput-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount1:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mShowingStep:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mListItemObjectList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;

    iget-object v0, v0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;->mAccount:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    iput-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount2:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    goto :goto_0
.end method

.method private setCheckedPosition(I)V
    .locals 2
    .parameter "checkedPosition"

    .prologue
    .line 282
    iget v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedPosition:I

    if-eq v0, p1, :cond_0

    .line 283
    iget v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedPosition:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->setListViewItemChecked(IZ)V

    .line 284
    iput p1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedPosition:I

    .line 285
    iget v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedPosition:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->setListViewItemChecked(IZ)V

    .line 287
    :cond_0
    return-void
.end method

.method private setListViewItemChecked(IZ)V
    .locals 2
    .parameter "checkedPosition"
    .parameter "checked"

    .prologue
    .line 298
    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mListItemObjectList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;

    .line 300
    .local v0, itemObj:Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;
    iget-object v1, v0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;->mView:Lcom/mediatek/contacts/widget/ImportExportItem;

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, v0, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;->mView:Lcom/mediatek/contacts/widget/ImportExportItem;

    invoke-virtual {v1, p2}, Lcom/mediatek/contacts/widget/ImportExportItem;->setActivated(Z)V

    .line 304
    .end local v0           #itemObj:Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;
    :cond_0
    return-void
.end method

.method private setShowingStep(I)V
    .locals 8
    .parameter "showingStep"

    .prologue
    const v7, 0x7f070158

    .line 182
    iput p1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mShowingStep:I

    .line 183
    iget-object v5, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mListItemObjectList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 185
    const v5, 0x7f0700ec

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget v5, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mShowingStep:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 196
    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0c0071

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 197
    iget-object v5, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mAccounts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    .line 209
    .local v0, account:Lcom/mediatek/contacts/model/AccountWithDataSetEx;
    iget-object v5, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mListItemObjectList:Ljava/util/List;

    new-instance v6, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;

    invoke-direct {v6, p0, v0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;-><init>(Lcom/mediatek/contacts/activities/ContactImportExportActivity;Lcom/mediatek/contacts/model/AccountWithDataSetEx;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    .end local v0           #account:Lcom/mediatek/contacts/model/AccountWithDataSetEx;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_0
    iget v5, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mShowingStep:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 212
    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0c0072

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 213
    iget-object v5, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mAccounts:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    .line 214
    .restart local v0       #account:Lcom/mediatek/contacts/model/AccountWithDataSetEx;
    iget-object v5, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount1:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    if-eq v5, v0, :cond_1

    .line 220
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    .line 221
    .local v2, atm:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/contacts/model/account/AccountTypeWithDataSet;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Lcom/android/contacts/model/account/AccountTypeWithDataSet;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v1

    .line 222
    .local v1, accountType:Lcom/android/contacts/model/account/AccountType;
    iget-object v5, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount1:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-virtual {v5}, Lcom/android/contacts/model/account/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/contacts/model/account/AccountTypeWithDataSet;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Lcom/android/contacts/model/account/AccountTypeWithDataSet;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v3

    .line 223
    .local v3, checkedAccountType:Lcom/android/contacts/model/account/AccountType;
    iget-object v5, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount1:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-static {v5}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->isStorageAccount(Landroid/accounts/Account;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/android/contacts/model/account/AccountType;->isIccCardAccount()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_2
    invoke-virtual {v3}, Lcom/android/contacts/model/account/AccountType;->isIccCardAccount()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->isStorageAccount(Landroid/accounts/Account;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_3
    iget-object v5, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount1:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-static {v5}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->isStorageAccount(Landroid/accounts/Account;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->isStorageAccount(Landroid/accounts/Account;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 239
    :cond_4
    iget-object v5, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mListItemObjectList:Ljava/util/List;

    new-instance v6, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;

    invoke-direct {v6, p0, v0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity$ListViewItemObject;-><init>(Lcom/mediatek/contacts/activities/ContactImportExportActivity;Lcom/mediatek/contacts/model/AccountWithDataSetEx;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 243
    .end local v0           #account:Lcom/mediatek/contacts/model/AccountWithDataSetEx;
    .end local v1           #accountType:Lcom/android/contacts/model/account/AccountType;
    .end local v2           #atm:Lcom/android/contacts/model/AccountTypeManager;
    .end local v3           #checkedAccountType:Lcom/android/contacts/model/account/AccountType;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method private updateUi()V
    .locals 2

    .prologue
    .line 519
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->setButtonState(Z)V

    .line 520
    iget-object v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mAdapter:Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 521
    return-void
.end method


# virtual methods
.method public doImportExport()V
    .locals 3

    .prologue
    .line 651
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getNonSlotId()I

    move-result v0

    .line 657
    .local v0, slotId:I
    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount1:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/contacts/model/account/AccountType;->isAccountTypeIccCard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 660
    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mCheckedAccount1:Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-virtual {v1}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->getSlotId()I

    move-result v0

    .line 662
    invoke-static {v0}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isPhoneBookReady(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 663
    const v1, 0x7f0c00fe

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 664
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 665
    sget-object v1, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->TAG:Ljava/lang/String;

    const-string v2, "[doImportExport] phb is not ready."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :goto_0
    return-void

    .line 667
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->handleImportExportAction()V

    goto :goto_0

    .line 671
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->handleImportExportAction()V

    goto :goto_0
.end method

.method public getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "path"
    .parameter "defaultPath"

    .prologue
    .line 676
    const-string v0, "getDirectory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    if-nez p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getStorageAccounts()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/model/AccountWithDataSetEx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 681
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 682
    .local v4, storageAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/contacts/model/AccountWithDataSetEx;>;"
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 684
    .local v3, mSM:Landroid/os/storage/StorageManager;
    if-nez v3, :cond_1

    .line 700
    :cond_0
    return-object v4

    .line 687
    :cond_1
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 688
    .local v6, volumes:[Landroid/os/storage/StorageVolume;
    if-eqz v6, :cond_0

    .line 689
    sget-object v7, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "volumes are "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    move-object v0, v6

    .local v0, arr$:[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v5, v0, v1

    .line 691
    .local v5, volume:Landroid/os/storage/StorageVolume;
    sget-object v7, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "volume is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/mnt/usbotg"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->checkSDCardAvaliable(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 690
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 696
    :cond_3
    new-instance v7, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-virtual {v5, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "_STORAGE_ACCOUNT"

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 635
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 636
    const v0, 0x1b207

    if-ne p1, v0, :cond_0

    .line 637
    const v0, 0x1b208

    if-ne p2, v0, :cond_0

    .line 638
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 641
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 467
    iget v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mShowingStep:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 468
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->onBackAction()V

    .line 472
    :goto_0
    return-void

    .line 470
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 502
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 516
    :goto_0
    return-void

    .line 505
    :pswitch_0
    const/4 v0, 0x0

    .line 506
    .local v0, pos:I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f07015a

    if-ne v1, v2, :cond_0

    .line 507
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->onNextAction()V

    goto :goto_0

    .line 509
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->onBackAction()V

    goto :goto_0

    .line 502
    :pswitch_data_0
    .packed-switch 0x7f070159
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    const v1, 0x7f04007e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 144
    const v1, 0x7f07015a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const v1, 0x7f070159

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v1, 0x7f0700ec

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    const v1, 0x7f070124

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mListView:Landroid/widget/ListView;

    .line 150
    iget-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 153
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 154
    const/16 v1, 0xc

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 158
    const v1, 0x7f0c0074

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 161
    :cond_0
    new-instance v1, Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountListAdapter;

    invoke-direct {v1, p0, p0}, Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountListAdapter;-><init>(Lcom/mediatek/contacts/activities/ContactImportExportActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mAdapter:Lcom/mediatek/contacts/activities/ContactImportExportActivity$AccountListAdapter;

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;

    invoke-direct {v3, p0, v4}, Lcom/mediatek/contacts/activities/ContactImportExportActivity$MyLoaderCallbacks;-><init>(Lcom/mediatek/contacts/activities/ContactImportExportActivity;Lcom/mediatek/contacts/activities/ContactImportExportActivity$1;)V

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 165
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 645
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->mIsFinished:Z

    .line 646
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 647
    sget-object v0, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->TAG:Ljava/lang/String;

    const-string v1, "[onDestroy]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->setCheckedPosition(I)V

    .line 449
    invoke-direct {p0, p3}, Lcom/mediatek/contacts/activities/ContactImportExportActivity;->setCheckedAccount(I)V

    .line 450
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 454
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 462
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 456
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 457
    const/4 v0, 0x1

    goto :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
