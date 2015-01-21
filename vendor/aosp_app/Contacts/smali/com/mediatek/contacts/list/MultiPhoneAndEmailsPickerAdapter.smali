.class public Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;
.super Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;
.source "MultiPhoneAndEmailsPickerAdapter.java"


# static fields
.field protected static final PHONE_EMAIL_ALTERNATIVE_DISPLAY_NAME_INDEX:I = 0x5

.field protected static final PHONE_EMAIL_CONTACT_ID_INDEX:I = 0x6

.field protected static final PHONE_EMAIL_ID_INDEX:I = 0x0

.field protected static final PHONE_EMAIL_INDICATE_PHONE_SIM_INDEX:I = 0xa

.field protected static final PHONE_EMAIL_IS_SDN_CONTACT:I = 0xb

.field protected static final PHONE_EMAIL_LABEL_INDEX:I = 0x2

.field protected static final PHONE_EMAIL_MIMETYPE_INDEX:I = 0x9

.field protected static final PHONE_EMAIL_NUMBER_INDEX:I = 0x3

.field protected static final PHONE_EMAIL_PHONETIC_NAME_INDEX:I = 0x8

.field protected static final PHONE_EMAIL_PHOTO_ID_INDEX:I = 0x7

.field protected static final PHONE_EMAIL_PRIMARY_DISPLAY_NAME_INDEX:I = 0x4

