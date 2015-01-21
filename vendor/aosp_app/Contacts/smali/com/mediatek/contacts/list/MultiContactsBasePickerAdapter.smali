.class public Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;
.super Lcom/android/contacts/list/DefaultContactListAdapter;
.source "MultiContactsBasePickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;
    }
.end annotation


# static fields
.field public static final FILTER_ACCOUNT_WITH_PHONE_NUMBER_ONLY:I = 0x64

.field public static final FILTER_ACCOUNT_WITH_PHONE_NUMBER_OR_EMAIL:I = 0x65


# instance fields
.field private mFilterAccountOptions:I

.field private mListView:Landroid/widget/ListView;

.field private mLoader:Landroid/content/CursorLoader;

.field private mPickListItemCache:Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 1
    .parameter "context"
    .parameter "lv"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 92
    new-instance v0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;-><init>(Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;)V

    iput-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->mPickListItemCache:Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;

    .line 96
    iput-object p2, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->mListView:Landroid/widget/ListView;

    .line 97
    return-void
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 9
    .parameter "itemView"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    const/4 v8, 0x0

    .line 115
    move-object v1, p1

    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    .line 117
    .local v1, view:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getUpperCaseQueryString()[C

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix([C)V

    .line 119
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSelectionVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/list/ContactListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setActivated(Z)V

    .line 123
    :cond_0
    invoke-virtual {p0, v1, p4, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isQuickContactEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x6

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/list/ContactEntryListAdapter;->bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;IIII)V

    .line 135
    :cond_1
    :goto_1
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 136
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindPresenceAndStatusMessage(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindSearchSnippet(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 144
    :goto_2
    const-string v0, "MultiContactsBasePickerAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind view position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " check state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p4}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListItemView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, p4}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 147
    return-void

    :cond_2
    move-object v0, v8

    .line 117
    goto :goto_0

    .line 130
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDisplayPhotos()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/contacts/list/ContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_1

    .line 141
    :cond_4
    invoke-virtual {v1, v8}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public cacheDataItem(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->mPickListItemCache:Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;

    invoke-virtual {v0, p1}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;->add(Landroid/database/Cursor;)V

    .line 221
    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 5
    .parameter "loader"
    .parameter "directoryId"

    .prologue
    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    .line 153
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 154
    .local v1, filter:Lcom/android/contacts/list/ContactListFilter;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .local v2, query:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 157
    const-string v2, ""

    .line 159
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 161
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 164
    .end local v2           #query:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Landroid/content/CursorLoader;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 165
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v3, "checked_ids_arg"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 166
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 168
    iput-object p1, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->mLoader:Landroid/content/CursorLoader;

    .line 169
    return-void
.end method

.method protected configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 3
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    .line 173
    if-nez p4, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/DefaultContactListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v0, selection:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/content/CursorLoader;->getSelection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget v1, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->mFilterAccountOptions:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_4

    .line 185
    const-string v1, " AND has_phone_number=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mShowCTInternationNumber:Z

    if-nez v1, :cond_3

    .line 191
    const-string v1, " AND is_sdn_contact=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_4
    iget v1, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->mFilterAccountOptions:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    .line 187
    const-string v1, " AND has_phone_number=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getContactID(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 203
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 204
    const/4 v1, 0x0

    .line 206
    :goto_0
    return v1

    :cond_0
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    goto :goto_0
.end method

.method public getListItemCache()Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->mPickListItemCache:Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;

    return-object v0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 102
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 105
    .local v0, view:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setCheckable(Z)V

    .line 108
    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setActivatedStateSupported(Z)V

    .line 110
    return-object v0
.end method

.method public setDataSetChangedNotifyEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->mLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_0

    .line 211
    if-eqz p1, :cond_1

    .line 212
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/Loader;->startLoading()V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/Loader;->stopLoading()V

    goto :goto_0
.end method

.method public setFilterAccountOption(I)V
    .locals 0
    .parameter "filterAccountOptions"

    .prologue
    .line 198
    iput p1, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;->mFilterAccountOptions:I

    .line 199
    return-void
.end method
