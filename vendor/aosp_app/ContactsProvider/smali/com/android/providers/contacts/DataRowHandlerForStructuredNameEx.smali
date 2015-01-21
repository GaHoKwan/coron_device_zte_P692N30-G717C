.class public Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;
.super Lcom/android/providers/contacts/DataRowHandlerForStructuredName;
.source "DataRowHandlerForStructuredNameEx.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "DataRowHandlerForStructuredNameEx"


# instance fields
.field private mDialerSearchDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-boolean v0, Lcom/mediatek/providers/contacts/ContactsFeatureConstants;->DBG_DIALER_SEARCH:Z

    sput-boolean v0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/ContactAggregator;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/NameLookupBuilder;)V
    .locals 0
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"
    .parameter "splitter"
    .parameter "nameLookupBuilder"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/aggregation/ContactAggregator;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/NameLookupBuilder;)V

    .line 30
    return-void
.end method

.method private deleteNameForDialerSearch(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 2
    .parameter "db"
    .parameter "dataId"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchDelete:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 83
    const-string v0, "DELETE FROM dialer_search WHERE data_id=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 88
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 89
    const-string v0, "[deleteNameForDialerSearch]delete name records in dialer search table"

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->log(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->DBG:Z

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "DataRowHandlerForStructuredNameEx"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 4
    .parameter "db"
    .parameter "txContext"
    .parameter "c"

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandlerForStructuredName;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 36
    .local v0, count:I
    const/4 v3, 0x0

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 37
    .local v1, dataId:J
    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->deleteNameForDialerSearch(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 39
    return v0
.end method

.method protected insertDialerSearchName(Landroid/database/sqlite/SQLiteDatabase;JJLandroid/content/ContentValues;)V
    .locals 7
    .parameter "db"
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "values"

    .prologue
    .line 46
    const-string v0, "data1"

    invoke-virtual {p6, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, name:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 47
    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->insertNameForDialerSearch(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)V

    .line 49
    return-void
.end method

.method public insertNameForDialerSearch(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)V
    .locals 6
    .parameter "db"
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "name"

    .prologue
    .line 52
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    if-nez v2, :cond_0

    .line 53
    const-string v2, "INSERT INTO dialer_search(raw_contact_id,data_id,normalized_name,name_type,call_log_id,normalized_name_alternative) VALUES (?,?,?,?,?,?)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 63
    :cond_0
    if-nez p6, :cond_1

    .line 76
    :goto_0
    return-void

    .line 66
    :cond_1
    const-wide/16 v0, 0x0

    .line 68
    .local v0, mCallLogId:J
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 69
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p4, p5}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 70
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 71
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x4

    const-wide/16 v4, 0xb

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 72
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 73
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 74
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->mDialerSearchNewRecordInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 75
    const-string v2, "[insertNameForDialerSearch]insert name records into dialer search table."

    invoke-direct {p0, v2}, Lcom/android/providers/contacts/DataRowHandlerForStructuredNameEx;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateNameForDialerSearch(Landroid/database/sqlite/SQLiteDatabase;JJLjava/lang/String;)V
    .locals 0
    .parameter "db"
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "name"

    .prologue
    .line 79
    return-void
.end method