.field static final PHONE_EMAIL_PROJECTION:[Ljava/lang/String; = null

.field protected static final PHONE_EMAIL_TYPE_INDEX:I = 0x1

.field public static final PICK_PHONE_EMAIL_FILTER_URI:Landroid/net/Uri; = null

.field public static final PICK_PHONE_EMAIL_URI:Landroid/net/Uri; = null

.field public static final SNIPPET_ARGS:Ljava/lang/String; = "\u0001,\u0001,\u2026,5"

.field public static final SNIPPET_ELLIPSIS:Ljava/lang/String; = "\u2026"

.field public static final SNIPPET_END_MATCH:C = '\u0001'

.field public static final SNIPPET_MAX_TOKENS:I = 0x5

.field public static final SNIPPET_START_MATCH:C = '\u0001'

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
    .line 26
    const-class v0, Lcom/mediatek/contacts/list/MultiEmailsPickerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->TAG:Ljava/lang/String;

    .line 36
    const-string v0, "content://com.android.contacts/data/phone_email"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->PICK_PHONE_EMAIL_URI:Landroid/net/Uri;

    .line 39
    sget-object v0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->PICK_PHONE_EMAIL_URI:Landroid/net/Uri;

    const-string v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->PICK_PHONE_EMAIL_FILTER_URI:Landroid/net/Uri;

    .line 42
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

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "indicate_phone_or_sim_contact"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "is_sdn_contact"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->PHONE_EMAIL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 1
    .parameter "context"
    .parameter "lv"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 78
    iput-object p1, p0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->mContext:Landroid/content/Context;

    .line 79
    const v0, 0x104000e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 80
    invoke-super {p0}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->displayPhotoOnLeft()V

    .line 81
    return-void
.end method


# virtual methods
.method protected bindData(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 6
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 166
    const/4 v5, 0x0

    .line 167
    .local v5, label:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->getDataTypeColumnIndex()I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->getDataTypeColumnIndex()I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 169
    .local v1, type:I
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->getDataLabelColumnIndex()I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, customLabel:Ljava/lang/String;
    const/16 v0, 0x9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, mimeType:Ljava/lang/String;
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 180
    :goto_0
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->getLabelForBindData(Landroid/content/res/Resources;ILjava/lang/String;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 183
    .end local v1           #type:I
    .end local v2           #customLabel:Ljava/lang/String;
    .end local v3           #mimeType:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v5}, Lcom/android/contacts/list/ContactListItemView;->setLabel(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->getDataColumnIndex()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/list/ContactListItemView;->showData(Landroid/database/Cursor;I)V

    .line 185
    return-void

    .line 177
    .restart local v1       #type:I
    .restart local v2       #customLabel:Ljava/lang/String;
    .restart local v3       #mimeType:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_0
.end method

.method public bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 160
    iget v0, p0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->mDisplayNameColumnIndex:I

    iget v1, p0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->mAlternativeDisplayNameColumnIndex:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    .line 161
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->getPhoneticNameColumnIndex()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/list/ContactListItemView;->showPhoneticName(Landroid/database/Cursor;I)V

    .line 162
    return-void
.end method

.method public bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    .line 190
    return-void
.end method

.method protected configLoaderUri(J)Landroid/net/Uri;
    .locals 5
    .parameter "directoryId"

    .prologue
    .line 90
    const/4 v2, 0x0

    .line 92
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 93
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, query:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 95
    const-string v1, ""

    .line 97
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 101
    sget-object v3, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->PICK_PHONE_EMAIL_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 121
    .end local v1           #query:Ljava/lang/String;
    .local v0, builder:Landroid/net/Uri$Builder;
    :goto_0
    const-string v3, "checked_ids_arg"

    sget-object v4, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->PICK_PHONE_EMAIL_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 123
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 124
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    invoke-static {v2}, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 127
    :cond_1
    return-object v2

    .line 103
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .restart local v1       #query:Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->PICK_PHONE_EMAIL_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 104
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 105
    const-string v3, "directory"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 107
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-eqz v3, :cond_3

    const-wide/16 v3, 0x1

    cmp-long v3, p1, v3

    if-eqz v3, :cond_3

    .line 108
    const-string v3, "limit"

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDirectoryResultLimit()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 111
    :cond_3
    const-string v3, "snippet_args"

    const-string v4, "\u0001,\u0001,\u2026,5"

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 113
    const-string v3, "deferred_snippeting"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 116
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v1           #query:Ljava/lang/String;
    :cond_4
    sget-object v3, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->PICK_PHONE_EMAIL_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 118
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    const-string v3, "directory"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method

.method protected configProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->PHONE_EMAIL_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method protected configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    .line 138
    return-void
.end method

.method public getContactDisplayName(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iget v1, p0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->mDisplayNameColumnIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactIDColumnIndex()I
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x6

    return v0
.end method

.method public getDataColumnIndex()I
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x3

    return v0
.end method

.method public getDataId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataLabelColumnIndex()I
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x2

    return v0
.end method

.method public getDataTypeColumnIndex()I
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    return v0
.end method

.method public getDataUri(I)Landroid/net/Uri;
    .locals 4
    .parameter "position"

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 216
    .local v0, id:J
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public getIndicatePhoneSIMColumnIndex()I
    .locals 1

    .prologue
    .line 236
    const/16 v0, 0xa

    return v0
.end method

.method public getIsSdnContactColumnIndex()I
    .locals 1

    .prologue
    .line 241
    const/16 v0, 0xb

    return v0
.end method

.method public getPhoneticNameColumnIndex()I
    .locals 1

    .prologue
    .line 226
    const/16 v0, 0x8

    return v0
.end method

.method public getPhotoIDColumnIndex()I
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x7

    return v0
.end method

.method protected getUnknownNameText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setContactNameDisplayOrder(I)V
    .locals 4
    .parameter "displayOrder"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 148
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 149
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 150
    iput v2, p0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->mDisplayNameColumnIndex:I

    .line 151
    iput v3, p0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->mAlternativeDisplayNameColumnIndex:I

    .line 156
    :goto_0
    return-void

    .line 153
    :cond_0
    iput v3, p0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->mDisplayNameColumnIndex:I

    .line 154
    iput v2, p0, Lcom/mediatek/contacts/list/MultiPhoneAndEmailsPickerAdapter;->mAlternativeDisplayNameColumnIndex:I

    goto :goto_0
.end method
