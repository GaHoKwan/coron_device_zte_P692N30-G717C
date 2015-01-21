.class public Lcom/android/contacts/model/dataitem/DataItem;
.super Ljava/lang/Object;
.source "DataItem.java"


# instance fields
.field private final mContentValues:Landroid/content/ContentValues;

.field private mDataKind:Lcom/android/contacts/model/dataitem/DataKind;

.field private final mRawContact:Lcom/android/contacts/model/RawContact;


# direct methods
.method protected constructor <init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V
    .locals 0
    .parameter "rawContact"
    .parameter "values"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/android/contacts/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    .line 60
    iput-object p1, p0, Lcom/android/contacts/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/model/RawContact;

    .line 61
    return-void
.end method

.method public static createFrom(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)Lcom/android/contacts/model/dataitem/DataItem;
    .locals 2
    .parameter "rawContact"
    .parameter "values"

    .prologue
    .line 68
    const-string v1, "mimetype"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, mimeType:Ljava/lang/String;
    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    new-instance v1, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;-><init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V

    .line 102
    :goto_0
    return-object v1

    .line 71
    :cond_0
    const-string v1, "vnd.android.cursor.item/name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    new-instance v1, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;-><init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 73
    :cond_1
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    new-instance v1, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/model/dataitem/PhoneDataItem;-><init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 75
    :cond_2
    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    new-instance v1, Lcom/android/contacts/model/dataitem/EmailDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/model/dataitem/EmailDataItem;-><init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 77
    :cond_3
    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    new-instance v1, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;-><init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 79
    :cond_4
    const-string v1, "vnd.android.cursor.item/im"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 80
    new-instance v1, Lcom/android/contacts/model/dataitem/ImDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/model/dataitem/ImDataItem;-><init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 81
    :cond_5
    const-string v1, "vnd.android.cursor.item/organization"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 82
    new-instance v1, Lcom/android/contacts/model/dataitem/OrganizationDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/model/dataitem/OrganizationDataItem;-><init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 83
    :cond_6
    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 84
    new-instance v1, Lcom/android/contacts/model/dataitem/NicknameDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/model/dataitem/NicknameDataItem;-><init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 85
    :cond_7
    const-string v1, "vnd.android.cursor.item/note"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 86
    new-instance v1, Lcom/android/contacts/model/dataitem/NoteDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/model/dataitem/NoteDataItem;-><init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 87
    :cond_8
    const-string v1, "vnd.android.cursor.item/website"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 88
    new-instance v1, Lcom/android/contacts/model/dataitem/WebsiteDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/model/dataitem/WebsiteDataItem;-><init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 89
    :cond_9
    const-string v1, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 90
    new-instance v1, Lcom/android/contacts/model/dataitem/SipAddressDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/model/dataitem/SipAddressDataItem;-><init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 91
    :cond_a
    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 92
    new-instance v1, Lcom/android/contacts/model/dataitem/EventDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/model/dataitem/EventDataItem;-><init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 93
    :cond_b
    const-string v1, "vnd.android.cursor.item/relation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 94
    new-instance v1, Lcom/android/contacts/model/dataitem/RelationDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/model/dataitem/RelationDataItem;-><init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 95
    :cond_c
    const-string v1, "vnd.android.cursor.item/identity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 96
    new-instance v1, Lcom/android/contacts/model/dataitem/IdentityDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/model/dataitem/IdentityDataItem;-><init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 97
    :cond_d
    const-string v1, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 98
    new-instance v1, Lcom/android/contacts/model/dataitem/PhotoDataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/model/dataitem/PhotoDataItem;-><init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 102
    :cond_e
    new-instance v1, Lcom/android/contacts/model/dataitem/DataItem;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/model/dataitem/DataItem;-><init>(Lcom/android/contacts/model/RawContact;Landroid/content/ContentValues;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public buildDataString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 210
    iget-object v3, p0, Lcom/android/contacts/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/model/RawContact;

    if-nez v3, :cond_0

    .line 211
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "mRawContact must be non-null to call getDataKind()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v1

    .line 215
    .local v1, kind:Lcom/android/contacts/model/dataitem/DataKind;
    iget-object v3, v1, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    if-nez v3, :cond_2

    .line 220
    :cond_1
    :goto_0
    return-object v2

    .line 218
    :cond_2
    iget-object v3, v1, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    iget-object v4, p0, Lcom/android/contacts/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/model/RawContact;

    invoke-virtual {v4}, Lcom/android/contacts/model/RawContact;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-interface {v3, v4, v5}, Lcom/android/contacts/model/account/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 220
    .local v0, actionBody:Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public buildDataStringForDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/DataItem;->buildDataString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()Lcom/android/contacts/model/account/AccountType;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/model/RawContact;

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/model/RawContact;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContact;->getAccountType()Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    goto :goto_0
.end method

.method public getAccountTypeManager()Lcom/android/contacts/model/AccountTypeManager;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/model/RawContact;

    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/model/RawContact;

    invoke-virtual {v0}, Lcom/android/contacts/model/RawContact;->getAccountTypeManager()Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public getDataKind()Lcom/android/contacts/model/dataitem/DataKind;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/model/RawContact;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mRawContact must be non-null to call getDataKind()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mDataKind:Lcom/android/contacts/model/dataitem/DataKind;

    if-nez v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/DataItem;->getAccountTypeManager()Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/model/RawContact;

    invoke-virtual {v1}, Lcom/android/contacts/model/RawContact;->getAccountTypeString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/contacts/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/model/RawContact;

    invoke-virtual {v3}, Lcom/android/contacts/model/RawContact;->getDataSet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mDataKind:Lcom/android/contacts/model/dataitem/DataKind;

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mDataKind:Lcom/android/contacts/model/dataitem/DataKind;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v1

    const-string v3, "ExtenstionForRCS"

    invoke-virtual {v1, v3}, Lcom/android/contacts/ext/ContactDetailExtension;->getExtentionMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    new-instance v0, Lcom/android/contacts/model/dataitem/DataKind;

    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    const v5, 0x7f0400cd

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    iput-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mDataKind:Lcom/android/contacts/model/dataitem/DataKind;

    .line 187
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mDataKind:Lcom/android/contacts/model/dataitem/DataKind;

    new-instance v1, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v3, "data1"

    invoke-direct {v1, v3}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 188
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mDataKind:Lcom/android/contacts/model/dataitem/DataKind;

    iput v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->titleRes:I

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mDataKind:Lcom/android/contacts/model/dataitem/DataKind;

    return-object v0
.end method

.method public getDataVersion()I
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "data_version"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getKindString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v0

    .line 236
    .local v0, kind:Lcom/android/contacts/model/dataitem/DataKind;
    iget v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->titleRes:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/android/contacts/model/dataitem/DataKind;->titleRes:I

    if-nez v1, :cond_1

    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/model/RawContact;

    invoke-virtual {v1}, Lcom/android/contacts/model/RawContact;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, v0, Lcom/android/contacts/model/dataitem/DataKind;->titleRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getKindTypeColumn()I
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v1

    iget-object v0, v1, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 201
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getRawContact()Lcom/android/contacts/model/RawContact;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mRawContact:Lcom/android/contacts/model/RawContact;

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasKindTypeColumn()Z
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/contacts/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v1

    iget-object v0, v1, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    .line 196
    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPrimary()Z
    .locals 3

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/contacts/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v2, "is_primary"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 140
    .local v0, primary:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSuperPrimary()Z
    .locals 3

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/contacts/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v2, "is_super_primary"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 145
    .local v0, superPrimary:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public setRawContactId(J)V
    .locals 3
    .parameter "rawContactId"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/contacts/model/dataitem/DataItem;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 115
    return-void
.end method
