.class public abstract Lcom/mediatek/contacts/list/DataKindPickerBaseFragment;
.super Lcom/mediatek/contacts/list/AbstractPickerFragment;
.source "DataKindPickerBaseFragment.java"


# static fields
.field private static final RESULTINTENTEXTRANAME:Ljava/lang/String; = "com.mediatek.contacts.list.pickdataresult"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountFilterHeader:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/mediatek/contacts/list/DataKindPickerBaseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/list/DataKindPickerBaseFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 37
    invoke-super {p0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->configureAdapter()V

    .line 38
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 39
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    goto :goto_0
.end method

.method public getListItemDataId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;

    .line 83
    .local v0, adapter:Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p1}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->getDataId(I)J

    move-result-wide v1

    .line 86
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/list/DataKindPickerBaseFragment;->mAccountFilterHeader:Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/mediatek/contacts/list/DataKindPickerBaseFragment;->mAccountFilterHeader:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 32
    iget-object v0, p0, Lcom/mediatek/contacts/list/DataKindPickerBaseFragment;->mAccountFilterHeader:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
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
    .line 74
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v1, p0, Lcom/mediatek/contacts/list/DataKindPickerBaseFragment;->mAccountFilterHeader:Landroid/view/View;

    const/4 v2, -0x2

    invoke-static {v2}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/contacts/util/AccountFilterUtil;->updateAccountFilterTitleForPeople(Landroid/view/View;Lcom/android/contacts/list/ContactListFilter;Z)Z

    move-result v0

    .line 77
    .local v0, shouldShowHeader:Z
    invoke-super {p0, p1, p2}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 78
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/contacts/list/DataKindPickerBaseFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionAction()V
    .locals 11

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->getCheckedItemIds()[J

    move-result-object v3

    .line 51
    .local v3, idArray:[J
    if-nez v3, :cond_0

    .line 70
    :goto_0
    return-void

    .line 55
    :cond_0
    move-object v1, v3

    .local v1, arr$:[J
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-wide v4, v1, v2

    .line 56
    .local v4, item:J
    sget-object v8, Lcom/mediatek/contacts/list/DataKindPickerBaseFragment;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "result array: item "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 59
    .end local v4           #item:J
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 60
    .local v0, activity:Landroid/app/Activity;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v7, retIntent:Landroid/content/Intent;
    if-nez v7, :cond_2

    .line 62
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 63
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 67
    :cond_2
    const-string v8, "com.mediatek.contacts.list.pickdataresult"

    invoke-virtual {v7, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 68
    const/4 v8, -0x1

    invoke-virtual {v0, v8, v7}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 69
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
