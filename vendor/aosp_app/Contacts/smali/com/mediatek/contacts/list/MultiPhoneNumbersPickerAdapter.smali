.class public Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;
.super Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;
.source "MultiPhoneNumbersPickerAdapter.java"


# static fields
.field protected static final PHONES_PROJECTION:[Ljava/lang/String; = null

.field protected static final PHONE_ALTERNATIVE_DISPLAY_NAME_COLUMN_INDEX:I = 0x5

.field protected static final PHONE_CONTACT_ID_COLUMN_INDEX:I = 0x6

.field protected static final PHONE_ID_COLUMN_INDEX:I = 0x0

.field protected static final PHONE_INDICATE_PHONE_SIM_INDEX:I = 0xa

.field protected static final PHONE_IS_SDN_CONTACT:I = 0xb

.field protected static final PHONE_LABEL_COLUMN_INDEX:I = 0x2

.field protected static final PHONE_LOOKUP_KEY_COLUMN_INDEX:I = 0x7

.field protected static final PHONE_NUMBER_COLUMN_INDEX:I = 0x3

.field protected static final PHONE_PHONETIC_NAME_COLUMN_INDEX:I = 0x9

.field protected static final PHONE_PHOTO_ID_COLUMN_INDEX:I = 0x8

.field protected static final PHONE_PRIMARY_DISPLAY_NAME_COLUMN_INDEX:I = 0x4

.field protected static final PHONE_TYPE_COLUMN_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlternativeDisplayNameColumnIndex:I

.field private mContext:Landroid/content/Context;

.field private mDisplayNameColumnIndex:I

.field private mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const-class v0, Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;->TAG:Ljava/lang/String;

    .line 31
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "indicate_phone_or_sim_contact"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "is_sdn_contact"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 1
    .parameter "context"
    .parameter "lv"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 67
    iput-object p1, p0, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;->mContext:Landroid/content/Context;

    .line 68
    const v0, 0x104000e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 69
    invoke-super {p0}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->displayPhotoOnLeft()V

    .line 70
    return-void
.end method


# virtual methods
.method public bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 183
    iget v0, p0, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;->mDisplayNameColumnIndex:I

    iget v1, p0, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;->mAlternativeDisplayNameColumnIndex:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    .line 184
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;->getPhoneticNameColumnIndex()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/list/ContactListItemView;->showPhoneticName(Landroid/database/Cursor;I)V

    .line 185
    return-void
.end method

.method public bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    .line 189
    return-void
.end method

.method protected configLoaderUri(J)Landroid/net/Uri;
    .locals 8
    .parameter "directoryId"

    .prologue
    const-wide/16 v6, 0x0

    .line 80
    cmp-long v3, p1, v6

    if-eqz v3, :cond_0

    .line 81
    sget-object v3, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PhoneNumberListAdapter is not ready for non-default directory ID (directoryId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 86
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, query:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 88
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 89
    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 94
    :goto_0
    const-string v3, "directory"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 96
    const-string v3, "checked_ids_arg"

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 97
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 107
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v1           #query:Ljava/lang/String;
    .local v2, uri:Landroid/net/Uri;
    :cond_1
    :goto_1
    return-object v2

    .line 91
    .end local v2           #uri:Landroid/net/Uri;
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    .restart local v1       #query:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 99
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v1           #query:Ljava/lang/String;
    :cond_3
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "directory"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "checked_ids_arg"

    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 102
    .restart local v2       #uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 103
    invoke-static {v2}, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1
.end method

.method protected configProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;->PHONES_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method protected configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 5
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    .line 117
    if-eqz p4, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v0, selection:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v1, selectionArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v2, :pswitch_data_0

    .line 155
    :pswitch_0
    sget-object v2, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported filter type came (type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", toString: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showing all contacts."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_1
    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 161
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :pswitch_2
    const-string v2, "in_visible_group=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v2, " AND has_phone_number=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 131
    :pswitch_3
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v2, "account_type=? AND account_name=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v2, p4, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v2, p4, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v2, p4, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 137
    const-string v2, " AND data_set=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v2, p4, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :goto_2
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 140
    :cond_2
    const-string v2, " AND data_set IS NULL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 124
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public getContactDisplayName(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iget v1, p0, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;->mDisplayNameColumnIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactIDColumnIndex()I
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x6

    return v0
.end method

.method public getDataColumnIndex()I
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x3

    return v0
.end method

.method public getDataId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 250
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 251
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 254
    :goto_0
    return-wide v1

    .line 253
    :cond_0
    sget-object v1, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Cursor was null in getDataId() call. Returning 0 instead."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getDataLabelColumnIndex()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x2

    return v0
.end method

.method public getDataTypeColumnIndex()I
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public getDataUri(I)Landroid/net/Uri;
    .locals 5
    .parameter "position"

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 239
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 240
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 241
    .local v1, id:J
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 244
    .end local v1           #id:J
    :goto_0
    return-object v3

    .line 243
    :cond_0
    sget-object v3, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;->TAG:Ljava/lang/String;

    const-string v4, "Cursor was null in getDataUri() call. Returning null instead."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getIndicatePhoneSIMColumnIndex()I
    .locals 1

    .prologue
    .line 224
    const/16 v0, 0xa

    return v0
.end method

.method public getIsSdnContactColumnIndex()I
    .locals 1

    .prologue
    .line 229
    const/16 v0, 0xb

    return v0
.end method

.method public getPhoneticNameColumnIndex()I
    .locals 1

    .prologue
    .line 219
    const/16 v0, 0x9

    return v0
.end method

.method public getPhotoIDColumnIndex()I
    .locals 1

    .prologue
    .line 194
    const/16 v0, 0x8

    return v0
.end method

.method protected getUnknownNameText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setContactNameDisplayOrder(I)V
    .locals 4
    .parameter "displayOrder"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 171
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 172
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 173
    iput v2, p0, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;->mDisplayNameColumnIndex:I

    .line 174
    iput v3, p0, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;->mAlternativeDisplayNameColumnIndex:I

    .line 179
    :goto_0
    return-void

    .line 176
    :cond_0
    iput v3, p0, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;->mDisplayNameColumnIndex:I

    .line 177
    iput v2, p0, Lcom/mediatek/contacts/list/MultiPhoneNumbersPickerAdapter;->mAlternativeDisplayNameColumnIndex:I

    goto :goto_0
.end method
