.class public Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;
.super Landroid/app/Activity;
.source "InterceptKeywordActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;
    }
.end annotation


# static fields
.field public static EDITKEYWORD:Ljava/lang/String;


# instance fields
.field private final MENUITEM_MOVE_ID:I

.field private final MENUITEM_NULL_GROUPID:I

.field private mContext:Landroid/content/Context;

.field private mCustomViewGroupNull:Landroid/view/View;

.field private mGroupNumber:I

.field private mKeyWordDao:Ltmsdk/common/module/aresengine/IKeyWordDao;

.field private mKeywordlistdata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMenu:Landroid/view/Menu;

.field private mMenuData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field private mVisibleGroup:I

.field private mkeywordAdapter:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;

.field private mlistview:Landroid/widget/ListView;

.field private noRecordView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "edit_keyword"

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->EDITKEYWORD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mKeywordlistdata:Ljava/util/List;

    .line 43
    iput v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->MENUITEM_NULL_GROUPID:I

    .line 44
    iput v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->MENUITEM_MOVE_ID:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mCustomViewGroupNull:Landroid/view/View;

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;)Ltmsdk/common/module/aresengine/IKeyWordDao;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mKeyWordDao:Ltmsdk/common/module/aresengine/IKeyWordDao;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;)Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mkeywordAdapter:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->changeEmptyView()V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mKeywordlistdata:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mKeywordlistdata:Ljava/util/List;

    return-object p1
.end method

.method private changeEmptyView()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mKeywordlistdata:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->noRecordView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->noRecordView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private initActionBar()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 186
    const/4 v3, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 187
    .local v2, menuItemAdd:[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3, v4}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->setGroupMenuItemData(Ljava/util/ArrayList;II)V

    .line 192
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 193
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 195
    const v3, 0x7f020104

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setIcon(I)V

    .line 197
    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->changeCustomView(I)V

    .line 198
    return-void

    .line 186
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
    .locals 7
    .parameter "item"

    .prologue
    .line 113
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 175
    const-string v5, "<==>tsj"

    const-string v6, "optionsItemSelectedHandler unexpected!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_0
    const/4 v5, 0x0

    return v5

    .line 115
    :pswitch_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 116
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030065

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 117
    .local v4, layout:Landroid/view/View;
    const v5, 0x7f0e0126

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 119
    .local v2, edittext:Landroid/widget/EditText;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0a0230

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 121
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 122
    const v5, 0x7f0a0174

    new-instance v6, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$1;

    invoke-direct {v6, p0, v2}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$1;-><init>(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    const v5, 0x7f0a021e

    new-instance v6, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$2;

    invoke-direct {v6, p0, v2}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$2;-><init>(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 167
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 168
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 169
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 170
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 171
    invoke-static {p0, v2}, Lcom/zte/heartyservice/common/utils/AppUtils;->showInputMethod(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected changeCustomView(I)V
    .locals 7
    .parameter "group"

    .prologue
    const/16 v6, 0x10

    .line 202
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 203
    .local v0, actionBar:Landroid/app/ActionBar;
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 205
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030030

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 207
    .local v1, layout:Landroid/view/View;
    const v4, 0x7f0e0096

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 208
    .local v3, titile_text:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0214

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 211
    iput-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mCustomViewGroupNull:Landroid/view/View;

    .line 212
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 213
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 57
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->setContentView(I)V

    .line 58
    const v0, 0x7f0e0068

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->noRecordView:Landroid/view/View;

    .line 59
    iput-object p0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mContext:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/KeyWordDao;->getInstance(Landroid/content/Context;)Ltmsdk/common/module/aresengine/IKeyWordDao;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mKeyWordDao:Ltmsdk/common/module/aresengine/IKeyWordDao;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mKeywordlistdata:Ljava/util/List;

    .line 63
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mKeywordlistdata:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 64
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mKeywordlistdata:Ljava/util/List;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mKeyWordDao:Ltmsdk/common/module/aresengine/IKeyWordDao;

    invoke-interface {v1}, Ltmsdk/common/module/aresengine/IKeyWordDao;->getAll()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;-><init>(Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mkeywordAdapter:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;

    .line 67
    const v0, 0x7f0e006d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mlistview:Landroid/widget/ListView;

    .line 68
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mlistview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mkeywordAdapter:Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity$keywordAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->changeEmptyView()V

    .line 73
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->initActionBar()V

    .line 75
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mMenu:Landroid/view/Menu;

    .line 88
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v4, 0x0

    aget v4, v3, v4

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v5, 0x1

    aget v5, v3, v5

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v6, 0x2

    aget v6, v3, v6

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v7, 0x3

    aget v3, v3, v7

    invoke-interface {p1, v4, v5, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 92
    .local v2, item:Landroid/view/MenuItem;
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 94
    const v3, 0x7f0a01e0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v2           #item:Landroid/view/MenuItem;
    :catch_0
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 104
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->optionsItemSelectedHandler(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
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
    .line 217
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mMenuData:Ljava/util/ArrayList;

    .line 218
    iput p2, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mGroupNumber:I

    .line 219
    iput p3, p0, Lcom/zte/heartyservice/intercept/Tencent/InterceptKeywordActivity;->mVisibleGroup:I

    .line 220
    return-void
.end method
