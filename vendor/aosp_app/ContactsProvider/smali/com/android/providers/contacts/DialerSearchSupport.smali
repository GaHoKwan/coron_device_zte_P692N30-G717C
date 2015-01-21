.class public Lcom/android/providers/contacts/DialerSearchSupport;
.super Ljava/lang/Object;
.source "DialerSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/DialerSearchSupport$ResultCallBack;,
        Lcom/android/providers/contacts/DialerSearchSupport$ContactData;,
        Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;,
        Lcom/android/providers/contacts/DialerSearchSupport$DialerSearchQuery;,
        Lcom/android/providers/contacts/DialerSearchSupport$DialerSearchLookupType;,
        Lcom/android/providers/contacts/DialerSearchSupport$DialerSearchLookupColumns;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DS_DBG:Z = false

.field private static final DS_INIT_SEARCH_RESULTS_COLUMNS:Ljava/lang/String; = "_id,vds_contact_id,vds_call_date,vds_call_log_id,vds_call_type,vds_geocoded_location,vds_sim_id,vds_vtcall,vds_indicate_phone_sim,vds_starred,vds_photo_id,vds_phone_type,vds_name,vds_phone_number,vds_lookup,vds_is_sdn_contact"

.field private static final DS_INIT_VIEW_COLUMNS:Ljava/lang/String; = "_id,vds_contact_id,vds_raw_contact_id,vds_name_id,vds_call_date,vds_call_log_id,vds_call_type,vds_geocoded_location,vds_sim_id,vds_vtcall,vds_phone_number,vds_phone_type,vds_lookup,vds_photo_id,vds_starred,vds_indicate_phone_sim,vds_is_sdn_contact"

.field private static final TAG:Ljava/lang/String; = "DialerSearchSupport"

.field private static final TEMP_DIALER_SEARCH_TABLE:Ljava/lang/String; = "temp_dialer_search_table"


# instance fields
.field private mContactMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/contacts/DialerSearchSupport$ContactData;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field private mDisplayOrder:I

.field private mFilterCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNumberCount:I

.field private mPrevSearchNumberLen:I

.field private mResultCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSortOrder:I

.field private mUseStrictPhoneNumberComparation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/mediatek/providers/contacts/ContactsFeatureConstants;->DBG_DIALER_SEARCH:Z

    sput-boolean v0, Lcom/android/providers/contacts/DialerSearchSupport;->DS_DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 3
    .parameter "provider"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mFilterCache:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mResultCache:Ljava/util/ArrayList;

    .line 156
    iput v2, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mNumberCount:I

    .line 157
    iput v1, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mDisplayOrder:I

    .line 158
    iput v1, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mSortOrder:I

    .line 159
    iput v2, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mPrevSearchNumberLen:I

    .line 162
    iput-object p1, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 163
    return-void
.end method

