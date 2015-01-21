.class public Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;
.super Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;
.source "ContactsSmsCallLogActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$12;,
        Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;,
        Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;
    }
.end annotation


# static fields
.field private static final FROM_CONTACT:I = 0x1

.field private static final MsgDissmissPD:I = 0x4

.field private static final MsgDissmissPD2:I = 0x8

.field private static final MsgShowPD:I = 0x1

.field private static final MsgShowPD2:I = 0x5

.field private static final MsgUpdatePD:I = 0x2

.field private static final MsgUpdatePD2:I = 0x6

.field private static final MsgUpdatePDMsg:I = 0x3

.field private static final MsgUpdatePDMsg2:I = 0x7


# instance fields
.field protected final MENUITEM_ADD_GROUPID:I

.field private final MENUITEM_ADD_ID:I

.field protected final MENUITEM_DELETE_GROUPID:I

.field private final MENUITEM_DELETE_ID:I

.field private final TAG:Ljava/lang/String;

.field private actionBar:Landroid/app/ActionBar;

.field private adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

.field private callLogTab:Landroid/app/ActionBar$Tab;

.field private concatctAddRadioG:Landroid/widget/RadioGroup;

.field private contactTab:Landroid/app/ActionBar$Tab;

.field private currentFragment:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;

.field private emptyImage:Landroid/widget/ImageView;

.field private emptyView:Landroid/widget/TextView;

.field private isFirstTimeRefresh:Z

.field private listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnLayout:Landroid/view/View;

.field private mBtnListView:Landroid/widget/ListView;

.field private mContentView:Landroid/view/View;

.field private mCustomViewGroupUsed:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mInflator:Landroid/view/LayoutInflater;

.field private mIntent:Landroid/content/Intent;

.field private mListView:Landroid/widget/ListView;

.field private mMenuData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field private mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressDialog2:Landroid/app/ProgressDialog;

.field private mSmsInterceptReceiver:Landroid/content/BroadcastReceiver;

.field private mVisibleGroup:I

.field private onlyChangeMenu:Z

.field private selectedItems:Ljava/lang/Integer;

.field private smsTab:Landroid/app/ActionBar$Tab;

.field private tabType:Lcom/zte/heartyservice/privacy/ContactType;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;-><init>()V

    .line 61
    const-string v0, "ContactsSmsCallLogActivity"

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->TAG:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->currentFragment:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->listItems:Ljava/util/List;

    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->selectedItems:Ljava/lang/Integer;

    .line 71
    iput v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->MENUITEM_ADD_GROUPID:I

    .line 72
    iput v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->MENUITEM_DELETE_GROUPID:I

    .line 73
    iput v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->MENUITEM_ADD_ID:I

    .line 74
    iput v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->MENUITEM_DELETE_ID:I

    .line 78
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mCustomViewGroupUsed:Landroid/view/View;

    .line 88
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 89
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog2:Landroid/app/ProgressDialog;

    .line 98
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    .line 100
    iput-boolean v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->onlyChangeMenu:Z

    .line 101
    iput-boolean v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->isFirstTimeRefresh:Z

    .line 102
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->emptyView:Landroid/widget/TextView;

    .line 294
    new-instance v0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$4;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$4;-><init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mHandler:Landroid/os/Handler;

    .line 965
    new-instance v0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$10;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$10;-><init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mSmsInterceptReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getMultiPhones()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->createNewContactDlg()V

    return-void
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Lcom/zte/heartyservice/privacy/ContactType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->tabType:Lcom/zte/heartyservice/privacy/ContactType;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Lcom/zte/heartyservice/privacy/ContactType;)Lcom/zte/heartyservice/privacy/ContactType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->tabType:Lcom/zte/heartyservice/privacy/ContactType;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mInflator:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->currentFragment:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;

    return-object v0
.end method

.method static synthetic access$202(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;)Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->currentFragment:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;

    return-object p1
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    return-object v0
.end method

