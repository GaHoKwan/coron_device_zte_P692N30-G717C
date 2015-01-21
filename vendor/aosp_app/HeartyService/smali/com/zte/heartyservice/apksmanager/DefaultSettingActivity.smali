.class public Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;
.super Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;
.source "DefaultSettingActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/apksmanager/BaseListAdapter$ListViewCallBacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$DefaultItemOnClickListener;,
        Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$ViewHolder;
    }
.end annotation


# instance fields
.field private final CUSTOMVIEW_DEFAULT:I

.field private final CUSTOMVIEW_UPDATE:I

.field private final MENUITEM_DELETE_ID:I

.field private final MENUITEM_NULL_GROUPID:I

.field private final MENUITEM_USED_GROUPID:I

.field private emptyTxtView:Landroid/widget/TextView;

.field private mCustomViewGroupNull:Landroid/view/View;

.field private mCustomViewGroupUsed:Landroid/view/View;

.field private mDefaultSettingAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->packageManager:Landroid/content/pm/PackageManager;

    .line 37
    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mDefaultSettingAppInfoList:Ljava/util/List;

    .line 38
    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mListView:Landroid/widget/ListView;

    .line 39
    iput v1, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->MENUITEM_NULL_GROUPID:I

    .line 40
    iput v2, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->MENUITEM_USED_GROUPID:I

    .line 41
    iput v1, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->MENUITEM_DELETE_ID:I

    .line 43
    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mCustomViewGroupNull:Landroid/view/View;

    .line 44
    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mCustomViewGroupUsed:Landroid/view/View;

    .line 45
    iput v1, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->CUSTOMVIEW_DEFAULT:I

    .line 46
    iput v2, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->CUSTOMVIEW_UPDATE:I

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mDefaultSettingAppInfoList:Ljava/util/List;

    return-object v0
.end method

.method private clearLists()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mDefaultSettingAppInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mDefaultSettingAppInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 263
    :cond_0
    return-void
.end method

