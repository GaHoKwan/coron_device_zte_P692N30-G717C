.class public Lcom/mediatek/contacts/list/MultiEmailsPickerAdapter;
.super Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;
.source "MultiEmailsPickerAdapter.java"


# static fields
.field static final EMAILS_PROJECTION:[Ljava/lang/String; = null

.field protected static final EMAIL_ADDRESS_COLUMN_INDEX:I = 0x3

.field protected static final EMAIL_ALTERNATIVE_DISPLAY_NAME_COLUMN_INDEX:I = 0x5

.field protected static final EMAIL_CONTACT_ID_COLUMN_INDEX:I = 0x6

.field protected static final EMAIL_ID_COLUMN_INDEX:I = 0x0

.field protected static final EMAIL_INDICATE_PHONE_SIM_INDEX:I = 0x9

.field protected static final EMAIL_IS_SDN_CONTACT:I = 0xa

.field protected static final EMAIL_LABEL_COLUMN_INDEX:I = 0x2

.field protected static final EMAIL_PHONETIC_NAME_COLUMN_INDEX:I = 0x8

.field protected static final EMAIL_PHOTO_ID_COLUMN_INDEX:I = 0x7

.field protected static final EMAIL_PRIMARY_DISPLAY_NAME_COLUMN_INDEX:I = 0x4

.field protected static final EMAIL_TYPE_COLUMN_INDEX:I = 0x1

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
    .line 22
    const-class v0, Lcom/mediatek/contacts/list/MultiEmailsPickerAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/list/MultiEmailsPickerAdapter;->TAG:Ljava/lang/String;

    .line 24
    const/16 v0, 0xb

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

    const-string v2, "indicate_phone_or_sim_contact"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_sdn_contact"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/contacts/list/MultiEmailsPickerAdapter;->EMAILS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 1
    .parameter "context"
    .parameter "lv"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 58
    iput-object p1, p0, Lcom/mediatek/contacts/list/MultiEmailsPickerAdapter;->mContext:Landroid/content/Context;

    .line 59
    const v0, 0x104000e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/list/MultiEmailsPickerAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 60
    invoke-super {p0}, Lcom/mediatek/contacts/list/DataKindPickerBaseAdapter;->displayPhotoOnLeft()V

    .line 61
    return-void
.end method


# virtual methods
.method public bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V
    .locals 2
    .parameter "view"
    .parameter "cursor"

    .prologue
    .line 120
    iget v0, p0, Lcom/mediatek/contacts/list/MultiEmailsPickerAdapter;->mDisplayNameColumnIndex:I

    iget v1, p0, Lcom/mediatek/contacts/list/MultiEmailsPickerAdapter;->mAlternativeDisplayNameColumnIndex:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->showDisplayName(Landroid/database/Cursor;II)V

    .line 121
    invoke-virtual {p0}, Lcom/mediatek/contacts/list/MultiEmailsPickerAdapter;->getPhoneticNameColumnIndex()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/android/contacts/list/ContactListItemView;->showPhoneticName(Landroid/database/Cursor;I)V

    .line 122
    return-void
.end method

.method public bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    .line 126
    return-void
.end method

.method public configLoaderUri(J)Landroid/net/Uri;
    .locals 5
    .parameter "directoryId"

    .prologue
    .line 71
    const/4 v2, 0x0

    .line 72
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 74
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, query:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, ""

    .end local v1           #query:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 79
    :goto_0
    const-string v3, "directory"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 81
    const-string v3, "checked_ids_arg"

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 82
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 83
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    invoke-static {v2}, Lcom/mediatek/contacts/list/MultiEmailsPickerAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 87
    :cond_1
    return-object v2

    .line 77
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_2
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .restart local v0       #builder:Landroid/net/Uri$Builder;
    goto :goto_0
.end method

.method public configProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/mediatek/contacts/list/MultiEmailsPickerAdapter;->EMAILS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method protected configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    .line 98
    return-void
.end method

.method public getContactDisplayName(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iget v1, p0, Lcom/mediatek/contacts/list/MultiEmailsPickerAdapter;->mDisplayNameColumnIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactIDColumnIndex()I
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x6

    return v0
.end method

.method public getDataColumnIndex()I
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x3

    return v0
.end method

.method public getDataId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 160
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
    .line 141
    const/4 v0, 0x2

    return v0
.end method

.method public getDataTypeColumnIndex()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public getDataUri(I)Landroid/net/Uri;
    .locals 4
    .parameter "position"

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 155
    .local v0, id:J
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public getIndicatePhoneSIMColumnIndex()I
    .locals 1

    .prologue
    .line 175
    const/16 v0, 0x9

    return v0
.end method

.method public getIsSdnContactColumnIndex()I
    .locals 1

    .prologue
    .line 180
    const/16 v0, 0xa

    return v0
.end method

.method public getPhoneticNameColumnIndex()I
    .locals 1

    .prologue
    .line 170
    const/16 v0, 0x8

    return v0
.end method

.method public getPhotoIDColumnIndex()I
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x7

    return v0
.end method

.method protected getUnknownNameText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiEmailsPickerAdapter;->mUnknownNameText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setContactNameDisplayOrder(I)V
    .locals 4
    .parameter "displayOrder"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    .line 108
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactNameDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 110
    iput v2, p0, Lcom/mediatek/contacts/list/MultiEmailsPickerAdapter;->mDisplayNameColumnIndex:I

    .line 111
    iput v3, p0, Lcom/mediatek/contacts/list/MultiEmailsPickerAdapter;->mAlternativeDisplayNameColumnIndex:I

    .line 116
    :goto_0
    return-void

    .line 113
    :cond_0
    iput v3, p0, Lcom/mediatek/contacts/list/MultiEmailsPickerAdapter;->mDisplayNameColumnIndex:I

    .line 114
    iput v2, p0, Lcom/mediatek/contacts/list/MultiEmailsPickerAdapter;->mAlternativeDisplayNameColumnIndex:I

    goto :goto_0
.end method
