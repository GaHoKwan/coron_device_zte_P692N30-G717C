.class public Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;
.super Lcom/mediatek/contacts/list/AbstractPickerFragment;
.source "MultiContactsPickerBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment$1;,
        Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment$FilterHeaderClickListener;
    }
.end annotation


# static fields
.field public static final FRAGMENT_ARGS:Ljava/lang/String; = "intent"

.field private static final KEY_FILTER:Ljava/lang/String; = "filter"

.field private static final REQUEST_CODE_ACCOUNT_FILTER:I = 0x1

.field protected static final RESULTINTENTEXTRANAME:Ljava/lang/String; = "com.mediatek.contacts.list.pickcontactsresult"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountFilterHeader:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mShowFilterHeader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mShowFilterHeader:Z

    .line 53
    new-instance v0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment$FilterHeaderClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment$FilterHeaderClickListener;-><init>(Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment$1;)V

    iput-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;)Lcom/android/contacts/list/ContactListFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method private restoreFilter()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 85
    return-void
.end method

.method private saveFilter()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/list/ContactListFilter;)V

    .line 180
    return-void
.end method

.method private setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 3
    .parameter "filter"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    :cond_2
    sget-object v0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New filter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iput-object p1, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 154
    invoke-direct {p0}, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->saveFilter()V

    .line 155
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    goto :goto_0
.end method

.method private updateFilterHeaderView()V
    .locals 5

    .prologue
    const/16 v1, 0x8

    .line 159
    iget-boolean v2, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mShowFilterHeader:Z

    if-nez v2, :cond_1

    .line 160
    iget-object v2, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mAccountFilterHeader:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mAccountFilterHeader:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 170
    iget-object v2, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mAccountFilterHeader:Landroid/view/View;

    iget-object v3, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/contacts/util/AccountFilterUtil;->updateAccountFilterTitleForPeople(Landroid/view/View;Lcom/android/contacts/list/ContactListFilter;Z)Z

    move-result v0

    .line 172
    .local v0, shouldShowHeader:Z
    iget-object v2, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mAccountFilterHeader:Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 174
    .end local v0           #shouldShowHeader:Z
    :cond_3
    iget-object v2, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->configureAdapter()V

    .line 90
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 92
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    iget-object v1, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 93
    return-void
.end method

.method public createCursorLoader()Landroid/content/CursorLoader;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/android/contacts/list/ProfileAndContactsLoader;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ProfileAndContactsLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->createListAdapter()Lcom/android/contacts/list/ContactListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactListAdapter;
    .locals 3

    .prologue
    .line 97
    new-instance v0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 99
    .local v0, adapter:Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;
    const/4 v1, -0x2

    invoke-static {v1}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 101
    return-object v0
.end method

.method public getListItemDataId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;

    .line 232
    .local v0, adapter:Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;
    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {v0, p1}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->getContactID(I)I

    move-result v1

    int-to-long v1, v1

    .line 235
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public handleCursorItem(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;

    .line 241
    .local v0, adapter:Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;
    invoke-virtual {v0, p1}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->cacheDataItem(Landroid/database/Cursor;)V

    .line 242
    return-void
.end method

.method public isAccountFilterEnable()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 184
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 185
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/contacts/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/list/ContactListFilterController;ILandroid/content/Intent;)V

    .line 188
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 189
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactListFilterController;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 190
    invoke-direct {p0}, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->updateFilterHeaderView()V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    sget-object v0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "getActivity() returns null during Fragment#onActivityResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onAttach(Landroid/app/Activity;)V

    .line 77
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 78
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->isAccountFilterEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->restoreFilter()V

    .line 81
    :cond_0
    return-void
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070032

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mAccountFilterHeader:Landroid/view/View;

    .line 66
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->isAccountFilterEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mAccountFilterHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->updateFilterHeaderView()V

    .line 72
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mAccountFilterHeader:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0
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
    .line 221
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-direct {p0}, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->updateFilterHeaderView()V

    .line 222
    invoke-super {p0, p1, p2}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 223
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionAction()V
    .locals 4

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->getCheckedItemIds()[J

    move-result-object v1

    .line 201
    .local v1, idArray:[J
    if-nez v1, :cond_0

    .line 210
    :goto_0
    return-void

    .line 205
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 206
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 207
    .local v2, retIntent:Landroid/content/Intent;
    const-string v3, "com.mediatek.contacts.list.pickcontactsresult"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 208
    const/4 v3, -0x1

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 209
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 139
    const-string v0, "filter"

    iget-object v1, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 140
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/mediatek/contacts/list/AbstractPickerFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 130
    if-nez p1, :cond_0

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    iput-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    goto :goto_0
.end method

.method protected setDataSetChangedNotifyEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;

    .line 214
    .local v0, adapter:Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0, p1}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->setDataSetChangedNotifyEnable(Z)V

    .line 217
    :cond_0
    return-void
.end method

.method protected setListFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->isAccountFilterEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The #setListFilter could not be called if #isAccountFilterEnable is true"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iput-object p1, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 110
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 111
    invoke-direct {p0}, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->updateFilterHeaderView()V

    .line 112
    return-void
.end method

.method public showFilterHeader(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/mediatek/contacts/list/MultiContactsPickerBaseFragment;->mShowFilterHeader:Z

    .line 227
    return-void
.end method
