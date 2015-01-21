.class public Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;
.super Landroid/app/Activity;
.source "CallLogMultipleDeleteActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLogMultipleDeleteActivity"


# instance fields
.field protected mFragment:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;

.field private mIsSelectedAll:Z

.field private mIsSelectedNone:Z

.field private mSelectionMenu:Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;

.field public mStatusBarMgr:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->mIsSelectedAll:Z

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->mIsSelectedNone:Z

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;)Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->mSelectionMenu:Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;)Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->mSelectionMenu:Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;Landroid/view/View;)Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->updateSelectionMenu(Landroid/view/View;)Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->configureActionBar()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->showDeleteDialog()V

    return-void
.end method

.method private configureActionBar()V
    .locals 10

    .prologue
    .line 108
    const-string v8, "configureActionBar()"

    invoke-direct {p0, v8}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->log(Ljava/lang/String;)V

    .line 111
    const-string v8, "layout_inflater"

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 112
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f040016

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 113
    .local v3, customActionBarView:Landroid/view/View;
    const v8, 0x7f07009e

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 114
    .local v5, doneMenuItem:Landroid/widget/ImageButton;
    new-instance v8, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$1;

    invoke-direct {v8, p0}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$1;-><init>(Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;)V

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v8, 0x7f07009f

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 123
    .local v7, selectView:Landroid/widget/Button;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020049

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    new-instance v8, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$2;

    invoke-direct {v8, p0}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$2;-><init>(Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v8, 0x7f07009c

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 142
    .local v2, cancelView:Landroid/widget/Button;
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, cancelText:Ljava/lang/String;
    const-string v8, "Cancel"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 144
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :cond_0
    new-instance v8, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$3;

    invoke-direct {v8, p0}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$3;-><init>(Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v8, 0x7f07009a

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 157
    .local v4, deleteView:Landroid/widget/Button;
    iget-boolean v8, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->mIsSelectedNone:Z

    if-eqz v8, :cond_2

    .line 159
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 160
    const v8, -0x777778

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->getClickListenerOfActionBarOKButton()Landroid/view/View$OnClickListener;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 167
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 168
    const/16 v8, 0x10

    const/16 v9, 0x1a

    invoke-virtual {v0, v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 171
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 173
    :cond_1
    return-void

    .line 162
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_2
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 163
    const/4 v8, -0x1

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 199
    const-string v0, "CallLogMultipleDeleteActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-void
.end method

.method private showDeleteDialog()V
    .locals 5

    .prologue
    .line 204
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c00a6

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c00a7

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$4;

    invoke-direct {v4, p0}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$4;-><init>(Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 216
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 217
    .local v1, delDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 218
    return-void
.end method

.method private updateSelectionMenu(Landroid/view/View;)Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;
    .locals 7
    .parameter "customActionBarView"

    .prologue
    const v6, 0x7f07009f

    .line 226
    new-instance v0, Lcom/mediatek/contacts/list/DropMenu;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/list/DropMenu;-><init>(Landroid/content/Context;)V

    .line 228
    .local v0, dropMenu:Lcom/mediatek/contacts/list/DropMenu;
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f100010

    invoke-virtual {v0, v4, v5}, Lcom/mediatek/contacts/list/DropMenu;->addDropDownMenu(Landroid/widget/Button;I)Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;

    move-result-object v3

    .line 231
    .local v3, selectionMenu:Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 233
    .local v2, selectView:Landroid/widget/Button;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020049

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 235
    new-instance v4, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$5;

    invoke-direct {v4, p0}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$5;-><init>(Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    const v4, 0x7f07020c

    invoke-virtual {v3, v4}, Lcom/mediatek/contacts/list/DropMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 249
    .local v1, item:Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->mFragment:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;

    invoke-virtual {v4}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->isAllSelected()Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->mIsSelectedAll:Z

    .line 251
    iget-boolean v4, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->mIsSelectedAll:Z

    if-eqz v4, :cond_0

    .line 252
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 253
    const v4, 0x7f0c0282

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 255
    new-instance v4, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$6;

    invoke-direct {v4, p0}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$6;-><init>(Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;)V

    invoke-virtual {v0, v4}, Lcom/mediatek/contacts/list/DropMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 275
    :goto_0
    return-object v3

    .line 264
    :cond_0
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 265
    const v4, 0x7f0c0281

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 267
    new-instance v4, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$7;

    invoke-direct {v4, p0}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$7;-><init>(Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;)V

    invoke-virtual {v0, v4}, Lcom/mediatek/contacts/list/DropMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected getClickListenerOfActionBarOKButton()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 279
    new-instance v0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$8;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$8;-><init>(Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 61
    const-string v0, "onCreate()"

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->log(Ljava/lang/String;)V

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f040015

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f070076

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;

    iput-object v0, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->mFragment:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;

    .line 71
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->configureActionBar()V

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->updateSelectedItemsView(I)V

    .line 74
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->showIndicator(ZLandroid/app/Activity;)V

    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 95
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 87
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->showIndicator(ZLandroid/app/Activity;)V

    .line 88
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 101
    return-void
.end method

.method protected onStopForSubClass()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 105
    return-void
.end method

.method public updateSelectedItemsView(I)V
    .locals 7
    .parameter "checkedItemsCount"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 178
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f07009f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 179
    .local v1, selectedItemsView:Landroid/widget/Button;
    if-nez v1, :cond_0

    .line 180
    const-string v2, "Load view resource error!"

    invoke-direct {p0, v2}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->log(Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 183
    :cond_0
    const v2, 0x7f0c000e

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f07009a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 187
    .local v0, optionView:Landroid/widget/Button;
    if-nez p1, :cond_1

    .line 188
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 189
    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 192
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
