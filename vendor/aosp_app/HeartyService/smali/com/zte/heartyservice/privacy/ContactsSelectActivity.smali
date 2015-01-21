.class public Lcom/zte/heartyservice/privacy/ContactsSelectActivity;
.super Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;
.source "ContactsSelectActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/ContactsSelectActivity$7;,
        Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;
    }
.end annotation


# static fields
.field private static final MsgDissmissPD:I = 0x4

.field private static final MsgShowPD:I = 0x1

.field private static final MsgUpdatePD:I = 0x2

.field private static final MsgUpdatePDMsg:I = 0x3


# instance fields
.field private final MENUITEM_SELECT_GROUPID:I

.field private final MENUITEM_SELECT_ID:I

.field private final TAG:Ljava/lang/String;

.field private actionBar:Landroid/app/ActionBar;

.field private adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

.field protected callBtn:Landroid/graphics/drawable/Drawable;

.field private concatctAddRadioG:Landroid/widget/RadioGroup;

.field private contactStrategy:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;

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

.field private mContactType:Lcom/zte/heartyservice/privacy/ContactType;

.field private mCustomViewGroupUsed:Landroid/view/View;

.field private mGroupNumber:I

.field private mHandler:Landroid/os/Handler;

.field private mInflator:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mMenuData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field private mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mVisibleGroup:I

.field private selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

