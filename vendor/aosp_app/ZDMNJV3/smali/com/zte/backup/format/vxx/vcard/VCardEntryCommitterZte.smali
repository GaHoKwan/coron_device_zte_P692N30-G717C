.class public Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;
.super Ljava/lang/Object;
.source "VCardEntryCommitterZte.java"

# interfaces
.implements Lcom/pim/vcard/VCardEntryHandler;


# static fields
.field private static final ACCOUNT_TYPE_GOOGLE:Ljava/lang/String; = "com.google"

.field private static final CREATE_CONTACT:I = 0x1

.field private static final GOOGLE_MY_CONTACTS_GROUP:Ljava/lang/String; = "System Group: My Contacts"

.field private static final INSERT_FIELD:I = 0x2

.field public static final LOG_TAG:Ljava/lang/String; = "VCardEntryComitter"

.field private static final SIM_ACCOUNT_TYPE:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UPDATE_FIELD:I = 0x3


# instance fields
.field bHasHandlerPreForUpdateContact:Z

.field private mAccount:Landroid/accounts/Account;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCreatedUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupUtil:Lcom/zte/backup/format/vxx/vcard/GroupsUtil;

.field private mTimeToCommit:J

.field private mVCardType:I

.field operationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->SIM_ACCOUNT_TYPE:Ljava/util/HashSet;

    .line 97
    sget-object v0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->SIM_ACCOUNT_TYPE:Ljava/util/HashSet;

    const-string v1, "ztespecial_sim.com"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->SIM_ACCOUNT_TYPE:Ljava/util/HashSet;

    const-string v1, "ztespecial_usim.com"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->SIM_ACCOUNT_TYPE:Ljava/util/HashSet;

    const-string v1, "SIM Account"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->SIM_ACCOUNT_TYPE:Ljava/util/HashSet;

    const-string v1, "USIM Account"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->SIM_ACCOUNT_TYPE:Ljava/util/HashSet;

    const-string v1, "UIM Account"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/accounts/Account;I)V
    .locals 2
    .parameter "resolver"
    .parameter "account"
    .parameter "iVcardType"

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mCreatedUris:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->operationList:Ljava/util/ArrayList;

    .line 86
    iput v1, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mVCardType:I

    .line 87
    iput-boolean v1, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->bHasHandlerPreForUpdateContact:Z

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mGroupUtil:Lcom/zte/backup/format/vxx/vcard/GroupsUtil;

    .line 106
    iput-object p1, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mContentResolver:Landroid/content/ContentResolver;

    .line 107
    iput-object p2, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mAccount:Landroid/accounts/Account;

    .line 108
    iput p3, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mVCardType:I

    .line 109
    new-instance v0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v1}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mGroupUtil:Lcom/zte/backup/format/vxx/vcard/GroupsUtil;

    .line 110
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mGroupUtil:Lcom/zte/backup/format/vxx/vcard/GroupsUtil;

    invoke-virtual {v0}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->initAllContactsGroup()V

    .line 111
    return-void
.end method

.method private UpdateContact(Lcom/pim/vcard/VCardEntry;ILandroid/database/Cursor;)V
    .locals 0
    .parameter "contactStruct"
    .parameter "contactId"
    .parameter "cursor"

    .prologue
    .line 332
    invoke-direct {p0, p1, p2}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->updatePhoneToContact(Lcom/pim/vcard/VCardEntry;I)V

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->updateOrganizationToContact(Lcom/pim/vcard/VCardEntry;I)V

    .line 334
    invoke-direct {p0, p1, p2}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->updateEmailToContact(Lcom/pim/vcard/VCardEntry;I)V

    .line 335
    invoke-direct {p0, p1, p2}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->updatePostalToContact(Lcom/pim/vcard/VCardEntry;I)V

    .line 336
    invoke-direct {p0, p1, p2}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->updateImToContact(Lcom/pim/vcard/VCardEntry;I)V

    .line 337
    invoke-direct {p0, p1, p2}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->updateNoteToContact(Lcom/pim/vcard/VCardEntry;I)V

    .line 338
    invoke-direct {p0, p1, p2}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->updatePhotoToContact(Lcom/pim/vcard/VCardEntry;I)V

    .line 339
    invoke-direct {p0, p1, p2}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->updateGroupToContact(Lcom/pim/vcard/VCardEntry;I)V

    .line 340
    invoke-direct {p0, p1, p2}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->updateWebsiteToContact(Lcom/pim/vcard/VCardEntry;I)V

    .line 341
    invoke-direct {p0, p1, p2}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->updateBirthdayToContact(Lcom/pim/vcard/VCardEntry;I)V

    .line 342
    invoke-direct {p0, p1, p2}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->updateAndroidCustomPropertyToContact(Lcom/pim/vcard/VCardEntry;I)V

    .line 343
    return-void
.end method

