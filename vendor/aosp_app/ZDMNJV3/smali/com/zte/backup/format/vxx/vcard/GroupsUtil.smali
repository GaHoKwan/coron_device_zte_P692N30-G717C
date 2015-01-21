.class public Lcom/zte/backup/format/vxx/vcard/GroupsUtil;
.super Ljava/lang/Object;
.source "GroupsUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;,
        Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;
    }
.end annotation


# static fields
.field private static DEFAULT_ACCOUNT_NAME:Ljava/lang/String;

.field private static DEFAULT_ACCOUNT_TYPE:Ljava/lang/String;

.field private static mAccountInited:Z


# instance fields
.field private allGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;",
            ">;"
        }
    .end annotation
.end field

.field private backupGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    sput-object v0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->DEFAULT_ACCOUNT_NAME:Ljava/lang/String;

    .line 89
    sput-object v0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->DEFAULT_ACCOUNT_TYPE:Ljava/lang/String;

    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->mAccountInited:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "resolver"

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->allGroup:Ljava/util/List;

    .line 85
    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->backupGroup:Ljava/util/List;

    .line 86
    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->mContentResolver:Landroid/content/ContentResolver;

    .line 93
    iput-object p1, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->mContentResolver:Landroid/content/ContentResolver;

    .line 94
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->allGroup:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->backupGroup:Ljava/util/List;

    .line 96
    invoke-direct {p0}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->initAccount()V

    .line 97
    return-void
.end method

