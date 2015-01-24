.class public Lcom/android/contacts/list/EmailAddressListAdapter;
.super Lcom/android/contacts/list/ContactEntryListAdapter;
.source "EmailAddressListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/EmailAddressListAdapter$EmailQuery;
    }
.end annotation


# instance fields
.field private final mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;-><init>(Landroid/content/Context;)V

    .line 82
    const v0, 0x104000e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/EmailAddressListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 83
    return-void
.end method


# virtual methods
.method protected bindEmailAddress(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x1

    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, label:Ljava/lang/CharSequence;
    invoke-interface {p2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 151
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 152
    .local v2, type:I
    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, customLabel:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 157
    .end local v0           #customLabel:Ljava/lang/String;
    .end local v2           #type:I
    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 158
    const/4 v3, 0x3

    invoke-virtual {p1, p2, v3}, Lcom/android/contacts/list/ContactListItemView;->showData(Landroid/database/Cursor;I)V

    .line 159
    return-void
.end method

.method protected bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 180
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactNameDisplayOrder()I

    move-result v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    .line 181
    return-void
.end method

.method protected bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x4

    .line 184
    const-wide/16 v1, 0x0

    .line 185
    .local v1, photoId:J
    invoke-interface {p2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 186
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 196
    :cond_0
    const/4 v3, 0x6

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 197
    .local v0, indicatePhoneSim:I
    if-lez v0, :cond_1

    .line 198
    const/4 v3, 0x7

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getSimType(II)J

    move-result-wide v1

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getPhotoView()Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v1, v2, v5}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 205
    return-void
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V
    .locals 4
    .parameter "view"
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 162
    invoke-virtual {p0, p2}, Lcom/android/contacts/widget/IndexerListAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 163
    .local v0, section:I
    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/IndexerListAdapter;->getPositionForSection(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v0

    check-cast v1, Ljava/lang/String;

    .line 165
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 172
    .end local v1           #title:Ljava/lang/String;
    :goto_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/android/contacts/widget/IndexerListAdapter;->getPositionForSection(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v2, p2, :cond_1

    .line 173
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 177
    :goto_1
    return-void

    .line 167
    :cond_0
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 168
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_1
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 1
    .parameter "itemView"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 141
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 142
    .local v0, view:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0, v0, p4}, Lcom/android/contacts/list/EmailAddressListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V

    .line 143
    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/EmailAddressListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 144
    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/EmailAddressListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 145
    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/list/EmailAddressListAdapter;->bindEmailAddress(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 146
    return-void
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 5
    .parameter "loader"
    .parameter "directoryId"

    .prologue
    const/4 v4, 0x1

    .line 88
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 90
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, query:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, ""

    .end local v1           #query:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 98
    :cond_1
    :goto_0
    const-string v2, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 100
    const-string v2, "remove_duplicate_entries"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 101
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactNameDisplayOrder()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 104
    invoke-static {}, Lcom/android/contacts/list/EmailAddressListAdapter$EmailQuery;->access$000()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 109
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getSortOrder()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 110
    const-string v2, "sort_key"

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 114
    :goto_2
    return-void

    .line 93
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_2
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 94
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    const-string v2, "address_book_index_extras"

    const-string v3, "true"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 106
    :cond_3
    invoke-static {}, Lcom/android/contacts/list/EmailAddressListAdapter$EmailQuery;->access$100()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_1

    .line 112
    :cond_4
    const-string v2, "sort_key_alt"

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getContactDisplayName(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataUri(I)Landroid/net/Uri;
    .locals 4
    .parameter "position"

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 127
    .local v0, id:J
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 133
    new-instance v0, Lcom/android/contacts/list/ContactListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    .local v0, view:Lcom/android/contacts/list/ContactListItemView;
    iget-object v1, p0, Lcom/android/contacts/list/EmailAddressListAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setUnknownNameText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isQuickContactEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 136
    return-object v0
.end method