.method static synthetic access$302(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;)Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    return-object p1
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog2:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->selectedItems:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$602(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->selectedItems:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->listItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Lcom/zte/heartyservice/common/datatype/CommonListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->onlyChangeMenu:Z

    return v0
.end method

.method private createModifyContactDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "name"
    .parameter "number"
    .parameter "ac"

    .prologue
    const/4 v8, 0x0

    .line 983
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 984
    .local v2, factory:Landroid/view/LayoutInflater;
    const v5, 0x7f0300b9

    invoke-virtual {v2, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 986
    .local v0, addContactView:Landroid/view/View;
    const v5, 0x7f0e00a6

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 987
    .local v4, tvPhoneNumber:Landroid/widget/EditText;
    invoke-virtual {v4, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 988
    const v5, 0x7f0e00a8

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 989
    .local v3, tvContactName:Landroid/widget/EditText;
    invoke-virtual {v3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 991
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a02ac

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a021e

    new-instance v7, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;

    invoke-direct {v7, p0, v4, v3, p3}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$11;-><init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Landroid/widget/EditText;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0174

    invoke-virtual {v5, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1028
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 1029
    return-void
.end method

.method private createNewContactDlg()V
    .locals 8

    .prologue
    .line 756
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 757
    .local v2, factory:Landroid/view/LayoutInflater;
    const v5, 0x7f0300b9

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 759
    .local v0, addContactView:Landroid/view/View;
    const v5, 0x7f0e00a6

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 760
    .local v4, tvPhoneNumber:Landroid/widget/EditText;
    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 761
    const v5, 0x7f0e00a8

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 763
    .local v3, tvContactName:Landroid/widget/EditText;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01e0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a021e

    new-instance v7, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$9;

    invoke-direct {v7, p0, v4, v3}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$9;-><init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0a0174

    new-instance v7, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$8;

    invoke-direct {v7, p0, v4}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$8;-><init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 801
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 802
    invoke-static {p0, v4}, Lcom/zte/heartyservice/common/utils/AppUtils;->showInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 803
    return-void
.end method

.method private createTabsAndMenu(Lcom/zte/heartyservice/privacy/ContactType;)V
    .locals 6
    .parameter "tabSelected"

    .prologue
    const/4 v5, 0x0

    .line 511
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->actionBar:Landroid/app/ActionBar;

    .line 513
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->actionBar:Landroid/app/ActionBar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 515
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 517
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    const v4, 0x7f0a0305

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    sget-object v4, Lcom/zte/heartyservice/privacy/ContactType;->FROM_PHONE_SIM:Lcom/zte/heartyservice/privacy/ContactType;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->contactTab:Landroid/app/ActionBar$Tab;

    .line 518
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    const v4, 0x7f0a0303

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    sget-object v4, Lcom/zte/heartyservice/privacy/ContactType;->FROM_SMS:Lcom/zte/heartyservice/privacy/ContactType;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->smsTab:Landroid/app/ActionBar$Tab;

    .line 519
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    const v4, 0x7f0a0306

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    sget-object v4, Lcom/zte/heartyservice/privacy/ContactType;->FROM_CALLLOG:Lcom/zte/heartyservice/privacy/ContactType;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->callLogTab:Landroid/app/ActionBar$Tab;

    .line 521
    new-instance v1, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;-><init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)V

    .line 522
    .local v1, contactListener:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->contactTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v3, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 523
    new-instance v2, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;-><init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)V

    .line 524
    .local v2, smsListener:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->smsTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v3, v2}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 525
    new-instance v0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;-><init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)V

    .line 526
    .local v0, callLogListener:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$ConSmsClLogTabListener;
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->callLogTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v3, v0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 528
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->actionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->contactTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 529
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->actionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->smsTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 530
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->actionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->callLogTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 532
    sget-object v3, Lcom/zte/heartyservice/privacy/ContactType;->FROM_PHONE_SIM:Lcom/zte/heartyservice/privacy/ContactType;

    if-ne v3, p1, :cond_0

    .line 533
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->actionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->contactTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 539
    :goto_0
    iput-boolean v5, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->onlyChangeMenu:Z

    .line 540
    const-string v3, "ContactsSmsCallLogActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createTabsAndMenu::  tabs = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v5}, Landroid/app/ActionBar;->getTabCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    return-void

    .line 534
    :cond_0
    sget-object v3, Lcom/zte/heartyservice/privacy/ContactType;->FROM_SMS:Lcom/zte/heartyservice/privacy/ContactType;

    if-ne v3, p1, :cond_1

    .line 535
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->actionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->smsTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0

    .line 537
    :cond_1
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->actionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->callLogTab:Landroid/app/ActionBar$Tab;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0
.end method

.method private eventInit()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 146
    const v2, 0x7f0e006a

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mBtnLayout:Landroid/view/View;

    .line 147
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mBtnLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 148
    const v2, 0x7f0e006c

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mBtnListView:Landroid/widget/ListView;

    .line 149
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mBtnListView:Landroid/widget/ListView;

    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x7f03001f

    const v5, 0x7f0e0071

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07004a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mBtnListView:Landroid/widget/ListView;

    new-instance v3, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$1;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$1;-><init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 188
    const v2, 0x7f0e006b

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 189
    .local v1, noItemText:Landroid/widget/TextView;
    const v2, 0x7f0a0524

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 192
    .end local v1           #noItemText:Landroid/widget/TextView;
    :cond_0
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 193
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v8}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 194
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 195
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v9}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 196
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$2;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$2;-><init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 204
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog2:Landroid/app/ProgressDialog;

    .line 205
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog2:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v8}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 206
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog2:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 207
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog2:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v9}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 208
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mProgressDialog2:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$3;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$3;-><init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 240
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v2, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->INBOX_SMS_INTERCEPT:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mSmsInterceptReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    const v2, 0x7f0e008c

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->emptyView:Landroid/widget/TextView;

    .line 244
    const v2, 0x7f0e008d

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->emptyImage:Landroid/widget/ImageView;

    .line 245
    return-void