.field private selectedItems:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;-><init>()V

    .line 43
    const-string v0, "ContactsSelectActivity"

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->TAG:Ljava/lang/String;

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectedItems:Ljava/lang/Integer;

    .line 51
    iput v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->MENUITEM_SELECT_GROUPID:I

    .line 52
    iput v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->MENUITEM_SELECT_ID:I

    .line 57
    iput-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mCustomViewGroupUsed:Landroid/view/View;

    .line 60
    iput-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;

    .line 61
    iput-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 300
    new-instance v0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$4;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$4;-><init>(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;

    return-object v0
.end method

.method static synthetic access$002(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;)Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;

    return-object p1
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectedItems:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectedItems:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->listItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)Lcom/zte/heartyservice/common/datatype/CommonListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private initActionBar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 104
    const/4 v2, 0x5

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 105
    .local v1, menuItemSelect:[I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v0, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->setGroupMenuItemData(Ljava/util/ArrayList;II)V

    .line 108
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->actionBar:Landroid/app/ActionBar;

    .line 109
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 110
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->actionBar:Landroid/app/ActionBar;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 111
    return-void

    .line 104
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1et 0x2t 0xat 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private initConvertView(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 2
    .parameter "convertView"
    .parameter "parent"
    .parameter "layoutId"

    .prologue
    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    .line 394
    if-nez p1, :cond_0

    .line 395
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mInflator:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 396
    new-instance v0, Lcom/zte/heartyservice/privacy/SelectListItem;

    invoke-direct {v0}, Lcom/zte/heartyservice/privacy/SelectListItem;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    .line 397
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    const v0, 0x7f0e0086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->refName:Landroid/widget/TextView;

    .line 398
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    const v0, 0x7f0e0087

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->comment:Landroid/widget/TextView;

    .line 399
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    const v0, 0x7f0e0085

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    .line 400
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    const v0, 0x7f0e0088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->imageButton:Landroid/widget/ImageButton;

    .line 401
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 403
    :cond_0
    return-object p1
.end method

.method private updateCallLogView(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "listItem"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 483
    const v1, 0x7f0300bf

    invoke-direct {p0, p3, p4, v1}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->initConvertView(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p3

    move-object v0, p1

    .line 484
    check-cast v0, Lcom/zte/heartyservice/privacy/CallRecordListItem;

    .line 485
    .local v0, conSmsCallLogItem:Lcom/zte/heartyservice/privacy/CallRecordListItem;
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/privacy/SelectListItem;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    .line 486
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 487
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 488
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/privacy/SelectListItem;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    .line 489
    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/CallRecordListItem;->getRefName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 490
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->refName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/CallRecordListItem;->getRefName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/CallRecordListItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/CallRecordListItem;->getRefName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/CallRecordListItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->comment:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/CallRecordListItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->imageButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->callBtn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 501
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->imageButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$6;-><init>(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;Lcom/zte/heartyservice/privacy/CallRecordListItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/CallRecordListItem;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 509
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 510
    return-object p3

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->comment:Landroid/widget/TextView;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 497
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->refName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/CallRecordListItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->comment:Landroid/widget/TextView;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateContactsView(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "listItem"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 416
    const v1, 0x7f0300bf

    invoke-direct {p0, p3, p4, v1}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->initConvertView(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p3

    move-object v0, p1

    .line 417
    check-cast v0, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;

    .line 418
    .local v0, conSmsCallLogItem:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/privacy/SelectListItem;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    .line 419
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->imageButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 421
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 422
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 423
    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->getRefName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->refName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->getRefName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->comment:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->imageButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->callBtn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 431
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->imageButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$5;-><init>(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 439
    return-object p3

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->refName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->comment:Landroid/widget/TextView;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSmsView(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "listItem"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 452
    const v1, 0x7f0300d3

    invoke-direct {p0, p3, p4, v1}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->initConvertView(Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p3

    move-object v0, p1

    .line 453
    check-cast v0, Lcom/zte/heartyservice/privacy/SmsRecordListItem;

    .line 454
    .local v0, conSmsCallLogItem:Lcom/zte/heartyservice/privacy/SmsRecordListItem;
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/privacy/SelectListItem;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    .line 455
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 456
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 457
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/privacy/SelectListItem;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    .line 458
    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->getRefName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 459
    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->getRefName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->refName:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->getRefName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->comment:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 469
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 470
    return-object p3

    .line 462
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->refName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->getRefName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 465
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectListItem:Lcom/zte/heartyservice/privacy/SelectListItem;

    iget-object v1, v1, Lcom/zte/heartyservice/privacy/SelectListItem;->refName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/SmsRecordListItem;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected changeCustomView(I)V
    .locals 6
    .parameter "group"

    .prologue
    const/16 v5, 0x10

    .line 344
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 345
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030030

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 346
    .local v0, layout:Landroid/view/View;
    const v3, 0x7f0e0096

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 347
    .local v2, titile_text:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0213

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 349
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mCustomViewGroupUsed:Landroid/view/View;

    .line 350
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 351
    return-void
.end method

.method public dissmissPD()V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 298
    return-void
.end method

.method public getAdapter()Lcom/zte/heartyservice/common/datatype/CommonListAdapter;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

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
    .line 575
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->listItems:Ljava/util/List;

    return-object v0
.end method

.method public getMInflator()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mInflator:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getmListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected handleAddContactByType()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 529
    sget-object v0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$7;->$SwitchMap$com$zte$heartyservice$privacy$ContactType:[I

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mContactType:Lcom/zte/heartyservice/privacy/ContactType;

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/ContactType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 548
    :goto_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->setSelectActionBar()V

    .line 549
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->invalidateOptionsMenu()V

    .line 550
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectedItems:Ljava/lang/Integer;

    .line 551
    const-string v0, "ContactsSelectActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentFragment:::: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->contactStrategy:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->listItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->setItems(Ljava/util/List;)V

    .line 554
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 556
    return-void

    .line 533
    :pswitch_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->importFromContacts()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->listItems:Ljava/util/List;

    .line 534
    const-string v0, "ContactsSelectActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " new  currentFragment:::: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->contactStrategy:Lcom/zte/heartyservice/privacy/ConSmsCallLogStrategy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 539
    :pswitch_1
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->importFromSmsRecords()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->listItems:Ljava/util/List;

    goto :goto_0

    .line 544
    :pswitch_2
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->importFromCallRecords()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->listItems:Ljava/util/List;

    goto :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleClickEvent(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 374
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "compoundButton"
    .parameter "isChecked"

    .prologue
    .line 518
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;

    .line 519
    .local v0, contactListItem:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    invoke-virtual {v0, p2}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->setChecked(Z)V

    .line 520
    if-eqz p2, :cond_0

    .line 521
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectedItems:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectedItems:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectedItems:Ljava/lang/Integer;

    .line 525
    :goto_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->updateCustomView()V

    .line 526
    return-void

    .line 523
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectedItems:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectedItems:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectedItems:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 70
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v1, 0x7f0300c4

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->setContentView(I)V

    .line 72
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mInflator:Landroid/view/LayoutInflater;

    .line 73
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->callBtn:Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-direct {p0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->initActionBar()V

    .line 75
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 76
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 77
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 78
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 79
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$1;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$1;-><init>(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 93
    new-instance v1, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    .line 94
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    invoke-virtual {v1, p0}, Lcom/zte/heartyservice/common/datatype/CommonListAdapter;->setListViewCallBacks(Lcom/zte/heartyservice/common/datatype/CommonListAdapter$ListViewCallBacks;)V

    .line 95
    const v1, 0x7f0e008b

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mListView:Landroid/widget/ListView;

    .line 96
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 97
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "select_from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zte/heartyservice/privacy/ContactType;->valueOf(Ljava/lang/String;)Lcom/zte/heartyservice/privacy/ContactType;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mContactType:Lcom/zte/heartyservice/privacy/ContactType;

    .line 98
    const-string v1, "ContactsSelectActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mContactType:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mContactType:Lcom/zte/heartyservice/privacy/ContactType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->handleAddContactByType()V

    .line 101
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 163
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    aget v3, v2, v7

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    aget v4, v2, v6

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v5, 0x2

    aget v2, v2, v5

    const-string v5, ""

    invoke-interface {p1, v3, v4, v2, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 166
    .local v1, item:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    aget v2, v2, v8

    if-eqz v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    aget v2, v2, v8

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 169
    :cond_0
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 170
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 171
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_1
    iget v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mVisibleGroup:I

    invoke-interface {p1, v2, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 174
    invoke-super {p0, p1}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;->cancel(Z)Z

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;

    .line 591
    const v0, 0x7f0a0363

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 593
    :cond_0
    invoke-super {p0}, Lcom/zte/heartyservice/privacy/AbstractPrivacyActivity;->onDestroy()V

    .line 594
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    .line 179
    const-string v5, "suzaiqiang"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "item id:: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " gid:: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    .line 181
    .local v3, groupId:I
    packed-switch v3, :pswitch_data_0

    .line 208
    :cond_0
    :goto_0
    return v8

    .line 183
    :pswitch_0
    iget-object v5, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->listItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 184
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 185
    .local v0, acHashSet:Ljava/util/HashSet;
    iget-object v5, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->listItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/CommonListItem;

    .local v1, commonListItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    move-object v2, v1

    .line 186
    check-cast v2, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;

    .line 187
    .local v2, contactListItem:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    invoke-virtual {v2}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->isChecked()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 188
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkIsDataSpaceNotEnoughAndShowToast()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 192
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v5

    invoke-virtual {v2}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->getRefName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->insertContact(Ljava/lang/String;Ljava/lang/String;)Z

    .line 194
    invoke-virtual {v2}, Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->convertNumberToAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 197
    .end local v1           #commonListItem:Lcom/zte/heartyservice/common/datatype/CommonListItem;
    .end local v2           #contactListItem:Lcom/zte/heartyservice/privacy/ContactSmsCallLogItem;
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 198
    new-instance v5, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;

    invoke-direct {v5, p0, v0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;-><init>(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;Ljava/util/HashSet;)V

    iput-object v5, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;

    .line 199
    iget-object v5, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mMoveSmsAndCallTask:Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;

    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v7, v8, [Ljava/lang/Void;

    invoke-virtual {v5, v6, v7}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$MoveSmsAndCallTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 201
    :cond_3
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->finish()V

    goto :goto_0

    .line 204
    .end local v0           #acHashSet:Ljava/util/HashSet;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->finish()V

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setAdapter(Lcom/zte/heartyservice/common/datatype/CommonListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 571
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->adapter:Lcom/zte/heartyservice/common/datatype/CommonListAdapter;

    .line 572
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
    .line 367
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mMenuData:Ljava/util/ArrayList;

    .line 368
    iput p2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mGroupNumber:I

    .line 369
    iput p3, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mVisibleGroup:I

    .line 370
    return-void
.end method

.method public setListItems(Ljava/util/List;)V
    .locals 0
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
    .line 579
    .local p1, listItems:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/CommonListItem;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->listItems:Ljava/util/List;

    .line 580
    return-void
.end method

.method protected setSelectActionBar()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    .line 117
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mInflator:Landroid/view/LayoutInflater;

    const v5, 0x7f03000d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 118
    .local v3, layout:Landroid/view/View;
    const v4, 0x7f0e0030

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, allButton:Landroid/view/View;
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectedItems:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->listItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 120
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->setActivated(Z)V

    .line 124
    :goto_0
    new-instance v4, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$2;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$2;-><init>(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v4, 0x7f0e002c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 147
    .local v1, backButton:Landroid/view/View;
    new-instance v4, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$3;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$3;-><init>(Lcom/zte/heartyservice/privacy/ContactsSelectActivity;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v4, 0x7f0e002e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 154
    .local v2, customText:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a011b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 156
    iput-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mCustomViewGroupUsed:Landroid/view/View;

    .line 157
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v4, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 159
    return-void

    .line 122
    .end local v1           #backButton:Landroid/view/View;
    .end local v2           #customText:Landroid/widget/TextView;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0
.end method

.method public setmListView(Landroid/widget/ListView;)V
    .locals 0
    .parameter "mListView"

    .prologue
    .line 563
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mListView:Landroid/widget/ListView;

    .line 564
    return-void
.end method

.method public showPD(II)V
    .locals 4
    .parameter "max"
    .parameter "strID"

    .prologue
    .line 273
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 274
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 275
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "max"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 276
    const-string v2, "strID"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 278
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 279
    return-void
.end method

.method protected updateCustomView()V
    .locals 5

    .prologue
    .line 354
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mCustomViewGroupUsed:Landroid/view/View;

    const v3, 0x7f0e002e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 355
    .local v1, customText:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectedItems:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a011b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mCustomViewGroupUsed:Landroid/view/View;

    const v3, 0x7f0e0030

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 357
    .local v0, allButton:Landroid/view/View;
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->selectedItems:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->listItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 358
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    .line 362
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->actionBar:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mCustomViewGroupUsed:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 363
    return-void

    .line 360
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0
.end method

.method public updatePD(I)V
    .locals 3
    .parameter "n"

    .prologue
    .line 282
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 283
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 284
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 285
    return-void
.end method

.method public updatePDMsg(II)V
    .locals 4
    .parameter "num"
    .parameter "strID"

    .prologue
    .line 288
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 289
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 290
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "num"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 291
    const-string v2, "strID"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 292
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 293
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 294
    return-void
.end method

.method public updateViewInfo(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "listItem"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 378
    sget-object v0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity$7;->$SwitchMap$com$zte$heartyservice$privacy$ContactType:[I

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->mContactType:Lcom/zte/heartyservice/privacy/ContactType;

    invoke-virtual {v1}, Lcom/zte/heartyservice/privacy/ContactType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 389
    :goto_0
    return-object p3

    .line 380
    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->updateContactsView(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 381
    goto :goto_0

    .line 383
    :pswitch_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->updateSmsView(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 384
    goto :goto_0

    .line 386
    :pswitch_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/heartyservice/privacy/ContactsSelectActivity;->updateCallLogView(Lcom/zte/heartyservice/common/datatype/CommonListItem;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
