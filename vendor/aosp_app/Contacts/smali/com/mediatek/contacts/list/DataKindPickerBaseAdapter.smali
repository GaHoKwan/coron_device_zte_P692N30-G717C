.class public abstract Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;
.super Lcom/android/contacts/list/ContactEntryListAdapter;
.source "DataKindPickerBaseAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListView:Landroid/widget/ListView;

.field private mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 0
    .parameter "context"
    .parameter "lv"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->mListView:Landroid/widget/ListView;

    .line 32
    iput-object p1, p0, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method protected static buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "address_book_index_extras"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bindData(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 9
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 180
    const/4 v7, 0x0

    .line 181
    .local v7, label:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->getDataTypeColumnIndex()I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->getDataTypeColumnIndex()I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 183
    .local v2, type:I
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->getDataLabelColumnIndex()I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, customLabel:Ljava/lang/String;
    const-string v0, "indicate_phone_or_sim_contact"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 189
    .local v6, indicateIndex:I
    const/4 v4, -0x1

    .line 190
    .local v4, slotId:I
    const/4 v0, -0x1

    if-eq v6, v0, :cond_0

    .line 191
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 192
    .local v8, simId:I
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v4

    .line 194
    .end local v8           #simId:I
    :cond_0
    sget-object v0, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->TAG:Ljava/lang/String;

    const-string v1, "DataKindPoickerBaseAdapter, the default flow to get label."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v5, "ExtensionForAAS"

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ext/ContactAccountExtension;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 199
    .end local v2           #type:I
    .end local v3           #customLabel:Ljava/lang/String;
    .end local v4           #slotId:I
    .end local v6           #indicateIndex:I
    :cond_1
    invoke-virtual {p1, v7}, Lcom/android/contacts/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->getDataColumnIndex()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/list/ContactListItemView;->showData(Landroid/database/Cursor;I)V

    .line 201
    return-void
.end method

.method public abstract bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
.end method

.method protected bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 166
    const-wide/16 v1, 0x0

    .line 167
    .local v1, photoId:J
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->getPhotoIDColumnIndex()I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->getPhotoIDColumnIndex()I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->getIndicatePhoneSIMColumnIndex()I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 172
    .local v0, indicatePhoneSim:I
    if-lez v0, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->getIsSdnContactColumnIndex()I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getSimType(II)J

    move-result-wide v1

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v2, v5}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 177
    return-void
.end method

.method public abstract bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 3
    .parameter "view"
    .parameter "position"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x1

    .line 154
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    invoke-virtual {p0, p2}, Lcom/android/contacts/widget/IndexerListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    move-result-object v0

    .line 157
    .local v0, placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    iget-object v2, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 158
    iget-boolean v2, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->lastInSection:Z

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 163
    .end local v0           #placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    :goto_1
    return-void

    .line 158
    .restart local v0       #placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 160
    .end local v0           #placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_1
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 11
    .parameter "itemView"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 91
    move-object v8, p1

    check-cast v8, Lcom/android/contacts/list/ContactListItemView;

    .line 102
    .local v8, view:Lcom/android/contacts/list/ContactListItemView;
    invoke-interface {p3, p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 103
    const/4 v2, 0x1

    .line 104
    .local v2, isFirstEntry:Z
    const/4 v7, 0x1

    .line 105
    .local v7, showBottomDivider:Z
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->getContactIDColumnIndex()I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 106
    .local v0, currentContactId:J
    invoke-interface {p3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v9

    if-nez v9, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->getContactIDColumnIndex()I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 108
    .local v5, previousContactId:J
    cmp-long v9, v0, v5

    if-nez v9, :cond_0

    .line 109
    const/4 v2, 0x0

    .line 112
    .end local v5           #previousContactId:J
    :cond_0
    invoke-interface {p3, p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 113
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->getContactIDColumnIndex()I

    move-result v9

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 115
    .local v3, nextContactId:J
    cmp-long v9, v0, v3

    if-nez v9, :cond_1

    .line 122
    const/4 v7, 0x0

    .line 125
    .end local v3           #nextContactId:J
    :cond_1
    invoke-interface {p3, p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 127
    invoke-virtual {p0, v8, p4, p3}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 129
    if-eqz v2, :cond_4

    .line 130
    invoke-virtual {p0, v8, p3}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isQuickContactEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 132
    invoke-virtual {p0, v8, p2, p3}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 142
    :goto_0
    invoke-virtual {p0, v8, p3}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->bindData(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v9

    if-nez v9, :cond_2

    .line 145
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    .line 148
    :cond_2
    invoke-virtual {v8, v7}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 150
    invoke-virtual {v8}, Lcom/android/contacts/list/ContactListItemView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10, p4}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 151
    return-void

    .line 134
    :cond_3
    invoke-virtual {p0, v8, p3}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    goto :goto_0

    .line 137
    :cond_4
    invoke-virtual {p0, v8}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->unbindName(Lcom/android/contacts/list/ContactListItemView;)V

    .line 139
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView(ZZ)V

    goto :goto_0
.end method

.method protected abstract configLoaderUri(J)Landroid/net/Uri;
.end method

.method protected abstract configProjection()[Ljava/lang/String;
.end method

.method public final configureLoader(Landroid/content/CursorLoader;J)V
    .locals 3
    .parameter "loader"
    .parameter "directoryId"

    .prologue
    .line 42
    invoke-virtual {p0, p2, p3}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->configLoaderUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 43
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->configProjection()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getSortOrder()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 49
    const-string v0, "sort_key"

    .line 54
    .local v0, sortOrder:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 55
    return-void

    .line 51
    .end local v0           #sortOrder:Ljava/lang/String;
    :cond_0
    const-string v0, "sort_key_alt"

    .restart local v0       #sortOrder:Ljava/lang/String;
    goto :goto_0
.end method

.method protected abstract configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
.end method

.method public displayPhotoOnLeft()V
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    iput-object v0, p0, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    .line 87
    return-void
.end method

.method public abstract getContactIDColumnIndex()I
.end method

.method public abstract getDataColumnIndex()I
.end method

.method public abstract getDataId(I)J
.end method

.method public abstract getDataLabelColumnIndex()I
.end method

.method public abstract getDataTypeColumnIndex()I
.end method

.method public abstract getDataUri(I)Landroid/net/Uri;
.end method

.method public abstract getIndicatePhoneSIMColumnIndex()I
.end method

.method public abstract getIsSdnContactColumnIndex()I
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->getDataId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public abstract getPhoneticNameColumnIndex()I
.end method

.method public abstract getPhotoIDColumnIndex()I
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    .line 72
    new-instance v0, Lcom/android/contacts/list/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    .local v0, view:Lcom/android/contacts/list/ContactListItemView;
    const v1, 0x104000e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isQuickContactEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 77
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactListItemView;->setCheckable(Z)V

    .line 78
    iget-object v1, p0, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V

    .line 81
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactListItemView;->setActivatedStateSupported(Z)V

    .line 82
    return-object v0
.end method

.method protected unbindName(Lcom/android/contacts/list/ContactListItemView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 204
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->hideDisplayName()V

    .line 205
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->hidePhoneticName()V

    .line 206
    return-void
.end method