.method private initActionBar()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 203
    const/4 v3, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 205
    .local v2, menuItemDelete:[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3, v4}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->setGroupMenuItemData(Ljava/util/ArrayList;II)V

    .line 210
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 211
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 215
    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->changeCustomView(I)V

    .line 216
    return-void

    .line 203
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3ct 0x1t 0xat 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private onOptionsItemSelectedHandler(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "menuItem"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->getmListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v4

    .line 116
    .local v4, items:[J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, clearList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_0

    .line 118
    aget-wide v6, v4, v1

    long-to-int v3, v6

    .line 119
    .local v3, item:I
    iget-object v7, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mDefaultSettingAppInfoList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    invoke-virtual {v6}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->getIndex()I

    move-result v6

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    .end local v3           #item:I
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 122
    const-string v6, "<==>tsj"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";onMenuItemClick before showInstalledAppDetails"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;

    .line 124
    .local v5, localDefaultSettingAppInfo:Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;
    iget-object v6, v5, Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/zte/heartyservice/common/utils/SysInfo;->showInstalledAppDetails(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 128
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #localDefaultSettingAppInfo:Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;
    :cond_1
    const/4 v6, 0x0

    return v6
.end method


# virtual methods
.method protected ServiceConnectedOperation()V
    .locals 4

    .prologue
    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mListView:Landroid/widget/ListView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 149
    const v1, 0x7f0a0148

    const v2, 0x7f0a0148

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, p0, v1, v2, v3}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->createUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 152
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    invoke-interface {v1}, Lcom/zte/heartyservice/apksmanager/IApksManagerService;->listDefaultSettingApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected UpdateCustomView(I)V
    .locals 6
    .parameter "group"

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 251
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v3, 0x1

    if-ne v3, p1, :cond_0

    .line 252
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mCustomViewGroupUsed:Landroid/view/View;

    const v4, 0x7f0e002e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 253
    .local v1, customText:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v3

    array-length v2, v3

    .line 254
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

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a011b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mCustomViewGroupUsed:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 257
    .end local v1           #customText:Landroid/widget/TextView;
    .end local v2           #nSelected:I
    :cond_0
    return-void
.end method

.method protected changeCustomView(I)V
    .locals 12
    .parameter "group"

    .prologue
    const/4 v8, 0x0

    const v11, 0x7f0e002e

    const v10, 0x7f0a011b

    const/16 v9, 0x10

    .line 268
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 269
    .local v0, actionBar:Landroid/app/ActionBar;
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 271
    .local v4, layoutInflater:Landroid/view/LayoutInflater;
    if-nez p1, :cond_1

    .line 272
    iget-object v7, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mCustomViewGroupNull:Landroid/view/View;

    if-nez v7, :cond_0

    .line 274
    const v7, 0x7f030030

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 276
    .local v3, layout:Landroid/view/View;
    const v7, 0x7f0e0096

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 277
    .local v6, titile_text:Landroid/widget/TextView;
    const v7, 0x7f0a013d

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 278
    invoke-virtual {v0, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 279
    iput-object v3, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mCustomViewGroupNull:Landroid/view/View;

    .line 280
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 321
    .end local v3           #layout:Landroid/view/View;
    .end local v6           #titile_text:Landroid/widget/TextView;
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v7, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mCustomViewGroupNull:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto :goto_0

    .line 286
    :cond_1
    iget-object v7, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mCustomViewGroupUsed:Landroid/view/View;

    if-nez v7, :cond_2

    .line 288
    const v7, 0x7f03000d

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 290
    .restart local v3       #layout:Landroid/view/View;
    const v7, 0x7f0e0030

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 291
    .local v1, allButton:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->setSelectAllBtn(Landroid/view/View;)V

    .line 292
    iget-object v7, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 293
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setSelected(Z)V

    .line 295
    new-instance v7, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$1;

    invoke-direct {v7, p0}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$1;-><init>(Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 304
    .local v2, customText:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v7

    array-length v5, v7

    .line 306
    .local v5, nSelected:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {v0, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 310
    iput-object v3, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mCustomViewGroupUsed:Landroid/view/View;

    .line 311
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto :goto_0

    .line 314
    .end local v1           #allButton:Landroid/view/View;
    .end local v2           #customText:Landroid/widget/TextView;
    .end local v3           #layout:Landroid/view/View;
    .end local v5           #nSelected:I
    :cond_2
    iget-object v7, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mCustomViewGroupUsed:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 315
    .restart local v2       #customText:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v7

    array-length v5, v7

    .line 316
    .restart local v5       #nSelected:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v7, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mCustomViewGroupUsed:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method protected getActivityView()I
    .locals 1

    .prologue
    .line 160
    const v0, 0x7f030032

    return v0
.end method

.method protected getCustomViewGroupByState(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 239
    if-nez p1, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 242
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

    .line 221
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    .line 223
    .local v0, list:[I
    return-object v0
.end method

.method protected getMenuItemGroupByState(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 229
    if-nez p1, :cond_0

    .line 230
    const/4 v0, 0x0

    .line 232
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->packageManager:Landroid/content/pm/PackageManager;

    .line 168
    const v0, 0x7f0e009a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mListView:Landroid/widget/ListView;

    .line 169
    const v0, 0x7f0e0069

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->emptyTxtView:Landroid/widget/TextView;

    .line 170
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->emptyTxtView:Landroid/widget/TextView;

    const v1, 0x7f0a0142

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->initActionBar()V

    .line 172
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 173
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    invoke-super {p0}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->onDestroy()V

    .line 192
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->clearLists()V

    .line 194
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;

    .line 195
    .local v0, adapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->setListViewCallBacks(Lcom/zte/heartyservice/apksmanager/BaseListAdapter$ListViewCallBacks;)V

    .line 197
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 198
    iput-object v2, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mListView:Landroid/widget/ListView;

    .line 200
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
    .line 104
    const-string v0, "listDefaultSettingAppTask"

    if-ne v0, p2, :cond_0

    .line 105
    const v0, 0x7f0a0148

    const/4 v1, 0x1

    invoke-virtual {p0, p0, v0, p1, v1}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->showUpdateListProgressDialog(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 107
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->onOptionsItemSelectedHandler(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 177
    invoke-super {p0}, Lcom/zte/heartyservice/apksmanager/AbstractApkActivity;->onResume()V

    .line 178
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    if-eqz v1, :cond_0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mIApksManagerService:Lcom/zte/heartyservice/apksmanager/IApksManagerService;

    invoke-interface {v1}, Lcom/zte/heartyservice/apksmanager/IApksManagerService;->listDefaultSettingApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    :goto_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V

    .line 186
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DefaultSettingActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "liuji debug Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUpdateDefaultSettingAppList(Ljava/util/List;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p1, defaultSettingAppList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;>;"
    const/4 v13, 0x0

    .line 57
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mDefaultSettingAppInfoList:Ljava/util/List;

    .line 59
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v9, backedListItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/apksmanager/AbstractListItem;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v11, v3, :cond_0

    .line 63
    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;

    .line 64
    .local v12, loaclDefaultSettingAppInfo:Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v5, v12, Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x80

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 66
    .local v8, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 67
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 68
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    iget-object v1, v12, Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;->versionName:Ljava/lang/String;

    .line 70
    .local v1, version:Ljava/lang/String;
    new-instance v0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;

    const-string v3, ""

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 71
    .local v0, backedListItem:Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
    invoke-virtual {v0, v11}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->setIndex(I)V

    .line 72
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 74
    .end local v0           #backedListItem:Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
    .end local v1           #version:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v8           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v12           #loaclDefaultSettingAppInfo:Lcom/zte/heartyservice/common/datatype/DefaultSettingAppInfo;
    :catch_0
    move-exception v10

    .line 75
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    .end local v10           #e:Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0, v9}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->setBackedListItems(Ljava/util/ArrayList;)V

    .line 79
    new-instance v7, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;

    const v3, 0x7f030031

    invoke-direct {v7, p0, v3, v9}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 81
    .local v7, adapter:Lcom/zte/heartyservice/apksmanager/BaseListAdapter;
    invoke-virtual {v7, p0}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->setListViewCallBacks(Lcom/zte/heartyservice/apksmanager/BaseListAdapter$ListViewCallBacks;)V

    .line 82
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    invoke-virtual {v7}, Lcom/zte/heartyservice/apksmanager/BaseListAdapter;->notifyDataSetChanged()V

    .line 84
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 85
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 86
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$DefaultItemOnClickListener;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$DefaultItemOnClickListener;-><init>(Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->setmListView(Landroid/widget/ListView;)V

    .line 89
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    aget-object v3, v3, v13

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->triggerByAllBtn(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mListView:Landroid/widget/ListView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 93
    const v3, 0x7f0e009b

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :goto_1
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->dismissUpdateListProgressDialog()V

    .line 100
    return-void

    .line 95
    :cond_1
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v13}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateViewInfo(Lcom/zte/heartyservice/apksmanager/AbstractListItem;ILandroid/view/View;)Landroid/view/View;
    .locals 6
    .parameter "listItem"
    .parameter "position"
    .parameter "convertView"

    .prologue
    .line 325
    move-object v2, p1

    check-cast v2, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;

    .line 326
    .local v2, sfManagerItem:Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
    const-string v3, "<==>tsj"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateViewInfo sfManagerItem  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  ------ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->isAppSelected()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v0, 0x0

    .line 332
    .local v0, holder:Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$ViewHolder;
    if-nez p3, :cond_0

    .line 333
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 334
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030031

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 336
    new-instance v0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$ViewHolder;

    .end local v0           #holder:Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$ViewHolder;
    invoke-direct {v0}, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$ViewHolder;-><init>()V

    .line 337
    .restart local v0       #holder:Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$ViewHolder;
    const v3, 0x7f0e0097

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$ViewHolder;->appName:Landroid/widget/TextView;

    .line 338
    const v3, 0x7f0e0033

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$ViewHolder;->iconImg:Landroid/widget/ImageView;

    .line 339
    const v3, 0x7f0e0098

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$ViewHolder;->appRef:Landroid/widget/TextView;

    .line 340
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 345
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, v0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v3, v0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$ViewHolder;->appRef:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v3, v0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$ViewHolder;->iconImg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    return-object p3

    .line 342
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$ViewHolder;
    check-cast v0, Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$ViewHolder;

    .restart local v0       #holder:Lcom/zte/heartyservice/apksmanager/DefaultSettingActivity$ViewHolder;
    goto :goto_0
.end method
