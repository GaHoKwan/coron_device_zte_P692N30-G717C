.class public Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;
.super Landroid/app/Activity;
.source "ZTEBlackWhiteListActivity.java"


# static fields
.field public static final MSG_FINISH_LOAD_DATA:I = 0x1

.field public static final MSG_INSETDATA:I = 0x3

.field public static final MSG_INSETGROUPDATA:I = 0x4

.field public static final MSG_LOAD_DATA:I = 0x0

.field public static final MSG_REFRESH:I = 0x2


# instance fields
.field private final MENUITEM_DELETE_ID:I

.field private final MENUITEM_MOVE_ID:I

.field private final MENUITEM_NULL_GROUPID:I

.field private final MENUITEM_USED_GROUPID:I

.field private blockMessageForGroup:Z

.field private blockRingForGroup:Z

.field private mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

.field private mBlackListdata:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnLayout:Landroid/view/View;

.field private mBtnListView:Landroid/widget/ListView;

.field private mCallLogDao:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

.field private mContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

.field private mContactListAdapter:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

.field private mContext:Landroid/content/Context;

.field private mCustomViewGroupNull:Landroid/view/View;

.field protected mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupNumber:I

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mMenu:Landroid/view/Menu;

.field private mMenuData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mSelectedcontactSingal:Lcom/zte/heartyservice/intercept/Tencent/Contact;

.field mSelectedcontacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsLogDao:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

.field private mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

.field private mTitleText:Landroid/widget/TextView;

.field private mType:I

.field private mVisibleGroup:I

.field private mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

