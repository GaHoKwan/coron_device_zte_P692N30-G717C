.class public Lcom/android/exchange/adapter/ContactsSyncAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "ContactsSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/ContactsSyncAdapter$1;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$RowBuilder;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$PhoneRow;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$ImRow;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$EmailRow;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$Address;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$EasBusiness;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$EasPersonal;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$EasChildren;,
        Lcom/android/exchange/adapter/ContactsSyncAdapter$UntypedRow;
    }
.end annotation


# static fields
.field private static final BUF_MAX:I = 0x7d000

.field private static final BUF_MIN:I = 0xc800

.field private static final CLIENT_ID_SELECTION:Ljava/lang/String; = "sync1=?"

.field private static final COMMON_DATA_ROW:Ljava/lang/String; = "data1"

.field private static final COMMON_TYPE_ROW:Ljava/lang/String; = "data2"

.field private static final COUNT_LIMIT:I = 0x64

.field private static final DIVISOR:I = 0x4

.field private static final EMAIL_TAGS:[I = null

.field private static final EMPTY_ARRAY_NAMEDCONTENTVALUES:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private static final FOUND_DATA_ROW:Ljava/lang/String; = "com.android.exchange.FOUND_ROW"

.field private static final GROUPS_ID_PROJECTION:[Ljava/lang/String; = null

.field private static final GROUP_TITLE_PROJECTION:[Ljava/lang/String; = null

.field private static final HOME_ADDRESS_TAGS:[I = null

.field private static final HOME_PHONE_TAGS:[I = null

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final IM_TAGS:[I = null

.field private static final MAX_EMAIL_ROWS:I = 0x3

.field private static final MAX_IM_ROWS:I = 0x3

.field private static final MAX_PHONE_ROWS:I = 0x2

.field private static final MIMETYPE_GROUP_MEMBERSHIP_AND_ID_EQUALS:Ljava/lang/String; = "mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=?"

.field private static final OTHER_ADDRESS_TAGS:[I = null

.field private static final PHOTO_SIZE_LIMIT:I = 0x9000

.field private static final RESERVED_HEAP:I = 0x100000

.field private static final SERVER_ID_SELECTION:Ljava/lang/String; = "sourceid=?"

.field private static final TAG:Ljava/lang/String; = "EasContactsSyncAdapter"

.field private static final WAIT_FOR_GC:I = 0xbb8

.field private static final WORK_ADDRESS_TAGS:[I

.field private static final WORK_PHONE_TAGS:[I

.field private static final sSyncKeyLock:Ljava/lang/Object;


# instance fields
.field private final mAccountUri:Landroid/net/Uri;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field mDeletedIdList:Ljava/util/ArrayList;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupsUsed:Z

.field mUpdatedIdList:Ljava/util/ArrayList;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->ID_PROJECTION:[Ljava/lang/String;

    .line 85
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->GROUP_TITLE_PROJECTION:[Ljava/lang/String;

    .line 88
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->GROUPS_ID_PROJECTION:[Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->EMPTY_ARRAY_NAMEDCONTENTVALUES:Ljava/util/ArrayList;

    .line 95
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->HOME_ADDRESS_TAGS:[I

    .line 101
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->WORK_ADDRESS_TAGS:[I

    .line 107
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->OTHER_ADDRESS_TAGS:[I

    .line 119
    new-array v0, v6, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->IM_TAGS:[I

    .line 122
    new-array v0, v6, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->EMAIL_TAGS:[I

    .line 125
    new-array v0, v5, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->WORK_PHONE_TAGS:[I

    .line 128
    new-array v0, v5, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->HOME_PHONE_TAGS:[I

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    return-void

    .line 95
    nop

    :array_0
    .array-data 0x4
        0x61t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
    .end array-data

    .line 101
    :array_1
    .array-data 0x4
        0x4dt 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
    .end array-data

    .line 107
    :array_2
    .array-data 0x4
        0x61t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
    .end array-data

    .line 119
    :array_3
    .array-data 0x4
        0x7t 0x3t 0x0t 0x0t
        0x8t 0x3t 0x0t 0x0t
        0x9t 0x3t 0x0t 0x0t
    .end array-data

    .line 122
    :array_4
    .array-data 0x4
        0x5bt 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
    .end array-data

    .line 125
    :array_5
    .array-data 0x4
        0x53t 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
    .end array-data

    .line 128
    :array_6
    .array-data 0x4
        0x67t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mGroupsUsed:Z

    .line 167
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountUri:Landroid/net/Uri;

    .line 168
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    .line 169
    return-void
.end method

.method static synthetic access$102(Lcom/android/exchange/adapter/ContactsSyncAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mGroupsUsed:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/exchange/adapter/ContactsSyncAdapter;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->ID_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/exchange/adapter/ContactsSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->EMPTY_ARRAY_NAMEDCONTENTVALUES:Ljava/util/ArrayList;

    return-object v0
.end method

.method static addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 172
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private dirtyContactsWithinDirtyGroups()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 1864
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v1, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1865
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/exchange/adapter/ContactsSyncAdapter;->GROUPS_ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "dirty=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1868
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1869
    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/String;

    .line 1870
    .local v9, updateArgs:[Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1871
    .local v10, updateValues:Landroid/content/ContentValues;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1875
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1876
    .local v7, id:J
    const-string v1, "data1"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1877
    const/4 v1, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    .line 1878
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=?"

    invoke-virtual {v0, v1, v10, v2, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1891
    .end local v7           #id:J
    .end local v9           #updateArgs:[Ljava/lang/String;
    .end local v10           #updateValues:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1882
    .restart local v9       #updateArgs:[Ljava/lang/String;
    .restart local v10       #updateValues:Landroid/content/ContentValues;
    :cond_0
    :try_start_1
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "deleted=1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1885
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 1886
    const-string v1, "dirty"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1887
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1891
    .end local v9           #updateArgs:[Ljava/lang/String;
    .end local v10           #updateValues:Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1893
    return-void
.end method

.method private sendBirthday(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 2
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1731
    const-string v0, "data1"

    const/16 v1, 0x48

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1732
    return-void
.end method

.method private sendBusiness(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 2
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1720
    const-string v0, "data8"

    const/16 v1, 0x30c

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1721
    const-string v0, "data6"

    const/16 v1, 0x305

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1722
    const-string v0, "data7"

    const/16 v1, 0x306

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1723
    return-void
.end method

.method private sendChildren(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 5
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1782
    const/4 v0, 0x1

    .line 1783
    .local v0, first:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_2

    .line 1784
    sget-object v3, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasChildren;->ROWS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1785
    .local v2, row:Ljava/lang/String;
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1786
    if-eqz v0, :cond_0

    .line 1787
    const/16 v3, 0x57

    invoke-virtual {p1, v3}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1788
    const/4 v0, 0x0

    .line 1790
    :cond_0
    const/16 v3, 0x58

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1783
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1793
    .end local v2           #row:Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_3

    .line 1794
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1796
    :cond_3
    return-void
.end method

.method private sendEmail(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;ILjava/lang/String;)V
    .locals 7
    .parameter "s"
    .parameter "cv"
    .parameter "count"
    .parameter "displayName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1639
    const-string v3, "data1"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1640
    .local v0, addr:Ljava/lang/String;
    const-string v3, "data4"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1641
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1642
    if-eqz p4, :cond_2

    .line 1643
    move-object v1, p4

    .line 1649
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1653
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v3, v3, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4028

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3

    .line 1654
    move-object v2, v0

    .line 1658
    .local v2, value:Ljava/lang/String;
    :goto_1
    const/4 v3, 0x3

    if-ge p3, v3, :cond_1

    .line 1659
    sget-object v3, Lcom/android/exchange/adapter/ContactsSyncAdapter;->EMAIL_TAGS:[I

    aget v3, v3, p3

    invoke-virtual {p1, v3, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1662
    .end local v2           #value:Ljava/lang/String;
    :cond_1
    return-void

    .line 1645
    :cond_2
    move-object v1, v0

    goto :goto_0

    .line 1656
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #value:Ljava/lang/String;
    goto :goto_1
.end method

.method private sendIm(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;I)V
    .locals 2
    .parameter "s"
    .parameter "cv"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1665
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1666
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1670
    :cond_0
    :goto_0
    return-void

    .line 1667
    :cond_1
    const/4 v1, 0x3

    if-ge p3, v1, :cond_0

    .line 1668
    sget-object v1, Lcom/android/exchange/adapter/ContactsSyncAdapter;->IM_TAGS:[I

    aget v1, v1, p3

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0
.end method

.method private sendNickname(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 2
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1756
    const-string v0, "data1"

    const/16 v1, 0x30d

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1757
    return-void
.end method

.method private sendNote(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 5
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1766
    const-string v0, ""

    .line 1767
    .local v0, note:Ljava/lang/String;
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1769
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, "\r\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1772
    :cond_0
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v1, v1, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x4028

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    .line 1773
    const/16 v1, 0x44a

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1774
    const/16 v1, 0x446

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0x44b

    invoke-virtual {v1, v2, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1775
    invoke-virtual {p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1779
    :goto_0
    return-void

    .line 1777
    :cond_1
    const/16 v1, 0x49

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0
.end method

.method private sendOnePostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;[I)V
    .locals 2
    .parameter "s"
    .parameter "cv"
    .parameter "fieldNames"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1674
    const-string v0, "data7"

    const/4 v1, 0x0

    aget v1, p3, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1675
    const-string v0, "data10"

    const/4 v1, 0x1

    aget v1, p3, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1676
    const-string v0, "data9"

    const/4 v1, 0x2

    aget v1, p3, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1677
    const-string v0, "data8"

    const/4 v1, 0x3

    aget v1, p3, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1678
    const-string v0, "data4"

    const/4 v1, 0x4

    aget v1, p3, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1679
    return-void
.end method

.method private sendOrganization(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 2
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1749
    const-string v0, "data4"

    const/16 v1, 0x68

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1750
    const-string v0, "data1"

    const/16 v1, 0x59

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1751
    const-string v0, "data5"

    const/16 v1, 0x5a

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1752
    const-string v0, "data9"

    const/16 v1, 0x6c

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1753
    return-void
.end method

.method private sendPersonal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 2
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1726
    const-string v0, "data2"

    const/16 v1, 0x45

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1727
    const-string v0, "data4"

    const/16 v1, 0x5e

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1728
    return-void
.end method

.method private sendPhone(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;II)V
    .locals 3
    .parameter "s"
    .parameter "cv"
    .parameter "workCount"
    .parameter "homeCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 1800
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1801
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1843
    :cond_0
    :goto_0
    return-void

    .line 1802
    :cond_1
    const-string v1, "data2"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1821
    :pswitch_1
    if-ge p4, v2, :cond_0

    .line 1822
    sget-object v1, Lcom/android/exchange/adapter/ContactsSyncAdapter;->HOME_PHONE_TAGS:[I

    aget v1, v1, p4

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1804
    :pswitch_2
    if-ge p3, v2, :cond_0

    .line 1805
    sget-object v1, Lcom/android/exchange/adapter/ContactsSyncAdapter;->WORK_PHONE_TAGS:[I

    aget v1, v1, p3

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1809
    :pswitch_3
    const/16 v1, 0x30e

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1812
    :pswitch_4
    const/16 v1, 0x47

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1815
    :pswitch_5
    const/16 v1, 0x52

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1818
    :pswitch_6
    const/16 v1, 0x30b

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1826
    :pswitch_7
    const/16 v1, 0x6b

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1829
    :pswitch_8
    const/16 v1, 0x54

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1832
    :pswitch_9
    const/16 v1, 0x72

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1835
    :pswitch_a
    const/16 v1, 0x73

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1838
    :pswitch_b
    const/16 v1, 0x66

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1802
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_5
        :pswitch_b
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private sendPhoto(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 5
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x7c

    .line 1735
    const-string v2, "data15"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1736
    const-string v2, "data15"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 1737
    .local v0, bytes:[B
    array-length v2, v0

    const v3, 0x9000

    if-le v2, v3, :cond_0

    .line 1746
    .end local v0           #bytes:[B
    :goto_0
    return-void

    .line 1740
    .restart local v0       #bytes:[B
    :cond_0
    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 1741
    .local v1, pic:Ljava/lang/String;
    invoke-virtual {p1, v4, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1744
    .end local v0           #bytes:[B
    .end local v1           #pic:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v4}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0
.end method

.method private sendRelation(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 2
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1846
    const-string v1, "data1"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1847
    .local v0, value:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1861
    :goto_0
    return-void

    .line 1848
    :cond_0
    const-string v1, "data2"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 1850
    :sswitch_0
    const/16 v1, 0x46

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1853
    :sswitch_1
    const/16 v1, 0x30a

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1856
    :sswitch_2
    const/16 v1, 0x74

    invoke-virtual {p1, v1, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_0

    .line 1848
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_1
        0xe -> :sswitch_2
    .end sparse-switch
.end method

.method private sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V
    .locals 2
    .parameter "s"
    .parameter "cv"
    .parameter "column"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1699
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1700
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1701
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1702
    invoke-virtual {p1, p4, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1705
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private sendStructuredName(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 3
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1708
    const/4 v0, 0x0

    .line 1709
    .local v0, displayName:Ljava/lang/String;
    const-string v1, "data3"

    const/16 v2, 0x69

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1710
    const-string v1, "data2"

    const/16 v2, 0x5f

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1711
    const-string v1, "data5"

    const/16 v2, 0x6a

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1712
    const-string v1, "data6"

    const/16 v2, 0x75

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1713
    const-string v1, "data7"

    const/16 v2, 0x79

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1714
    const-string v1, "data9"

    const/16 v2, 0x7a

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1715
    const-string v1, "data4"

    const/16 v2, 0x76

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1716
    return-object v0
.end method

.method private sendStructuredPostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 1
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1682
    const-string v0, "data2"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1695
    :goto_0
    return-void

    .line 1684
    :pswitch_0
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->HOME_ADDRESS_TAGS:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendOnePostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;[I)V

    goto :goto_0

    .line 1687
    :pswitch_1
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->WORK_ADDRESS_TAGS:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendOnePostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;[I)V

    goto :goto_0

    .line 1690
    :pswitch_2
    sget-object v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->OTHER_ADDRESS_TAGS:[I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendOnePostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;[I)V

    goto :goto_0

    .line 1682
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendWebpage(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V
    .locals 2
    .parameter "s"
    .parameter "cv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1760
    const-string v0, "data1"

    const/16 v1, 0x77

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStringData(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1761
    return-void
.end method

.method private uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 1008
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    const-string v2, "com.android.exchange"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cleanup()V
    .locals 12

    .prologue
    .line 1587
    new-instance v9, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;

    const/4 v2, 0x0

    invoke-direct {v9, p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Lcom/android/exchange/adapter/ContactsSyncAdapter$1;)V

    .line 1588
    .local v9, ops:Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 1589
    .local v8, id:Ljava/lang/Long;
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "dirty"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_0

    .line 1596
    .end local v8           #id:Ljava/lang/Long;
    :cond_0
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 1597
    .restart local v8       #id:Ljava/lang/Long;
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_1

    .line 1604
    .end local v8           #id:Ljava/lang/Long;
    :cond_1
    invoke-virtual {v9}, Lcom/android/exchange/adapter/ContactsSyncAdapter$ContactOperations;->execute()V

    .line 1605
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1606
    iget-object v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1607
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1608
    .local v0, cr:Landroid/content/ContentResolver;
    iget-boolean v2, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mGroupsUsed:Z

    if-eqz v2, :cond_3

    .line 1613
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 1614
    .local v1, groupsUri:Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sourceid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "title"

    aput-object v4, v2, v3

    const-string v3, "title IS NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1616
    .local v6, c:Landroid/database/Cursor;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 1617
    .local v11, values:Landroid/content/ContentValues;
    const-string v2, "group_visible"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1619
    :goto_2
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1620
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1621
    .local v10, sourceId:Ljava/lang/String;
    const-string v2, "title"

    invoke-virtual {v11, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "sourceid=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    invoke-virtual {v0, v2, v11, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1626
    .end local v10           #sourceId:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1629
    .end local v1           #groupsUri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_3
    return-void
.end method

.method public dataUriFromNamedContentValues(Landroid/content/Entity$NamedContentValues;)Landroid/net/Uri;
    .locals 5
    .parameter "ncv"

    .prologue
    .line 1578
    iget-object v3, p1, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1579
    .local v1, id:J
    iget-object v3, p1, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1580
    .local v0, dataUri:Landroid/net/Uri;
    return-object v0
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1633
    const-string v0, "Contacts"

    return-object v0
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    sget-object v5, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 278
    :try_start_0
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v4, v4, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 281
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_1
    sget-object v4, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    invoke-static {v0, v4, v6}, Landroid/provider/SyncStateContract$Helpers;->get(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)[B

    move-result-object v2

    .line 283
    .local v2, data:[B
    if-eqz v2, :cond_0

    array-length v4, v2

    if-nez v4, :cond_1

    .line 285
    :cond_0
    const-string v4, "0"

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V

    .line 287
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 288
    .local v1, cv:Landroid/content/ContentValues;
    const-string v4, "account_name"

    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v6, v6, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v4, "account_type"

    const-string v6, "com.android.exchange"

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v4, "ungrouped_visible"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 291
    sget-object v4, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 292
    const-string v4, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 300
    :try_start_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 292
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    .end local v1           #cv:Landroid/content/ContentValues;
    :goto_0
    return-object v4

    :cond_1
    :try_start_3
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 300
    :try_start_4
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 294
    monitor-exit v5

    goto :goto_0

    .line 302
    .end local v0           #client:Landroid/content/ContentProviderClient;
    .end local v2           #data:[B
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 296
    .restart local v0       #client:Landroid/content/ContentProviderClient;
    :catch_0
    move-exception v3

    .line 297
    .local v3, e:Landroid/os/RemoteException;
    :try_start_5
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Can\'t get SyncKey from ContactsProvider"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 300
    .end local v3           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    :try_start_6
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public isSyncable()Z
    .locals 2

    .prologue
    .line 249
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    const-string v1, "com.android.contacts"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/exchange/CommandStatusException;
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;-><init>(Lcom/android/exchange/adapter/ContactsSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/ContactsSyncAdapter;)V

    .line 257
    .local v0, p:Lcom/android/exchange/adapter/ContactsSyncAdapter$EasContactsSyncParser;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/AbstractSyncParser;->parse()Z

    move-result v1

    return v1
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .locals 46
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1897
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v5, v7, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1900
    .local v5, cr:Landroid/content/ContentResolver;
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->dirtyContactsWithinDirtyGroups()V

    .line 1903
    sget-object v7, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 1904
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1905
    const/4 v7, 0x1

    .line 2072
    :goto_0
    return v7

    .line 1909
    :cond_0
    const/4 v7, 0x0

    const-string v8, "dirty=1"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-static {v7}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v22

    .line 1911
    .local v22, ei:Landroid/content/EntityIterator;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1913
    .local v17, cidValues:Landroid/content/ContentValues;
    const/16 v29, 0x1

    .line 1914
    .local v29, first:Z
    const/16 v19, 0x0

    .line 1915
    .local v19, count:I
    const/4 v7, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMoreLocalChanges:Z

    .line 1916
    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v41

    .line 1918
    .local v41, rawContactUri:Landroid/net/Uri;
    invoke-interface/range {v22 .. v22}, Landroid/content/EntityIterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_1

    .line 1919
    const/4 v7, 0x1

    .line 2069
    :goto_1
    invoke-interface/range {v22 .. v22}, Landroid/content/EntityIterator;->close()V

    goto :goto_0

    .line 1923
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v42

    .line 1924
    .local v42, rt:Ljava/lang/Runtime;
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v7

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v9

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v11

    sub-long/2addr v9, v11

    sub-long v30, v7, v9

    .line 1925
    .local v30, freeHeap:J
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "free heapsize="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v30

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1927
    move-wide/from16 v0, v30

    long-to-int v7, v0

    const/high16 v8, 0x10

    sub-int/2addr v7, v8

    div-int/lit8 v13, v7, 0x4

    .line 1928
    .local v13, bufSize:I
    const v7, 0xc800

    if-ge v13, v7, :cond_2

    .line 1929
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Memory is too low to up-sync contacts, will try again later"

    aput-object v9, v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1930
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Runtime;->gc()V

    .line 1931
    const-wide/16 v7, 0xbb8

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 1932
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMoreLocalChanges:Z

    .line 1933
    const/4 v7, 0x0

    goto :goto_1

    .line 1935
    :cond_2
    const v7, 0x7d000

    invoke-static {v13, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-long v14, v7

    .line 1937
    .local v14, bufThreshold:J
    :cond_3
    :goto_2
    invoke-interface/range {v22 .. v22}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_22

    .line 1938
    invoke-interface/range {v22 .. v22}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/Entity;

    .line 1940
    .local v26, entity:Landroid/content/Entity;
    invoke-virtual/range {v26 .. v26}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v27

    .line 1941
    .local v27, entityValues:Landroid/content/ContentValues;
    const-string v7, "sourceid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 1942
    .local v43, serverId:Ljava/lang/String;
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1943
    .local v33, groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v29, :cond_4

    .line 1944
    const/16 v7, 0x16

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1945
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Sending Contacts changes to the server"

    aput-object v9, v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1946
    const/16 v29, 0x0

    .line 1948
    :cond_4
    if-nez v43, :cond_5

    .line 1950
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1951
    .local v18, clientId:Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Creating new contact with clientId: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v18, v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1952
    const/4 v7, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    const/16 v8, 0xc

    move-object/from16 v0, v18

    invoke-virtual {v7, v8, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1954
    const-string v7, "sync1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    const-string v7, "_id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, v41

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v5, v7, v0, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1969
    .end local v18           #clientId:Ljava/lang/String;
    :goto_3
    const/16 v7, 0x1d

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1971
    const/16 v37, 0x0

    .line 1972
    .local v37, imCount:I
    const/16 v23, 0x0

    .line 1973
    .local v23, emailCount:I
    const/16 v34, 0x0

    .line 1974
    .local v34, homePhoneCount:I
    const/16 v45, 0x0

    .line 1975
    .local v45, workPhoneCount:I
    const/16 v21, 0x0

    .line 1976
    .local v21, displayName:Ljava/lang/String;
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1977
    .local v25, emailValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual/range {v26 .. v26}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .local v35, i$:Ljava/util/Iterator;
    move/from16 v38, v37

    .end local v37           #imCount:I
    .local v38, imCount:I
    :goto_4
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/content/Entity$NamedContentValues;

    .line 1978
    .local v40, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v20, v0

    .line 1979
    .local v20, cv:Landroid/content/ContentValues;
    const-string v7, "mimetype"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1980
    .local v39, mimeType:Ljava/lang/String;
    const-string v7, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1981
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v37, v38

    .end local v38           #imCount:I
    .restart local v37       #imCount:I
    :goto_5
    move/from16 v38, v37

    .line 2022
    .end local v37           #imCount:I
    .restart local v38       #imCount:I
    goto :goto_4

    .line 1960
    .end local v20           #cv:Landroid/content/ContentValues;
    .end local v21           #displayName:Ljava/lang/String;
    .end local v23           #emailCount:I
    .end local v25           #emailValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v34           #homePhoneCount:I
    .end local v35           #i$:Ljava/util/Iterator;
    .end local v38           #imCount:I
    .end local v39           #mimeType:Ljava/lang/String;
    .end local v40           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v45           #workPhoneCount:I
    :cond_5
    const-string v7, "deleted"

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 1961
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Deleting contact with serverId: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v43, v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1962
    const/16 v7, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    const/16 v8, 0xd

    move-object/from16 v0, v43

    invoke-virtual {v7, v8, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1963
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    const-string v8, "_id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 2066
    .end local v13           #bufSize:I
    .end local v14           #bufThreshold:J
    .end local v26           #entity:Landroid/content/Entity;
    .end local v27           #entityValues:Landroid/content/ContentValues;
    .end local v30           #freeHeap:J
    .end local v33           #groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v41           #rawContactUri:Landroid/net/Uri;
    .end local v42           #rt:Ljava/lang/Runtime;
    .end local v43           #serverId:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 2069
    :cond_6
    :goto_6
    invoke-interface/range {v22 .. v22}, Landroid/content/EntityIterator;->close()V

    .line 2072
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1966
    .restart local v13       #bufSize:I
    .restart local v14       #bufThreshold:J
    .restart local v26       #entity:Landroid/content/Entity;
    .restart local v27       #entityValues:Landroid/content/ContentValues;
    .restart local v30       #freeHeap:J
    .restart local v33       #groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v41       #rawContactUri:Landroid/net/Uri;
    .restart local v42       #rt:Ljava/lang/Runtime;
    .restart local v43       #serverId:Ljava/lang/String;
    :cond_7
    const/4 v7, 0x1

    :try_start_2
    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Upsync change to contact with serverId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v43

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1967
    const/16 v7, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    const/16 v8, 0xd

    move-object/from16 v0, v43

    invoke-virtual {v7, v8, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 2069
    .end local v13           #bufSize:I
    .end local v14           #bufThreshold:J
    .end local v26           #entity:Landroid/content/Entity;
    .end local v27           #entityValues:Landroid/content/ContentValues;
    .end local v30           #freeHeap:J
    .end local v33           #groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v41           #rawContactUri:Landroid/net/Uri;
    .end local v42           #rt:Ljava/lang/Runtime;
    .end local v43           #serverId:Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-interface/range {v22 .. v22}, Landroid/content/EntityIterator;->close()V

    throw v7

    .line 1982
    .restart local v13       #bufSize:I
    .restart local v14       #bufThreshold:J
    .restart local v20       #cv:Landroid/content/ContentValues;
    .restart local v21       #displayName:Ljava/lang/String;
    .restart local v23       #emailCount:I
    .restart local v25       #emailValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v26       #entity:Landroid/content/Entity;
    .restart local v27       #entityValues:Landroid/content/ContentValues;
    .restart local v30       #freeHeap:J
    .restart local v33       #groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v34       #homePhoneCount:I
    .restart local v35       #i$:Ljava/util/Iterator;
    .restart local v38       #imCount:I
    .restart local v39       #mimeType:Ljava/lang/String;
    .restart local v40       #ncv:Landroid/content/Entity$NamedContentValues;
    .restart local v41       #rawContactUri:Landroid/net/Uri;
    .restart local v42       #rt:Ljava/lang/Runtime;
    .restart local v43       #serverId:Ljava/lang/String;
    .restart local v45       #workPhoneCount:I
    :cond_8
    :try_start_3
    const-string v7, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1983
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendNickname(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v37, v38

    .end local v38           #imCount:I
    .restart local v37       #imCount:I
    goto/16 :goto_5

    .line 1984
    .end local v37           #imCount:I
    .restart local v38       #imCount:I
    :cond_9
    const-string v7, "vnd.android.cursor.item/eas_children"

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1985
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendChildren(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v37, v38

    .end local v38           #imCount:I
    .restart local v37       #imCount:I
    goto/16 :goto_5

    .line 1986
    .end local v37           #imCount:I
    .restart local v38       #imCount:I
    :cond_a
    const-string v7, "vnd.android.cursor.item/eas_business"

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1987
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendBusiness(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v37, v38

    .end local v38           #imCount:I
    .restart local v37       #imCount:I
    goto/16 :goto_5

    .line 1988
    .end local v37           #imCount:I
    .restart local v38       #imCount:I
    :cond_b
    const-string v7, "vnd.android.cursor.item/website"

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1989
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendWebpage(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v37, v38

    .end local v38           #imCount:I
    .restart local v37       #imCount:I
    goto/16 :goto_5

    .line 1990
    .end local v37           #imCount:I
    .restart local v38       #imCount:I
    :cond_c
    const-string v7, "vnd.android.cursor.item/eas_personal"

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1991
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendPersonal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v37, v38

    .end local v38           #imCount:I
    .restart local v37       #imCount:I
    goto/16 :goto_5

    .line 1992
    .end local v37           #imCount:I
    .restart local v38       #imCount:I
    :cond_d
    const-string v7, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1993
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v45

    move/from16 v4, v34

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendPhone(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;II)V

    .line 1994
    const-string v7, "data2"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v44

    .line 1995
    .local v44, type:I
    const/4 v7, 0x1

    move/from16 v0, v44

    if-ne v0, v7, :cond_e

    add-int/lit8 v34, v34, 0x1

    .line 1996
    :cond_e
    const/4 v7, 0x3

    move/from16 v0, v44

    if-ne v0, v7, :cond_f

    add-int/lit8 v45, v45, 0x1

    :cond_f
    move/from16 v37, v38

    .line 1997
    .end local v38           #imCount:I
    .restart local v37       #imCount:I
    goto/16 :goto_5

    .end local v37           #imCount:I
    .end local v44           #type:I
    .restart local v38       #imCount:I
    :cond_10
    const-string v7, "vnd.android.cursor.item/relation"

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1998
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendRelation(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v37, v38

    .end local v38           #imCount:I
    .restart local v37       #imCount:I
    goto/16 :goto_5

    .line 1999
    .end local v37           #imCount:I
    .restart local v38       #imCount:I
    :cond_11
    const-string v7, "vnd.android.cursor.item/name"

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 2000
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStructuredName(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v21

    move/from16 v37, v38

    .end local v38           #imCount:I
    .restart local v37       #imCount:I
    goto/16 :goto_5

    .line 2001
    .end local v37           #imCount:I
    .restart local v38       #imCount:I
    :cond_12
    const-string v7, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 2002
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendStructuredPostal(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v37, v38

    .end local v38           #imCount:I
    .restart local v37       #imCount:I
    goto/16 :goto_5

    .line 2003
    .end local v37           #imCount:I
    .restart local v38       #imCount:I
    :cond_13
    const-string v7, "vnd.android.cursor.item/organization"

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 2004
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendOrganization(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v37, v38

    .end local v38           #imCount:I
    .restart local v37       #imCount:I
    goto/16 :goto_5

    .line 2005
    .end local v37           #imCount:I
    .restart local v38       #imCount:I
    :cond_14
    const-string v7, "vnd.android.cursor.item/im"

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 2006
    add-int/lit8 v37, v38, 0x1

    .end local v38           #imCount:I
    .restart local v37       #imCount:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendIm(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;I)V

    goto/16 :goto_5

    .line 2007
    .end local v37           #imCount:I
    .restart local v38       #imCount:I
    :cond_15
    const-string v7, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 2008
    const-string v7, "data2"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v28

    .line 2009
    .local v28, eventType:Ljava/lang/Integer;
    if-eqz v28, :cond_16

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 2010
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendBirthday(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    :cond_16
    move/from16 v37, v38

    .line 2012
    .end local v38           #imCount:I
    .restart local v37       #imCount:I
    goto/16 :goto_5

    .end local v28           #eventType:Ljava/lang/Integer;
    .end local v37           #imCount:I
    .restart local v38       #imCount:I
    :cond_17
    const-string v7, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 2014
    const-string v7, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v37, v38

    .end local v38           #imCount:I
    .restart local v37       #imCount:I
    goto/16 :goto_5

    .line 2015
    .end local v37           #imCount:I
    .restart local v38       #imCount:I
    :cond_18
    const-string v7, "vnd.android.cursor.item/note"

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 2016
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendNote(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v37, v38

    .end local v38           #imCount:I
    .restart local v37       #imCount:I
    goto/16 :goto_5

    .line 2017
    .end local v37           #imCount:I
    .restart local v38       #imCount:I
    :cond_19
    const-string v7, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 2018
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendPhoto(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;)V

    move/from16 v37, v38

    .end local v38           #imCount:I
    .restart local v37       #imCount:I
    goto/16 :goto_5

    .line 2020
    .end local v37           #imCount:I
    .restart local v38       #imCount:I
    :cond_1a
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Contacts upsync, unknown data: "

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v39, v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    move/from16 v37, v38

    .end local v38           #imCount:I
    .restart local v37       #imCount:I
    goto/16 :goto_5

    .line 2026
    .end local v20           #cv:Landroid/content/ContentValues;
    .end local v37           #imCount:I
    .end local v39           #mimeType:Ljava/lang/String;
    .end local v40           #ncv:Landroid/content/Entity$NamedContentValues;
    .restart local v38       #imCount:I
    :cond_1b
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v35

    move/from16 v24, v23

    .end local v23           #emailCount:I
    .local v24, emailCount:I
    :goto_7
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/ContentValues;

    .line 2027
    .restart local v20       #cv:Landroid/content/ContentValues;
    add-int/lit8 v23, v24, 0x1

    .end local v24           #emailCount:I
    .restart local v23       #emailCount:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v24

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sendEmail(Lcom/android/exchange/adapter/Serializer;Landroid/content/ContentValues;ILjava/lang/String;)V

    move/from16 v24, v23

    .end local v23           #emailCount:I
    .restart local v24       #emailCount:I
    goto :goto_7

    .line 2031
    .end local v20           #cv:Landroid/content/ContentValues;
    :cond_1c
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_20

    .line 2032
    const/16 v32, 0x1

    .line 2033
    .local v32, groupFirst:Z
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_8
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v36

    .line 2035
    .local v36, id:I
    sget-object v7, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v36

    int-to-long v8, v0

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    sget-object v9, Lcom/android/exchange/adapter/ContactsSyncAdapter;->GROUP_TITLE_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v5

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v16

    .line 2039
    .local v16, c:Landroid/database/Cursor;
    :try_start_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 2040
    if-eqz v32, :cond_1d

    .line 2041
    const/16 v7, 0x55

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 2042
    const/16 v32, 0x0

    .line 2044
    :cond_1d
    const/16 v7, 0x56

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2047
    :cond_1e
    :try_start_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catchall_1
    move-exception v7

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v7

    .line 2050
    .end local v16           #c:Landroid/database/Cursor;
    .end local v36           #id:I
    :cond_1f
    if-nez v32, :cond_20

    .line 2051
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 2054
    .end local v32           #groupFirst:Z
    :cond_20
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 2055
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    const-string v8, "_id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2056
    add-int/lit8 v19, v19, 0x1

    const/16 v7, 0x64

    move/from16 v0, v19

    if-ge v0, v7, :cond_21

    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->getBufferSize()I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v7, v14

    if-ltz v7, :cond_3

    :cond_21
    invoke-interface/range {v22 .. v22}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2057
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "contacts up-syncing reached the threshold"

    aput-object v9, v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 2058
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMoreLocalChanges:Z

    .line 2059
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 2060
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 2063
    .end local v21           #displayName:Ljava/lang/String;
    .end local v24           #emailCount:I
    .end local v25           #emailValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v26           #entity:Landroid/content/Entity;
    .end local v27           #entityValues:Landroid/content/ContentValues;
    .end local v33           #groupIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v34           #homePhoneCount:I
    .end local v35           #i$:Ljava/util/Iterator;
    .end local v38           #imCount:I
    .end local v43           #serverId:Ljava/lang/String;
    .end local v45           #workPhoneCount:I
    :cond_22
    if-nez v29, :cond_6

    .line 2064
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_6
.end method

.method public sendSyncOptions(Ljava/lang/Double;Lcom/android/exchange/adapter/Serializer;I)V
    .locals 1
    .parameter "protocolVersion"
    .parameter "s"
    .parameter "syncStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    if-nez p3, :cond_0

    .line 183
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 184
    const/16 v0, 0x5f

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 185
    const/16 v0, 0x69

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 186
    const/16 v0, 0x6a

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 187
    const/16 v0, 0x75

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 188
    const/16 v0, 0x59

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 189
    const/16 v0, 0x68

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 190
    const/16 v0, 0x5b

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 191
    const/16 v0, 0x5c

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 192
    const/16 v0, 0x5d

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 193
    const/16 v0, 0x4c

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 194
    const/16 v0, 0x53

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 195
    const/16 v0, 0x30e

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 196
    const/16 v0, 0x52

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 197
    const/16 v0, 0x30b

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 198
    const/16 v0, 0x66

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 199
    const/16 v0, 0x67

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 200
    const/16 v0, 0x60

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 201
    const/16 v0, 0x6b

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 202
    const/16 v0, 0x54

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 203
    const/16 v0, 0x73

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 204
    const/16 v0, 0x72

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 205
    const/16 v0, 0x47

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 206
    const/16 v0, 0x307

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 207
    const/16 v0, 0x308

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 208
    const/16 v0, 0x309

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 209
    const/16 v0, 0x4d

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 210
    const/16 v0, 0x4e

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 211
    const/16 v0, 0x4f

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 212
    const/16 v0, 0x50

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 213
    const/16 v0, 0x51

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 214
    const/16 v0, 0x61

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 215
    const/16 v0, 0x62

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 216
    const/16 v0, 0x63

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 217
    const/16 v0, 0x64

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 218
    const/16 v0, 0x65

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 219
    const/16 v0, 0x6d

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 220
    const/16 v0, 0x6e

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 221
    const/16 v0, 0x6f

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 222
    const/16 v0, 0x70

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 223
    const/16 v0, 0x71

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 224
    const/16 v0, 0x78

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 225
    const/16 v0, 0x79

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 226
    const/16 v0, 0x7a

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 227
    const/16 v0, 0x30d

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 228
    const/16 v0, 0x46

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 229
    const/16 v0, 0x30a

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 230
    const/16 v0, 0x74

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 231
    const/16 v0, 0x5a

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 232
    const/16 v0, 0x76

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 233
    const/16 v0, 0x6c

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 234
    const/16 v0, 0x305

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 235
    const/16 v0, 0x306

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 236
    const/16 v0, 0x30c

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 237
    const/16 v0, 0x45

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 238
    const/16 v0, 0x48

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 239
    const/16 v0, 0x77

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 240
    const/16 v0, 0x7c

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 241
    invoke-virtual {p2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->setPimSyncOptions(Ljava/lang/Double;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    goto :goto_0
.end method

.method public setSyncKey(Ljava/lang/String;Z)V
    .locals 6
    .parameter "syncKey"
    .parameter "inCommands"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    sget-object v3, Lcom/android/exchange/adapter/ContactsSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v3

    .line 312
    :try_start_0
    const-string v2, "0"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v2, v2, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 316
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_1
    sget-object v2, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v0, v2, v4, v5}, Landroid/provider/SyncStateContract$Helpers;->set(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V

    .line 318
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "SyncKey set to "

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const/4 v4, 0x2

    const-string v5, " in ContactsProvider"

    aput-object v5, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 323
    :try_start_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 326
    .end local v0           #client:Landroid/content/ContentProviderClient;
    :cond_1
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput-object p1, v2, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 327
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 328
    return-void

    .line 319
    .restart local v0       #client:Landroid/content/ContentProviderClient;
    :catch_0
    move-exception v1

    .line 320
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Can\'t set SyncKey in ContactsProvider"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 323
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v2

    .line 327
    .end local v0           #client:Landroid/content/ContentProviderClient;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public wipe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 263
    iget-object v0, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/exchange/adapter/ContactsSyncAdapter;->mAccountUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 264
    return-void
.end method