.method static synthetic access$0(Lcom/zte/backup/format/vxx/vcard/GroupsUtil;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->getGroupMemberCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getGroupContactsRawIDs(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .parameter "groupID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    const/4 v7, 0x0

    .line 385
    .local v7, groupCursor:Landroid/database/Cursor;
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 387
    .local v9, rawIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->mContentResolver:Landroid/content/ContentResolver;

    .line 388
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "raw_contact_id"

    aput-object v4, v2, v3

    .line 389
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mimetype = \'vnd.android.cursor.item/group_membership\' AND data1="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 391
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 389
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 392
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 388
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 394
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    :cond_0
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 411
    :goto_1
    return-object v9

    .line 397
    :cond_1
    :try_start_1
    const-string v0, "raw_contact_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 396
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 398
    .local v8, rawID:Ljava/lang/String;
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 403
    .end local v8           #rawID:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 404
    .local v6, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 408
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 407
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 408
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 409
    throw v0
.end method

.method private getGroupMemberCount(Ljava/lang/String;)I
    .locals 9
    .parameter "groupID"

    .prologue
    .line 292
    const/4 v6, 0x0

    .line 293
    .local v6, count:I
    const/4 v8, 0x0

    .line 295
    .local v8, groupCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->mContentResolver:Landroid/content/ContentResolver;

    .line 296
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "raw_contact_id"

    aput-object v4, v2, v3

    .line 297
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mimetype = \'vnd.android.cursor.item/group_membership\' AND data1="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 297
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 300
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 296
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 302
    if-eqz v8, :cond_0

    .line 303
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 310
    :cond_0
    invoke-direct {p0, v8}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 313
    :goto_0
    return v6

    .line 306
    :catch_0
    move-exception v7

    .line 307
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    invoke-direct {p0, v8}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 309
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 310
    invoke-direct {p0, v8}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 311
    throw v0
.end method

.method private getGroupSQL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 317
    const-string v0, "deleted=0 "

    .line 318
    .local v0, sqlStr:Ljava/lang/String;
    sget-object v1, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->DEFAULT_ACCOUNT_NAME:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " AND account_name NOT NULL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    :cond_0
    sget-object v1, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->DEFAULT_ACCOUNT_TYPE:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " AND account_name NOT NULL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    :cond_1
    return-object v0
.end method

.method private initAccount()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 142
    sget-boolean v0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->mAccountInited:Z

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    sput-boolean v5, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->mAccountInited:Z

    .line 147
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 148
    .local v10, values1:Landroid/content/ContentValues;
    const-string v0, "account_name"

    invoke-virtual {v10, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "account_type"

    invoke-virtual {v10, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 152
    .local v9, rawContactUri:Landroid/net/Uri;
    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 153
    .local v7, rawContactId:J
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, section:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "account_name"

    aput-object v1, v2, v0

    const-string v0, "account_type"

    aput-object v0, v2, v5

    .line 155
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 157
    .local v6, groupCursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 172
    :cond_2
    const-string v0, "account_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->DEFAULT_ACCOUNT_NAME:Ljava/lang/String;

    .line 173
    const-string v0, "account_type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->DEFAULT_ACCOUNT_TYPE:Ljava/lang/String;

    .line 174
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->DEFAULT_ACCOUNT_NAME:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->DEFAULT_ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/backup/common/Logging;->i(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 178
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo;->getInstance()Lcom/zte/backup/utils/VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/backup/utils/VersionInfo;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->DEFAULT_ACCOUNT_NAME:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 179
    const-string v0, "Phone"

    sput-object v0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->DEFAULT_ACCOUNT_NAME:Ljava/lang/String;

    .line 180
    const-string v0, "Local Phone Account"

    sput-object v0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->DEFAULT_ACCOUNT_TYPE:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public addBackupGroup(Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->backupGroup:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    return-void
.end method

.method public autoCreateGroupAndReturnID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "groupName"

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->getGroupIdByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, id:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p0, p1}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->createGroup(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {p0, p1}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->getGroupIdByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->allGroup:Ljava/util/List;

    .line 101
    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->mContentResolver:Landroid/content/ContentResolver;

    .line 102
    iput-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->backupGroup:Ljava/util/List;

    .line 103
    return-void
.end method

.method public createGroup(Ljava/lang/String;)Z
    .locals 8
    .parameter "groupName"

    .prologue
    const/4 v4, 0x0

    .line 119
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 120
    .local v3, values:Landroid/content/ContentValues;
    const-string v5, "account_name"

    sget-object v6, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->DEFAULT_ACCOUNT_NAME:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v5, "account_type"

    sget-object v6, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->DEFAULT_ACCOUNT_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v5, "title"

    invoke-virtual {v3, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v5, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 125
    .local v2, uriGroup:Landroid/net/Uri;
    if-nez v2, :cond_0

    .line 126
    const-string v5, "group"

    const-string v6, "error"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v2           #uriGroup:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_0
    return v4

    .line 130
    .restart local v2       #uriGroup:Landroid/net/Uri;
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, groupId:Ljava/lang/String;
    iget-object v5, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->allGroup:Ljava/util/List;

    new-instance v6, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;

    invoke-direct {v6, p0, p1, v1}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;-><init>(Lcom/zte/backup/format/vxx/vcard/GroupsUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    const/4 v4, 0x1

    goto :goto_0

    .line 133
    .end local v1           #groupId:Ljava/lang/String;
    .end local v2           #uriGroup:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 134
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAllGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->allGroup:Ljava/util/List;

    return-object v0
.end method

.method public getBackupGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->backupGroup:Ljava/util/List;

    return-object v0
.end method

.method public getContactByID(Ljava/util/List;Ljava/lang/String;)Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;
    .locals 3
    .parameter
    .parameter "contactID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, contactsList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 336
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 330
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;

    .line 331
    .local v0, data:Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;
    invoke-virtual {v0}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getContactsIDByGroupID(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 14
    .parameter "groupID"
    .parameter "groupName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    .local p3, contactsList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;>;"
    invoke-direct {p0, p1}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->getGroupContactsRawIDs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 341
    .local v13, rawIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 380
    :goto_0
    return-void

    .line 345
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v1, "deleted=0 AND "

    invoke-direct {v12, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 346
    .local v12, inSelectionBff:Ljava/lang/StringBuilder;
    const-string v1, "_id"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN ( 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 350
    const/16 v1, 0x29

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    const/4 v8, 0x0

    .line 353
    .local v8, contactIdCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 354
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "contact_id"

    aput-object v5, v3, v4

    .line 355
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 353
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 357
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_3

    .line 377
    :cond_1
    invoke-direct {p0, v8}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 347
    .end local v8           #contactIdCursor:Landroid/database/Cursor;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 348
    .local v11, id:Ljava/lang/String;
    const/16 v2, 0x2c

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 360
    .end local v11           #id:Ljava/lang/String;
    .restart local v8       #contactIdCursor:Landroid/database/Cursor;
    :cond_3
    :try_start_1
    const-string v1, "contact_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 359
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 361
    .local v7, contactID:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {p0, v0, v7}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->getContactByID(Ljava/util/List;Ljava/lang/String;)Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;

    move-result-object v9

    .line 362
    .local v9, data:Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;
    if-nez v9, :cond_4

    .line 363
    new-instance v9, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;

    .end local v9           #data:Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;
    invoke-direct {v9, v7}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;-><init>(Ljava/lang/String;)V

    .line 364
    .restart local v9       #data:Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;
    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;->addGroup(Ljava/lang/String;)V

    .line 368
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 372
    .end local v7           #contactID:Ljava/lang/String;
    .end local v9           #data:Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;
    :catch_0
    move-exception v10

    .line 373
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 377
    invoke-direct {p0, v8}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->closeCursor(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 376
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 377
    invoke-direct {p0, v8}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 378
    throw v1
.end method

.method public getContactsIDByGroupsID(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, groupsID:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, groupsName:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 417
    .local v0, contactsList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/backup/format/vxx/vcard/GroupsUtil$ContactData;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 423
    return-object v0

    .line 418
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 419
    .local v1, groupID:Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 420
    .local v2, groupName:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v0}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->getContactsIDByGroupID(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 417
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getGroupIdByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->allGroup:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 202
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 196
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;

    .line 197
    .local v0, group:Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;
    invoke-virtual {v0}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;->getID()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getGroupNameByID(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "iD"

    .prologue
    .line 186
    iget-object v1, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->allGroup:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 192
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 186
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;

    .line 187
    .local v0, group:Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;
    invoke-virtual {v0}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public initAllContactsGroup()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 257
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->allGroup:Ljava/util/List;

    if-nez v0, :cond_0

    .line 289
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->allGroup:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 261
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "title"

    aput-object v1, v2, v0

    const-string v0, "_id"

    aput-object v0, v2, v10

    .line 262
    .local v2, projection:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->getGroupSQL()Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, section:Ljava/lang/String;
    const/4 v7, 0x0

    .line 266
    .local v7, groupCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 268
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ge v0, v10, :cond_2

    .line 287
    :cond_1
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 272
    :cond_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    .line 287
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 277
    :cond_3
    :try_start_2
    const-string v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 278
    .local v9, title:Ljava/lang/String;
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 279
    .local v8, id:Ljava/lang/String;
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->allGroup:Ljava/util/List;

    new-instance v1, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;

    invoke-direct {v1, p0, v9, v8}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil$GroupsData;-><init>(Lcom/zte/backup/format/vxx/vcard/GroupsUtil;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 283
    .end local v8           #id:Ljava/lang/String;
    .end local v9           #title:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 284
    .local v6, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 287
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 286
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 287
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 288
    throw v0
.end method

.method public queryGroupIDByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "groupName"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 217
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "title"

    aput-object v1, v2, v0

    const-string v0, "_id"

    aput-object v0, v2, v9

    .line 218
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "title=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 219
    invoke-direct {p0}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->getGroupSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, section:Ljava/lang/String;
    const/4 v7, 0x0

    .line 223
    .local v7, groupCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 225
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ge v0, v9, :cond_1

    .line 242
    :cond_0
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 245
    :goto_0
    return-object v8

    .line 229
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 234
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 242
    .local v8, id:Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 238
    .end local v8           #id:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 239
    .local v6, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 241
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 242
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->closeCursor(Landroid/database/Cursor;)V

    .line 243
    throw v0

    .line 242
    :cond_2
    invoke-direct {p0, v7}, Lcom/zte/backup/format/vxx/vcard/GroupsUtil;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method
