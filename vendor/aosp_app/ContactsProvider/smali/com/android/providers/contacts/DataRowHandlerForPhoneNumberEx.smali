.class public Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;
.super Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;
.source "DataRowHandlerForPhoneNumberEx.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "DataRowHandlerForPhoneNumberEx"


# instance fields
.field private mCallsGetLatestCallLogIdForOneContactQuery:Landroid/database/sqlite/SQLiteStatement;

.field private mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mDialerSearchCallLogIdUpdateByContactNumberUpdated:Landroid/database/sqlite/SQLiteStatement;

.field private mDialerSearchContactNumDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

.field private mDialerSearchNoNameCallLogNumDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/mediatek/providers/contacts/ContactsFeatureConstants;->DBG_DIALER_SEARCH:Z

    sput-boolean v0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/ContactAggregator;)V
    .locals 0
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/ContactAggregator;)V

    .line 40
    iput-object p2, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 41
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 362
    sget-boolean v0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->DBG:Z

    if-eqz v0, :cond_0

    .line 363
    const-string v0, "DataRowHandlerForPhoneNumberEx"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    return-void
.end method

.method private updateCallsAndDialerSearchByContactNumberChanged(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .locals 32
    .parameter "db"
    .parameter "rawContactId"
    .parameter "dataId"

    .prologue
    .line 288
    const/16 v31, 0x0

    .line 289
    .local v31, oldNumber:Ljava/lang/String;
    const-wide/16 v15, -0x1

    .line 290
    .local v15, callLogId:J
    const-wide/16 v28, -0x1

    .line 291
    .local v28, newDataId:J
    const-wide/16 v25, -0x1

    .line 293
    .local v25, newContactId:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateCallsAndDialerSearch] rawContactId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dataId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 296
    const-string v5, "calls"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v4

    const/4 v4, 0x1

    const-string v7, "number"

    aput-object v7, v6, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data_id="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " AND "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "raw_contact_id"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, " _id DESC "

    const-string v12, "1"

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v30

    .line 301
    .local v30, numberCallCursor:Landroid/database/Cursor;
    if-eqz v30, :cond_6

    :try_start_0
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 302
    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 303
    const/4 v4, 0x1

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 306
    .end local v31           #oldNumber:Ljava/lang/String;
    .local v6, oldNumber:Ljava/lang/String;
    :goto_0
    if-eqz v30, :cond_0

    .line 307
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 311
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateCallsAndDialerSearch] callLogId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide v0, v15

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 312
    const-wide/16 v4, 0x0

    cmp-long v4, v15, v4

    if-lez v4, :cond_3

    .line 314
    if-eqz v6, :cond_5

    .line 315
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "data_id"

    aput-object v8, v7, v4

    const/4 v4, 0x1

    const-string v8, "raw_contact_id"

    aput-object v8, v7, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data_id!="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "1"

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v13}, Lcom/android/providers/contacts/DialerSearchSupport;->queryPhoneLookupByNumber(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactsDatabaseHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 320
    .local v27, newContactIdCursor:Landroid/database/Cursor;
    if-eqz v27, :cond_5

    .line 321
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 322
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 323
    .end local v28           #newDataId:J
    .local v9, newDataId:J
    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 325
    .end local v25           #newContactId:J
    .local v11, newContactId:J
    :goto_1
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 328
    .end local v27           #newContactIdCursor:Landroid/database/Cursor;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateCallsAndDialerSearch] callLogId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide v0, v15

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newDataId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newContactId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 332
    const-wide/16 v4, 0x0

    cmp-long v4, v9, v4

    if-lez v4, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, v11, v4

    if-lez v4, :cond_2

    .line 334
    const-string v4, "[updateCallsAndDialerSearch] Update Calls table(data_id to new data_id)."

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-wide/from16 v13, p4

    .line 335
    invoke-virtual/range {v7 .. v14}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->updateCallsReplaceDataId(Landroid/database/sqlite/SQLiteDatabase;JJJ)V

    .line 338
    const-string v4, "[updateCallsAndDialerSearch] update dialer_search table."

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-wide/from16 v17, v9

    .line 339
    invoke-virtual/range {v13 .. v18}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->updateDialerSearchCallLogIdByDataId(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 342
    const-string v4, "[updateCallsAndDialerSearch] delete dialer_search table."

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->deleteDialerSearchContactNum(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 359
    :goto_3
    return-void

    .line 306
    .end local v6           #oldNumber:Ljava/lang/String;
    .end local v9           #newDataId:J
    .end local v11           #newContactId:J
    .restart local v25       #newContactId:J
    .restart local v28       #newDataId:J
    .restart local v31       #oldNumber:Ljava/lang/String;
    :catchall_0
    move-exception v4

    if-eqz v30, :cond_1

    .line 307
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v4

    .line 347
    .end local v25           #newContactId:J
    .end local v28           #newDataId:J
    .end local v31           #oldNumber:Ljava/lang/String;
    .restart local v6       #oldNumber:Ljava/lang/String;
    .restart local v9       #newDataId:J
    .restart local v11       #newContactId:J
    :cond_2
    const-string v4, "[updateCallsAndDialerSearch] Update Calls table(data_id to null)."

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 348
    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move-wide/from16 v23, p4

    invoke-virtual/range {v17 .. v24}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->updateCallsReplaceDataId(Landroid/database/sqlite/SQLiteDatabase;JJJ)V

    .line 350
    const-string v4, "[updateCallsAndDialerSearch] Change old records in dialer_search to NO NAME CALLLOG FOR its callLogId>0."

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 352
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->updateDialerSearchNoNameCallLog(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_3

    .line 356
    .end local v9           #newDataId:J
    .end local v11           #newContactId:J
    .restart local v25       #newContactId:J
    .restart local v28       #newDataId:J
    :cond_3
    const-string v4, "[updateCallsAndDialerSearch] delete dialer_search table."

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 357
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->deleteDialerSearchContactNum(Landroid/database/sqlite/SQLiteDatabase;J)V

    move-wide/from16 v11, v25

    .end local v25           #newContactId:J
    .restart local v11       #newContactId:J
    move-wide/from16 v9, v28

    .end local v28           #newDataId:J
    .restart local v9       #newDataId:J
    goto :goto_3

    .end local v9           #newDataId:J
    .end local v11           #newContactId:J
    .restart local v25       #newContactId:J
    .restart local v27       #newContactIdCursor:Landroid/database/Cursor;
    .restart local v28       #newDataId:J
    :cond_4
    move-wide/from16 v11, v25

    .end local v25           #newContactId:J
    .restart local v11       #newContactId:J
    move-wide/from16 v9, v28

    .end local v28           #newDataId:J
    .restart local v9       #newDataId:J
    goto/16 :goto_1

    .end local v9           #newDataId:J
    .end local v11           #newContactId:J
    .end local v27           #newContactIdCursor:Landroid/database/Cursor;
    .restart local v25       #newContactId:J
    .restart local v28       #newDataId:J
    :cond_5
    move-wide/from16 v11, v25

    .end local v25           #newContactId:J
    .restart local v11       #newContactId:J
    move-wide/from16 v9, v28

    .end local v28           #newDataId:J
    .restart local v9       #newDataId:J
    goto/16 :goto_2

    .end local v6           #oldNumber:Ljava/lang/String;
    .end local v9           #newDataId:J
    .end local v11           #newContactId:J
    .restart local v25       #newContactId:J
    .restart local v28       #newDataId:J
    .restart local v31       #oldNumber:Ljava/lang/String;
    :cond_6
    move-object/from16 v6, v31

    .end local v31           #oldNumber:Ljava/lang/String;
    .restart local v6       #oldNumber:Ljava/lang/String;
    goto/16 :goto_0
.end method


# virtual methods
.method bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .locals 0
    .parameter "stmt"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 273
    if-nez p3, :cond_0

    .line 274
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 7
    .parameter "db"
    .parameter "txContext"
    .parameter "c"

    .prologue
    .line 45
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v6

    .line 51
    .local v6, result:I
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 52
    .local v4, dataId:J
    const/4 v0, 0x2

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 53
    .local v2, rawContactId:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[delete] dataId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " || rawContactId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->updateCallsAndDialerSearchByContactNumberChanged(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 57
    return v6
.end method

.method deleteDialerSearchContactNum(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "db"
    .parameter "dataId"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchContactNumDelete:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 264
    const-string v0, "DELETE FROM dialer_search WHERE data_id =? "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchContactNumDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchContactNumDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 269
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchContactNumDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 270
    return-void
.end method

.method deleteDialerSearchNumByCallLogId(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 4
    .parameter "db"
    .parameter "latestCallLogId"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 144
    const-string v0, "DELETE FROM dialer_search WHERE call_log_id =?  AND name_type = 8"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 151
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 152
    return-void
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 20
    .parameter "db"
    .parameter "txContext"
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 63
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v8

    .line 64
    .local v8, dataId:J
    const-string v3, "data1"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 65
    const-string v3, "data1"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 67
    .local v19, number:Ljava/lang/String;
    const/4 v5, 0x0

    .line 68
    .local v5, numberForDialerSearch:Ljava/lang/String;
    if-eqz v19, :cond_0

    .line 69
    invoke-static/range {v19 .. v19}, Lcom/android/providers/contacts/DialerSearchSupport;->stripSpecialCharInNumberForDialerSearch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 72
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[insert] number:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " || numberForDialerSearch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[insert] rawContactId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dataId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v6, p3

    .line 77
    invoke-virtual/range {v3 .. v9}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->updateCallsInfoForNewInsertNumber(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JJ)I

    move-result v18

    .line 79
    .local v18, latestCallLogId:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[insert] latest call log id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 81
    if-lez v18, :cond_1

    .line 82
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->deleteDialerSearchNumByCallLogId(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 83
    const-string v3, "[insert]delete no name call log. "

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 87
    :cond_1
    const/16 v17, 0x8

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-wide/from16 v12, p3

    move-wide v14, v8

    move-object/from16 v16, v5

    invoke-virtual/range {v10 .. v18}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->insertDialerSearchNewRecord(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;II)V

    .line 89
    const-string v3, "[insert] insert new data into dialer search table. "

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 93
    .end local v5           #numberForDialerSearch:Ljava/lang/String;
    .end local v18           #latestCallLogId:I
    .end local v19           #number:Ljava/lang/String;
    :cond_2
    return-wide v8
.end method

.method insertDialerSearchNewRecord(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;II)V
    .locals 4
    .parameter "db"
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "number"
    .parameter "nameType"
    .parameter "lastCallLogId"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 158
    const-string v0, "INSERT INTO dialer_search(raw_contact_id,data_id,normalized_name,name_type,call_log_id,normalized_name_alternative) VALUES (?,?,?,?,?,?)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 169
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p4, p5}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 170
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, p6}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    int-to-long v2, p7

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 172
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x5

    int-to-long v2, p8

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 173
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1, p6}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 175
    return-void
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 23
    .parameter "db"
    .parameter "txContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 99
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumber;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v22

    .line 100
    .local v22, result:Z
    if-nez v22, :cond_1

    .line 101
    const/16 v22, 0x0

    .line 139
    .end local v22           #result:Z
    :cond_0
    :goto_0
    return v22

    .line 103
    .restart local v22       #result:Z
    :cond_1
    const-string v3, "data1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    const-string v3, "data1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 105
    .local v21, number:Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 106
    .local v7, dataId:J
    const/4 v3, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 109
    .local v5, rawContactId:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[update]update: number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " || rawContactId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " || dataId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 114
    invoke-direct/range {v3 .. v8}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->updateCallsAndDialerSearchByContactNumberChanged(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 116
    const/4 v11, 0x0

    .line 117
    .local v11, numberForDialerSearch:Ljava/lang/String;
    if-eqz v21, :cond_2

    .line 118
    invoke-static/range {v21 .. v21}, Lcom/android/providers/contacts/DialerSearchSupport;->stripSpecialCharInNumberForDialerSearch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 121
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[update] number:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " || numberForDialerSearch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 123
    const-string v3, "[update]Delete old records in dialer_search FOR its callLogId=0."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-wide v12, v5

    move-wide v14, v7

    .line 125
    invoke-virtual/range {v9 .. v15}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->updateCallsInfoForNewInsertNumber(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JJ)I

    move-result v20

    .line 127
    .local v20, latestCallLogId:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[update] latest call log id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 129
    if-lez v20, :cond_3

    .line 130
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->deleteDialerSearchNumByCallLogId(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 131
    const-string v3, "[update]delete no name call log for udpated number. "

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    .line 134
    :cond_3
    const/16 v19, 0x8

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-wide v14, v5

    move-wide/from16 v16, v7

    move-object/from16 v18, v11

    invoke-virtual/range {v12 .. v20}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->insertDialerSearchNewRecord(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;II)V

    .line 136
    const-string v3, "[update] insert new data into dialer search table. "

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method updateCallsInfoForNewInsertNumber(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JJ)I
    .locals 5
    .parameter "db"
    .parameter "number"
    .parameter "rawContactId"
    .parameter "dataId"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 179
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_0

    .line 180
    const-string v3, "UPDATE calls SET data_id=?, raw_contact_id=?  WHERE PHONE_NUMBERS_EQUAL(number, ?) AND data_id IS NULL "

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 187
    :cond_0
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsGetLatestCallLogIdForOneContactQuery:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_1

    .line 188
    const-string v3, "SELECT _id FROM calls WHERE _id = ( SELECT MAX( _id )  FROM calls WHERE data_id =? )"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsGetLatestCallLogIdForOneContactQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 195
    :cond_1
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3, v4, p5, p6}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 196
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p3, p4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 197
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4, p2}, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 198
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 199
    const/4 v1, 0x0

    .line 201
    .local v1, mCallLogId:I
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsGetLatestCallLogIdForOneContactQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p5, p6}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 202
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsGetLatestCallLogIdForOneContactQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    long-to-int v1, v2

    move v2, v1

    .line 208
    :goto_0
    return v2

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    goto :goto_0

    .line 205
    .end local v0           #e:Landroid/database/sqlite/SQLiteDoneException;
    :catch_1
    move-exception v0

    .line 206
    .local v0, e:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method updateCallsReplaceDataId(Landroid/database/sqlite/SQLiteDatabase;JJJ)V
    .locals 5
    .parameter "db"
    .parameter "newDataId"
    .parameter "newContactId"
    .parameter "oldDataId"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 213
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 214
    const-string v0, "UPDATE calls SET data_id=?, raw_contact_id=?  WHERE data_id =? "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 219
    :cond_0
    cmp-long v0, p2, v3

    if-lez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 224
    :goto_0
    cmp-long v0, p4, v3

    if-lez v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v2, p4, p5}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 229
    :goto_1
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p6, p7}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 230
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 231
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_0

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    goto :goto_1
.end method

.method updateDialerSearchCallLogIdByDataId(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .locals 2
    .parameter "db"
    .parameter "callLogId"
    .parameter "dataId"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchCallLogIdUpdateByContactNumberUpdated:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 235
    const-string v0, "UPDATE dialer_search SET call_log_id =?  WHERE data_id = ? "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchCallLogIdUpdateByContactNumberUpdated:Landroid/database/sqlite/SQLiteStatement;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchCallLogIdUpdateByContactNumberUpdated:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 241
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchCallLogIdUpdateByContactNumberUpdated:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p4, p5}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 242
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchCallLogIdUpdateByContactNumberUpdated:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 243
    return-void
.end method

.method updateDialerSearchNoNameCallLog(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "db"
    .parameter "dataId"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchNoNameCallLogNumDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 247
    const-string v0, "UPDATE dialer_search SET raw_contact_id = -call_log_id,data_id = -call_log_id WHERE data_id = ? AND call_log_id > 0 AND name_type = 8"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchNoNameCallLogNumDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchNoNameCallLogNumDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 259
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoneNumberEx;->mDialerSearchNoNameCallLogNumDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 260
    return-void
.end method
