.class public Lcom/zte/heartyservice/privacy/PasswordRecord;
.super Lcom/zte/heartyservice/common/datatype/CommonListItem;
.source "PasswordRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/PasswordRecord$Columns;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE_MAX:I = 0x6

.field public static final PASSWORD_PROTECTOR_TABLE:Ljava/lang/String; = "passwordprotector"

.field private static final TAG:Ljava/lang/String; = "PasswordRecord"


# instance fields
.field public mAccountDescription:Ljava/lang/String;

.field public mAccountType:I

.field public mId:J

.field public mNotes:Ljava/lang/String;

.field public mPassword:Ljava/lang/String;

.field public mUserName:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 12
    .parameter "id"

    .prologue
    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/CommonListItem;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/privacy/PasswordRecord;->mAccountType:I

    .line 21
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecord;->mAccountDescription:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecord;->mUserName:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecord;->mPassword:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordRecord;->mNotes:Ljava/lang/String;

    .line 25
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/zte/heartyservice/privacy/PasswordRecord;->mId:J

    .line 56
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const/4 v8, 0x0

    .line 60
    .local v8, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "passwordprotector"

    sget-object v2, Lcom/zte/heartyservice/privacy/PasswordRecord$Columns;->COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 66
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v11, :cond_2

    .line 67
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 68
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptStringRSA(Ljava/lang/String;Ljava/security/Key;)[B

    move-result-object v10

    .line 71
    .local v10, keyData:[B
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/privacy/PasswordRecord;->mAccountType:I

    .line 72
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordRecord;->mAccountDescription:Ljava/lang/String;

    .line 76
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordRecord;->mUserName:Ljava/lang/String;

    .line 79
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordRecord;->mPassword:Ljava/lang/String;

    .line 83
    const/4 v0, 0x6

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordRecord;->mNotes:Ljava/lang/String;

    .line 85
    iput-wide p1, p0, Lcom/zte/heartyservice/privacy/PasswordRecord;->mId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v10           #keyData:[B
    :goto_1
    if-eqz v8, :cond_0

    .line 93
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 87
    :cond_2
    :try_start_1
    const-string v0, "PasswordRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not found id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recourd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 89
    :catch_0
    move-exception v9

    .line 90
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    const-string v0, "PasswordRecord"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get password record id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    if-eqz v8, :cond_0

    .line 93
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 92
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 93
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static notifyDBChange()V
    .locals 0

    .prologue
    .line 169
    invoke-static {}, Lcom/zte/heartyservice/privacy/PasswordProtectorActivity;->notifyDBChange()V

    .line 170
    return-void
.end method


# virtual methods
.method public deleteFromDB()Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 115
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 116
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "passwordprotector"

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/zte/heartyservice/privacy/PasswordRecord;->mId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 118
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/zte/heartyservice/privacy/PasswordRecord;->mId:J

    .line 119
    invoke-static {}, Lcom/zte/heartyservice/privacy/PasswordRecord;->notifyDBChange()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return v2

    .line 121
    :catch_0
    move-exception v1

    .line 122
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "PasswordRecord"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete password record id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/zte/heartyservice/privacy/PasswordRecord;->mId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v3

    .line 125
    goto :goto_0
.end method

.method public saveToDB()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 129
    const-wide/16 v4, -0x1

    .line 131
    .local v4, result:J
    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 132
    .local v3, pwr:Landroid/content/ContentValues;
    const-string v6, "account_type"

    iget v7, p0, Lcom/zte/heartyservice/privacy/PasswordRecord;->mAccountType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->createRandomAESKey()[B

    move-result-object v2

    .line 135
    .local v2, keyData:[B
    const-string v6, "account_description"

    iget-object v7, p0, Lcom/zte/heartyservice/privacy/PasswordRecord;->mAccountDescription:Ljava/lang/String;

    invoke-static {v7, v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v6, "user_name"

    iget-object v7, p0, Lcom/zte/heartyservice/privacy/PasswordRecord;->mUserName:Ljava/lang/String;

    invoke-static {v7, v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v6, "password"

    iget-object v7, p0, Lcom/zte/heartyservice/privacy/PasswordRecord;->mPassword:Ljava/lang/String;

    invoke-static {v7, v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v6, "notes"

    iget-object v7, p0, Lcom/zte/heartyservice/privacy/PasswordRecord;->mNotes:Ljava/lang/String;

    invoke-static {v7, v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v6, "key"

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryStringRSA([BLjava/security/Key;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-wide v6, p0, Lcom/zte/heartyservice/privacy/PasswordRecord;->mId:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    .line 148
    const-string v6, "_id"

    iget-wide v7, p0, Lcom/zte/heartyservice/privacy/PasswordRecord;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 149
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 150
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "passwordprotector"

    const-string v7, "_id"

    invoke-virtual {v0, v6, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 160
    :cond_0
    :goto_0
    invoke-static {}, Lcom/zte/heartyservice/privacy/PasswordRecord;->notifyDBChange()V

    .line 165
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #keyData:[B
    .end local v3           #pwr:Landroid/content/ContentValues;
    :goto_1
    return-wide v4

    .line 153
    .restart local v2       #keyData:[B
    .restart local v3       #pwr:Landroid/content/ContentValues;
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 154
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v6, "passwordprotector"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 156
    cmp-long v6, v4, v8

    if-ltz v6, :cond_0

    .line 157
    iput-wide v4, p0, Lcom/zte/heartyservice/privacy/PasswordRecord;->mId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #keyData:[B
    .end local v3           #pwr:Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 162
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "PasswordRecord"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Save password record id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/zte/heartyservice/privacy/PasswordRecord;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