.field private mWhiteListdata:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mdata:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private menuItemNameList:[Ljava/lang/String;

.field private noItemText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    iput v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->MENUITEM_NULL_GROUPID:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->MENUITEM_USED_GROUPID:I

    .line 64
    iput v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->MENUITEM_DELETE_ID:I

    .line 65
    iput v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->MENUITEM_MOVE_ID:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mCustomViewGroupNull:Landroid/view/View;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mDataList:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mBlackListdata:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mWhiteListdata:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mdata:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontacts:Ljava/util/ArrayList;

    .line 96
    iput-boolean v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->blockRingForGroup:Z

    .line 97
    iput-boolean v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->blockMessageForGroup:Z

    .line 99
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$1;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 114
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$2;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private DealContact(Lcom/zte/heartyservice/intercept/Tencent/Contact;I)V
    .locals 4
    .parameter "contact"
    .parameter "mType"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 527
    iget-object v0, p1, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    .line 529
    if-nez p2, :cond_2

    .line 531
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v1, p1, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 533
    iput v2, p1, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    .line 535
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v1, p1, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->deleteByPhoneAndType(Ljava/lang/String;I)Z

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v1, p1, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->insert(Lcom/zte/heartyservice/intercept/Tencent/Contact;)J

    .line 551
    :cond_1
    :goto_0
    return-void

    .line 541
    :cond_2
    if-ne p2, v2, :cond_1

    .line 542
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v1, p1, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 543
    iput v3, p1, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    .line 545
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v1, p1, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->deleteByPhoneAndType(Ljava/lang/String;I)Z

    .line 547
    :cond_3
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v1, p1, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->insert(Lcom/zte/heartyservice/intercept/Tencent/Contact;)J

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->btnOnClickHandler(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->setGroupMembers(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;Lcom/zte/heartyservice/intercept/Tencent/Contact;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->DealContact(Lcom/zte/heartyservice/intercept/Tencent/Contact;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContactListAdapter:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mType:I

    return v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/SysDao;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/SMSDao;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSmsLogDao:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mCallLogDao:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mBtnLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Landroid/view/Menu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private btnOnClickHandler(I)V
    .locals 4
    .parameter "which"

    .prologue
    .line 209
    const/4 v2, 0x2

    if-lt p1, v2, :cond_1

    .line 210
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 211
    .local v1, selectIndex:I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 212
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContext:Landroid/content/Context;

    const-class v3, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 213
    const-string v2, "manner"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    sget-object v2, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->LISTTYPE:Ljava/lang/String;

    iget v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mType:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 221
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #selectIndex:I
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 217
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->selectPhonesFromContact(Landroid/app/Activity;I)V

    goto :goto_0

    .line 218
    :cond_2
    if-nez p1, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->showAddContactDialog()V

    goto :goto_0
.end method

.method private initActionBar()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 484
    const/4 v3, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 485
    .local v2, menuItemAdd:[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3, v4}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->setGroupMenuItemData(Ljava/util/ArrayList;II)V

    .line 490
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 491
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 493
    const v3, 0x7f020104

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setIcon(I)V

    .line 495
    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->changeCustomView(I)V

    .line 496
    return-void

    .line 484
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xe0t 0x1t 0xat 0x7ft
        0xcat 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private optionsItemSelectedHandler(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 443
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 456
    const-string v0, "<==>tsj"

    const-string v1, "optionsItemSelectedHandler unexpected!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 445
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->menuItemNameList:[Ljava/lang/String;

    const/4 v2, -0x1

    new-instance v3, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$7;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$7;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0174

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 443
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private setGroupMembers(Ljava/lang/String;)V
    .locals 9
    .parameter "groupIds"

    .prologue
    .line 465
    const-string v6, ";"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, groups:[Ljava/lang/String;
    array-length v4, v1

    .line 467
    .local v4, length:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v5, members:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/Contact;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 469
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    aget-object v7, v1, v2

    invoke-virtual {v6, v7}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getGroupMembers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 470
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;

    .line 471
    .local v0, contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontacts:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    iget-boolean v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->blockRingForGroup:Z

    iput-boolean v6, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForCalling:Z

    .line 473
    iget-boolean v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->blockMessageForGroup:Z

    iput-boolean v6, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForSMS:Z

    .line 474
    iget v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mType:I

    invoke-direct {p0, v0, v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->DealContact(Lcom/zte/heartyservice/intercept/Tencent/Contact;I)V

    goto :goto_1

    .line 468
    .end local v0           #contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 477
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 478
    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 479
    return-void
.end method


# virtual methods
.method protected changeCustomView(I)V
    .locals 7
    .parameter "group"

    .prologue
    const/16 v6, 0x10

    .line 500
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 501
    .local v0, actionBar:Landroid/app/ActionBar;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 503
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030030

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 505
    .local v1, layout:Landroid/view/View;
    const v4, 0x7f0e0096

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 506
    .local v3, titile_text:Landroid/widget/TextView;
    iget v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mType:I

    if-nez v4, :cond_1

    .line 507
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iput-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    .line 508
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0213

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    :cond_0
    :goto_0
    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 514
    iput-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mCustomViewGroupNull:Landroid/view/View;

    .line 515
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 517
    return-void

    .line 509
    :cond_1
    iget v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 510
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iput-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    .line 511
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0212

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public loadDataList()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 640
    iget v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mType:I

    if-nez v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mDataList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 645
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 646
    return-void

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mDataList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getAll()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 225
    if-nez p3, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 229
    :pswitch_0
    invoke-static {p2, p3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getPhonesFromData(ILandroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v5

    .line 230
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$ContactItem;>;"
    if-eqz v5, :cond_0

    .line 231
    const/4 v1, 0x0

    .line 232
    .local v1, blockRing:Z
    const/4 v0, 0x0

    .line 233
    .local v0, blockMessage:Z
    iget v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mType:I

    if-nez v6, :cond_2

    .line 234
    const/4 v1, 0x1

    .line 235
    const/4 v0, 0x1

    .line 237
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$ContactItem;

    .line 238
    .local v4, item:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$ContactItem;
    new-instance v2, Lcom/zte/heartyservice/intercept/Tencent/Contact;

    invoke-direct {v2}, Lcom/zte/heartyservice/intercept/Tencent/Contact;-><init>()V

    .line 239
    .local v2, contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    iget-object v6, v4, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$ContactItem;->number:Ljava/lang/String;

    iput-object v6, v2, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    .line 240
    iget-object v6, v4, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils$ContactItem;->name:Ljava/lang/String;

    iput-object v6, v2, Lcom/zte/heartyservice/intercept/Tencent/Contact;->name:Ljava/lang/String;

    .line 241
    iput-boolean v1, v2, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForCalling:Z

    .line 242
    iput-boolean v0, v2, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForSMS:Z

    .line 243
    iget v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mType:I

    invoke-direct {p0, v2, v6}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->DealContact(Lcom/zte/heartyservice/intercept/Tencent/Contact;I)V

    goto :goto_1

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .parameter "savedInstanceState"

    .prologue
    .line 262
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f02002c

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 264
    const v2, 0x7f03001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->setContentView(I)V

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContext:Landroid/content/Context;

    .line 267
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getInstance()Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    .line 268
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createSMSDao()Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSmsLogDao:Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    .line 269
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createCallLogDao()Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mCallLogDao:Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 272
    .local v15, intent:Landroid/content/Intent;
    sget-object v2, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->LISTTYPE:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mType:I

    .line 274
    move-object/from16 v0, p0

    iget v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->menuItemNameList:[Ljava/lang/String;

    .line 280
    :goto_0
    const v2, 0x7f0e007f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mTitleText:Landroid/widget/TextView;

    .line 281
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createBlackListDao()Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    .line 282
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createWhiteListDao()Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    .line 293
    invoke-direct/range {p0 .. p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->initActionBar()V

    .line 296
    const-string v2, "selecteddata"

    invoke-virtual {v15, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontacts:Ljava/util/ArrayList;

    .line 298
    const-string v2, "group_flag"

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 299
    .local v16, isGroups:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontacts:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    if-eqz v16, :cond_4

    .line 300
    move-object/from16 v0, p0

    iget v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mType:I

    if-nez v2, :cond_0

    .line 301
    const-string v2, "block_ring"

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->blockRingForGroup:Z

    .line 302
    const-string v2, "block_message"

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->blockMessageForGroup:Z

    .line 304
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .local v13, groupIds:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontacts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 306
    .local v11, data_item:Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v11, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 307
    .local v12, datas:[Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v2, v12, v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    const-string v2, ";"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 277
    .end local v11           #data_item:Ljava/lang/String;
    .end local v12           #datas:[Ljava/lang/String;
    .end local v13           #groupIds:Ljava/lang/StringBuilder;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #isGroups:Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->menuItemNameList:[Ljava/lang/String;

    goto/16 :goto_0

    .line 310
    .restart local v13       #groupIds:Ljava/lang/StringBuilder;
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v16       #isGroups:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontacts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 333
    .end local v13           #groupIds:Ljava/lang/StringBuilder;
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    const v2, 0x7f0e006d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mListView:Landroid/widget/ListView;

    .line 334
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->loadDataList()V

    .line 335
    new-instance v2, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mDataList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    invoke-direct {v2, v3, v4, v5}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/zte/heartyservice/intercept/Tencent/ContactDao;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContactListAdapter:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    .line 336
    const v2, 0x7f0e006a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mBtnLayout:Landroid/view/View;

    .line 338
    const v2, 0x7f0e006b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->noItemText:Landroid/widget/TextView;

    .line 339
    move-object/from16 v0, p0

    iget v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->noItemText:Landroid/widget/TextView;

    const v3, 0x7f0a04ff

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 345
    :goto_3
    const v2, 0x7f0e006c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mBtnListView:Landroid/widget/ListView;

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mBtnListView:Landroid/widget/ListView;

    move-object/from16 v17, v0

    new-instance v2, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$3;

    const v5, 0x7f03001f

    const v6, 0x7f0e0071

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->menuItemNameList:[Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$3;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mBtnListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContactListAdapter:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    new-instance v3, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$4;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)V

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContactListAdapter:Lcom/zte/heartyservice/intercept/Tencent/ContactListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mListView:Landroid/widget/ListView;

    new-instance v3, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$5;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 392
    return-void

    .line 314
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontacts:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 315
    const/4 v9, 0x0

    .line 316
    .local v9, blockRing:Z
    const/4 v8, 0x0

    .line 317
    .local v8, blockMessage:Z
    move-object/from16 v0, p0

    iget v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mType:I

    if-nez v2, :cond_5

    .line 318
    const-string v2, "block_ring"

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 319
    const-string v2, "block_message"

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 321
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mSelectedcontacts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 322
    .restart local v11       #data_item:Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v11, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 323
    .restart local v12       #datas:[Ljava/lang/String;
    new-instance v10, Lcom/zte/heartyservice/intercept/Tencent/Contact;

    invoke-direct {v10}, Lcom/zte/heartyservice/intercept/Tencent/Contact;-><init>()V

    .line 324
    .local v10, contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    const/4 v2, 0x0

    aget-object v2, v12, v2

    iput-object v2, v10, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    .line 325
    const/4 v2, 0x1

    aget-object v2, v12, v2

    iput-object v2, v10, Lcom/zte/heartyservice/intercept/Tencent/Contact;->name:Ljava/lang/String;

    .line 326
    iput-boolean v9, v10, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForCalling:Z

    .line 327
    iput-boolean v8, v10, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForSMS:Z

    .line 328
    move-object/from16 v0, p0

    iget v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mType:I

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->DealContact(Lcom/zte/heartyservice/intercept/Tencent/Contact;I)V

    goto :goto_4

    .line 330
    .end local v10           #contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    .end local v11           #data_item:Ljava/lang/String;
    .end local v12           #datas:[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 342
    .end local v8           #blockMessage:Z
    .end local v9           #blockRing:Z
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->noItemText:Landroid/widget/TextView;

    const v3, 0x7f0a04fe

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    .line 409
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mMenu:Landroid/view/Menu;

    .line 411
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 413
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v4, 0x0

    aget v4, v3, v4

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v5, 0x1

    aget v5, v3, v5

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v6, 0x2

    aget v6, v3, v6

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v7, 0x3

    aget v3, v3, v7

    invoke-interface {p1, v4, v5, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 415
    .local v2, item:Landroid/view/MenuItem;
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 417
    const v3, 0x7f0a01e0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 423
    .end local v2           #item:Landroid/view/MenuItem;
    :catch_0
    move-exception v0

    .line 424
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 427
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$6;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$6;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 434
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 439
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->optionsItemSelectedHandler(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 634
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 635
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 636
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 397
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 398
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 399
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vip_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->setAutoRun(Landroid/content/Context;Z)V

    .line 403
    :cond_0
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
    .line 521
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mMenuData:Ljava/util/ArrayList;

    .line 522
    iput p2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mGroupNumber:I

    .line 523
    iput p3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mVisibleGroup:I

    .line 524
    return-void
.end method

.method public showAddContactDialog()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/16 v12, 0x8

    .line 555
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 556
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f03008f

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 558
    .local v9, layout:Landroid/view/View;
    const v0, 0x7f0e00a6

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 561
    .local v2, tvPhoneNumber:Landroid/widget/EditText;
    const v0, 0x7f0e00a8

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 563
    .local v5, tvContactName:Landroid/widget/EditText;
    const v0, 0x7f0e00a9

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 565
    .local v11, ll_sw_block_ring:Landroid/widget/LinearLayout;
    const v0, 0x7f0e00ab

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 567
    .local v10, ll_sw_block_message:Landroid/widget/LinearLayout;
    const v0, 0x7f0e00aa

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 569
    .local v3, swBlockRing:Landroid/widget/CheckBox;
    const v0, 0x7f0e00ac

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 572
    .local v4, swBlockMessage:Landroid/widget/CheckBox;
    invoke-virtual {v3, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 573
    invoke-virtual {v4, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 575
    iget v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->mType:I

    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {v3, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 577
    invoke-virtual {v4, v12}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 578
    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 579
    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 582
    :cond_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 583
    .local v6, builder:Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0a01e0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 584
    invoke-virtual {v6, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 586
    const v0, 0x7f0a0174

    new-instance v1, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$8;

    invoke-direct {v1, p0, v2}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$8;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;Landroid/widget/EditText;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 594
    const v12, 0x7f0a021e

    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$9;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/widget/EditText;)V

    invoke-virtual {v6, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 623
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 624
    .local v7, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 625
    invoke-static {v7}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 627
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 628
    invoke-static {p0, v2}, Lcom/zte/heartyservice/common/utils/AppUtils;->showInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 629
    return-void
.end method