.end method

.method private getMultiPhones()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1033
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.GET_MULTIPLE_PHONES_SINGLE_LIST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1036
    .local v0, intent:Landroid/content/Intent;
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->setOutIntent(Landroid/content/Intent;)V

    .line 1037
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    .line 1039
    :catch_0
    move-exception v1

    .line 1041
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getPhone()Z

    move-result v1

    goto :goto_0
.end method

.method private getPhone()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1046
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1047
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1049
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->setOutIntent(Landroid/content/Intent;)V

    .line 1050
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1054
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    .line 1052
    :catch_0
    move-exception v1

    .line 1054
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initActionBar()V
    .locals 5

    .prologue
    const/4 v3, 0x5

    .line 371
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    .line 372
    .local v1, menuItemAdd:[I
    new-array v2, v3, [I

    fill-array-data v2, :array_1

    .line 373
    .local v2, menuItemDelete:[I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v0, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v3, v4}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->setGroupMenuItemData(Ljava/util/ArrayList;II)V

    .line 377
    return-void

    .line 371
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xe0t 0x1t 0xat 0x7ft
    .end array-data

    .line 372
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xedt 0x2t 0xat 0x7ft
    .end array-data
.end method


# virtual methods
.method protected changeCustomView(I)V
    .locals 7
    .parameter "group"

    .prologue
    const/16 v6, 0x10

    .line 468
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 469
    .local v0, actionBar:Landroid/app/ActionBar;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 470
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030030

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 471
    .local v1, layout:Landroid/view/View;
    const v4, 0x7f0e0096

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 472
    .local v3, titile_text:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0213

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 474
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mCustomViewGroupUsed:Landroid/view/View;

    .line 475
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 476
    return-void
.end method

.method public dissmissPD()V
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 292
    return-void
.end method

.method public dissmissPD2()V
    .locals 3

    .prologue
    .line 890
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 891
    return-void
.end method

.method public getAdapter()Lcom/zte/heartyservice/common/datatype/CommonListAdapter;
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    return-object v0
.end method

.method public getListItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 910
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->listItems:Ljava/util/List;

    return-object v0
.end method

.method public getMInflator()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mInflator:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method protected handleAddContactRadioEvent(Landroid/widget/RadioGroup;I)V
    .locals 4
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 718
    const/4 v0, 0x0

    .line 719
    .local v0, contactType:Lcom/zte/heartyservice/privacy/ContactType;
    packed-switch p2, :pswitch_data_0

    .line 745
    :goto_0
    sget-object v2, Lcom/zte/heartyservice/privacy/ContactType;->NEW_CONTACT:Lcom/zte/heartyservice/privacy/ContactType;

    if-eq v0, v2, :cond_1

    .line 746
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.startActivity.PRIVACY_CONTACTS_SELECT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 747
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "select_from"

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->startActivity(Landroid/content/Intent;)V

    .line 752
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 721
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getMultiPhones()Z

    move-result v2

    if-nez v2, :cond_0

    .line 725
    sget-object v0, Lcom/zte/heartyservice/privacy/ContactType;->FROM_PHONE_SIM:Lcom/zte/heartyservice/privacy/ContactType;

    .line 727
    goto :goto_0

    .line 730
    :pswitch_1
    sget-object v0, Lcom/zte/heartyservice/privacy/ContactType;->FROM_SMS:Lcom/zte/heartyservice/privacy/ContactType;

    .line 732
    goto :goto_0

    .line 735
    :pswitch_2
    sget-object v0, Lcom/zte/heartyservice/privacy/ContactType;->FROM_CALLLOG:Lcom/zte/heartyservice/privacy/ContactType;

    .line 737
    goto :goto_0

    .line 740
    :pswitch_3
    sget-object v0, Lcom/zte/heartyservice/privacy/ContactType;->NEW_CONTACT:Lcom/zte/heartyservice/privacy/ContactType;

    goto :goto_0

    .line 750
    :cond_1
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->createNewContactDlg()V

    goto :goto_1

    .line 719
    :pswitch_data_0
    .packed-switch 0x7f0e02eb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public handleClickEvent(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 653
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1063
    if-nez p3, :cond_0

    .line 1110
    :goto_0
    return-void

    .line 1065
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1067
    :pswitch_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    .local v12, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "numbers_array"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1069
    const-string v1, "com.android.contacts.extra.PHONE_URIS"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1072
    .local v14, numbers:[Ljava/lang/String;
    if-eqz v14, :cond_3

    array-length v1, v14

    if-lez v1, :cond_3

    .line 1073
    move-object v7, v14

    .local v7, arr$:[Ljava/lang/String;
    array-length v11, v7

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1
    if-ge v10, v11, :cond_3

    aget-object v13, v7, v10

    .line 1074
    .local v13, num:Ljava/lang/String;
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1079
    .end local v7           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v13           #num:Ljava/lang/String;
    .end local v14           #numbers:[Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1080
    .local v2, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 1082
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1084
    if-eqz v8, :cond_2

    .line 1085
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1086
    const-string v1, "data1"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1088
    .restart local v13       #num:Ljava/lang/String;
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1094
    .end local v13           #num:Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_3

    .line 1095
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1099
    .end local v2           #uri:Landroid/net/Uri;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_3
    :goto_2
    invoke-static {p0, v12}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->importPrivacyNumbers(Landroid/app/Activity;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1091
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 1092
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1094
    if-eqz v8, :cond_3

    .line 1095
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1094
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_4

    .line 1095
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1

    .line 1065
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "compoundButton"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x1

    .line 681
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;

    .line 682
    .local v0, contactListItem:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    invoke-virtual {v0, p2}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->setChecked(Z)V

    .line 683
    if-eqz p2, :cond_1

    .line 684
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->selectedItems:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->selectedItems:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->selectedItems:Ljava/lang/Integer;

    .line 688
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->selectedItems:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_2

    .line 689
    iget v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mVisibleGroup:I

    if-eq v1, v2, :cond_0

    .line 690
    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->resetActionBar(I)V

    .line 692
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->updateCustomView()V

    .line 698
    :goto_1
    return-void

    .line 686
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->selectedItems:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->selectedItems:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->selectedItems:Ljava/lang/Integer;

    goto :goto_0

    .line 694
    :cond_2
    const-string v1, "ContactsSmsCallLogActivity"

    const-string v2, "null ......"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->resetActionBar(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->setContentView(I)V

    .line 108
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mIntent:Landroid/content/Intent;

    .line 109
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mInflator:Landroid/view/LayoutInflater;

    .line 110
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->eventInit()V

    .line 111
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->initActionBar()V

    .line 112
    new-instance v0, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    .line 113
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->listItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->setItems(Ljava/util/List;)V

    .line 114
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->setListViewCallBacks(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;)V

    .line 115
    const v0, 0x7f0e008a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mContentView:Landroid/view/View;

    .line 116
    const v0, 0x7f0e008b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mListView:Landroid/widget/ListView;

    .line 117
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "select_tab"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/heartyservice/privacy/ContactType;->valueOf(Ljava/lang/String;)Lcom/zte/heartyservice/privacy/ContactType;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->tabType:Lcom/zte/heartyservice/privacy/ContactType;

    .line 119
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->tabType:Lcom/zte/heartyservice/privacy/ContactType;

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->createTabsAndMenu(Lcom/zte/heartyservice/privacy/ContactType;)V

    .line 120
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 436
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 437
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 439
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    aget v3, v2, v7

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    aget v4, v2, v6

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v5, 0x2

    aget v2, v2, v5

    const-string v5, ""

    invoke-interface {p1, v3, v4, v2, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 440
    .local v1, item:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    aget v2, v2, v8

    if-eqz v2, :cond_0

    .line 441
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    aget v2, v2, v8

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 443
    :cond_0
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 444
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 445
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_1
    iget v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mVisibleGroup:I

    invoke-interface {p1, v2, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 449
    .end local v0           #i:I
    :cond_2
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mSmsInterceptReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 250
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->cancelLoadData()V

    .line 255
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;->cancel(Z)Z

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$MoveSmsAndCallTask;

    .line 258
    const v0, 0x7f0a0363

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->currentFragment:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;->cancelTask()V

    .line 261
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onDestroy()V

    .line 262
    return-void
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
    .line 975
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->listItems:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/CommonListItem;

    invoke-virtual {v0}, Lcom/zte/heartyservice/common/datatype/CommonListItem;->getRefName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->listItems:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/privacy/PrivacyContactListItem;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacyContactListItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->listItems:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/privacy/PrivacyContactListItem;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacyContactListItem;->getAc()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->createModifyContactDlg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 454
    const-string v1, "suzaiqiang"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item id:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " gid:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 456
    .local v0, groupId:I
    packed-switch v0, :pswitch_data_0

    .line 464
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 458
    :pswitch_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->showDialog()V

    goto :goto_0

    .line 461
    :pswitch_1
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->currentFragment:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;->createAndShowDialog()V

    goto :goto_0

    .line 456
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
    .line 124
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onResume()V

    .line 125
    iget-boolean v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->isFirstTimeRefresh:Z

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->refreshActivity()V

    .line 128
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->isFirstTimeRefresh:Z

    .line 129
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V

    .line 130
    return-void
.end method

.method protected refreshActivity()V
    .locals 2

    .prologue
    .line 927
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->currentFragment:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->loadData(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$LoadDataTaskCallBacks;)V

    .line 928
    return-void
.end method

.method protected resetActionBar(I)V
    .locals 4
    .parameter "groupId"

    .prologue
    const/4 v3, 0x1

    .line 656
    const-string v0, "ContactsSmsCallLogActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "groupId:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iput p1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mVisibleGroup:I

    .line 658
    if-ne v3, p1, :cond_1

    .line 659
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->removeAllTabs()V

    .line 660
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->actionBar:Landroid/app/ActionBar;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 661
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->setSelectActionBar()V

    .line 668
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->invalidateOptionsMenu()V

    .line 669
    return-void

    .line 662
    :cond_1
    if-nez p1, :cond_0

    .line 663
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->actionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 664
    iput-boolean v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->onlyChangeMenu:Z

    .line 665
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->tabType:Lcom/zte/heartyservice/privacy/ContactType;

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->createTabsAndMenu(Lcom/zte/heartyservice/privacy/ContactType;)V

    .line 666
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->selectedItems:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public setAdapter(Lcom/zte/heartyservice/common/datatype/CommonListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 906
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    .line 907
    return-void
.end method

.method protected setGroupMenuItemData(Ljava/util/ArrayList;II)V
    .locals 0
    .parameter
    .parameter "groupNumber"
    .parameter "visibleGroup"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[I>;II)V"
        }
    .end annotation

    .prologue
    .line 498
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mMenuData:Ljava/util/ArrayList;

    .line 499
    iput p3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mVisibleGroup:I

    .line 500
    return-void
.end method

.method public setListItems(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/CommonListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 914
    .local p1, listItems:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    const-string v0, "ContactsSmsCallLogActivity"

    const-string v1, "setListItems..........00"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->listItems:Ljava/util/List;

    .line 916
    return-void
.end method

.method protected setSelectActionBar()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    .line 383
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 384
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v5, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mInflator:Landroid/view/LayoutInflater;

    const v6, 0x7f03000d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 385
    .local v4, layout:Landroid/view/View;
    const v5, 0x7f0e0030

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 386
    .local v1, allButton:Landroid/view/View;
    iget-object v5, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->selectedItems:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->listItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 387
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/view/View;->setActivated(Z)V

    .line 391
    :goto_0
    new-instance v5, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$5;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$5;-><init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    const v5, 0x7f0e002c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 420
    .local v2, backButton:Landroid/view/View;
    new-instance v5, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$6;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$6;-><init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    const v5, 0x7f0e002e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 427
    .local v3, customText:Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a011b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    invoke-virtual {v0, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 429
    iput-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mCustomViewGroupUsed:Landroid/view/View;

    .line 430
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 432
    return-void

    .line 389
    .end local v2           #backButton:Landroid/view/View;
    .end local v3           #customText:Landroid/widget/TextView;
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0
.end method

.method public showDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 702
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mInflator:Landroid/view/LayoutInflater;

    const v3, 0x7f0300c0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 703
    .local v1, dialogView:Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a01e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0174

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 705
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 706
    const v2, 0x7f0e02ea

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->concatctAddRadioG:Landroid/widget/RadioGroup;

    .line 707
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->concatctAddRadioG:Landroid/widget/RadioGroup;

    new-instance v3, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$7;

    invoke-direct {v3, p0, v0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity$7;-><init>(Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 715
    return-void
.end method

.method public showPD(II)V
    .locals 4
    .parameter "max"
    .parameter "strID"

    .prologue
    .line 265
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 266
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 267
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "max"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    const-string v2, "strID"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 270
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 271
    return-void
.end method

.method public showPD2(II)V
    .locals 4
    .parameter "max"
    .parameter "strID"

    .prologue
    .line 866
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 867
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 868
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "max"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 869
    const-string v2, "strID"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 870
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 871
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 872
    return-void
.end method

.method protected updateCustomView()V
    .locals 6

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 480
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mCustomViewGroupUsed:Landroid/view/View;

    const v4, 0x7f0e002e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 481
    .local v2, customText:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->selectedItems:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a011b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mCustomViewGroupUsed:Landroid/view/View;

    const v4, 0x7f0e0030

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 483
    .local v1, allButton:Landroid/view/View;
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->selectedItems:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->listItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 484
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setActivated(Z)V

    .line 488
    :goto_0
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mCustomViewGroupUsed:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 489
    return-void

    .line 486
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0
.end method

.method public updatePD(I)V
    .locals 3
    .parameter "n"

    .prologue
    .line 274
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 275
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 276
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 277
    return-void
.end method

.method public updatePD2(I)V
    .locals 3
    .parameter "n"

    .prologue
    .line 875
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 876
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 877
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 878
    return-void
.end method

.method public updatePDMsg(Ljava/lang/String;III)V
    .locals 4
    .parameter "name"
    .parameter "num"
    .parameter "total"
    .parameter "strID"

    .prologue
    .line 280
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 281
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 282
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "name"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v2, "num"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    const-string v2, "total"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    const-string v2, "strID"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 286
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 287
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 288
    return-void
.end method

.method public updatePDMsg2(II)V
    .locals 4
    .parameter "num"
    .parameter "strID"

    .prologue
    .line 881
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 882
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 883
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "num"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 884
    const-string v2, "strID"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 885
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 886
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 887
    return-void
.end method

.method public updateView(Z)V
    .locals 4
    .parameter "isEmpty"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 931
    if-eqz p1, :cond_3

    .line 933
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 934
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 935
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->tabType:Lcom/zte/heartyservice/privacy/ContactType;

    sget-object v1, Lcom/zte/heartyservice/privacy/ContactType;->FROM_PHONE_SIM:Lcom/zte/heartyservice/privacy/ContactType;

    if-ne v0, v1, :cond_1

    .line 937
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mBtnLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 938
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 939
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->emptyImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 959
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->invalidateOptionsMenu()V

    .line 960
    return-void

    .line 942
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mBtnLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 943
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 944
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->emptyImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 945
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->tabType:Lcom/zte/heartyservice/privacy/ContactType;

    sget-object v1, Lcom/zte/heartyservice/privacy/ContactType;->FROM_SMS:Lcom/zte/heartyservice/privacy/ContactType;

    if-ne v0, v1, :cond_2

    .line 946
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->emptyView:Landroid/widget/TextView;

    const v1, 0x7f0a0367

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 947
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->tabType:Lcom/zte/heartyservice/privacy/ContactType;

    sget-object v1, Lcom/zte/heartyservice/privacy/ContactType;->FROM_CALLLOG:Lcom/zte/heartyservice/privacy/ContactType;

    if-ne v0, v1, :cond_0

    .line 948
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->emptyView:Landroid/widget/TextView;

    const v1, 0x7f0a0366

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 952
    :cond_3
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 953
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->emptyImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 954
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 955
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 957
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->mBtnLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "listItem"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 673
    const-string v0, "ContactsSmsCallLogActivity"

    const-string v1, "updateViewInfo....."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSmsCallLogActivity;->currentFragment:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;->updateAddViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
