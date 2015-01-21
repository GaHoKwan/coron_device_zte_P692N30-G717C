.class public Lcom/android/providers/contacts/DataRowHandlerForSipAddress;
.super Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;
.source "DataRowHandlerForSipAddress.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "DataRowHandlerForSipAddress"


# instance fields
.field private mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mDialerSearchCallLogIdUpdateByContactNumberUpdated:Landroid/database/sqlite/SQLiteStatement;

.field private mDialerSearchContactNumDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

.field private mDialerSearchNoNameCallLogNumDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mDialerSearchNumDelByCallLogDataId:Landroid/database/sqlite/SQLiteStatement;

.field private mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mLatestCallLogIdQuery:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/mediatek/providers/contacts/ContactsFeatureConstants;->DBG_DIALER_SEARCH:Z

    sput-boolean v0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/ContactAggregator;)V
    .locals 7
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"

    .prologue
    .line 43
    const-string v4, "vnd.android.cursor.item/sip_address"

    const-string v5, "data2"

    const-string v6, "data3"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/ContactAggregator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 47
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 322
    sget-boolean v0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->DBG:Z

    if-eqz v0, :cond_0

    .line 323
    const-string v0, "DataRowHandlerForSipAddress"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    return-void
.end method


# virtual methods
.method public appendSearchableData(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 342
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;->appendContentFromColumn(Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .locals 0
    .parameter "stmt"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 314
    if-nez p3, :cond_0

    .line 315
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public containsSearchableColumns(Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "values"

    .prologue
    .line 337
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 6
    .parameter "db"
    .parameter "txContext"
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 51
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    :goto_0
    return v0

    .line 54
    :cond_0
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 56
    .local v1, dataId:J
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 59
    .local v0, count:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[delete] dataId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    .line 61
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_1

    .line 62
    const-string v3, "UPDATE calls SET data_id=?, raw_contact_id=?  WHERE data_id =? "

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 68
    :cond_1
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 69
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 70
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 71
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 72
    const-string v3, "[delete] Remove raw_contact_id and data_id data in CallLog. "

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    .line 77
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNoNameCallLogNumDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_2

    .line 78
    const-string v3, "UPDATE dialer_search SET raw_contact_id = -call_log_id,data_id = -call_log_id WHERE data_id = ? AND call_log_id > 0 AND name_type = 8"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNoNameCallLogNumDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 89
    :cond_2
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNoNameCallLogNumDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3, v5, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 90
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNoNameCallLogNumDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 91
    const-string v3, "[update] Change old record in dialer_search table to a NO NAME CALLLOG. "

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    .line 93
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchContactNumDelete:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_3

    .line 94
    const-string v3, "DELETE FROM dialer_search WHERE data_id =? AND call_log_id = 0 AND name_type = 8"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchContactNumDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 101
    :cond_3
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchContactNumDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3, v5, v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 102
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchContactNumDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 103
    const-string v3, "[delete] delete dialer search table."

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hasSearchableData()Z
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x1

    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 9
    .parameter "db"
    .parameter "txContext"
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    const/4 v8, 0x1

    .line 111
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const-wide/16 v5, 0x0

    .line 165
    :goto_0
    return-wide v5

    .line 115
    :cond_0
    const-string v0, "data1"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 116
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v5

    .line 118
    .local v5, dataId:J
    const-string v0, "data1"

    invoke-virtual {p5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, sipNumber:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    .line 121
    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->updateCallsInfoForNewInsertNumber(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JJ)I

    move-result v7

    .line 123
    .local v7, mLatestCallLogId:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[insert] latest call log id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    .line 125
    if-lez v7, :cond_2

    .line 126
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_1

    .line 127
    const-string v0, "DELETE FROM dialer_search WHERE call_log_id =?  AND name_type = 8"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;

    int-to-long v3, v7

    invoke-virtual {v0, v8, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 135
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 136
    const-string v0, "[insert]delete no name call log. "

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_3

    .line 141
    const-string v0, "INSERT INTO dialer_search(raw_contact_id,data_id,normalized_name,name_type,call_log_id,normalized_name_alternative) VALUES (?,?,?,?,?,?)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 151
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v8, p3, p4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 152
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5, v6}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 153
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    const-wide/16 v3, 0x8

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 155
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x5

    int-to-long v3, v7

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 156
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 158
    const-string v0, "[insert] insert new data into dialer search table. "

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    .end local v2           #sipNumber:Ljava/lang/String;
    .end local v5           #dataId:J
    .end local v7           #mLatestCallLogId:I
    :cond_4
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v5

    .restart local v5       #dataId:J
    goto/16 :goto_0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 14
    .parameter "db"
    .parameter "txContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    const/4 v1, 0x0

    .line 274
    :goto_0
    return v1

    .line 174
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForCommonDataKind;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 175
    const/4 v1, 0x0

    goto :goto_0

    .line 177
    :cond_1
    const-string v1, "data1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 179
    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 180
    .local v6, dataId:J
    const/4 v1, 0x1

    move-object/from16 v0, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 181
    .local v4, rawContactId:J
    const-string v1, "data1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, sipNumber:Ljava/lang/String;
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 183
    .local v10, mStrDataId:Ljava/lang/String;
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    .line 184
    .local v11, mStrRawContactId:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[update]update: sipNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " || mStrRawContactId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " || mStrDataId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    .line 188
    const/4 v8, 0x0

    .line 191
    .local v8, mDeletedCallLogId:I
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_2

    .line 192
    const-string v1, "UPDATE calls SET data_id=?, raw_contact_id=?  WHERE data_id =? "

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 198
    :cond_2
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 199
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 200
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v6, v7}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 201
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsReplaceDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 202
    const-string v1, "[update] Change the old records in calls table to a NO NAME CALLLOG."

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNoNameCallLogNumDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_3

    .line 206
    const-string v1, "UPDATE dialer_search SET raw_contact_id = -call_log_id,data_id = -call_log_id WHERE data_id = ? AND call_log_id > 0 AND name_type = 8"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNoNameCallLogNumDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 217
    :cond_3
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNoNameCallLogNumDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v6, v7}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 218
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNoNameCallLogNumDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 219
    const-string v1, "[update]Change old records in dialer_search to NO NAME CALLLOG FOR its callLogId>0."

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchContactNumDelete:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_4

    .line 222
    const-string v1, "DELETE FROM dialer_search WHERE data_id =? AND call_log_id = 0 AND name_type = 8"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchContactNumDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 229
    :cond_4
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchContactNumDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v6, v7}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 230
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchContactNumDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 231
    const-string v1, "[update]Delete old records in dialer_search FOR its callLogId=0."

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    .line 234
    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->updateCallsInfoForNewInsertNumber(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JJ)I

    move-result v9

    .line 236
    .local v9, mLatestCallLogId:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[update] latest call log id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    .line 238
    if-lez v9, :cond_6

    .line 239
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_5

    .line 240
    const-string v1, "DELETE FROM dialer_search WHERE call_log_id =?  AND name_type = 8"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 246
    :cond_5
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    int-to-long v12, v9

    invoke-virtual {v1, v2, v12, v13}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 247
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNumDelByCallLogIdDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 248
    const-string v1, "[update]delete no name call log for udpated number. "

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    .line 252
    :cond_6
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_7

    .line 253
    const-string v1, "INSERT INTO dialer_search(raw_contact_id,data_id,normalized_name,name_type,call_log_id,normalized_name_alternative) VALUES (?,?,?,?,?,?)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 263
    :cond_7
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 264
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v6, v7}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 265
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x4

    const-wide/16 v12, 0x8

    invoke-virtual {v1, v2, v12, v13}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 267
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x5

    int-to-long v12, v9

    invoke-virtual {v1, v2, v12, v13}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 268
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 270
    const-string v1, "[update] insert new data into dialer search table. "

    invoke-direct {p0, v1}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->log(Ljava/lang/String;)V

    .line 274
    .end local v3           #sipNumber:Ljava/lang/String;
    .end local v4           #rawContactId:J
    .end local v6           #dataId:J
    .end local v8           #mDeletedCallLogId:I
    .end local v9           #mLatestCallLogId:I
    .end local v10           #mStrDataId:Ljava/lang/String;
    .end local v11           #mStrRawContactId:Ljava/lang/String;
    :cond_8
    const/4 v1, 0x1

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

    .line 280
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_0

    .line 281
    const-string v3, "UPDATE calls SET data_id=?, raw_contact_id=?  WHERE number=? AND data_id IS NULL "

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 288
    :cond_0
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mLatestCallLogIdQuery:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_1

    .line 289
    const-string v3, "SELECT _id FROM calls WHERE date = ( SELECT MAX( date )  FROM calls WHERE data_id =? )"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mLatestCallLogIdQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 296
    :cond_1
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3, v4, p5, p6}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 297
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p3, p4}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 298
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4, p2}, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 299
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mCallsNewInsertDataIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 300
    const/4 v1, 0x0

    .line 302
    .local v1, mCallLogId:I
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mLatestCallLogIdQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p5, p6}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 303
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForSipAddress;->mLatestCallLogIdQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    long-to-int v1, v2

    move v2, v1

    .line 310
    :goto_0
    return v2

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    goto :goto_0

    .line 306
    .end local v0           #e:Landroid/database/sqlite/SQLiteDoneException;
    :catch_1
    move-exception v0

    .line 307
    .local v0, e:Ljava/lang/NullPointerException;
    goto :goto_0
.end method