.method private buildCursor([[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 6
    .parameter "cursorValues"

    .prologue
    .line 841
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/providers/contacts/DialerSearchSupport$DialerSearchQuery;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v1, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 842
    .local v1, c:Landroid/database/MatrixCursor;
    if-eqz p1, :cond_0

    .line 843
    move-object v0, p1

    .local v0, arr$:[[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 844
    .local v4, record:[Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 850
    .end local v0           #arr$:[[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #record:[Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 847
    .restart local v0       #arr$:[[Ljava/lang/Object;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #record:[Ljava/lang/Object;
    :cond_1
    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 843
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private buildCursorRecord(JJLjava/lang/String;JILjava/lang/String;IIIIJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 3
    .parameter "id"
    .parameter "contactId"
    .parameter "callData"
    .parameter "callLogId"
    .parameter "callType"
    .parameter "geo"
    .parameter "callSimId"
    .parameter "isVtCall"
    .parameter "simIndicator"
    .parameter "starred"
    .parameter "photoId"
    .parameter "phoneType"
    .parameter "name"
    .parameter "number"
    .parameter "lookup"
    .parameter "isSdn"
    .parameter "phoneOffset"
    .parameter "nameOffset"

    .prologue
    .line 857
    const/16 v1, 0x12

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p5, v0, v1

    const/4 v1, 0x3

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p9, v0, v1

    const/4 v1, 0x6

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static {p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    invoke-static/range {p13 .. p13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    aput-object p17, v0, v1

    const/16 v1, 0xd

    aput-object p18, v0, v1

    const/16 v1, 0xe

    aput-object p19, v0, v1

    const/16 v1, 0xf

    invoke-static/range {p20 .. p20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    aput-object p21, v0, v1

    const/16 v1, 0x11

    aput-object p22, v0, v1

    .line 863
    .local v0, record:[Ljava/lang/Object;
    return-object v0
.end method

.method public static computeNormalizedNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "number"

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, normalizedNumber:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 168
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    :cond_0
    return-object v0
.end method

.method public static createContactsTriggersForDialerSearch(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 301
    const-string v0, "DROP TRIGGER IF EXISTS agg_exceptions_splite_contacts"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 302
    const-string v0, "CREATE TRIGGER agg_exceptions_splite_contacts AFTER INSERT ON agg_exceptions BEGIN    UPDATE dialer_search     SET raw_contact_id=(SELECT raw_contact_id FROM data WHERE data._id=dialer_search.data_id)   WHERE raw_contact_id IN (NEW.raw_contact_id1,NEW.raw_contact_id2) AND is_visiable=1 AND name_type=8 AND NEW.type=2;   UPDATE dialer_search     SET is_visiable=1   WHERE raw_contact_id IN (NEW.raw_contact_id1,NEW.raw_contact_id2) AND is_visiable=0 AND name_type=11 AND NEW.type=2; END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public static createDialerSearchTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 193
    const-string v0, "CREATE TABLE dialer_search (_id INTEGER PRIMARY KEY AUTOINCREMENT,data_id INTEGER REFERENCES data(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,name_type INTEGER NOT NULL,call_log_id INTEGER DEFAULT 0,number_count INTEGER NOT NULL DEFAULT 0, is_visiable INTEGER NOT NULL DEFAULT 1, normalized_name VARCHAR DEFAULT NULL,search_data_offsets VARCHAR DEFAULT NULL,normalized_name_alternative VARCHAR DEFAULT NULL,search_data_offsets_alternative VARCHAR DEFAULT NULL );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 209
    const-string v0, "CREATE INDEX dialer_data_id_index ON dialer_search (data_id);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 212
    const-string v0, "CREATE INDEX dialer_search_raw_contact_id_index ON dialer_search (raw_contact_id,name_type);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 216
    const-string v0, "CREATE INDEX dialer_search_call_log_id_index ON dialer_search (call_log_id);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public static createDialerSearchView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    .line 224
    const-string v3, "DROP VIEW IF EXISTS view_dialer_search;"

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 225
    const-string v0, "dialer_search_name"

    .line 226
    .local v0, mDSNameTable:Ljava/lang/String;
    const-string v1, "dialer_search_number"

    .line 227
    .local v1, mDSNumberTable:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_contact_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_raw_contact_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "raw_contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "display_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "raw_contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "display_name_alt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_name_alternative"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "calls"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "date"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_call_date"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "call_log_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_call_log_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "calls"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_call_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "calls"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "simid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_sim_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "calls"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vtcall"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_vtcall"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "calls"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "geocoded_location"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_geocoded_location"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "normalized_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_phone_number"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_phone_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lookup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_lookup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "photo_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_photo_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "starred"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_starred"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "indicate_phone_or_sim_contact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_indicate_phone_sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is_sdn_contact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_is_sdn_contact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "raw_contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sort_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_sort_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "raw_contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sort_key_alt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_sort_key_alternative"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vds_name_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FROM (SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dialer_search"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "name_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LEFT JOIN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "raw_contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ON "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "raw_contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LEFT JOIN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ON "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "raw_contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "contact_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LEFT JOIN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "calls"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ON "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "calls"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "call_log_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LEFT JOIN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ON "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "data_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LEFT JOIN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dialer_search"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ON "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "raw_contact_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "name_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "contacts"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " >0 OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "call_log_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, mDSViewSelect:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE VIEW view_dialer_search AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method private getDialerSearchNameTableColumns(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "displayOrder"
    .parameter "filterParam"

    .prologue
    .line 820
    const-string v0, "_id ,raw_contact_id,name_type"

    .line 823
    .local v0, columns:Ljava/lang/String;
    const-string v1, ""

    .line 824
    .local v1, searchParamList:Ljava/lang/String;
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 825
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "normalized_name_alternative,search_data_offsets_alternative,name_type,\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 835
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "DIALER_SEARCH_MATCH("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "matched_data_offsets"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 830
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "normalized_name,search_data_offsets,name_type,\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getDialerSearchViewColumns(II)Ljava/lang/String;
    .locals 3
    .parameter "displayOrder"
    .parameter "sortOrder"

    .prologue
    const/4 v2, 0x2

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_id,vds_contact_id,vds_raw_contact_id,vds_name_id,vds_call_date,vds_call_log_id,vds_call_type,vds_geocoded_location,vds_sim_id,vds_vtcall,vds_phone_number,vds_phone_type,vds_lookup,vds_photo_id,vds_starred,vds_indicate_phone_sim,vds_is_sdn_contact"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 373
    .local v0, sb:Ljava/lang/StringBuilder;
    if-ne p1, v2, :cond_0

    .line 374
    const-string v1, ",vds_name_alternative AS vds_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    :goto_0
    if-ne p2, v2, :cond_1

    .line 379
    const-string v1, ",vds_sort_key_alternative AS vds_sort_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 376
    :cond_0
    const-string v1, ",vds_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 382
    :cond_1
    const-string v1, ",vds_sort_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 867
    sget-boolean v0, Lcom/android/providers/contacts/DialerSearchSupport;->DS_DBG:Z

    if-eqz v0, :cond_0

    .line 868
    const-string v0, "DialerSearchSupport"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_0
    return-void
.end method

.method private queryDialerSearchIncrement(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 9
    .parameter "db"
    .parameter "uri"

    .prologue
    const/4 v6, 0x0

    .line 672
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DIALER_SEARCH_INCREMENT begin. uri:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/providers/contacts/DialerSearchSupport;->log(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .local v2, filterParam:Ljava/lang/String;
    move-object v1, v6

    .line 675
    check-cast v1, [[Ljava/lang/Object;

    .line 677
    .local v1, cursorValues:[[Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 678
    .local v3, numberCount:I
    iget v7, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mPrevSearchNumberLen:I

    if-le v7, v3, :cond_1

    .line 680
    iput v3, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mPrevSearchNumberLen:I

    .line 681
    iget-object v6, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mFilterCache:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 682
    iget-object v6, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mFilterCache:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mFilterCache:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 683
    iget-object v6, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mResultCache:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mResultCache:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 684
    iget-object v6, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mResultCache:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 685
    iget-object v6, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mResultCache:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mResultCache:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cursorValues:[[Ljava/lang/Object;
    check-cast v1, [[Ljava/lang/Object;

    .line 702
    .restart local v1       #cursorValues:[[Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/DialerSearchSupport;->buildCursor([[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    .line 703
    .local v0, c:Landroid/database/Cursor;
    const-string v6, "DIALER_SEARCH_INCREMENT end"

    invoke-direct {p0, v6}, Lcom/android/providers/contacts/DialerSearchSupport;->log(Ljava/lang/String;)V

    .line 704
    return-object v0

    .line 688
    .end local v0           #c:Landroid/database/Cursor;
    :cond_1
    iget v7, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mPrevSearchNumberLen:I

    if-ne v7, v3, :cond_2

    .line 690
    iget-object v6, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mResultCache:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 691
    iget-object v6, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mResultCache:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mResultCache:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cursorValues:[[Ljava/lang/Object;
    check-cast v1, [[Ljava/lang/Object;

    .restart local v1       #cursorValues:[[Ljava/lang/Object;
    goto :goto_0

    .line 694
    :cond_2
    iput v3, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mPrevSearchNumberLen:I

    .line 695
    iget-object v7, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mFilterCache:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_3

    move-object v5, v6

    .line 697
    .local v5, selection:Ljava/lang/String;
    :goto_1
    new-instance v4, Lcom/android/providers/contacts/DialerSearchSupport$ResultCallBack;

    invoke-direct {v4, p0}, Lcom/android/providers/contacts/DialerSearchSupport$ResultCallBack;-><init>(Lcom/android/providers/contacts/DialerSearchSupport;)V

    .line 698
    .local v4, result:Lcom/android/providers/contacts/DialerSearchSupport$ResultCallBack;
    invoke-direct {p0, p1, v2, v5, v4}, Lcom/android/providers/contacts/DialerSearchSupport;->queryDialerSearchInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/android/providers/contacts/DialerSearchSupport$ResultCallBack;)[[Ljava/lang/Object;

    move-result-object v1

    .line 699
    iget-object v6, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mFilterCache:Ljava/util/ArrayList;

    iget-object v7, v4, Lcom/android/providers/contacts/DialerSearchSupport$ResultCallBack;->mFilter:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    iget-object v6, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mResultCache:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 695
    .end local v4           #result:Lcom/android/providers/contacts/DialerSearchSupport$ResultCallBack;
    .end local v5           #selection:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mFilterCache:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mFilterCache:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    goto :goto_1
.end method

.method private queryDialerSearchInit(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 25
    .parameter "db"
    .parameter "uri"

    .prologue
    .line 556
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "queryDialerSearchInit. uri:"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/contacts/DialerSearchSupport;->log(Ljava/lang/String;)V

    .line 557
    const-string v5, "android.contacts.DISPLAY_ORDER"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 558
    .local v18, displayOrder:Ljava/lang/String;
    const-string v5, "android.contacts.SORT_ORDER"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 559
    .local v20, sortOrder:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 560
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/providers/contacts/DialerSearchSupport;->mDisplayOrder:I

    .line 561
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/providers/contacts/DialerSearchSupport;->mSortOrder:I

    .line 562
    const-string v5, "DROP TABLE IF EXISTS temp_dialer_search_table"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 563
    const-string v5, "CREATE TEMP TABLE  temp_dialer_search_table AS SELECT dialer_search._id AS _id ,dialer_search.data_id AS data_id,dialer_search.raw_contact_id AS raw_contact_id,dialer_search.name_type AS name_type,dialer_search.call_log_id AS call_log_id,dialer_search.number_count AS number_count,dialer_search.is_visiable AS is_visiable,dialer_search.normalized_name AS normalized_name,dialer_search.search_data_offsets AS search_data_offsets,dialer_search.normalized_name_alternative AS normalized_name_alternative,dialer_search.search_data_offsets_alternative AS search_data_offsets_alternative,raw_contacts.sort_key AS sort_key,raw_contacts.times_contacted AS times_used FROM dialer_search LEFT JOIN raw_contacts ON raw_contacts._id=dialer_search.raw_contact_id WHERE is_visiable = 1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 599
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/contacts/DialerSearchSupport;->mDisplayOrder:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/contacts/DialerSearchSupport;->mSortOrder:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v5, v1}, Lcom/android/providers/contacts/DialerSearchSupport;->getDialerSearchViewColumns(II)Ljava/lang/String;

    move-result-object v23

    .line 600
    .local v23, viewColumns:Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/providers/contacts/DialerSearchSupport;->mContactMap:Ljava/util/HashMap;

    .line 601
    const-wide/16 v3, 0x0

    .line 603
    .local v3, rawId:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "SELECT "

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v24, " FROM "

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v24, "view_dialer_search"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v24, " ORDER BY "

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v24, "vds_raw_contact_id"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 607
    .local v17, c:Landroid/database/Cursor;
    if-eqz v17, :cond_3

    .line 609
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/providers/contacts/DialerSearchSupport;->mNumberCount:I

    .line 610
    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 611
    const/4 v5, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 612
    .local v21, tmpRawId:J
    cmp-long v5, v3, v21

    if-eqz v5, :cond_1

    .line 613
    move-wide/from16 v3, v21

    .line 614
    new-instance v2, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;

    const-string v5, "vds_contact_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v24, "vds_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v24, "vds_indicate_phone_sim"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v24, "vds_photo_id"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v24, "vds_lookup"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v2 .. v11}, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;-><init>(JJLjava/lang/String;IJLjava/lang/String;)V

    .line 620
    .local v2, contactData:Lcom/android/providers/contacts/DialerSearchSupport$ContactData;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/DialerSearchSupport;->mContactMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    .end local v2           #contactData:Lcom/android/providers/contacts/DialerSearchSupport$ContactData;
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/DialerSearchSupport;->mContactMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;

    .line 623
    .local v19, refData:Lcom/android/providers/contacts/DialerSearchSupport$ContactData;
    if-eqz v19, :cond_0

    .line 626
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 627
    .local v6, id:J
    const-string v5, "vds_phone_type"

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 628
    .local v8, label:I
    const-string v5, "vds_call_log_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 629
    .local v9, callLogId:J
    const-string v5, "vds_call_date"

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 630
    .local v11, callDate:Ljava/lang/String;
    const-string v5, "vds_call_type"

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 631
    .local v12, callType:I
    const-string v5, "vds_geocoded_location"

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 633
    .local v13, geo:Ljava/lang/String;
    const-string v5, "vds_sim_id"

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 634
    .local v14, callSimId:I
    const-string v5, "vds_vtcall"

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 635
    .local v15, vtCall:I
    const-string v5, "vds_phone_number"

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 637
    .local v16, number:Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mNumberMap:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    new-instance v5, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;

    invoke-direct/range {v5 .. v16}, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;-><init>(JIJLjava/lang/String;ILjava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 641
    .end local v6           #id:J
    .end local v8           #label:I
    .end local v9           #callLogId:J
    .end local v11           #callDate:Ljava/lang/String;
    .end local v12           #callType:I
    .end local v13           #geo:Ljava/lang/String;
    .end local v14           #callSimId:I
    .end local v15           #vtCall:I
    .end local v16           #number:Ljava/lang/String;
    .end local v19           #refData:Lcom/android/providers/contacts/DialerSearchSupport$ContactData;
    .end local v21           #tmpRawId:J
    :catchall_0
    move-exception v5

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 645
    .end local v3           #rawId:J
    .end local v17           #c:Landroid/database/Cursor;
    .end local v23           #viewColumns:Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/providers/contacts/DialerSearchSupport;->mFilterCache:Ljava/util/ArrayList;

    .line 646
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/providers/contacts/DialerSearchSupport;->mPrevSearchNumberLen:I

    .line 647
    const-string v5, "SELECT _id,vds_contact_id,vds_call_date,vds_call_log_id,vds_call_type,vds_geocoded_location,vds_sim_id,vds_vtcall,vds_indicate_phone_sim,vds_starred,vds_photo_id,vds_phone_type,vds_name,vds_phone_number,vds_lookup,vds_is_sdn_contact FROM view_dialer_search WHERE vds_call_log_id > 0  ORDER BY vds_call_date DESC"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 652
    .restart local v17       #c:Landroid/database/Cursor;
    const-string v5, "queryDialerSearchInit. end"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/contacts/DialerSearchSupport;->log(Ljava/lang/String;)V

    .line 653
    return-object v17
.end method

.method private queryDialerSearchInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/android/providers/contacts/DialerSearchSupport$ResultCallBack;)[[Ljava/lang/Object;
    .locals 46
    .parameter "db"
    .parameter "filterParam"
    .parameter "selection"
    .parameter "callBack"

    .prologue
    .line 709
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " queryDialerSearchInternal begin. filterParam:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|selection:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/DialerSearchSupport;->log(Ljava/lang/String;)V

    .line 711
    const/16 v38, 0x0

    check-cast v38, [[Ljava/lang/Object;

    .line 712
    .local v38, objectMap:[[Ljava/lang/Object;
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    .line 713
    .local v45, selectedIds:Ljava/lang/StringBuilder;
    const/16 v29, 0x0

    .line 714
    .local v29, cursorPos:I
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 716
    :try_start_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/contacts/DialerSearchSupport;->mDisplayOrder:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/android/providers/contacts/DialerSearchSupport;->getDialerSearchNameTableColumns(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 717
    .local v33, mTableColumns:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "temp_dialer_search_table"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, ""

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " DIALER_SEARCH_MATCH_FILTER("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "normalized_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "search_data_offsets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "name_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ORDER BY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "matched_data_offsets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " COLLATE MATCHTYPE DESC,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "times_used"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " DESC,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "sort_key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " COLLATE PHONEBOOK,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "call_log_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " DESC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v40

    .line 733
    .local v40, rawCursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/contacts/DialerSearchSupport;->mNumberCount:I

    new-array v0, v3, [[Ljava/lang/Object;

    move-object/from16 v38, v0

    .line 734
    new-instance v27, Ljava/util/ArrayList;

    const/16 v3, 0x100

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 735
    .local v27, callLogPartitionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    new-instance v34, Ljava/util/HashMap;

    invoke-direct/range {v34 .. v34}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v34, matchPosMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move/from16 v30, v29

    .line 736
    .end local v29           #cursorPos:I
    .local v30, cursorPos:I
    :cond_0
    :goto_1
    :try_start_1
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 737
    const/4 v3, 0x0

    move-object/from16 v0, v40

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v43

    .line 738
    .local v43, searchId:J
    move-object/from16 v0, v45

    move-wide/from16 v1, v43

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    const/4 v3, 0x2

    move-object/from16 v0, v40

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v36

    .line 740
    .local v36, nameType:I
    const/4 v3, 0x3

    move-object/from16 v0, v40

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 741
    .local v25, matchOffset:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 798
    .end local v25           #matchOffset:Ljava/lang/String;
    .end local v36           #nameType:I
    .end local v43           #searchId:J
    :cond_1
    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 799
    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 801
    :cond_2
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->close()V

    .line 802
    if-eqz v27, :cond_d

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 803
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, [Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 804
    .local v32, item:[Ljava/lang/Object;
    add-int/lit8 v29, v30, 0x1

    .end local v30           #cursorPos:I
    .restart local v29       #cursorPos:I
    :try_start_2
    aput-object v32, v38, v30

    move/from16 v30, v29

    .end local v29           #cursorPos:I
    .restart local v30       #cursorPos:I
    goto :goto_2

    .line 717
    .end local v27           #callLogPartitionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    .end local v30           #cursorPos:I
    .end local v31           #i$:Ljava/util/Iterator;
    .end local v32           #item:[Ljava/lang/Object;
    .end local v34           #matchPosMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v40           #rawCursor:Landroid/database/Cursor;
    .restart local v29       #cursorPos:I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id IN ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto/16 :goto_0

    .line 743
    .end local v29           #cursorPos:I
    .restart local v25       #matchOffset:Ljava/lang/String;
    .restart local v27       #callLogPartitionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    .restart local v30       #cursorPos:I
    .restart local v34       #matchPosMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v36       #nameType:I
    .restart local v40       #rawCursor:Landroid/database/Cursor;
    .restart local v43       #searchId:J
    :cond_4
    const/4 v3, 0x1

    :try_start_3
    move-object/from16 v0, v40

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 744
    .local v41, rawId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/DialerSearchSupport;->mContactMap:Ljava/util/HashMap;

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;

    .line 748
    .local v28, contactData:Lcom/android/providers/contacts/DialerSearchSupport$ContactData;
    if-eqz v28, :cond_0

    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mNumberMap:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 751
    const/16 v3, 0xb

    move/from16 v0, v36

    if-ne v0, v3, :cond_7

    .line 752
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mNumberMap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .restart local v31       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;

    .line 753
    .local v37, number:Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;
    move-object/from16 v0, v37

    iget-wide v3, v0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 754
    move-object/from16 v0, v37

    iget-wide v3, v0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v39

    .line 755
    .local v39, pos:I
    aget-object v3, v38, v39

    const/16 v4, 0x11

    aput-object v25, v3, v4

    move/from16 v29, v30

    .end local v30           #cursorPos:I
    .end local v39           #pos:I
    .restart local v29       #cursorPos:I
    :goto_4
    move/from16 v30, v29

    .line 758
    .end local v29           #cursorPos:I
    .restart local v30       #cursorPos:I
    goto :goto_3

    .line 757
    :cond_5
    move-object/from16 v0, v37

    iget-wide v3, v0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 758
    add-int/lit8 v29, v30, 0x1

    .end local v30           #cursorPos:I
    .restart local v29       #cursorPos:I
    :try_start_4
    move-object/from16 v0, v37

    iget-wide v4, v0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mId:J

    move-object/from16 v0, v28

    iget-wide v6, v0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mContactId:J

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, v28

    iget v15, v0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mSimIndicate:I

    const/16 v16, 0x0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mPhotoId:J

    move-wide/from16 v17, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mNumberLabel:I

    move/from16 v19, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mDisplayName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mNumber:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mLookup:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v25}, Lcom/android/providers/contacts/DialerSearchSupport;->buildCursorRecord(JJLjava/lang/String;JILjava/lang/String;IIIIJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v38, v30
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 809
    .end local v25           #matchOffset:Ljava/lang/String;
    .end local v27           #callLogPartitionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    .end local v28           #contactData:Lcom/android/providers/contacts/DialerSearchSupport$ContactData;
    .end local v31           #i$:Ljava/util/Iterator;
    .end local v33           #mTableColumns:Ljava/lang/String;
    .end local v34           #matchPosMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v36           #nameType:I
    .end local v37           #number:Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;
    .end local v40           #rawCursor:Landroid/database/Cursor;
    .end local v41           #rawId:J
    .end local v43           #searchId:J
    :catchall_0
    move-exception v3

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .end local v29           #cursorPos:I
    .restart local v25       #matchOffset:Ljava/lang/String;
    .restart local v27       #callLogPartitionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    .restart local v28       #contactData:Lcom/android/providers/contacts/DialerSearchSupport$ContactData;
    .restart local v30       #cursorPos:I
    .restart local v31       #i$:Ljava/util/Iterator;
    .restart local v33       #mTableColumns:Ljava/lang/String;
    .restart local v34       #matchPosMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v36       #nameType:I
    .restart local v40       #rawCursor:Landroid/database/Cursor;
    .restart local v41       #rawId:J
    .restart local v43       #searchId:J
    :cond_6
    move/from16 v29, v30

    .end local v30           #cursorPos:I
    .end local v31           #i$:Ljava/util/Iterator;
    .restart local v29       #cursorPos:I
    :goto_6
    move/from16 v30, v29

    .line 797
    .end local v29           #cursorPos:I
    .restart local v30       #cursorPos:I
    goto/16 :goto_1

    .line 765
    :cond_7
    const/16 v3, 0x8

    move/from16 v0, v36

    if-ne v0, v3, :cond_c

    .line 767
    const/16 v37, 0x0

    .line 768
    .restart local v37       #number:Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;
    :try_start_5
    move-object/from16 v0, v28

    iget-object v3, v0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mNumberMap:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .restart local v31       #i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;

    .line 769
    .local v35, n:Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;
    move-object/from16 v0, v35

    iget-wide v3, v0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mId:J

    cmp-long v3, v3, v43

    if-nez v3, :cond_8

    .line 770
    move-object/from16 v37, v35

    .line 774
    .end local v35           #n:Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;
    :cond_9
    if-eqz v37, :cond_0

    .line 777
    const-wide/16 v3, 0x0

    cmp-long v3, v41, v3

    if-lez v3, :cond_b

    .line 778
    move-object/from16 v0, v37

    iget-wide v3, v0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 779
    move-object/from16 v0, v37

    iget-wide v3, v0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v39

    .line 780
    .restart local v39       #pos:I
    aget-object v3, v38, v39

    const/16 v4, 0x10

    aput-object v25, v3, v4

    move/from16 v29, v30

    .line 781
    .end local v30           #cursorPos:I
    .restart local v29       #cursorPos:I
    goto :goto_6

    .line 782
    .end local v29           #cursorPos:I
    .end local v39           #pos:I
    .restart local v30       #cursorPos:I
    :cond_a
    move-object/from16 v0, v37

    iget-wide v3, v0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 783
    add-int/lit8 v29, v30, 0x1

    .end local v30           #cursorPos:I
    .restart local v29       #cursorPos:I
    :try_start_6
    move-object/from16 v0, v37

    iget-wide v5, v0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mId:J

    move-object/from16 v0, v28

    iget-wide v7, v0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mContactId:J

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mSimIndicate:I

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mPhotoId:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v37

    iget v0, v0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mNumberLabel:I

    move/from16 v20, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mDisplayName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mNumber:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mLookup:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v26}, Lcom/android/providers/contacts/DialerSearchSupport;->buildCursorRecord(JJLjava/lang/String;JILjava/lang/String;IIIIJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v38, v30
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_6

    .line 790
    .end local v29           #cursorPos:I
    .restart local v30       #cursorPos:I
    :cond_b
    :try_start_7
    move-object/from16 v0, v37

    iget-wide v5, v0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mId:J

    move-object/from16 v0, v28

    iget-wide v7, v0, Lcom/android/providers/contacts/DialerSearchSupport$ContactData;->mContactId:J

    move-object/from16 v0, v37

    iget-object v9, v0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mCallDate:Ljava/lang/String;

    move-object/from16 v0, v37

    iget-wide v10, v0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mCallLogId:J

    move-object/from16 v0, v37

    iget v12, v0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mCallType:I

    move-object/from16 v0, v37

    iget-object v13, v0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mGeoLocation:Ljava/lang/String;

    move-object/from16 v0, v37

    iget v14, v0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mCallSimId:I

    move-object/from16 v0, v37

    iget v15, v0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mVtCall:I

    const/16 v16, -0x1

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;->mNumber:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v26}, Lcom/android/providers/contacts/DialerSearchSupport;->buildCursorRecord(JJLjava/lang/String;JILjava/lang/String;IIIIJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v31           #i$:Ljava/util/Iterator;
    .end local v37           #number:Lcom/android/providers/contacts/DialerSearchSupport$PhoneNumber;
    :cond_c
    move/from16 v29, v30

    .end local v30           #cursorPos:I
    .restart local v29       #cursorPos:I
    goto/16 :goto_6

    .end local v25           #matchOffset:Ljava/lang/String;
    .end local v28           #contactData:Lcom/android/providers/contacts/DialerSearchSupport$ContactData;
    .end local v29           #cursorPos:I
    .end local v36           #nameType:I
    .end local v41           #rawId:J
    .end local v43           #searchId:J
    .restart local v30       #cursorPos:I
    :cond_d
    move/from16 v29, v30

    .line 807
    .end local v30           #cursorPos:I
    .restart local v29       #cursorPos:I
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 809
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 811
    if-eqz p4, :cond_e

    .line 812
    add-int/lit8 v3, v29, 0x1

    move-object/from16 v0, p4

    iput v3, v0, Lcom/android/providers/contacts/DialerSearchSupport$ResultCallBack;->mCursorCount:I

    .line 813
    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    iput-object v3, v0, Lcom/android/providers/contacts/DialerSearchSupport$ResultCallBack;->mFilter:Ljava/lang/String;

    .line 815
    :cond_e
    const-string v3, " queryDialerSearchInternal end."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/contacts/DialerSearchSupport;->log(Ljava/lang/String;)V

    .line 816
    return-object v38

    .line 809
    .end local v29           #cursorPos:I
    .restart local v30       #cursorPos:I
    :catchall_1
    move-exception v3

    move/from16 v29, v30

    .end local v30           #cursorPos:I
    .restart local v29       #cursorPos:I
    goto/16 :goto_5
.end method

.method private queryDialerSearchSimple(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 5
    .parameter "db"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIALER_SEARCH_SIMPLE begin. uri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/providers/contacts/DialerSearchSupport;->log(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, filterParam:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 668
    :goto_0
    return-object v2

    .line 662
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mFilterCache:Ljava/util/ArrayList;

    .line 663
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/providers/contacts/DialerSearchSupport;->mPrevSearchNumberLen:I

    .line 665
    invoke-direct {p0, p1, v1, v2, v2}, Lcom/android/providers/contacts/DialerSearchSupport;->queryDialerSearchInternal(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/android/providers/contacts/DialerSearchSupport$ResultCallBack;)[[Ljava/lang/Object;

    move-result-object v0

    .line 667
    .local v0, cursorValues:[[Ljava/lang/Object;
    const-string v2, "DIALER_SEARCH_SIMPLE end."

    invoke-direct {p0, v2}, Lcom/android/providers/contacts/DialerSearchSupport;->log(Ljava/lang/String;)V

    .line 668
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/DialerSearchSupport;->buildCursor([[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0
.end method

.method public static queryPhoneLookupByNumber(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactsDatabaseHelper;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 15
    .parameter "db"
    .parameter "dbHelper"
    .parameter "number"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "sortOrder"
    .parameter "limit"

    .prologue
    .line 515
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 516
    .local v1, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual/range {p1 .. p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 518
    .local v14, numberE164:Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 519
    .local v13, normalizedNumber:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v13, v14}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildPhoneLookupAndContactQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 521
    const/4 v12, 0x0

    .local v12, foundResult:Z
    move-object v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 522
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 525
    .local v11, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-lez v3, :cond_1

    .line 526
    const/4 v12, 0x1

    .line 534
    if-nez v12, :cond_0

    .line 536
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 539
    .end local v11           #c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-object v11

    .line 529
    .restart local v11       #c:Landroid/database/Cursor;
    :cond_1
    :try_start_1
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    .end local v1           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v2, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v13}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildFallbackPhoneLookupAndContactQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;)V

    .line 531
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 534
    if-nez v12, :cond_2

    .line 536
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 539
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .end local v11           #c:Landroid/database/Cursor;
    move-object v1, v2

    .end local v2           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v1       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    goto :goto_0

    .line 534
    .restart local v11       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    :goto_1
    if-nez v12, :cond_3

    .line 536
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3

    .line 534
    .end local v1           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v2       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v1       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    goto :goto_1
.end method

.method private static setBind(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V
    .locals 1
    .parameter "stmt"
    .parameter "value"
    .parameter "index"

    .prologue
    .line 363
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 368
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-virtual {p0, p2, p1}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static setNameForDialerSearch(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "dialerSearchNameUpdate"
    .parameter "db"
    .parameter "rawContactId"
    .parameter "displayNamePrimary"
    .parameter "displayNameAlternative"

    .prologue
    .line 335
    if-nez p0, :cond_0

    .line 336
    const-string v4, "UPDATE dialer_search SET normalized_name=?,search_data_offsets=?,normalized_name_alternative=?,search_data_offsets_alternative=? WHERE raw_contact_id=? AND name_type=11"

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p0

    .line 347
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .local v2, mSearchNameOffsets:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/providers/contacts/HanziToPinyin;->getInstance()Lcom/android/providers/contacts/HanziToPinyin;

    move-result-object v4

    invoke-virtual {v4, p4, v2}, Lcom/android/providers/contacts/HanziToPinyin;->getTokensForDialerSearch(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, mSearchName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 351
    .local v3, mSearchNameOffsetsAlt:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/providers/contacts/HanziToPinyin;->getInstance()Lcom/android/providers/contacts/HanziToPinyin;

    move-result-object v4

    invoke-virtual {v4, p5, v3}, Lcom/android/providers/contacts/HanziToPinyin;->getTokensForDialerSearch(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, mSearchNameAlt:Ljava/lang/String;
    const/4 v4, 0x1

    invoke-static {p0, v0, v4}, Lcom/android/providers/contacts/DialerSearchSupport;->setBind(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 355
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {p0, v4, v5}, Lcom/android/providers/contacts/DialerSearchSupport;->setBind(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 356
    const/4 v4, 0x3

    invoke-static {p0, v1, v4}, Lcom/android/providers/contacts/DialerSearchSupport;->setBind(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 357
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {p0, v4, v5}, Lcom/android/providers/contacts/DialerSearchSupport;->setBind(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;I)V

    .line 358
    const/4 v4, 0x5

    invoke-virtual {p0, v4, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 359
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 360
    return-void
.end method

.method public static stripSpecialCharInNumberForDialerSearch(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    .line 174
    if-nez p0, :cond_0

    .line 175
    const/4 v4, 0x0

    .line 188
    :goto_0
    return-object v4

    .line 176
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 177
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 179
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 180
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 181
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 182
    :cond_2
    const/16 v4, 0x20

    if-eq v0, v4, :cond_1

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_1

    const/16 v4, 0x28

    if-eq v0, v4, :cond_1

    const/16 v4, 0x29

    if-ne v0, v4, :cond_1

    goto :goto_2

    .line 188
    .end local v0           #c:C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method


# virtual methods
.method public handleEmptyQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 1
    .parameter "db"
    .parameter "uri"

    .prologue
    .line 544
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/DialerSearchSupport;->queryDialerSearchInit(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public handleIncrementQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 1
    .parameter "db"
    .parameter "uri"

    .prologue
    .line 552
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/DialerSearchSupport;->queryDialerSearchIncrement(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public handleSimpleQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 1
    .parameter "db"
    .parameter "uri"

    .prologue
    .line 548
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/DialerSearchSupport;->queryDialerSearchSimple(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public updateDialerSearchDataForDelete(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 19
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 437
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SELECT _id,number,data_id FROM calls WHERE raw_contact_id = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p2

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " GROUP BY data_id;"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 440
    .local v3, c:Landroid/database/Cursor;
    if-eqz v3, :cond_5

    .line 441
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[updateDialerSearchDataForDelete]calls count:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/providers/contacts/DialerSearchSupport;->log(Ljava/lang/String;)V

    .line 442
    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 443
    const/4 v15, 0x0

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 444
    .local v4, callId:J
    const/4 v15, 0x1

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 445
    .local v14, number:Ljava/lang/String;
    const/4 v15, 0x2

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 446
    .local v7, dataId:J
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[updateDialerSearchDataForDelete]callId:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "|number:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "|dataId:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/providers/contacts/DialerSearchSupport;->log(Ljava/lang/String;)V

    .line 448
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/providers/contacts/DialerSearchSupport;->mUseStrictPhoneNumberComparation:Z

    if-eqz v15, :cond_1

    const-string v2, "1"

    .line 449
    .local v2, UseStrict:Ljava/lang/String;
    :goto_1
    const/4 v6, 0x0

    .line 450
    .local v6, dataCursor:Landroid/database/Cursor;
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 451
    const-string v15, "SELECT _id,raw_contact_id,contact_id FROM view_data  WHERE data1 =? AND mimetype_id=6 AND raw_contact_id !=? LIMIT 1"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v14, v16, v17

    const/16 v17, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 468
    :goto_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 469
    const/4 v15, 0x0

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 470
    .local v10, newDataId:J
    const/4 v15, 0x1

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 471
    .local v12, newRawId:J
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[updateDialerSearchDataForDelete]newDataId:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "|newRawId:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/providers/contacts/DialerSearchSupport;->log(Ljava/lang/String;)V

    .line 473
    const-string v15, "UPDATE calls SET data_id=?, raw_contact_id=?  WHERE data_id=?"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    const-string v15, "UPDATE dialer_search SET call_log_id=?  WHERE data_id=?"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    .end local v10           #newDataId:J
    .end local v12           #newRawId:J
    :goto_3
    if-eqz v6, :cond_0

    .line 502
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 448
    .end local v2           #UseStrict:Ljava/lang/String;
    .end local v6           #dataCursor:Landroid/database/Cursor;
    :cond_1
    const-string v2, "0"

    goto/16 :goto_1

    .line 459
    .restart local v2       #UseStrict:Ljava/lang/String;
    .restart local v6       #dataCursor:Landroid/database/Cursor;
    :cond_2
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SELECT _id,raw_contact_id,contact_id FROM view_data  WHERE PHONE_NUMBERS_EQUAL(data1, \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' , "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " )"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AND mimetype_id=5 AND raw_contact_id !=? LIMIT 1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto/16 :goto_2

    .line 485
    :cond_3
    const-string v15, "[updateDialerSearchDataForDelete]update call log null."

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/providers/contacts/DialerSearchSupport;->log(Ljava/lang/String;)V

    .line 486
    const-string v15, "UPDATE calls SET data_id=null, raw_contact_id=null WHERE data_id=?"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    const-string v15, "UPDATE dialer_search SET data_id=-call_log_id,  raw_contact_id=-call_log_id,  normalized_name=?,  normalized_name_alternative=?  WHERE data_id =?"

    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v14, v16, v17

    const/16 v17, 0x1

    aput-object v14, v16, v17

    const/16 v17, 0x2

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 505
    .end local v2           #UseStrict:Ljava/lang/String;
    .end local v4           #callId:J
    .end local v6           #dataCursor:Landroid/database/Cursor;
    .end local v7           #dataId:J
    .end local v14           #number:Ljava/lang/String;
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 507
    :cond_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "DELETE FROM dialer_search WHERE raw_contact_id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p2

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 508
    .local v9, delStr:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[updateDialerSearchDataForDelete]delStr:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/providers/contacts/DialerSearchSupport;->log(Ljava/lang/String;)V

    .line 509
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method public updateDialerSearchDataForMultiDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 16
    .parameter "db"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 396
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SELECT _id, contact_id FROM raw_contacts WHERE "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v13, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 397
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v5, contactIdArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v12, rawIdArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v8, :cond_1

    .line 403
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 404
    const/4 v13, 0x0

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    const/4 v13, 0x1

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 414
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 416
    :cond_1
    const-string v13, "raw_contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v13, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 417
    .local v7, count:I
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 418
    .local v10, rawContactId:J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[updateDialerSearchDataForMultiDelete]rawContactId:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/providers/contacts/DialerSearchSupport;->log(Ljava/lang/String;)V

    .line 419
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v10, v11}, Lcom/android/providers/contacts/DialerSearchSupport;->updateDialerSearchDataForDelete(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_1

    .line 425
    .end local v10           #rawContactId:J
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 426
    .local v3, contactId:J
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 427
    .local v6, contactIdAsString:Ljava/lang/String;
    const-string v13, "DELETE FROM search_index WHERE contact_id=CAST(? AS int)"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 433
    .end local v3           #contactId:J
    .end local v6           #contactIdAsString:Ljava/lang/String;
    :cond_3
    return v7
.end method
