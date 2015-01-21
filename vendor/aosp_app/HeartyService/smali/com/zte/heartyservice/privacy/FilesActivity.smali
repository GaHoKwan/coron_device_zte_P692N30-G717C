.class public abstract Lcom/zte/heartyservice/privacy/FilesActivity;
.super Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;
.source "FilesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/FilesActivity$8;,
        Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;,
        Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;,
        Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;,
        Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;,
        Lcom/zte/heartyservice/privacy/FilesActivity$EncryptResult;,
        Lcom/zte/heartyservice/privacy/FilesActivity$FileType;,
        Lcom/zte/heartyservice/privacy/FilesActivity$BaseTask;,
        Lcom/zte/heartyservice/privacy/FilesActivity$ViewItem;,
        Lcom/zte/heartyservice/privacy/FilesActivity$State;
    }
.end annotation


# static fields
.field private static final DECRYPT:I = 0x1

.field private static final DELETE:I = 0x2

.field public static final PREF_PRIVACY_VIEW_REMIND:Ljava/lang/String; = "privacy_view_remind"

.field private static final REFRESH_UI:I

.field private static final VIEW:I


# instance fields
.field protected mActionBar:Landroid/app/ActionBar;

.field protected mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

.field private mAllBtn:Landroid/view/View;

.field private mBtnLayout:Landroid/view/View;

.field protected mBtnListRes:I

.field private mBtnListView:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field protected mCurState:Lcom/zte/heartyservice/privacy/FilesActivity$State;

.field private mDecryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;

.field private mDeleteTask:Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;

.field protected mEmptyListOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field protected mEncryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;

.field private mHandler:Landroid/os/Handler;

.field protected mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mLayoutInflater:Landroid/view/LayoutInflater;

.field protected mLayoutRes:I

.field protected mMenu:Landroid/view/Menu;

.field protected mMenuBtns:Landroid/view/View;

.field protected mNoItemRes:I

.field protected mPrefs:Landroid/content/SharedPreferences;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSelectAll:Z

.field private mSelectedActionBarLayout:Landroid/view/View;

.field protected mSelectedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mSubTitleRes:I

.field private mTitle:Landroid/widget/TextView;

.field protected mTitleRes:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;-><init>()V

    .line 56
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectedList:Ljava/util/ArrayList;

    .line 63
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mCurState:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    .line 64
    iput-boolean v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectAll:Z

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mItems:Ljava/util/List;

    .line 72
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mEncryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;

    .line 73
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mDecryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;

    .line 74
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mDeleteTask:Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;

    .line 75
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 77
    const v0, 0x7f0a02fe

    iput v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mTitleRes:I

    .line 78
    iput v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSubTitleRes:I

    .line 79
    const v0, 0x7f0300c7

    iput v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mLayoutRes:I

    .line 80
    const v0, 0x7f070046

    iput v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mBtnListRes:I

    .line 81
    const v0, 0x7f0a051f

    iput v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mNoItemRes:I

    .line 88
    new-instance v0, Lcom/zte/heartyservice/privacy/FilesActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/FilesActivity$1;-><init>(Lcom/zte/heartyservice/privacy/FilesActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mHandler:Landroid/os/Handler;

    .line 226
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mEmptyListOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 862
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mBtnLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/privacy/FilesActivity;)Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mDecryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/zte/heartyservice/privacy/FilesActivity;Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;)Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mDecryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/privacy/FilesActivity;)Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mDeleteTask:Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;

    return-object v0
.end method

.method static synthetic access$302(Lcom/zte/heartyservice/privacy/FilesActivity;Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;)Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mDeleteTask:Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/privacy/FilesActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity;->showViewRemindDialog(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/privacy/FilesActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private selectAll()V
    .locals 4

    .prologue
    .line 229
    iget-boolean v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectAll:Z

    if-eqz v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 231
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectAll:Z

    .line 241
    :goto_0
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/zte/heartyservice/privacy/FilesActivity;->refreshUI(J)V

    .line 242
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/FilesActivity;->updateActionBar()V

    .line 243
    return-void

    .line 233
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v2}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 234
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v2, v0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->getItem(I)Lcom/zte/heartyservice/common/datatype/CommonListItem;

    move-result-object v1

    .line 235
    .local v1, item:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 236
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectedList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->getItem(I)Lcom/zte/heartyservice/common/datatype/CommonListItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 239
    .end local v1           #item:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectAll:Z

    goto :goto_0
