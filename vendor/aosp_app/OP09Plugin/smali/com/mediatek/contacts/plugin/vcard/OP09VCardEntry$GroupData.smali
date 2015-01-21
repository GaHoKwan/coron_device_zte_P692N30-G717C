.class Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;
.super Ljava/lang/Object;
.source "OP09VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupData"
.end annotation


# instance fields
.field private mGroupId:Ljava/lang/String;

.field private final mGrouptitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "grouptitle"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->this$0:Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->mGrouptitle:Ljava/lang/String;

    .line 102
    return-void
.end method


# virtual methods
.method public constructInsertOperation(Ljava/util/List;I)V
    .locals 3
    .parameter
    .parameter "backReferenceIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, operationList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 109
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 110
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 111
    invoke-virtual {p0}, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->setGroupId()V

    .line 112
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->mGroupId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    const-string v1, "data1"

    iget-object v2, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->mGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 114
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "obj"

    .prologue
    .line 125
    instance-of v1, p1, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;

    if-nez v1, :cond_0

    .line 126
    const/4 v1, 0x0

    .line 129
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 128
    check-cast v0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;

    .line 129
    .local v0, groupData:Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->mGrouptitle:Ljava/lang/String;

    iget-object v2, v0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->mGrouptitle:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method public getEntryLabel()Lcom/android/vcard/VCardEntry$EntryLabel;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/android/vcard/VCardEntry$EntryLabel;->EXT_GROUP:Lcom/android/vcard/VCardEntry$EntryLabel;

    return-object v0
.end method

.method public getGrouptitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->mGrouptitle:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->mGrouptitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->mGrouptitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->mGrouptitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setGroupId()V
    .locals 14

    .prologue
    const/4 v5, 0x1

    const/4 v13, 0x0

    .line 152
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->mGrouptitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->this$0:Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;

    #getter for: Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;->groupIds:Ljava/util/Map;
    invoke-static {v0}, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;->access$000(Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->mGrouptitle:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->mGroupId:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->mGroupId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    const-string v0, "OP09VCardEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "groupIds has mGroupId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->mGroupId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->this$0:Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;

    #getter for: Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;->mAccount:Landroid/accounts/Account;
    invoke-static {v0}, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;->access$100(Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;)Landroid/accounts/Account;

    move-result-object v0

    iget-object v7, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 159
    .local v7, accountType:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->this$0:Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;

    #getter for: Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;->mAccount:Landroid/accounts/Account;
    invoke-static {v0}, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;->access$100(Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;)Landroid/accounts/Account;

    move-result-object v0

    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 160
    .local v6, accountName:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    const-string v7, "Local Phone Account"

    .line 163
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    const-string v6, "Phone"

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->this$0:Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;

    #getter for: Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;->access$200(Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleted=0 AND account_type = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->mGrouptitle:Ljava/lang/String;

    aput-object v5, v4, v13

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 175
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5

    .line 176
    :cond_4
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 177
    .local v12, values:Landroid/content/ContentValues;
    const-string v0, "account_type"

    invoke-virtual {v12, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v0, "account_name"

    invoke-virtual {v12, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "title"

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->mGrouptitle:Ljava/lang/String;

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->this$0:Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;

    #getter for: Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;->access$200(Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 181
    .local v10, groupUri:Landroid/net/Uri;
    invoke-static {v10}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 182
    .local v11, id:Ljava/lang/Long;
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->mGroupId:Ljava/lang/String;

    .line 191
    .end local v10           #groupUri:Landroid/net/Uri;
    .end local v11           #id:Ljava/lang/Long;
    .end local v12           #values:Landroid/content/ContentValues;
    :goto_1
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->this$0:Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;

    #getter for: Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;->groupIds:Ljava/util/Map;
    invoke-static {v0}, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;->access$000(Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->mGrouptitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->mGroupId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    if-eqz v8, :cond_0

    .line 194
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 195
    :catch_0
    move-exception v9

    .line 196
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "OP09VCardEntry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteException on Cursor#close(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 186
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :cond_5
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->mGroupId:Ljava/lang/String;

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGrouptitle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/vcard/OP09VCardEntry$GroupData;->mGrouptitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