.method private addAndroidCustomPropertyListToOperationList(ILjava/util/List;II)V
    .locals 13
    .parameter "rawId"
    .parameter
    .parameter "handlerType"
    .parameter "olinedex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;II)V"
        }
    .end annotation

    .prologue
    .line 821
    .local p2, mAndroidCustomPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .line 822
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    if-eqz p2, :cond_1

    .line 823
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 859
    :cond_1
    return-void

    .line 823
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 824
    .local v2, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 825
    .local v6, size:I
    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 827
    const/16 v7, 0x10

    if-le v6, v7, :cond_3

    .line 828
    const/16 v6, 0x10

    .line 829
    const/4 v7, 0x0

    const/16 v9, 0x11

    invoke-interface {v2, v7, v9}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 832
    :cond_3
    const/4 v4, 0x0

    .line 833
    .local v4, i:I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 856
    iget-object v7, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 833
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 834
    .local v3, customPropertyValue:Ljava/lang/String;
    if-nez v4, :cond_8

    .line 835
    move-object v5, v3

    .line 836
    .local v5, mimeType:Ljava/lang/String;
    const/4 v9, 0x2

    move/from16 v0, p3

    if-ne v0, v9, :cond_6

    .line 837
    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 838
    const-string v9, "raw_contact_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 847
    :goto_2
    const-string v9, "mimetype"

    invoke-virtual {v1, v9, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 854
    .end local v5           #mimeType:Ljava/lang/String;
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 839
    .restart local v5       #mimeType:Ljava/lang/String;
    :cond_6
    const/4 v9, 0x3

    move/from16 v0, p3

    if-ne v0, v9, :cond_7

    .line 840
    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 841
    const-string v9, "raw_contact_id=? AND mimetype = ?"

    .line 842
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v5, v10, v11

    .line 841
    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2

    .line 844
    :cond_7
    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 845
    const-string v9, "raw_contact_id"

    move/from16 v0, p4

    invoke-virtual {v1, v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2

    .line 849
    .end local v5           #mimeType:Ljava/lang/String;
    :cond_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 850
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "data"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_3
.end method

.method private addBirthdayToOperationList(ILjava/lang/String;II)V
    .locals 6
    .parameter "rawId"
    .parameter "mBirthday"
    .parameter "handlerType"
    .parameter "olinedex"

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x2

    .line 863
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 864
    if-ne p3, v2, :cond_1

    .line 865
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 866
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 876
    :goto_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 877
    const-string v1, "data1"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 878
    const-string v1, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 879
    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_0
    return-void

    .line 867
    :cond_1
    if-ne p3, v5, :cond_2

    .line 868
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 869
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id=? AND mimetype = ?"

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 870
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "vnd.android.cursor.item/contact_event"

    aput-object v4, v2, v3

    .line 869
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 872
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_2
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 873
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method

.method private addContact(Lcom/pim/vcard/VCardEntry;I)V
    .locals 0
    .parameter "contactStruct"
    .parameter "rawContactId"

    .prologue
    .line 228
    invoke-direct {p0, p1, p2}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->createNewContact(Lcom/pim/vcard/VCardEntry;I)V

    .line 230
    invoke-virtual {p0}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->insertBath()V

    .line 232
    return-void
.end method

.method private addEmailListToOperationList(ILjava/util/List;II)V
    .locals 6
    .parameter "rawId"
    .parameter
    .parameter "handlerType"
    .parameter "olinedex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/pim/vcard/VCardEntry$EmailData;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p2, mEmailList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardEntry$EmailData;>;"
    const/4 v5, 0x1

    .line 1069
    if-eqz p2, :cond_0

    .line 1070
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1091
    :cond_0
    return-void

    .line 1070
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pim/vcard/VCardEntry$EmailData;

    .line 1071
    .local v1, emailData:Lcom/pim/vcard/VCardEntry$EmailData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1072
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const/4 v3, 0x2

    if-ne p3, v3, :cond_5

    .line 1073
    const-string v3, "raw_contact_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1078
    :cond_2
    :goto_1
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1080
    const-string v3, "data2"

    iget v4, v1, Lcom/pim/vcard/VCardEntry$EmailData;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1081
    iget v3, v1, Lcom/pim/vcard/VCardEntry$EmailData;->type:I

    if-nez v3, :cond_3

    .line 1082
    const-string v3, "data3"

    iget-object v4, v1, Lcom/pim/vcard/VCardEntry$EmailData;->label:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1084
    :cond_3
    const-string v3, "data1"

    iget-object v4, v1, Lcom/pim/vcard/VCardEntry$EmailData;->data:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1085
    iget-boolean v3, v1, Lcom/pim/vcard/VCardEntry$EmailData;->isPrimary:Z

    if-eqz v3, :cond_4

    .line 1086
    const-string v3, "is_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1088
    :cond_4
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1074
    :cond_5
    if-ne p3, v5, :cond_2

    .line 1075
    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1
.end method

.method private addGroupListToOperationList(ILjava/util/List;IILjava/util/List;)V
    .locals 6
    .parameter "rawId"
    .parameter
    .parameter "handlerType"
    .parameter "olinedex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 966
    .local p2, mGroupList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p5, inGroupList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 1000
    :cond_0
    return-void

    .line 971
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 972
    .local v2, groupName:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_2

    .line 976
    const/4 v4, 0x2

    if-ne p3, v4, :cond_3

    .line 977
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 978
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v4, "raw_contact_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 991
    :goto_1
    iget-object v4, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mGroupUtil:Lcom/zte/backup/format/vxx/vcard/GroupsUtil;

    invoke-virtual {v4, v2}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->autoCreateGroupAndReturnID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 992
    .local v1, groupID:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 996
    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 997
    const-string v4, "data1"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 998
    iget-object v4, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 979
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v1           #groupID:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x3

    if-ne p3, v4, :cond_4

    .line 980
    invoke-direct {p0, v2, p5}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->isStrInList(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 984
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 985
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v4, "raw_contact_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 987
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_4
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 988
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v4, "raw_contact_id"

    invoke-virtual {v0, v4, p4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1
.end method

.method private addImListToOperationList(ILjava/util/List;II)V
    .locals 6
    .parameter "rawId"
    .parameter
    .parameter "handlerType"
    .parameter "olinedex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/pim/vcard/VCardEntry$ImData;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p2, mImList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardEntry$ImData;>;"
    const/4 v5, 0x1

    .line 1027
    if-eqz p2, :cond_0

    .line 1028
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1050
    :cond_0
    return-void

    .line 1028
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pim/vcard/VCardEntry$ImData;

    .line 1029
    .local v1, imData:Lcom/pim/vcard/VCardEntry$ImData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1030
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const/4 v3, 0x2

    if-ne p3, v3, :cond_5

    .line 1031
    const-string v3, "raw_contact_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1036
    :cond_2
    :goto_1
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1037
    const-string v3, "data2"

    iget v4, v1, Lcom/pim/vcard/VCardEntry$ImData;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1038
    const-string v3, "data1"

    iget-object v4, v1, Lcom/pim/vcard/VCardEntry$ImData;->data:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1039
    const-string v3, "data5"

    iget v4, v1, Lcom/pim/vcard/VCardEntry$ImData;->protocol:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1041
    iget v3, v1, Lcom/pim/vcard/VCardEntry$ImData;->protocol:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 1042
    const-string v3, "data6"

    iget-object v4, v1, Lcom/pim/vcard/VCardEntry$ImData;->customProtocol:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1044
    :cond_3
    iget-boolean v3, v1, Lcom/pim/vcard/VCardEntry$ImData;->isPrimary:Z

    if-eqz v3, :cond_4

    .line 1045
    const-string v3, "is_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1047
    :cond_4
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1032
    :cond_5
    if-ne p3, v5, :cond_2

    .line 1033
    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1
.end method

.method private addNameFieldsToOperationList(Lcom/pim/vcard/VCardEntry;I)V
    .locals 7
    .parameter "contactStruct"
    .parameter "olinedex"

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->nameFieldsAreEmpty(Lcom/pim/vcard/VCardEntry;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 295
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 296
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v5, "raw_contact_id"

    invoke-virtual {v0, v5, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 297
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 299
    const-string v5, "data2"

    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getGivenName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 300
    const-string v5, "data3"

    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getFamilyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 301
    const-string v5, "data5"

    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getMiddleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 302
    const-string v5, "data4"

    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 303
    const-string v5, "data6"

    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getSuffix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 305
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getPhoneticGivenName()Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, mPhoneticGivenName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getPhoneticFamilyName()Ljava/lang/String;

    move-result-object v1

    .line 307
    .local v1, mPhoneticFamilyName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getPhoneticMiddleName()Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, mPhoneticMiddleName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getPhoneticFullName()Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, mPhoneticFullName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 311
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 312
    :cond_0
    const-string v5, "data7"

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 313
    const-string v5, "data9"

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 314
    const-string v5, "data8"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 319
    :cond_1
    :goto_0
    const-string v5, "data1"

    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 321
    iget-object v5, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v1           #mPhoneticFamilyName:Ljava/lang/String;
    .end local v2           #mPhoneticFullName:Ljava/lang/String;
    .end local v3           #mPhoneticGivenName:Ljava/lang/String;
    .end local v4           #mPhoneticMiddleName:Ljava/lang/String;
    :cond_2
    return-void

    .line 315
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v1       #mPhoneticFamilyName:Ljava/lang/String;
    .restart local v2       #mPhoneticFullName:Ljava/lang/String;
    .restart local v3       #mPhoneticGivenName:Ljava/lang/String;
    .restart local v4       #mPhoneticMiddleName:Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 316
    const-string v5, "data7"

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0
.end method

.method private addNickNameToOperationList(ILjava/util/List;)V
    .locals 5
    .parameter "olinedex"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p2, mNickNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 281
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 290
    :cond_0
    return-void

    .line 281
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 282
    .local v1, nickName:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 283
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 284
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/nickname"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 285
    const-string v3, "data2"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 286
    const-string v3, "data1"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 287
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addNotesToOperationList(ILjava/util/List;II)V
    .locals 8
    .parameter "rawId"
    .parameter
    .parameter "handlerType"
    .parameter "olinedex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p2, mNoteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x2

    .line 1004
    if-eqz p2, :cond_0

    .line 1005
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1023
    :cond_0
    return-void

    .line 1005
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1006
    .local v1, note:Ljava/lang/String;
    if-ne p3, v7, :cond_2

    .line 1007
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1008
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "raw_contact_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1018
    :goto_1
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1019
    const-string v3, "data1"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1020
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1009
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_2
    const/4 v3, 0x3

    if-ne p3, v3, :cond_3

    .line 1010
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1011
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "raw_contact_id=? AND mimetype = ?"

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 1012
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "vnd.android.cursor.item/note"

    aput-object v6, v4, v5

    .line 1011
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 1014
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_3
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1015
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1
.end method

.method private addOrganizationListToOperationList(ILjava/util/List;II)V
    .locals 6
    .parameter "rawID"
    .parameter
    .parameter "handlerType"
    .parameter "olinedex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/pim/vcard/VCardEntry$OrganizationData;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p2, mOrganizationList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardEntry$OrganizationData;>;"
    const/4 v5, 0x1

    .line 1096
    if-eqz p2, :cond_0

    .line 1097
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1122
    :cond_0
    return-void

    .line 1097
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pim/vcard/VCardEntry$OrganizationData;

    .line 1098
    .local v1, organizationData:Lcom/pim/vcard/VCardEntry$OrganizationData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1099
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const/4 v3, 0x2

    if-ne p3, v3, :cond_7

    .line 1100
    const-string v3, "raw_contact_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1105
    :cond_2
    :goto_1
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1106
    const-string v3, "data2"

    iget v4, v1, Lcom/pim/vcard/VCardEntry$OrganizationData;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1107
    iget-object v3, v1, Lcom/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1108
    const-string v3, "data1"

    iget-object v4, v1, Lcom/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1110
    :cond_3
    iget-object v3, v1, Lcom/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 1111
    const-string v3, "data5"

    iget-object v4, v1, Lcom/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1113
    :cond_4
    iget-object v3, v1, Lcom/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 1114
    const-string v3, "data4"

    iget-object v4, v1, Lcom/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1116
    :cond_5
    iget-boolean v3, v1, Lcom/pim/vcard/VCardEntry$OrganizationData;->isPrimary:Z

    if-eqz v3, :cond_6

    .line 1117
    const-string v3, "is_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1119
    :cond_6
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1101
    :cond_7
    if-ne p3, v5, :cond_2

    .line 1102
    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1
.end method

.method private addPhoneListToOperationList(ILjava/util/List;II)V
    .locals 6
    .parameter "rawID"
    .parameter
    .parameter "handlerType"
    .parameter "olinedex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/pim/vcard/VCardEntry$PhoneData;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p2, mPhoneList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardEntry$PhoneData;>;"
    const/4 v5, 0x1

    .line 1126
    if-eqz p2, :cond_0

    .line 1127
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1148
    :cond_0
    return-void

    .line 1127
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pim/vcard/VCardEntry$PhoneData;

    .line 1128
    .local v1, phoneData:Lcom/pim/vcard/VCardEntry$PhoneData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1129
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const/4 v3, 0x2

    if-ne p3, v3, :cond_5

    .line 1130
    const-string v3, "raw_contact_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1135
    :cond_2
    :goto_1
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1137
    const-string v3, "data2"

    iget v4, v1, Lcom/pim/vcard/VCardEntry$PhoneData;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1138
    iget v3, v1, Lcom/pim/vcard/VCardEntry$PhoneData;->type:I

    if-nez v3, :cond_3

    .line 1139
    const-string v3, "data3"

    iget-object v4, v1, Lcom/pim/vcard/VCardEntry$PhoneData;->label:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1141
    :cond_3
    const-string v3, "data1"

    iget-object v4, v1, Lcom/pim/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1142
    iget-boolean v3, v1, Lcom/pim/vcard/VCardEntry$PhoneData;->isPrimary:Z

    if-eqz v3, :cond_4

    .line 1143
    const-string v3, "is_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1145
    :cond_4
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1131
    :cond_5
    if-ne p3, v5, :cond_2

    .line 1132
    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1
.end method

.method private addPhotoListToOperationList(ILjava/util/List;II)V
    .locals 9
    .parameter "rawId"
    .parameter
    .parameter "handlerType"
    .parameter "olinedex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/pim/vcard/VCardEntry$PhotoData;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p2, mPhotoList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardEntry$PhotoData;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 926
    if-eqz p2, :cond_0

    .line 927
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 947
    :cond_0
    return-void

    .line 927
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pim/vcard/VCardEntry$PhotoData;

    .line 928
    .local v1, photoData:Lcom/pim/vcard/VCardEntry$PhotoData;
    if-ne p3, v8, :cond_3

    .line 929
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 930
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "raw_contact_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 939
    :goto_1
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 940
    const-string v3, "data15"

    iget-object v4, v1, Lcom/pim/vcard/VCardEntry$PhotoData;->photoBytes:[B

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 941
    iget-boolean v3, v1, Lcom/pim/vcard/VCardEntry$PhotoData;->isPrimary:Z

    if-eqz v3, :cond_2

    .line 942
    const-string v3, "is_primary"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 944
    :cond_2
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 931
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_3
    const/4 v3, 0x3

    if-ne p3, v3, :cond_4

    .line 932
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 933
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "raw_contact_id=? AND mimetype = ?"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 934
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "vnd.android.cursor.item/photo"

    aput-object v5, v4, v7

    .line 933
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 936
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_4
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 937
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1
.end method

.method private addPostalListToOperationList(ILjava/util/List;II)V
    .locals 7
    .parameter "rawId"
    .parameter
    .parameter "handlerType"
    .parameter "olinedex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/pim/vcard/VCardEntry$PostalData;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1054
    .local p2, mPostalList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardEntry$PostalData;>;"
    if-eqz p2, :cond_0

    .line 1055
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1065
    :cond_0
    return-void

    .line 1055
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pim/vcard/VCardEntry$PostalData;

    .line 1056
    .local v3, postalData:Lcom/pim/vcard/VCardEntry$PostalData;
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 1057
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 1058
    const-string v0, "raw_contact_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1061
    :cond_2
    iget v1, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mVCardType:I

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->insertStructuredPostalDataUsingContactsStruct(ILandroid/content/ContentProviderOperation$Builder;Lcom/pim/vcard/VCardEntry$PostalData;II)V

    .line 1062
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addWebsiteListToOperationList(ILjava/util/List;II)V
    .locals 6
    .parameter "rawId"
    .parameter
    .parameter "handlerType"
    .parameter "olinedex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p2, mWebsiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    .line 905
    if-eqz p2, :cond_0

    .line 906
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 922
    :cond_0
    return-void

    .line 906
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 907
    .local v1, website:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 908
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const/4 v3, 0x2

    if-ne p3, v3, :cond_3

    .line 909
    const-string v3, "raw_contact_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 914
    :cond_2
    :goto_1
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/website"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 915
    const-string v3, "data1"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 918
    const-string v3, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 919
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 910
    :cond_3
    if-ne p3, v5, :cond_2

    .line 911
    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1
.end method

.method private checkNameIsExistContact(Lcom/pim/vcard/VCardEntry;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "contactStruct"
    .parameter "selection"

    .prologue
    const/4 v2, 0x0

    .line 326
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mContentResolver:Landroid/content/ContentResolver;

    .line 327
    .local v0, contentResolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 328
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method private constructNameFieldSelection(Lcom/pim/vcard/VCardEntry;)Ljava/lang/String;
    .locals 12
    .parameter "contactStruct"

    .prologue
    .line 681
    const/4 v0, 0x0

    .line 682
    .local v0, bExist:Z
    const-string v8, "mimetype=\'vnd.android.cursor.item/name\'"

    .line 683
    .local v8, selection:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 684
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getFamilyName()Ljava/lang/String;

    move-result-object v1

    .line 685
    .local v1, familyName:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 686
    invoke-static {v1}, Lcom/zte/backup/common/CommonFunctions;->transformString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 687
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "data3=\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 688
    const/4 v0, 0x1

    .line 692
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 693
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getMiddleName()Ljava/lang/String;

    move-result-object v3

    .line 694
    .local v3, middleName:Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 695
    invoke-static {v3}, Lcom/zte/backup/common/CommonFunctions;->transformString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 696
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "data5=\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 697
    const/4 v0, 0x1

    .line 701
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 702
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getGivenName()Ljava/lang/String;

    move-result-object v2

    .line 703
    .local v2, givenName:Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 704
    invoke-static {v2}, Lcom/zte/backup/common/CommonFunctions;->transformString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 705
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "data2=\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 706
    const/4 v0, 0x1

    .line 710
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 711
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getPrefix()Ljava/lang/String;

    move-result-object v7

    .line 712
    .local v7, prefix:Ljava/lang/String;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 713
    invoke-static {v7}, Lcom/zte/backup/common/CommonFunctions;->transformString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 714
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "data4=\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 715
    const/4 v0, 0x1

    .line 719
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 720
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getSuffix()Ljava/lang/String;

    move-result-object v9

    .line 721
    .local v9, suffix:Ljava/lang/String;
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    .line 722
    invoke-static {v9}, Lcom/zte/backup/common/CommonFunctions;->transformString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 723
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "data6=\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 724
    const/4 v0, 0x1

    .line 728
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 729
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getPhoneticFamilyName()Ljava/lang/String;

    move-result-object v4

    .line 730
    .local v4, phoneticFName:Ljava/lang/String;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6

    .line 731
    invoke-static {v4}, Lcom/zte/backup/common/CommonFunctions;->transformString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 732
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "data9=\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 733
    const/4 v0, 0x1

    .line 738
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 739
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getPhoneticMiddleName()Ljava/lang/String;

    move-result-object v6

    .line 740
    .local v6, phoneticMName:Ljava/lang/String;
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_7

    .line 741
    invoke-static {v6}, Lcom/zte/backup/common/CommonFunctions;->transformString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 742
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "data8=\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 743
    const/4 v0, 0x1

    .line 748
    :goto_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 749
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getPhoneticGivenName()Ljava/lang/String;

    move-result-object v5

    .line 750
    .local v5, phoneticGName:Ljava/lang/String;
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8

    .line 751
    invoke-static {v5}, Lcom/zte/backup/common/CommonFunctions;->transformString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 752
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "data7=\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 753
    const/4 v0, 0x1

    .line 758
    :goto_7
    if-nez v0, :cond_0

    .line 759
    const/4 v8, 0x0

    .line 760
    .end local v8           #selection:Ljava/lang/String;
    :cond_0
    return-object v8

    .line 690
    .end local v2           #givenName:Ljava/lang/String;
    .end local v3           #middleName:Ljava/lang/String;
    .end local v4           #phoneticFName:Ljava/lang/String;
    .end local v5           #phoneticGName:Ljava/lang/String;
    .end local v6           #phoneticMName:Ljava/lang/String;
    .end local v7           #prefix:Ljava/lang/String;
    .end local v9           #suffix:Ljava/lang/String;
    .restart local v8       #selection:Ljava/lang/String;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "(data3 is null OR data3=\"\")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 699
    .restart local v3       #middleName:Ljava/lang/String;
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "(data5 is null OR data5=\"\")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 708
    .restart local v2       #givenName:Ljava/lang/String;
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "(data2 is null OR data2=\"\")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_2

    .line 717
    .restart local v7       #prefix:Ljava/lang/String;
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "(data4 is null OR data4=\"\")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    .line 726
    .restart local v9       #suffix:Ljava/lang/String;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "(data6 is null OR data6=\"\")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_4

    .line 735
    .restart local v4       #phoneticFName:Ljava/lang/String;
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "(data9 is null OR data9=\"\")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .line 745
    .restart local v6       #phoneticMName:Ljava/lang/String;
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "(data8 is null OR data8=\"\")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_6

    .line 755
    .restart local v5       #phoneticGName:Ljava/lang/String;
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "(data7 is null OR data7=\"\")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_7
.end method

.method private createNewContact(Lcom/pim/vcard/VCardEntry;I)V
    .locals 22
    .parameter "contactStruct"
    .parameter "rawContactId"

    .prologue
    .line 235
    const-string v3, "CreateNewContact date begin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->pushContactStructIntoPreHandler(IZ)I

    move-result v7

    .line 238
    .local v7, olinedex:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addNameFieldsToOperationList(Lcom/pim/vcard/VCardEntry;I)V

    .line 240
    invoke-virtual/range {p1 .. p1}, Lcom/pim/vcard/VCardEntry;->getNickNameList()Ljava/util/List;

    move-result-object v13

    .line 241
    .local v13, mNickNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addNickNameToOperationList(ILjava/util/List;)V

    .line 243
    invoke-virtual/range {p1 .. p1}, Lcom/pim/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v16

    .line 244
    .local v16, mPhoneList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardEntry$PhoneData;>;"
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addPhoneListToOperationList(ILjava/util/List;II)V

    .line 246
    invoke-virtual/range {p1 .. p1}, Lcom/pim/vcard/VCardEntry;->getOrganizationList()Ljava/util/List;

    move-result-object v15

    .line 247
    .local v15, mOrganizationList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardEntry$OrganizationData;>;"
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v15, v3, v7}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addOrganizationListToOperationList(ILjava/util/List;II)V

    .line 249
    invoke-virtual/range {p1 .. p1}, Lcom/pim/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object v11

    .line 250
    .local v11, mEmailList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardEntry$EmailData;>;"
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v11, v3, v7}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addEmailListToOperationList(ILjava/util/List;II)V

    .line 252
    invoke-virtual/range {p1 .. p1}, Lcom/pim/vcard/VCardEntry;->getPostalList()Ljava/util/List;

    move-result-object v18

    .line 253
    .local v18, mPostalList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardEntry$PostalData;>;"
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addPostalListToOperationList(ILjava/util/List;II)V

    .line 255
    invoke-virtual/range {p1 .. p1}, Lcom/pim/vcard/VCardEntry;->getImList()Ljava/util/List;

    move-result-object v12

    .line 256
    .local v12, mImList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardEntry$ImData;>;"
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v12, v3, v7}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addImListToOperationList(ILjava/util/List;II)V

    .line 258
    invoke-virtual/range {p1 .. p1}, Lcom/pim/vcard/VCardEntry;->getNotes()Ljava/util/List;

    move-result-object v14

    .line 259
    .local v14, mNoteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v14, v3, v7}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addNotesToOperationList(ILjava/util/List;II)V

    .line 261
    invoke-virtual/range {p1 .. p1}, Lcom/pim/vcard/VCardEntry;->getPhotoList()Ljava/util/List;

    move-result-object v17

    .line 262
    .local v17, mPhotoList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardEntry$PhotoData;>;"
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addPhotoListToOperationList(ILjava/util/List;II)V

    .line 264
    invoke-virtual/range {p1 .. p1}, Lcom/pim/vcard/VCardEntry;->getContactGroupsList()Ljava/util/List;

    move-result-object v5

    .line 265
    .local v5, mContactGroupsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v4, p2

    invoke-direct/range {v3 .. v8}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addGroupListToOperationList(ILjava/util/List;IILjava/util/List;)V

    .line 267
    invoke-virtual/range {p1 .. p1}, Lcom/pim/vcard/VCardEntry;->getWebsiteList()Ljava/util/List;

    move-result-object v19

    .line 268
    .local v19, mWebsiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addWebsiteListToOperationList(ILjava/util/List;II)V

    .line 270
    invoke-virtual/range {p1 .. p1}, Lcom/pim/vcard/VCardEntry;->getBirthday()Ljava/lang/String;

    move-result-object v10

    .line 271
    .local v10, mBirthday:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v10, v3, v7}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addBirthdayToOperationList(ILjava/lang/String;II)V

    .line 273
    invoke-virtual/range {p1 .. p1}, Lcom/pim/vcard/VCardEntry;->getmAndroidCustomPropertyList()Ljava/util/List;

    move-result-object v9

    .line 274
    .local v9, mAndroidCustomPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v9, v3, v7}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addAndroidCustomPropertyListToOperationList(ILjava/util/List;II)V

    .line 275
    const-string v3, "CreateNewContact date end"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void
.end method

.method private getStreetString(Lcom/pim/vcard/VCardEntry$PostalData;)Ljava/lang/String;
    .locals 3
    .parameter "postalData"

    .prologue
    .line 793
    iget-object v1, p1, Lcom/pim/vcard/VCardEntry$PostalData;->street:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 794
    iget-object v1, p1, Lcom/pim/vcard/VCardEntry$PostalData;->extendedAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 795
    const/4 v0, 0x0

    .line 806
    .local v0, streetString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 797
    .end local v0           #streetString:Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Lcom/pim/vcard/VCardEntry$PostalData;->extendedAddress:Ljava/lang/String;

    .restart local v0       #streetString:Ljava/lang/String;
    goto :goto_0

    .line 800
    .end local v0           #streetString:Ljava/lang/String;
    :cond_1
    iget-object v1, p1, Lcom/pim/vcard/VCardEntry$PostalData;->extendedAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 801
    iget-object v0, p1, Lcom/pim/vcard/VCardEntry$PostalData;->street:Ljava/lang/String;

    .restart local v0       #streetString:Ljava/lang/String;
    goto :goto_0

    .line 803
    .end local v0           #streetString:Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/pim/vcard/VCardEntry$PostalData;->street:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/pim/vcard/VCardEntry$PostalData;->extendedAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #streetString:Ljava/lang/String;
    goto :goto_0
.end method

.method private handleContactWhenSameName(Lcom/pim/vcard/VCardEntry;Landroid/database/Cursor;)V
    .locals 4
    .parameter "contactStruct"
    .parameter "cursor"

    .prologue
    .line 179
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 180
    .local v2, sameNameContactCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 195
    :goto_1
    return-void

    .line 181
    :cond_0
    const-string v3, "raw_contact_id"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 182
    .local v0, contactId:I
    invoke-direct {p0, p2}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->isSimContact(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    add-int/lit8 v3, v2, -0x1

    if-eq v1, v3, :cond_1

    .line 184
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addContact(Lcom/pim/vcard/VCardEntry;I)V

    goto :goto_1

    .line 191
    :cond_2
    invoke-direct {p0, p1, v0, p2}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->UpdateContact(Lcom/pim/vcard/VCardEntry;ILandroid/database/Cursor;)V

    goto :goto_1
.end method

.method private isSimContact(Landroid/database/Cursor;)Z
    .locals 5
    .parameter "cursor"

    .prologue
    .line 208
    const/4 v1, 0x0

    .line 209
    .local v1, haveModeIdColumn:Z
    const-string v3, "mode_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 210
    const/4 v1, 0x1

    .line 213
    :cond_0
    const/4 v2, 0x0

    .line 214
    .local v2, isSimContact:Z
    if-eqz v1, :cond_2

    .line 215
    const-string v3, "mode_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 216
    const/4 v2, 0x1

    .line 224
    :cond_1
    :goto_0
    return v2

    .line 219
    :cond_2
    const-string v3, "account_type"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, account_type:Ljava/lang/String;
    if-eqz v0, :cond_1

    sget-object v3, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->SIM_ACCOUNT_TYPE:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isStrInList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 5
    .parameter "str"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 950
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v1, :cond_1

    :cond_0
    move v1, v2

    .line 960
    :goto_0
    return v1

    .line 954
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    .line 960
    goto :goto_0

    .line 954
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 955
    .local v0, data:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0
.end method

.method private nameFieldsAreEmpty(Lcom/pim/vcard/VCardEntry;)Z
    .locals 1
    .parameter "contactStruct"

    .prologue
    .line 810
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getMiddleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getGivenName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getFullName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getPhoneticFamilyName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getPhoneticMiddleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getPhoneticGivenName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getPhoneticFullName()Ljava/lang/String;

    move-result-object v0

    .line 815
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 810
    goto :goto_0
.end method

.method private pushContactStructIntoContentResolver(Lcom/pim/vcard/VCardEntry;)V
    .locals 1
    .parameter "contactStruct"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->constructNameFieldSelection(Lcom/pim/vcard/VCardEntry;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, selection:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0, p1}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->pushHasNameContactStructIntoContentResolver(Lcom/pim/vcard/VCardEntry;)V

    .line 146
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->pushHasNameContactStructIntoContentResolverIncreace(Lcom/pim/vcard/VCardEntry;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pushContactStructIntoPreHandler(IZ)I
    .locals 12
    .parameter "rawContactId"
    .parameter "bUpdateContact"

    .prologue
    .line 1151
    const/4 v6, 0x0

    .line 1152
    .local v6, builder:Landroid/content/ContentProviderOperation$Builder;
    const/4 v8, 0x0

    .line 1153
    .local v8, olinedex:I
    if-eqz p2, :cond_4

    .line 1154
    iget-boolean v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->bHasHandlerPreForUpdateContact:Z

    if-eqz v0, :cond_0

    move v9, v8

    .line 1198
    .end local v8           #olinedex:I
    .local v9, olinedex:I
    :goto_0
    return v9

    .line 1157
    .end local v9           #olinedex:I
    .restart local v8       #olinedex:I
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 1159
    .local v10, rawContactUri:Landroid/net/Uri;
    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 1165
    .end local v10           #rawContactUri:Landroid/net/Uri;
    :goto_1
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_6

    .line 1166
    const-string v0, "account_name"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1167
    const-string v0, "account_type"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1169
    const-string v0, "com.google"

    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1170
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sourceid"

    aput-object v4, v2, v3

    .line 1171
    const-string v3, "title=?"

    .line 1172
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v11, "System Group: My Contacts"

    aput-object v11, v4, v5

    const/4 v5, 0x0

    .line 1170
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1174
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1179
    :cond_1
    if-eqz v7, :cond_2

    .line 1180
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1193
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    if-eqz p2, :cond_3

    .line 1195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->bHasHandlerPreForUpdateContact:Z

    :cond_3
    move v9, v8

    .line 1198
    .end local v8           #olinedex:I
    .restart local v9       #olinedex:I
    goto :goto_0

    .line 1161
    .end local v9           #olinedex:I
    .restart local v8       #olinedex:I
    :cond_4
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 1162
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    goto :goto_1

    .line 1178
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 1179
    if-eqz v7, :cond_5

    .line 1180
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1182
    :cond_5
    throw v0

    .line 1189
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_6
    const-string v0, "account_name"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1190
    const-string v0, "account_type"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1191
    const-string v0, "aggregation_mode"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2
.end method

.method private pushHasNameContactStructIntoContentResolver(Lcom/pim/vcard/VCardEntry;)V
    .locals 2
    .parameter "contactStruct"

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addContact(Lcom/pim/vcard/VCardEntry;I)V

    .line 150
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1d6

    if-lt v0, v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->insertBath()V

    .line 153
    :cond_0
    return-void
.end method

.method private pushHasNameContactStructIntoContentResolverIncreace(Lcom/pim/vcard/VCardEntry;Ljava/lang/String;)V
    .locals 5
    .parameter "contactStruct"
    .parameter "selection"

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->checkNameIsExistContact(Lcom/pim/vcard/VCardEntry;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 159
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 160
    .local v0, contactId:I
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 161
    .local v2, sameNameContactCount:I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 162
    const-string v3, "raw_contact_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 165
    :cond_0
    if-nez v2, :cond_2

    .line 167
    invoke-direct {p0, p1, v0}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addContact(Lcom/pim/vcard/VCardEntry;I)V

    .line 171
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 173
    iget-object v3, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x1d6

    if-lt v3, v4, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->insertBath()V

    .line 176
    :cond_1
    return-void

    .line 169
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->handleContactWhenSameName(Lcom/pim/vcard/VCardEntry;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private updateAndroidCustomPropertyToContact(Lcom/pim/vcard/VCardEntry;I)V
    .locals 10
    .parameter "contactStruct"
    .parameter "contactId"

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 347
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mContentResolver:Landroid/content/ContentResolver;

    .line 348
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getmAndroidCustomPropertyList()Ljava/util/List;

    move-result-object v7

    .line 349
    .local v7, mAndroidCustomPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez v7, :cond_0

    .line 366
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 354
    .local v8, mimetype:Ljava/lang/String;
    const/4 v3, 0x0

    .line 355
    .local v3, selection:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "raw_contact_id =\'"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "mimetype"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " =\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 358
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 359
    .local v6, androidCustomProperty:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 360
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->pushContactStructIntoPreHandler(IZ)I

    .line 361
    const/4 v1, 0x3

    invoke-direct {p0, p2, v7, v1, v9}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addAndroidCustomPropertyListToOperationList(ILjava/util/List;II)V

    .line 365
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 363
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, p2, v7, v1, v9}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addAndroidCustomPropertyListToOperationList(ILjava/util/List;II)V

    goto :goto_1
.end method

.method private updateBirthdayToContact(Lcom/pim/vcard/VCardEntry;I)V
    .locals 10
    .parameter "contactStruct"
    .parameter "contactId"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 369
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mContentResolver:Landroid/content/ContentResolver;

    .line 370
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getBirthday()Ljava/lang/String;

    move-result-object v7

    .line 371
    .local v7, mBirthday:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 390
    :goto_0
    return-void

    .line 374
    :cond_0
    const/4 v3, 0x0

    .line 376
    .local v3, selection:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "raw_contact_id =\'"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "mimetype"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " =\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "data2"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " =\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 382
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 383
    .local v6, birthday:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 384
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->pushContactStructIntoPreHandler(IZ)I

    .line 385
    invoke-direct {p0, p2, v7, v9, v8}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addBirthdayToOperationList(ILjava/lang/String;II)V

    .line 389
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 387
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, p2, v7, v1, v8}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addBirthdayToOperationList(ILjava/lang/String;II)V

    goto :goto_1
.end method

.method private updateEmailToContact(Lcom/pim/vcard/VCardEntry;I)V
    .locals 11
    .parameter "contactStruct"
    .parameter "contactId"

    .prologue
    const/4 v2, 0x0

    .line 591
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mContentResolver:Landroid/content/ContentResolver;

    .line 592
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getEmailList()Ljava/util/List;

    move-result-object v9

    .line 593
    .local v9, mEmailList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardEntry$EmailData;>;"
    const/4 v3, 0x0

    .line 596
    .local v3, selection:Ljava/lang/String;
    if-nez v9, :cond_0

    .line 616
    :goto_0
    return-void

    .line 599
    :cond_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v7

    .line 600
    .local v7, emailNum:I
    add-int/lit8 v8, v7, -0x1

    .local v8, i:I
    :goto_1
    if-gez v8, :cond_1

    .line 615
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p2, v9, v1, v2}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addEmailListToOperationList(ILjava/util/List;II)V

    goto :goto_0

    .line 601
    :cond_1
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pim/vcard/VCardEntry$EmailData;

    iget-object v6, v1, Lcom/pim/vcard/VCardEntry$EmailData;->data:Ljava/lang/String;

    .line 602
    .local v6, emailData:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "raw_contact_id =\'"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "data1"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " =\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 605
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 607
    .local v10, phones:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 609
    invoke-interface {v9, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 612
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 600
    add-int/lit8 v8, v8, -0x1

    goto :goto_1
.end method

.method private updateGroupToContact(Lcom/pim/vcard/VCardEntry;I)V
    .locals 21
    .parameter "contactStruct"
    .parameter "contactId"

    .prologue
    .line 442
    invoke-virtual/range {p1 .. p1}, Lcom/pim/vcard/VCardEntry;->getContactGroupsList()Ljava/util/List;

    move-result-object v7

    .line 444
    .local v7, mContactGroupsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v7, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mContentResolver:Landroid/content/ContentResolver;

    .line 449
    .local v1, contentResolver:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "raw_contact_id =\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 450
    .local v4, selection:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mimetype"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " =\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 452
    const/16 v18, 0x0

    .line 454
    .local v18, group:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 455
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 456
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 457
    .local v10, groupNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 458
    :goto_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 466
    const/4 v8, 0x3

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move/from16 v6, p2

    invoke-direct/range {v5 .. v10}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addGroupListToOperationList(ILjava/util/List;IILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    .end local v10           #groupNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    if-eqz v18, :cond_0

    .line 476
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 459
    .restart local v10       #groupNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    const-string v2, "data1"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 460
    .local v19, groupID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mGroupUtil:Lcom/zte/backup/format/vxx/vcard/GroupsUtil;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->getGroupNameByID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 461
    .local v20, name:Ljava/lang/String;
    if-eqz v20, :cond_3

    .line 462
    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 471
    .end local v10           #groupNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v19           #groupID:Ljava/lang/String;
    .end local v20           #name:Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 472
    .local v17, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 475
    if-eqz v18, :cond_0

    .line 476
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 468
    .end local v17           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    move/from16 v12, p2

    move-object v13, v7

    :try_start_3
    invoke-direct/range {v11 .. v16}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addGroupListToOperationList(ILjava/util/List;IILjava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 474
    :catchall_0
    move-exception v2

    .line 475
    if-eqz v18, :cond_5

    .line 476
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 478
    :cond_5
    throw v2
.end method

.method private updateImToContact(Lcom/pim/vcard/VCardEntry;I)V
    .locals 12
    .parameter "contactStruct"
    .parameter "contactId"

    .prologue
    const/4 v2, 0x0

    .line 503
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mContentResolver:Landroid/content/ContentResolver;

    .line 504
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getImList()Ljava/util/List;

    move-result-object v9

    .line 505
    .local v9, mImList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardEntry$ImData;>;"
    const/4 v3, 0x0

    .line 508
    .local v3, selection:Ljava/lang/String;
    if-nez v9, :cond_0

    .line 530
    :goto_0
    return-void

    .line 511
    :cond_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 512
    .local v10, postalNum:I
    add-int/lit8 v7, v10, -0x1

    .local v7, i:I
    :goto_1
    if-gez v7, :cond_1

    .line 529
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p2, v9, v1, v2}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addImListToOperationList(ILjava/util/List;II)V

    goto :goto_0

    .line 513
    :cond_1
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pim/vcard/VCardEntry$ImData;

    iget-object v6, v1, Lcom/pim/vcard/VCardEntry$ImData;->data:Ljava/lang/String;

    .line 514
    .local v6, data:Ljava/lang/String;
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pim/vcard/VCardEntry$ImData;

    iget v11, v1, Lcom/pim/vcard/VCardEntry$ImData;->protocol:I

    .line 516
    .local v11, protocol:I
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "raw_contact_id =\'"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "data5"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " =\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "data1"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " =\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 520
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 521
    .local v8, im:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 523
    invoke-interface {v9, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 526
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 512
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1
.end method

.method private updateNoteToContact(Lcom/pim/vcard/VCardEntry;I)V
    .locals 9
    .parameter "contactStruct"
    .parameter "contactId"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 482
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mContentResolver:Landroid/content/ContentResolver;

    .line 483
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getNotes()Ljava/util/List;

    move-result-object v6

    .line 484
    .local v6, mNoteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_0

    .line 500
    :goto_0
    return-void

    .line 487
    :cond_0
    const/4 v3, 0x0

    .line 489
    .local v3, selection:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "raw_contact_id =\'"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "mimetype"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " =\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "vnd.android.cursor.item/note"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 492
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 493
    .local v7, note:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 494
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->pushContactStructIntoPreHandler(IZ)I

    .line 495
    const/4 v1, 0x3

    invoke-direct {p0, p2, v6, v1, v8}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addNotesToOperationList(ILjava/util/List;II)V

    .line 499
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 497
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, p2, v6, v1, v8}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addNotesToOperationList(ILjava/util/List;II)V

    goto :goto_1
.end method

.method private updateOrganizationToContact(Lcom/pim/vcard/VCardEntry;I)V
    .locals 11
    .parameter "contactStruct"
    .parameter "contactId"

    .prologue
    const/4 v2, 0x0

    .line 619
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mContentResolver:Landroid/content/ContentResolver;

    .line 620
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getOrganizationList()Ljava/util/List;

    move-result-object v8

    .line 622
    .local v8, mOrganizationList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardEntry$OrganizationData;>;"
    const/4 v3, 0x0

    .line 625
    .local v3, selection:Ljava/lang/String;
    if-nez v8, :cond_0

    .line 647
    :goto_0
    return-void

    .line 628
    :cond_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    .line 629
    .local v10, organizationNum:I
    add-int/lit8 v7, v10, -0x1

    .local v7, i:I
    :goto_1
    if-gez v7, :cond_1

    .line 646
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p2, v8, v1, v2}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addOrganizationListToOperationList(ILjava/util/List;II)V

    goto :goto_0

    .line 630
    :cond_1
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pim/vcard/VCardEntry$OrganizationData;

    iget-object v6, v1, Lcom/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    .line 632
    .local v6, companyName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "raw_contact_id =\'"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "mimetype"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " =\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "vnd.android.cursor.item/organization"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 634
    if-eqz v6, :cond_3

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "data1"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " =\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 637
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 638
    .local v9, organization:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 640
    invoke-interface {v8, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 642
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 629
    .end local v9           #organization:Landroid/database/Cursor;
    :cond_3
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1
.end method

.method private updatePhoneToContact(Lcom/pim/vcard/VCardEntry;I)V
    .locals 13
    .parameter "contactStruct"
    .parameter "contactId"

    .prologue
    const/4 v2, 0x0

    .line 650
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mContentResolver:Landroid/content/ContentResolver;

    .line 651
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v9

    .line 652
    .local v9, phoneList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardEntry$PhoneData;>;"
    const/4 v3, 0x0

    .line 655
    .local v3, selection:Ljava/lang/String;
    if-nez v9, :cond_0

    .line 678
    :goto_0
    return-void

    .line 658
    :cond_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 659
    .local v10, phoneNum:I
    add-int/lit8 v6, v10, -0x1

    .local v6, i:I
    :goto_1
    if-gez v6, :cond_1

    .line 677
    const/4 v2, 0x2

    const/4 v4, 0x0

    invoke-direct {p0, p2, v9, v2, v4}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addPhoneListToOperationList(ILjava/util/List;II)V

    goto :goto_0

    .line 660
    :cond_1
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pim/vcard/VCardEntry$PhoneData;

    iget-object v7, v4, Lcom/pim/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    .line 661
    .local v7, numData:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "raw_contact_id =\'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 664
    const-string v4, "content://com.android.contacts/phone_lookup"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 665
    .local v12, uri:Landroid/net/Uri;
    invoke-static {v7}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 666
    .local v8, number:Ljava/lang/String;
    invoke-static {v12, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri2:Landroid/net/Uri;
    move-object v4, v2

    move-object v5, v2

    .line 667
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 669
    .local v11, phones:Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 671
    invoke-interface {v9, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 674
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 659
    add-int/lit8 v6, v6, -0x1

    goto :goto_1
.end method

.method private updatePhotoToContact(Lcom/pim/vcard/VCardEntry;I)V
    .locals 9
    .parameter "contactStruct"
    .parameter "contactId"

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 421
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mContentResolver:Landroid/content/ContentResolver;

    .line 422
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getPhotoList()Ljava/util/List;

    move-result-object v6

    .line 423
    .local v6, mPhotoList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardEntry$PhotoData;>;"
    if-nez v6, :cond_0

    .line 439
    :goto_0
    return-void

    .line 426
    :cond_0
    const/4 v3, 0x0

    .line 428
    .local v3, selection:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "raw_contact_id =\'"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "mimetype"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " =\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 431
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 432
    .local v7, photo:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 433
    const/4 v1, 0x1

    invoke-direct {p0, p2, v1}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->pushContactStructIntoPreHandler(IZ)I

    .line 434
    const/4 v1, 0x3

    invoke-direct {p0, p2, v6, v1, v8}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addPhotoListToOperationList(ILjava/util/List;II)V

    .line 438
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 436
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, p2, v6, v1, v8}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addPhotoListToOperationList(ILjava/util/List;II)V

    goto :goto_1
.end method

.method private updatePostalToContact(Lcom/pim/vcard/VCardEntry;I)V
    .locals 19
    .parameter "contactStruct"
    .parameter "contactId"

    .prologue
    .line 533
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mContentResolver:Landroid/content/ContentResolver;

    .line 534
    .local v2, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Lcom/pim/vcard/VCardEntry;->getPostalList()Ljava/util/List;

    move-result-object v11

    .line 535
    .local v11, mPostalList:Ljava/util/List;,"Ljava/util/List<Lcom/pim/vcard/VCardEntry$PostalData;>;"
    const/4 v5, 0x0

    .line 538
    .local v5, selection:Ljava/lang/String;
    if-nez v11, :cond_0

    .line 588
    :goto_0
    return-void

    .line 541
    :cond_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    .line 542
    .local v14, postalNum:I
    add-int/lit8 v10, v14, -0x1

    .local v10, i:I
    :goto_1
    if-gez v10, :cond_1

    .line 587
    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v11, v3, v4}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addPostalListToOperationList(ILjava/util/List;II)V

    goto :goto_0

    .line 543
    :cond_1
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pim/vcard/VCardEntry$PostalData;

    iget-object v13, v3, Lcom/pim/vcard/VCardEntry$PostalData;->pobox:Ljava/lang/String;

    .line 545
    .local v13, pobox:Ljava/lang/String;
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pim/vcard/VCardEntry$PostalData;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->getStreetString(Lcom/pim/vcard/VCardEntry$PostalData;)Ljava/lang/String;

    move-result-object v18

    .line 546
    .local v18, streetString:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/zte/backup/common/CommonFunctions;->transformString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 547
    .local v17, street:Ljava/lang/String;
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pim/vcard/VCardEntry$PostalData;

    iget-object v3, v3, Lcom/pim/vcard/VCardEntry$PostalData;->localty:Ljava/lang/String;

    invoke-static {v3}, Lcom/zte/backup/common/CommonFunctions;->transformString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 548
    .local v8, city:Ljava/lang/String;
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pim/vcard/VCardEntry$PostalData;

    iget-object v3, v3, Lcom/pim/vcard/VCardEntry$PostalData;->region:Ljava/lang/String;

    invoke-static {v3}, Lcom/zte/backup/common/CommonFunctions;->transformString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 549
    .local v16, region:Ljava/lang/String;
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pim/vcard/VCardEntry$PostalData;

    iget-object v3, v3, Lcom/pim/vcard/VCardEntry$PostalData;->postalCode:Ljava/lang/String;

    invoke-static {v3}, Lcom/zte/backup/common/CommonFunctions;->transformString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 550
    .local v15, postcode:Ljava/lang/String;
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pim/vcard/VCardEntry$PostalData;

    iget-object v3, v3, Lcom/pim/vcard/VCardEntry$PostalData;->country:Ljava/lang/String;

    invoke-static {v3}, Lcom/zte/backup/common/CommonFunctions;->transformString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 552
    .local v9, country:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "raw_contact_id =\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 554
    if-eqz v13, :cond_2

    const-string v3, ""

    if-eq v13, v3, :cond_2

    .line 555
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " =\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 558
    :cond_2
    if-eqz v17, :cond_3

    const-string v3, ""

    move-object/from16 v0, v17

    if-eq v0, v3, :cond_3

    .line 559
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " =\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 562
    :cond_3
    if-eqz v8, :cond_4

    const-string v3, ""

    if-eq v8, v3, :cond_4

    .line 563
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data7"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " =\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 566
    :cond_4
    if-eqz v16, :cond_5

    const-string v3, ""

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_5

    .line 567
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data8"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " =\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 570
    :cond_5
    if-eqz v15, :cond_6

    const-string v3, ""

    if-eq v15, v3, :cond_6

    .line 571
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data9"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " =\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 574
    :cond_6
    if-eqz v9, :cond_7

    const-string v3, ""

    if-eq v9, v3, :cond_7

    .line 575
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data10"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " =\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 577
    :cond_7
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$StructuredPostal;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    .line 578
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 577
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 579
    .local v12, phones:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_8

    .line 581
    invoke-interface {v11, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 584
    :cond_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 542
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_1
.end method

.method private updateWebsiteToContact(Lcom/pim/vcard/VCardEntry;I)V
    .locals 11
    .parameter "contactStruct"
    .parameter "contactId"

    .prologue
    const/4 v2, 0x0

    .line 393
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mContentResolver:Landroid/content/ContentResolver;

    .line 394
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Lcom/pim/vcard/VCardEntry;->getWebsiteList()Ljava/util/List;

    move-result-object v8

    .line 395
    .local v8, mWebsiteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 397
    .local v3, selection:Ljava/lang/String;
    if-nez v8, :cond_0

    .line 418
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 401
    .local v9, postalNum:I
    add-int/lit8 v7, v9, -0x1

    .local v7, i:I
    :goto_1
    if-gez v7, :cond_1

    .line 417
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p2, v8, v1, v2}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->addWebsiteListToOperationList(ILjava/util/List;II)V

    goto :goto_0

    .line 402
    :cond_1
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 404
    .local v10, webSite:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "raw_contact_id =\'"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "mimetype"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " =\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "vnd.android.cursor.item/website"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "data1"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " =\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 408
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 409
    .local v6, cWebSite:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 411
    invoke-interface {v8, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 414
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 401
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public getCreatedUris()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mCreatedUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method getGroupID(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "groupName"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1202
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "title"

    aput-object v1, v2, v0

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 1203
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "title=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1204
    const-string v1, "account_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " NOT NULL AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1205
    const-string v1, " NOT NULL  AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=0 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1206
    .local v3, section:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1209
    .local v7, groupCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1211
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ge v0, v9, :cond_2

    .line 1228
    :cond_0
    if-eqz v7, :cond_1

    .line 1229
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1233
    :cond_1
    :goto_0
    return-object v8

    .line 1215
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1220
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 1228
    .local v8, id:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 1229
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1224
    .end local v8           #id:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1225
    .local v6, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1228
    if-eqz v7, :cond_1

    .line 1229
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1227
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1228
    if-eqz v7, :cond_3

    .line 1229
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1231
    :cond_3
    throw v0

    .line 1228
    :cond_4
    if-eqz v7, :cond_1

    .line 1229
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public insertBath()V
    .locals 5

    .prologue
    .line 1237
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1242
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    iget-object v4, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1244
    .local v1, results:[Landroid/content/ContentProviderResult;
    if-eqz v1, :cond_0

    .line 1262
    .end local v1           #results:[Landroid/content/ContentProviderResult;
    :goto_1
    iget-object v2, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1256
    :catch_0
    move-exception v0

    .line 1257
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1259
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1260
    .local v0, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v0}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_1
.end method

.method public insertStructuredPostalDataUsingContactsStruct(ILandroid/content/ContentProviderOperation$Builder;Lcom/pim/vcard/VCardEntry$PostalData;II)V
    .locals 4
    .parameter "vcardType"
    .parameter "builder"
    .parameter "postalData"
    .parameter "handlerType"
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 766
    if-ne p4, v3, :cond_0

    .line 767
    const-string v1, "raw_contact_id"

    invoke-virtual {p2, v1, p5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 769
    :cond_0
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 771
    const-string v1, "data2"

    iget v2, p3, Lcom/pim/vcard/VCardEntry$PostalData;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 772
    iget v1, p3, Lcom/pim/vcard/VCardEntry$PostalData;->type:I

    if-nez v1, :cond_1

    .line 773
    const-string v1, "data3"

    iget-object v2, p3, Lcom/pim/vcard/VCardEntry$PostalData;->label:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 776
    :cond_1
    invoke-direct {p0, p3}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->getStreetString(Lcom/pim/vcard/VCardEntry$PostalData;)Ljava/lang/String;

    move-result-object v0

    .line 778
    .local v0, streetString:Ljava/lang/String;
    const-string v1, "data5"

    iget-object v2, p3, Lcom/pim/vcard/VCardEntry$PostalData;->pobox:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 779
    const-string v1, "data4"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 780
    const-string v1, "data7"

    iget-object v2, p3, Lcom/pim/vcard/VCardEntry$PostalData;->localty:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 781
    const-string v1, "data8"

    iget-object v2, p3, Lcom/pim/vcard/VCardEntry$PostalData;->region:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 782
    const-string v1, "data9"

    iget-object v2, p3, Lcom/pim/vcard/VCardEntry$PostalData;->postalCode:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 783
    const-string v1, "data10"

    iget-object v2, p3, Lcom/pim/vcard/VCardEntry$PostalData;->country:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 785
    const-string v1, "data1"

    invoke-virtual {p3, p1}, Lcom/pim/vcard/VCardEntry$PostalData;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 786
    iget-boolean v1, p3, Lcom/pim/vcard/VCardEntry$PostalData;->isPrimary:Z

    if-eqz v1, :cond_2

    .line 787
    const-string v1, "is_primary"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 789
    :cond_2
    return-void
.end method

.method public onEnd()V
    .locals 6

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->insertBath()V

    .line 119
    invoke-static {}, Lcom/pim/vcard/VCardConfig;->showPerformanceLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "VCardEntryComitter"

    const-string v1, "time to commit entries: %d ms"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mTimeToCommit:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    return-void
.end method

.method public onEntryCreated(Lcom/pim/vcard/VCardEntry;)V
    .locals 6
    .parameter "contactStruct"

    .prologue
    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 127
    .local v0, start:J
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->bHasHandlerPreForUpdateContact:Z

    .line 129
    invoke-direct {p0, p1}, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->pushContactStructIntoContentResolver(Lcom/pim/vcard/VCardEntry;)V

    .line 134
    iget-wide v2, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mTimeToCommit:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->mTimeToCommit:J

    .line 135
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/VCardEntryCommitterZte;->operationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 115
    return-void
.end method