.end method

.method private showHandleItemDialog(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    .line 374
    move-object v1, p1

    check-cast v1, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;

    .line 375
    .local v1, encryptItem:Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;
    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->isEncryFileExist()Z

    move-result v2

    if-nez v2, :cond_0

    .line 376
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0364

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->name:Ljava/lang/String;

    aput-object v5, v4, v8

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->nn:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/zte/heartyservice/privacy/FilesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 384
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, v1, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070045

    const/4 v4, -0x1

    new-instance v5, Lcom/zte/heartyservice/privacy/FilesActivity$5;

    invoke-direct {v5, p0, v1}, Lcom/zte/heartyservice/privacy/FilesActivity$5;-><init>(Lcom/zte/heartyservice/privacy/FilesActivity;Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 422
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 423
    return-void
.end method

.method private showViewRemindDialog(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    const/4 v7, 0x0

    .line 426
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 427
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300d5

    invoke-virtual {v4, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 429
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0e031c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 431
    .local v2, noticeCheckBox:Landroid/widget/CheckBox;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0423

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a021e

    new-instance v6, Lcom/zte/heartyservice/privacy/FilesActivity$6;

    invoke-direct {v6, p0, v2, p1}, Lcom/zte/heartyservice/privacy/FilesActivity$6;-><init>(Lcom/zte/heartyservice/privacy/FilesActivity;Landroid/widget/CheckBox;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0174

    invoke-virtual {v4, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 447
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 448
    return-void
.end method

.method private updateActionBar()V
    .locals 4

    .prologue
    .line 474
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mCurState:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    sget-object v1, Lcom/zte/heartyservice/privacy/FilesActivity$State;->SELECTED:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    if-ne v0, v1, :cond_0

    .line 475
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mTitle:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a011b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mAllBtn:Landroid/view/View;

    iget-boolean v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectAll:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 483
    :cond_0
    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f0a03c3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method protected checkItem(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    .line 315
    move-object v0, p1

    check-cast v0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;

    .line 316
    .local v0, encryptItem:Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;
    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->isEncryFileExist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0364

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->name:Ljava/lang/String;

    aput-object v4, v3, v7

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryItem;->nn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/zte/heartyservice/privacy/FilesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 324
    :cond_0
    return-void
.end method

.method protected checkedChanged(Landroid/view/View;ZLcom/zte/heartyservice/common/datatype/CommonListItem;)V
    .locals 5
    .parameter "view"
    .parameter "isChecked"
    .parameter "item"

    .prologue
    const v4, 0x7f0e0412

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 328
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mCurState:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    sget-object v1, Lcom/zte/heartyservice/privacy/FilesActivity$State;->SELECTED:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    if-ne v0, v1, :cond_2

    .line 329
    if-eqz p2, :cond_3

    .line 330
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-virtual {p0, p3}, Lcom/zte/heartyservice/privacy/FilesActivity;->checkItem(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V

    .line 333
    iget-boolean v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectAll:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 335
    iput-boolean v3, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectAll:Z

    .line 346
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 348
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v4, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 353
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/FilesActivity;->updateActionBar()V

    .line 355
    :cond_2
    return-void

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 341
    iget-boolean v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectAll:Z

    if-eqz v0, :cond_0

    .line 342
    iput-boolean v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectAll:Z

    goto :goto_0

    .line 350
    :cond_4
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v4, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_1
.end method

.method protected doWhenDelete(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 565
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    .line 591
    :goto_0
    return-void

    .line 569
    :cond_0
    const v3, 0x7f0a0221

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/privacy/FilesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, infoDelFormatt:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0a035d

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/privacy/FilesActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 573
    .local v2, infoDelText:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0176

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/privacy/FilesActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a021e

    new-instance v5, Lcom/zte/heartyservice/privacy/FilesActivity$7;

    invoke-direct {v5, p0, p1}, Lcom/zte/heartyservice/privacy/FilesActivity$7;-><init>(Lcom/zte/heartyservice/privacy/FilesActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0174

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 590
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    goto :goto_0
.end method

.method public handleClickEvent(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 248
    .local v0, viewId:I
    packed-switch v0, :pswitch_data_0

    .line 255
    :goto_0
    return-void

    .line 250
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/FilesActivity;->selectAll()V

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x7f0e0030
        :pswitch_0
    .end packed-switch
.end method

.method protected initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "title"
    .parameter "icon"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 259
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 260
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 261
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 262
    return-void
.end method

.method protected loadData(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 858
    sget-object v0, Lcom/zte/heartyservice/privacy/FilesActivity$State;->NORMAL:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->setCurState(Lcom/zte/heartyservice/privacy/FilesActivity$State;)V

    .line 859
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 860
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mCurState:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    sget-object v1, Lcom/zte/heartyservice/privacy/FilesActivity$State;->SELECTED:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    if-ne v0, v1, :cond_0

    .line 488
    sget-object v0, Lcom/zte/heartyservice/privacy/FilesActivity$State;->NORMAL:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->setCurState(Lcom/zte/heartyservice/privacy/FilesActivity$State;)V

    .line 492
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 103
    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/privacy/FilesActivity;->setNeedCheckSD(Z)V

    .line 104
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const-string v2, "settings"

    invoke-virtual {v1, v2, v8}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 107
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/FilesActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mActionBar:Landroid/app/ActionBar;

    .line 108
    iput-object p0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mContext:Landroid/content/Context;

    .line 109
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 110
    iget v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mLayoutRes:I

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/FilesActivity;->setContentView(I)V

    .line 112
    const v1, 0x7f0e006a

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/FilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mBtnLayout:Landroid/view/View;

    .line 113
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mBtnLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 114
    const v1, 0x7f0e006c

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/FilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mBtnListView:Landroid/widget/ListView;

    .line 115
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mBtnListView:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x7f03001f

    const v4, 0x7f0e0071

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/FilesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mBtnListRes:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p0, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mBtnListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mEmptyListOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    const v1, 0x7f0e006b

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/FilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 120
    .local v0, noItemText:Landroid/widget/TextView;
    iget v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mNoItemRes:I

    if-eqz v1, :cond_1

    .line 121
    iget v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mNoItemRes:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 127
    .end local v0           #noItemText:Landroid/widget/TextView;
    :cond_0
    :goto_0
    const v1, 0x7f0e02f6

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/FilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mMenuBtns:Landroid/view/View;

    .line 129
    new-instance v1, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    .line 130
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    new-instance v2, Lcom/zte/heartyservice/privacy/FilesActivity$2;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/privacy/FilesActivity$2;-><init>(Lcom/zte/heartyservice/privacy/FilesActivity;)V

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 170
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v1, p0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->setListViewCallBacks(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;)V

    .line 171
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mItems:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->setItems(Ljava/util/List;)V

    .line 173
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 174
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 175
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v7}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 176
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v8}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 177
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/zte/heartyservice/privacy/FilesActivity$3;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/privacy/FilesActivity$3;-><init>(Lcom/zte/heartyservice/privacy/FilesActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 195
    return-void

    .line 123
    .restart local v0       #noItemText:Landroid/widget/TextView;
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/FilesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 453
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0d0010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 454
    const v1, 0x7f0d0011

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 456
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mMenu:Landroid/view/Menu;

    .line 458
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/zte/heartyservice/privacy/FilesActivity;->refreshUI(J)V

    .line 460
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 206
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->clean_tmp_file()V

    .line 208
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mDecryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mDecryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;->cancel(Z)Z

    .line 210
    iput-object v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mDecryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mEncryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mEncryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;->cancel(Z)Z

    .line 215
    iput-object v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mEncryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mDeleteTask:Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mDeleteTask:Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;->cancel(Z)Z

    .line 220
    iput-object v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mDeleteTask:Lcom/zte/heartyservice/privacy/FilesActivity$DeleteTask;

    .line 222
    :cond_2
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onDestroy()V

    .line 223
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 365
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mCurState:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    sget-object v2, Lcom/zte/heartyservice/privacy/FilesActivity$State;->SELECTED:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    if-ne v1, v2, :cond_0

    .line 366
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/privacy/FilesActivity$ViewItem;

    .line 367
    .local v0, item:Lcom/zte/heartyservice/privacy/FilesActivity$ViewItem;
    iget-object v1, v0, Lcom/zte/heartyservice/privacy/FilesActivity$ViewItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->toggle()V

    .line 371
    .end local v0           #item:Lcom/zte/heartyservice/privacy/FilesActivity$ViewItem;
    :goto_0
    return-void

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v1, p3}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->getItem(I)Lcom/zte/heartyservice/common/datatype/CommonListItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/privacy/FilesActivity;->showHandleItemDialog(Lcom/zte/heartyservice/common/datatype/CommonListItem;)V

    goto :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x1

    .line 306
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mCurState:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    sget-object v2, Lcom/zte/heartyservice/privacy/FilesActivity$State;->NORMAL:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    if-ne v1, v2, :cond_0

    .line 307
    sget-object v1, Lcom/zte/heartyservice/privacy/FilesActivity$State;->SELECTED:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/FilesActivity;->setCurState(Lcom/zte/heartyservice/privacy/FilesActivity$State;)V

    .line 308
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mAdapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v1, p3}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->getItem(I)Lcom/zte/heartyservice/common/datatype/CommonListItem;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/zte/heartyservice/privacy/FilesActivity;->checkedChanged(Landroid/view/View;ZLcom/zte/heartyservice/common/datatype/CommonListItem;)V

    .line 311
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onResume()V

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/FilesActivity;->loadData(Z)V

    .line 201
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->clean_tmp_file()V

    .line 202
    return-void
.end method

.method protected refreshUI(J)V
    .locals 3
    .parameter "delay"

    .prologue
    const/4 v2, 0x0

    .line 464
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected setCurState(Lcom/zte/heartyservice/privacy/FilesActivity$State;)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 265
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mCurState:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    if-eq v1, p1, :cond_2

    .line 266
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mCurState:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    .line 267
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mCurState:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    sget-object v2, Lcom/zte/heartyservice/privacy/FilesActivity$State;->SELECTED:Lcom/zte/heartyservice/privacy/FilesActivity$State;

    if-ne v1, v2, :cond_3

    .line 268
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 270
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 272
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectedActionBarLayout:Landroid/view/View;

    if-nez v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03000d

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectedActionBarLayout:Landroid/view/View;

    .line 275
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectedActionBarLayout:Landroid/view/View;

    const v2, 0x7f0e0030

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mAllBtn:Landroid/view/View;

    .line 277
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mAllBtn:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectedActionBarLayout:Landroid/view/View;

    const v2, 0x7f0e002e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mTitle:Landroid/widget/TextView;

    .line 280
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectedActionBarLayout:Landroid/view/View;

    const v2, 0x7f0e002c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 282
    .local v0, backButton:Landroid/view/View;
    new-instance v1, Lcom/zte/heartyservice/privacy/FilesActivity$4;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/privacy/FilesActivity$4;-><init>(Lcom/zte/heartyservice/privacy/FilesActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    .end local v0           #backButton:Landroid/view/View;
    :cond_0
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/FilesActivity;->updateActionBar()V

    .line 290
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectedActionBarLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 299
    :cond_1
    :goto_0
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/zte/heartyservice/privacy/FilesActivity;->refreshUI(J)V

    .line 301
    :cond_2
    return-void

    .line 292
    :cond_3
    iput-boolean v3, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectAll:Z

    .line 293
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSelectedList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 294
    iget v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mTitleRes:I

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/FilesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/zte/heartyservice/privacy/FilesActivity;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSubTitleRes:I

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mActionBar:Landroid/app/ActionBar;

    iget v2, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mSubTitleRes:I

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setSubtitle(I)V

    goto :goto_0
.end method

.method protected startDecryptTask(Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    .locals 5
    .parameter
    .parameter "isShowTemp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    const/4 v4, 0x1

    .line 552
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mDecryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mDecryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;->cancel(Z)Z

    .line 554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mDecryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;

    .line 557
    :cond_0
    if-eqz p1, :cond_1

    .line 558
    new-instance v0, Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;-><init>(Lcom/zte/heartyservice/privacy/FilesActivity;I)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mDecryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;

    .line 559
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mDecryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/privacy/FilesActivity$DecryptTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 562
    :cond_1
    return-void
.end method

.method protected startEncryptTask(Ljava/util/ArrayList;Lcom/zte/heartyservice/privacy/FilesActivity$FileType;)V
    .locals 4
    .parameter
    .parameter "fileType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Lcom/zte/heartyservice/privacy/FilesActivity$FileType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 545
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    new-instance v0, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;-><init>(Lcom/zte/heartyservice/privacy/FilesActivity;I)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mEncryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;

    .line 546
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/FilesActivity;->mEncryptTask:Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/privacy/FilesActivity$EncryptTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 548
    return-void
.end method
