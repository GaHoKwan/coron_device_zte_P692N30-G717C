.class public abstract Lcom/mediatek/contacts/list/AbstractPickerFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "AbstractPickerFragment.java"

# interfaces
.implements Lcom/mediatek/contacts/list/ContactListMultiChoiceListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/mediatek/contacts/list/ContactListMultiChoiceListener;"
    }
.end annotation


# static fields
.field public static final DEFAULT_MULTI_CHOICE_MAX_COUNT:I = 0xdac

.field private static final KEY_CHECKEDIDS:Ljava/lang/String; = "checkedids"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountFilterHeader:Landroid/view/View;

.field private mCheckedIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/widget/TextView;

.field private mIsSelectedAll:Z

.field private mIsSelectedNone:Z

.field private mPushedIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchString:Ljava/lang/String;

.field private mSlectedItemsFormater:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/mediatek/contacts/list/AbstractPickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mIsSelectedAll:Z

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mIsSelectedNone:Z

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    .line 522
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mPushedIds:Ljava/util/Set;

    return-void
.end method

.method private static convertSetToPrimitive(Ljava/util/Set;)[J
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 497
    .local p0, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-nez p0, :cond_1

    .line 498
    const/4 v5, 0x0

    .line 512
    :cond_0
    return-object v5

    .line 501
    :cond_1
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    .line 502
    .local v0, arraySize:I
    new-array v5, v0, [J

    .line 504
    .local v5, result:[J
    const/4 v3, 0x0

    .line 505
    .local v3, index:I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 506
    .local v2, id:Ljava/lang/Long;
    if-ge v3, v0, :cond_0

    .line 509
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v5, v3

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_0
.end method

.method private setOkButtonStatus(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f070178

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 104
    .local v0, optionView:Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 105
    if-eqz p1, :cond_1

    .line 106
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 107
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 110
    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private showSelectedCount(I)V
    .locals 5
    .parameter "checkedItemsCount"

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f07009f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    .local v0, selectedItemsView:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 88
    sget-object v1, Lcom/mediatek/contacts/list/AbstractPickerFragment;->TAG:Ljava/lang/String;

    const-string v2, "Load view resource error!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mSlectedItemsFormater:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 92
    sget-object v1, Lcom/mediatek/contacts/list/AbstractPickerFragment;->TAG:Ljava/lang/String;

    const-string v2, "Load string resource error!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mSlectedItemsFormater:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateCheckBoxState(Z)V
    .locals 11
    .parameter "checked"

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 365
    .local v0, count:I
    const-wide/16 v1, -0x1

    .line 366
    .local v1, dataId:J
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->getMultiChoiceLimitCount()I

    move-result v4

    .line 367
    .local v4, multiChoiceLimitCount:I
    const/4 v5, 0x0

    .local v5, position:I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 368
    if-eqz p1, :cond_3

    .line 369
    iget-object v6, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-lt v6, v4, :cond_1

    .line 370
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0090

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, msg:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/mediatek/contacts/util/MtkToast;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 372
    sget-object v6, Lcom/mediatek/contacts/list/AbstractPickerFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[updateCheckBoxState] mCheckedIds size:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " >= limit:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setSelection(I)V

    .line 387
    .end local v3           #msg:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->updateSelectedItemsView(I)V

    .line 388
    return-void

    .line 377
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 378
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v5, p1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 379
    invoke-virtual {p0, v5}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->getListItemDataId(I)J

    move-result-wide v1

    .line 380
    iget-object v6, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 383
    :cond_3
    iget-object v6, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 384
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v5, p1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    goto :goto_1
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 133
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 134
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 135
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    if-nez v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    .line 140
    invoke-virtual {v0, v4}, Lcom/android/contacts/widget/IndexerListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 141
    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDisplayPhotos(Z)V

    .line 142
    invoke-virtual {v0, v6}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQuickContactEnabled(Z)V

    .line 143
    invoke-super {p0, v4}, Lcom/android/contacts/list/ContactEntryListFragment;->setPhotoLoaderEnabled(Z)V

    .line 144
    iget-object v4, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mSearchString:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0, v6}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIncludeProfile(Z)V

    .line 148
    iget-object v4, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 149
    iget-object v4, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    const v5, 0x7f070033

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 153
    .local v1, headerTextView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 154
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v3

    .line 155
    .local v3, textColor:I
    if-eqz v3, :cond_2

    .line 156
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    :cond_2
    if-eqz v1, :cond_0

    .line 161
    const v4, 0x7f0c029d

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 162
    iget-object v4, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public getCheckedItemIds()[J
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    invoke-static {v0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->convertSetToPrimitive(Ljava/util/Set;)[J

    move-result-object v0

    return-object v0
.end method

.method public abstract getListItemDataId(I)J
.end method

.method protected getMultiChoiceLimitCount()I
    .locals 1

    .prologue
    .line 529
    const/16 v0, 0xdac

    return v0
.end method

.method public handleCursorItem(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 516
    return-void
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 117
    const v0, 0x7f040097

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isSelectedAll()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mIsSelectedAll:Z

    return v0
.end method

.method public isSelectedNone()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mIsSelectedNone:Z

    return v0
.end method

.method public markItemsAsSelectedForCheckedGroups([J)V
    .locals 13
    .parameter "ids"

    .prologue
    .line 457
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 458
    .local v7, tempCheckedIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v8, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 459
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->getMultiChoiceLimitCount()I

    move-result v6

    .line 460
    .local v6, multiChoiceLimitCount:I
    move-object v0, p1

    .local v0, arr$:[J
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, v0, v1

    .line 461
    .local v2, id:J
    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v8

    if-lt v8, v6, :cond_1

    .line 462
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0090

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 463
    .local v5, msg:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/mediatek/contacts/util/MtkToast;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 464
    sget-object v8, Lcom/mediatek/contacts/list/AbstractPickerFragment;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[markItemsAsSelectedForCheckedGroups] mCheckedIds size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " >= limit:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    .end local v2           #id:J
    .end local v5           #msg:Ljava/lang/String;
    :cond_0
    return-void

    .line 468
    .restart local v2       #id:J
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v8, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mPushedIds:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c003e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mSlectedItemsFormater:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->showSelectedCount(I)V

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->setOkButtonStatus(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 78
    return-void
.end method

.method public onClearSelect()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->updateCheckBoxState(Z)V

    .line 205
    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    .line 125
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0700fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mEmptyView:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0c0158

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 129
    :cond_0
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 0
    .parameter "position"
    .parameter "id"

    .prologue
    .line 169
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    .line 174
    sget-object v2, Lcom/mediatek/contacts/list/AbstractPickerFragment;->TAG:Ljava/lang/String;

    const-string v3, "onItemClick with adapterView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 177
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->getMultiChoiceLimitCount()I

    move-result v1

    .line 178
    .local v1, multiChoiceLimitCount:I
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lt v2, v1, :cond_0

    .line 180
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0090

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, msg:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/mediatek/contacts/util/MtkToast;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 183
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 184
    sget-object v2, Lcom/mediatek/contacts/list/AbstractPickerFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onItemClick] mCheckedIds size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >= limit:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .end local v0           #msg:Ljava/lang/String;
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v3

    invoke-virtual {v2, p3, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 199
    iget-object v2, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->updateSelectedItemsView(I)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object v2, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 15
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    sget-object v12, Lcom/mediatek/contacts/list/AbstractPickerFragment;->TAG:Ljava/lang/String;

    const-string v13, "onLoadFinished"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v12

    if-nez v12, :cond_1

    .line 239
    sget-object v12, Lcom/mediatek/contacts/list/AbstractPickerFragment;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onLoadFinished(),This Fragment is not add to the Activity now.data:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    if-eqz p2, :cond_0

    .line 241
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string v13, "checked_ids"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    .line 248
    .local v6, ids:[I
    if-eqz v6, :cond_4

    .line 249
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v11, sb:Ljava/lang/StringBuilder;
    const-string v12, "[onLoadFinished] ids: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    move-object v1, v6

    .local v1, arr$:[I
    array-length v8, v1

    .local v8, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v8, :cond_2

    aget v5, v1, v4

    .line 252
    .local v5, id:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 254
    .end local v5           #id:I
    :cond_2
    sget-object v12, Lcom/mediatek/contacts/list/AbstractPickerFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v12, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 257
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 258
    .local v5, id:Ljava/lang/Long;
    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v12

    invoke-static {v6, v12}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v12

    if-gez v12, :cond_3

    .line 259
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 263
    .end local v1           #arr$:[I
    .end local v4           #i$:I
    .end local v5           #id:Ljava/lang/Long;
    .end local v7           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v8           #len$:I
    .end local v11           #sb:Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 264
    sget-object v12, Lcom/mediatek/contacts/list/AbstractPickerFragment;->TAG:Ljava/lang/String;

    const-string v13, "[onLoadFinished]SearchMode"

    invoke-static {v12, v13}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 266
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 269
    :cond_5
    if-eqz p2, :cond_6

    if-eqz p2, :cond_c

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-nez v12, :cond_c

    .line 270
    :cond_6
    sget-object v12, Lcom/mediatek/contacts/list/AbstractPickerFragment;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[onLoadFinished]nothing loaded, empty view: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v12, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mEmptyView:Landroid/widget/TextView;

    if-eqz v12, :cond_7

    .line 272
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 273
    iget-object v12, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mEmptyView:Landroid/widget/TextView;

    const v13, 0x7f0c016e

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 277
    :goto_3
    iget-object v12, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mEmptyView:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 280
    :cond_7
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 281
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 299
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/AbsListView;->clearChoices()V

    .line 301
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 303
    .local v9, newDataSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const-wide/16 v2, -0x1

    .line 304
    .local v2, dataId:J
    const/4 v10, 0x0

    .line 306
    .local v10, position:I
    if-eqz p2, :cond_f

    .line 307
    sget-object v12, Lcom/mediatek/contacts/list/AbstractPickerFragment;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[onLoadFinished]query data count: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const/4 v12, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 309
    :goto_5
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 310
    const-wide/16 v2, -0x1

    .line 311
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    int-to-long v2, v12

    .line 312
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v12, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    iget-object v12, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mPushedIds:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 315
    :cond_9
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v10, v13}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 318
    :cond_a
    add-int/lit8 v10, v10, 0x1

    .line 320
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->handleCursorItem(Landroid/database/Cursor;)V

    goto :goto_5

    .line 275
    .end local v2           #dataId:J
    .end local v9           #newDataSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v10           #position:I
    :cond_b
    iget-object v12, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mEmptyView:Landroid/widget/TextView;

    const v13, 0x7f0c0158

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 283
    :cond_c
    iget-object v12, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mEmptyView:Landroid/widget/TextView;

    if-eqz v12, :cond_d

    .line 284
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 285
    iget-object v12, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mEmptyView:Landroid/widget/TextView;

    const v13, 0x7f0c016e

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    .line 289
    :goto_6
    iget-object v12, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mEmptyView:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 292
    :cond_d
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v12

    if-nez v12, :cond_8

    .line 293
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 294
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    goto/16 :goto_4

    .line 287
    :cond_e
    iget-object v12, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mEmptyView:Landroid/widget/TextView;

    const v13, 0x7f0c0158

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    .line 323
    .restart local v2       #dataId:J
    .restart local v9       #newDataSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v10       #position:I
    :cond_f
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v12

    if-nez v12, :cond_11

    .line 324
    iget-object v12, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_10
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 325
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 326
    .restart local v5       #id:Ljava/lang/Long;
    invoke-interface {v9, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    .line 327
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 333
    .end local v5           #id:Ljava/lang/Long;
    .end local v7           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_11
    iget-object v12, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mPushedIds:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_12

    .line 334
    iget-object v12, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    iget-object v13, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mPushedIds:Ljava/util/Set;

    invoke-interface {v12, v13}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 335
    iget-object v12, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mPushedIds:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->clear()V

    .line 337
    :cond_12
    iget-object v12, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v12

    invoke-virtual {p0, v12}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->updateSelectedItemsView(I)V

    .line 344
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->clearListViewLastState()V

    .line 347
    invoke-super/range {p0 .. p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 9
    .parameter "outState"

    .prologue
    .line 352
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 353
    iget-object v6, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v1

    .line 354
    .local v1, checkedItemsCount:I
    new-array v0, v1, [J

    .line 355
    .local v0, checkedIds:[J
    const/4 v4, 0x0

    .line 356
    .local v4, index:I
    iget-object v6, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 357
    .local v3, id:Ljava/lang/Long;
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v0, v4

    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_0

    .line 359
    .end local v3           #id:Ljava/lang/Long;
    :cond_0
    sget-object v6, Lcom/mediatek/contacts/list/AbstractPickerFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[onSaveInstanceState]save "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ids"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v6, "checkedids"

    invoke-virtual {p1, v6, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 361
    return-void
.end method

.method public onSelectAll()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->updateCheckBoxState(Z)V

    .line 210
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedState"

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 216
    if-nez p1, :cond_1

    .line 217
    sget-object v3, Lcom/mediatek/contacts/list/AbstractPickerFragment;->TAG:Ljava/lang/String;

    const-string v4, "[restoreSavedState]saved state is null"

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    return-void

    .line 221
    :cond_1
    iget-object v3, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    if-nez v3, :cond_2

    .line 222
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    .line 224
    :cond_2
    iget-object v3, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 226
    const-string v3, "checkedids"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 227
    .local v1, ids:[J
    array-length v0, v1

    .line 228
    .local v0, checkedItemSize:I
    sget-object v3, Lcom/mediatek/contacts/list/AbstractPickerFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[restoreSavedState]restore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ids"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 230
    iget-object v3, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    aget-wide v4, v1, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public startSearch(Ljava/lang/String;)V
    .locals 2
    .parameter "searchString"

    .prologue
    .line 432
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 433
    const/4 p1, 0x0

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 437
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    if-nez p1, :cond_2

    .line 438
    if-eqz v0, :cond_1

    .line 439
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mSearchString:Ljava/lang/String;

    .line 440
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 441
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 442
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 452
    :cond_1
    :goto_0
    return-void

    .line 444
    :cond_2
    iget-object v1, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mSearchString:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 445
    iput-object p1, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mSearchString:Ljava/lang/String;

    .line 446
    if-eqz v0, :cond_1

    .line 447
    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 448
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 449
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    goto :goto_0
.end method

.method public updateSelectedItemsView()V
    .locals 4

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 411
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    .line 412
    .local v2, count:I
    iget-object v3, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mCheckedIds:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v1

    .line 413
    .local v1, checkCount:I
    invoke-virtual {p0, v1}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->updateSelectedItemsView(I)V

    .line 415
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemCount()I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->getMultiChoiceLimitCount()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 416
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mIsSelectedAll:Z

    .line 421
    :goto_0
    return-void

    .line 418
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mIsSelectedAll:Z

    goto :goto_0
.end method

.method public updateSelectedItemsView(I)V
    .locals 5
    .parameter "checkedItemsCount"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 392
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f070178

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 394
    .local v0, optionView:Landroid/widget/Button;
    if-nez p1, :cond_0

    .line 395
    iput-boolean v1, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mIsSelectedNone:Z

    .line 399
    :goto_0
    iget-boolean v3, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mIsSelectedNone:Z

    if-nez v3, :cond_1

    :goto_1
    invoke-direct {p0, v1}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->setOkButtonStatus(Z)V

    .line 401
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 402
    sget-object v1, Lcom/mediatek/contacts/list/AbstractPickerFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#updateSelectedItemsView(),isSearchMonde,don\'t showSelectedCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :goto_2
    return-void

    .line 397
    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/contacts/list/AbstractPickerFragment;->mIsSelectedNone:Z

    goto :goto_0

    :cond_1
    move v1, v2

    .line 399
    goto :goto_1

    .line 406
    :cond_2
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->showSelectedCount(I)V

    goto :goto_2
.end method
