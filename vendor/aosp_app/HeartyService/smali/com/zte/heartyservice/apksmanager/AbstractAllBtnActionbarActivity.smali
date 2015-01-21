.class public Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;
.super Landroid/app/Activity;
.source "AbstractAllBtnActionbarActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemCheckedChangeListener;,
        Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemLongClickListener;,
        Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemSingleClickListener;,
        Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemOnClickListener;
    }
.end annotation


# static fields
.field protected static final STATE_ADVANCED_VIEW:I = 0x1

.field protected static final STATE_DEFAULT_VIEW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AbstractAllBtnActionbarActivity"


# instance fields
.field protected mApkCheckedChangeListener:Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemCheckedChangeListener;

.field private mBackedListItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/apksmanager/AbstractListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupNumber:I

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

.field private mSelectAllBtn:Landroid/view/View;

.field protected mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

.field private mState:I

.field private mVisibleGroup:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mState:I

    .line 28
    new-instance v0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemCheckedChangeListener;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemCheckedChangeListener;-><init>(Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mApkCheckedChangeListener:Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$ItemCheckedChangeListener;

    .line 32
    iput-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelectAllBtn:Landroid/view/View;

    .line 33
    iput-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mListView:Landroid/widget/ListView;

    .line 34
    iput-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mBackedListItems:Ljava/util/ArrayList;

    .line 270
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 330
    const-string v0, "<==>tsj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AbstractAllBtnActionbarActivity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->onItemClickHandler(I)V

    return-void
.end method

.method private changeMenuItem(I)V
    .locals 3
    .parameter "visibleGroup"

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, bUpdate:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mGroupNumber:I

    if-ge v1, v2, :cond_0

    .line 161
    if-ne v1, p1, :cond_2

    .line 162
    const/4 v0, 0x1

    .line 167
    :cond_0
    if-eqz v0, :cond_1

    .line 168
    iput p1, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mVisibleGroup:I

    .line 170
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->invalidateOptionsMenu()V

    .line 172
    :cond_1
    return-void

    .line 160
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private onItemClickHandler(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;

    .line 246
    .local v0, item:Lcom/zte/heartyservice/apksmanager/SoftwareListItem;
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->getmListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->setAppSelected(Ljava/lang/Boolean;)V

    .line 247
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->triggerByListItem()V

    .line 248
    return-void
.end method

.method private setGroupEnabled()V
    .locals 5

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->getEnabledMenuItemGroupID()[I

    move-result-object v0

    .line 187
    .local v0, IDList:[I
    if-eqz v0, :cond_0

    .line 188
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 189
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mMenu:Landroid/view/Menu;

    aget v3, v0, v1

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method private updateActionBarAll(Z)V
    .locals 1
    .parameter "bUpdate"

    .prologue
    .line 147
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 149
    iget v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mState:I

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->getMenuItemGroupByState(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->changeMenuItem(I)V

    .line 151
    iget v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mState:I

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->getCustomViewGroupByState(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->changeCustomView(I)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    iget v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mState:I

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->getCustomViewGroupByState(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->UpdateCustomView(I)V

    goto :goto_0
.end method


# virtual methods
.method protected ItemSingleClickOperation(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 279
    return-void
.end method

.method protected UpdateCustomView(I)V
    .locals 0
    .parameter "group"

    .prologue
    .line 78
    return-void
.end method

.method protected changeCustomView(I)V
    .locals 0
    .parameter "group"

    .prologue
    .line 81
    return-void
.end method

.method public getBackedListItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/apksmanager/AbstractListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mBackedListItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getCustomViewGroupByState(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 74
    const/4 v0, -0x1

    return v0
.end method

.method protected getEnabledMenuItemGroupID()[I
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMenuItemGroupByState(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 70
    const/4 v0, -0x1

    return v0
.end method

.method public getSelectAllBtn()Landroid/view/View;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelectAllBtn:Landroid/view/View;

    return-object v0
.end method

.method public getmListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected multiClickHandler(IZ)V
    .locals 3
    .parameter "position"
    .parameter "isChecked"

    .prologue
    .line 281
    const-string v0, "<==>tsj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multiClickHandler position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->getmListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 283
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->onItemClickHandler(I)V

    .line 284
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    .line 196
    const-string v3, "<==>tsj"

    const-string v4, "onCreateOptionsMenu begin"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mMenu:Landroid/view/Menu;

    .line 199
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 201
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v4, 0x0

    aget v4, v3, v4

    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v5, 0x1

    aget v5, v3, v5

    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v6, 0x2

    aget v6, v3, v6

    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v7, 0x3

    aget v3, v3, v7

    invoke-interface {p1, v4, v5, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 203
    .local v2, item:Landroid/view/MenuItem;
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 204
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 205
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 206
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 199
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v2           #item:Landroid/view/MenuItem;
    :cond_0
    iget v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mVisibleGroup:I

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 209
    invoke-direct {p0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->setGroupEnabled()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 52
    const-string v2, "<==>tsj"

    const-string v3, "AbstractAllBtnActionbarActivity::onDestroy"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 55
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mBackedListItems:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 56
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mBackedListItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mBackedListItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/apksmanager/AbstractListItem;

    .line 58
    .local v1, item:Lcom/zte/heartyservice/apksmanager/AbstractListItem;
    invoke-virtual {v1, v4}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-virtual {v1, v4}, Lcom/zte/heartyservice/apksmanager/AbstractListItem;->setAppName(Ljava/lang/String;)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    .end local v0           #i:I
    .end local v1           #item:Lcom/zte/heartyservice/apksmanager/AbstractListItem;
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zte/heartyservice/apksmanager/AppSelected;

    const/4 v1, 0x0

    sget-object v2, Lcom/zte/heartyservice/apksmanager/AppSelected;->SELECTED:Lcom/zte/heartyservice/apksmanager/AppSelected;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/zte/heartyservice/apksmanager/AppSelected;->UNSELECTED:Lcom/zte/heartyservice/apksmanager/AppSelected;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    .line 48
    return-void
.end method

.method protected setAllListCheckStates(Z)V
    .locals 4
    .parameter "state"

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->getmListView()Landroid/widget/ListView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    .line 227
    :cond_0
    const-string v2, "setAllListCheckStates Null pointer"

    invoke-direct {p0, v2}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->Log(Ljava/lang/String;)V

    .line 236
    :cond_1
    return-void

    .line 230
    :cond_2
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->getmListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 231
    .local v0, childCount:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "childCount ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->Log(Ljava/lang/String;)V

    .line 232
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->getmListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 234
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;

    check-cast v2, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/apksmanager/SoftwareListItem;->setAppSelected(Ljava/lang/Boolean;)V

    .line 232
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setBackedList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/apksmanager/AbstractListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 318
    .local p1, backedListItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/apksmanager/AbstractListItem;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mBackedListItems:Ljava/util/ArrayList;

    .line 319
    return-void
.end method

.method public setBackedListItems(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/apksmanager/AbstractListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, backedListItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/zte/heartyservice/apksmanager/AbstractListItem;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 302
    new-instance v0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity$1;-><init>(Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 313
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mBackedListItems:Ljava/util/ArrayList;

    .line 315
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
    .line 219
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mMenuData:Ljava/util/ArrayList;

    .line 220
    iput p2, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mGroupNumber:I

    .line 221
    iput p3, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mVisibleGroup:I

    .line 222
    return-void
.end method

.method protected setMenuItemEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mMenu:Landroid/view/Menu;

    iget v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mVisibleGroup:I

    invoke-interface {v0, v1, p1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 178
    :cond_0
    return-void
.end method

.method public setSelectAllBtn(Landroid/view/View;)V
    .locals 0
    .parameter "selectAllBtn"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelectAllBtn:Landroid/view/View;

    .line 327
    return-void
.end method

.method public setmListView(Landroid/widget/ListView;)V
    .locals 0
    .parameter "mListView"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mListView:Landroid/widget/ListView;

    .line 292
    return-void
.end method

.method protected triggerByAllBtn(Ljava/lang/String;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 85
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelectAllBtn:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelectAllBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelectAllBtn:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 89
    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->setAllListCheckStates(Z)V

    .line 90
    iput v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mState:I

    .line 103
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->updateAllBtnView(Ljava/lang/String;)V

    .line 109
    :goto_1
    invoke-direct {p0, v2}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->updateActionBarAll(Z)V

    .line 110
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelectAllBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelectAllBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 94
    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->setAllListCheckStates(Z)V

    .line 95
    iput v2, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mState:I

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelectAllBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelectAllBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 100
    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->setAllListCheckStates(Z)V

    .line 101
    iput v2, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mState:I

    goto :goto_0

    .line 105
    :cond_2
    const-string v0, "triggerByAllBtn; null == mSelectAllBtn"

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->Log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected triggerByListItem()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 113
    const-string v3, "triggerByListItem bp0"

    invoke-direct {p0, v3}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->Log(Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelectAllBtn:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 116
    iget v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mState:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelectAllBtn:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    iget v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mState:I

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->getmListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 119
    :cond_2
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelectAllBtn:Landroid/view/View;

    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 120
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelectAllBtn:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setSelected(Z)V

    .line 121
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->updateAllBtnView(Ljava/lang/String;)V

    .line 135
    :goto_0
    const/4 v0, 0x0

    .line 136
    .local v0, bUpdate:Z
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->getmListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    if-nez v3, :cond_7

    .line 137
    iget v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mState:I

    if-nez v3, :cond_6

    move v0, v1

    .line 138
    :goto_1
    iput v1, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mState:I

    .line 143
    :goto_2
    invoke-direct {p0, v0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->updateActionBarAll(Z)V

    .line 144
    return-void

    .line 122
    .end local v0           #bUpdate:Z
    :cond_3
    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->getmListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->getBackedListItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelectAllBtn:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 124
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelectAllBtn:Landroid/view/View;

    iget-object v4, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 125
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelectAllBtn:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 126
    iget-object v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->updateAllBtnView(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_4
    const-string v3, "triggerByListItem bp3: else!"

    invoke-direct {p0, v3}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->Log(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_5
    const-string v3, "triggerByListItem Null pointer: mSelectAllBtn"

    invoke-direct {p0, v3}, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->Log(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0       #bUpdate:Z
    :cond_6
    move v0, v2

    .line 137
    goto :goto_1

    .line 140
    :cond_7
    iget v3, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mState:I

    if-ne v2, v3, :cond_8

    move v0, v1

    .line 141
    :goto_3
    iput v2, p0, Lcom/zte/heartyservice/apksmanager/AbstractAllBtnActionbarActivity;->mState:I

    goto :goto_2

    :cond_8
    move v0, v2

    .line 140
    goto :goto_3
.end method

.method protected updateAllBtnView(Ljava/lang/String;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 67
    return-void
.end method
