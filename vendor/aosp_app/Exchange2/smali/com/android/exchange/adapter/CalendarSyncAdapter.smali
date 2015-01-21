.class public Lcom/android/exchange/adapter/CalendarSyncAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "CalendarSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;,
        Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;
    }
.end annotation


# static fields
.field private static final ATTENDEES_EXCEPT_ORGANIZER:Ljava/lang/String; = "event_id=? AND attendeeRelationship!=2"

.field private static final ATTENDEE_STATUS_COLUMN_STATUS:I = 0x0

.field private static final ATTENDEE_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final ATTENDEE_TOKENIZER_DELIMITER:Ljava/lang/String; = "\\"

.field private static final BOGUS_ORGANIZER_EMAIL:Ljava/lang/String; = "upload_disallowed@uploadisdisallowed.aaa"

.field public static final CALENDAR_SELECTION:Ljava/lang/String; = "account_name=? AND account_type=?"

.field private static final CALENDAR_SELECTION_ID:I = 0x0

.field private static final CATEGORY_TOKENIZER_DELIMITER:Ljava/lang/String; = "\\"

.field private static final CLIENT_ID_SELECTION:Ljava/lang/String; = "sync_data2=?"

.field private static final DIRTY_EXCEPTION_IN_CALENDAR:Ljava/lang/String; = "dirty=1 AND original_id NOTNULL AND calendar_id=?"

.field private static final DIRTY_OR_MARKED_TOP_LEVEL_IN_CALENDAR:Ljava/lang/String; = "(dirty=1 OR sync_data8= 1) AND original_id ISNULL AND calendar_id=?"

.field private static final EVENT_AND_EMAIL:Ljava/lang/String; = "event_id=? AND attendeeEmail LIKE ?"

.field private static final EVENT_ID_AND_CALENDAR_ID:Ljava/lang/String; = "_id=? AND original_sync_id ISNULL AND calendar_id=?"

.field private static final EVENT_ID_AND_NAME:Ljava/lang/String; = "event_id=? AND name=?"

.field private static final EVENT_SAVED_TIMEZONE_COLUMN:Ljava/lang/String; = "sync_data1"

.field private static final EVENT_SYNC_MARK:Ljava/lang/String; = "sync_data8"

.field private static final EVENT_SYNC_VERSION:Ljava/lang/String; = "sync_data4"

.field private static final EXTENDED_PROPERTY_ATTENDEES:Ljava/lang/String; = "attendees"

.field private static final EXTENDED_PROPERTY_ATTENDEES_REDACTED:Ljava/lang/String; = "attendeesRedacted"

.field private static final EXTENDED_PROPERTY_CATEGORIES:Ljava/lang/String; = "categories"

.field private static final EXTENDED_PROPERTY_DTSTAMP:Ljava/lang/String; = "dtstamp"

.field private static final EXTENDED_PROPERTY_ID:I = 0x0

.field private static final EXTENDED_PROPERTY_MEETING_STATUS:Ljava/lang/String; = "meeting_status"

.field private static final EXTENDED_PROPERTY_PROJECTION:[Ljava/lang/String; = null

.field private static final EXTENDED_PROPERTY_UPSYNC_PROHIBITED:Ljava/lang/String; = "upsyncProhibited"

.field private static final EXTENDED_PROPERTY_USER_ATTENDEE_STATUS:Ljava/lang/String; = "userAttendeeStatus"

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final MAX_OPS_BEFORE_EXCEPTION_ATTENDEE_REDACTION:I = 0x1f4

.field private static final MAX_SYNCED_ATTENDEES:I = 0x32

.field private static final ORIGINAL_EVENT_AND_CALENDAR:Ljava/lang/String; = "original_sync_id=? AND calendar_id=?"

.field private static final ORIGINAL_EVENT_PROJECTION:[Ljava/lang/String; = null

.field private static final PLACEHOLDER_OPERATION:Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation; = null

.field private static final SERVER_ID_AND_CALENDAR_ID:Ljava/lang/String; = "_sync_id=? AND original_sync_id ISNULL AND calendar_id=?"

.field private static final TAG:Ljava/lang/String; = "EasCalendarSyncAdapter"

.field private static final UTC_TIMEZONE:Ljava/util/TimeZone; = null

.field private static final WHERE_CALENDAR_ID:Ljava/lang/String; = "calendar_id=?"

.field private static final sSyncKeyLock:Ljava/lang/Object;


# instance fields
.field private final mAsSyncAdapterAttendees:Landroid/net/Uri;

.field private final mAsSyncAdapterEvents:Landroid/net/Uri;

.field private final mAsSyncAdapterExtendedProperties:Landroid/net/Uri;

.field private final mAsSyncAdapterReminders:Landroid/net/Uri;

.field private mCalendarId:J

.field private mCalendarIdArgument:[Ljava/lang/String;

.field private mCalendarIdString:Ljava/lang/String;

.field private mDeletedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mEmailAddress:Ljava/lang/String;

.field private final mLocalTimeZone:Ljava/util/TimeZone;

.field private mOutgoingMailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ">;"
        }
    .end annotation
.end field

.field private mSendCancelIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadedIdList:Ljava/util/ArrayList;
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
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ID_PROJECTION:[Ljava/lang/String;

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "original_id"

    aput-object v1, v0, v2

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ORIGINAL_EVENT_PROJECTION:[Ljava/lang/String;

    .line 107
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ATTENDEE_STATUS_PROJECTION:[Ljava/lang/String;

    .line 114
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EXTENDED_PROPERTY_PROJECTION:[Ljava/lang/String;

    .line 131
    new-instance v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->PLACEHOLDER_OPERATION:Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    .line 136
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->UTC_TIMEZONE:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .locals 10
    .parameter "service"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 172
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 137
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;

    .line 154
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mSendCancelIdList:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    .line 173
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v0, v0, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    .line 175
    const-string v6, "com.android.exchange"

    .line 176
    .local v6, amType:Ljava/lang/String;
    sget-object v0, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    invoke-static {v0, v1, v6}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAsSyncAdapterAttendees:Landroid/net/Uri;

    .line 178
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    invoke-static {v0, v1, v6}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAsSyncAdapterEvents:Landroid/net/Uri;

    .line 180
    sget-object v0, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    invoke-static {v0, v1, v6}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAsSyncAdapterReminders:Landroid/net/Uri;

    .line 182
    sget-object v0, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    invoke-static {v0, v1, v6}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAsSyncAdapterExtendedProperties:Landroid/net/Uri;

    .line 185
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "account_name=? AND account_type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    aput-object v5, v4, v8

    const-string v5, "com.android.exchange"

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 188
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 200
    :goto_0
    return-void

    .line 190
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J

    .line 195
    :goto_1
    iget-wide v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;

    .line 196
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdArgument:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 193
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->createCalendar(Lcom/android/exchange/EasSyncService;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Mailbox;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 198
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/TimeZone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->UTC_TIMEZONE:Ljava/util/TimeZone;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAsSyncAdapterExtendedProperties:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->EXTENDED_PROPERTY_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAsSyncAdapterReminders:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exchange/adapter/CalendarSyncAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAsSyncAdapterAttendees:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->PLACEHOLDER_OPERATION:Lcom/android/exchange/adapter/AbstractSyncAdapter$Operation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mAsSyncAdapterEvents:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ID_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/exchange/adapter/CalendarSyncAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mSendCancelIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "account"
    .parameter "accountType"

    .prologue
    .line 244
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private decodeVisibility(I)Ljava/lang/String;
    .locals 2
    .parameter "visibility"

    .prologue
    .line 1461
    const/4 v0, 0x0

    .line 1462
    .local v0, easVisibility:I
    packed-switch p1, :pswitch_data_0

    .line 1476
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1464
    :pswitch_0
    const/4 v0, 0x0

    .line 1465
    goto :goto_0

    .line 1467
    :pswitch_1
    const/4 v0, 0x1

    .line 1468
    goto :goto_0

    .line 1470
    :pswitch_2
    const/4 v0, 0x2

    .line 1471
    goto :goto_0

    .line 1473
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 1462
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getInt(Landroid/content/ContentValues;Ljava/lang/String;)I
    .locals 2
    .parameter "cv"
    .parameter "column"

    .prologue
    .line 1480
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1481
    .local v0, i:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 1482
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private sendDeclinedEmail(Landroid/content/Entity;Ljava/lang/String;)V
    .locals 5
    .parameter "entity"
    .parameter "clientId"

    .prologue
    .line 1758
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    const/16 v2, 0x80

    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v1, p1, v2, p2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 1761
    .local v0, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v0, :cond_0

    .line 1762
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Queueing declined response to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1763
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1765
    :cond_0
    return-void
.end method

.method private sendEvent(Landroid/content/Entity;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V
    .locals 55
    .parameter "entity"
    .parameter "clientId"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1492
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v18

    .line 1493
    .local v18, entityValues:Landroid/content/ContentValues;
    if-nez p2, :cond_d

    const/16 v28, 0x1

    .line 1494
    .local v28, isException:Z
    :goto_0
    const/16 v23, 0x0

    .line 1495
    .local v23, hasAttendees:Z
    const-string v51, "_sync_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v26

    .line 1496
    .local v26, isChange:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    move-object/from16 v49, v0

    .line 1497
    .local v49, version:Ljava/lang/Double;
    const-string v51, "allDay"

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->getIntegerValueAsBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v4

    .line 1503
    .local v4, allDay:Z
    if-eqz v28, :cond_3

    .line 1505
    const-string v51, "deleted"

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    .line 1506
    .local v11, deleted:Ljava/lang/Integer;
    if-eqz v11, :cond_e

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v51

    const/16 v52, 0x1

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_e

    const/16 v27, 0x1

    .line 1507
    .local v27, isDeleted:Z
    :goto_1
    const-string v51, "eventStatus"

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    .line 1508
    .local v21, eventStatus:Ljava/lang/Integer;
    if-eqz v21, :cond_f

    const/16 v51, 0x2

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    move-object/from16 v0, v21

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_f

    const/16 v25, 0x1

    .line 1509
    .local v25, isCanceled:Z
    :goto_2
    if-nez v27, :cond_0

    if-eqz v25, :cond_10

    .line 1510
    :cond_0
    const/16 v51, 0x115

    const-string v52, "1"

    move-object/from16 v0, p3

    move/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1513
    if-eqz v27, :cond_1

    if-nez v25, :cond_1

    .line 1514
    const-string v51, "_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 1515
    .local v19, eventId:J
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1516
    .local v10, cv:Landroid/content/ContentValues;
    const-string v51, "eventStatus"

    const/16 v52, 0x2

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v51, v0

    sget-object v52, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v52

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v53, v0

    const-string v54, "com.android.exchange"

    invoke-static/range {v52 .. v54}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v52

    const/16 v53, 0x0

    const/16 v54, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    move-object/from16 v3, v54

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1527
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v19           #eventId:J
    :cond_1
    :goto_3
    const-string v51, "originalInstanceTime"

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v37

    .line 1528
    .local v37, originalTime:Ljava/lang/Long;
    if-eqz v37, :cond_3

    .line 1529
    const-string v51, "originalAllDay"

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Lcom/android/exchange/utility/CalendarUtilities;->getIntegerValueAsBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v36

    .line 1532
    .local v36, originalAllDay:Z
    if-eqz v36, :cond_2

    .line 1534
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;

    move-object/from16 v53, v0

    invoke-static/range {v51 .. v53}, Lcom/android/exchange/utility/CalendarUtilities;->getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide v51

    invoke-static/range {v51 .. v52}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    .line 1537
    :cond_2
    const/16 v51, 0x116

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Long;->longValue()J

    move-result-wide v52

    invoke-static/range {v52 .. v53}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p3

    move/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1545
    .end local v11           #deleted:Ljava/lang/Integer;
    .end local v21           #eventStatus:Ljava/lang/Integer;
    .end local v25           #isCanceled:Z
    .end local v27           #isDeleted:Z
    .end local v36           #originalAllDay:Z
    .end local v37           #originalTime:Ljava/lang/Long;
    :cond_3
    if-eqz v4, :cond_11

    const-string v51, "sync_data1"

    :goto_4
    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 1547
    .local v47, timeZoneName:Ljava/lang/String;
    if-nez v47, :cond_4

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;

    move-object/from16 v51, v0

    invoke-virtual/range {v51 .. v51}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v47

    .line 1550
    :cond_4
    invoke-static/range {v47 .. v47}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v22

    .line 1552
    .local v22, eventTimeZone:Ljava/util/TimeZone;
    if-nez v28, :cond_5

    .line 1555
    invoke-static/range {v22 .. v22}, Lcom/android/exchange/utility/CalendarUtilities;->timeZoneToTziString(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v46

    .line 1556
    .local v46, timeZone:Ljava/lang/String;
    const/16 v51, 0x105

    move-object/from16 v0, p3

    move/from16 v1, v51

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1559
    .end local v46           #timeZone:Ljava/lang/String;
    :cond_5
    const/16 v52, 0x106

    if-eqz v4, :cond_12

    const-string v51, "1"

    :goto_5
    move-object/from16 v0, p3

    move/from16 v1, v52

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1562
    const-string v51, "dtstart"

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Long;->longValue()J

    move-result-wide v43

    .line 1566
    .local v43, startTime:J
    const-string v51, "dtend"

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_13

    .line 1567
    const-string v51, "dtend"

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 1581
    .local v16, endTime:J
    :goto_6
    if-eqz v4, :cond_6

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mLocalTimeZone:Ljava/util/TimeZone;

    move-object/from16 v48, v0

    .line 1583
    .local v48, tz:Ljava/util/TimeZone;
    move-wide/from16 v0, v43

    move-object/from16 v2, v48

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide v43

    .line 1584
    move-wide/from16 v0, v16

    move-object/from16 v2, v48

    invoke-static {v0, v1, v2}, Lcom/android/exchange/utility/CalendarUtilities;->getLocalAllDayCalendarTime(JLjava/util/TimeZone;)J

    move-result-wide v16

    .line 1586
    .end local v48           #tz:Ljava/util/TimeZone;
    :cond_6
    const/16 v51, 0x127

    invoke-static/range {v43 .. v44}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p3

    move/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1587
    const/16 v51, 0x112

    invoke-static/range {v16 .. v17}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p3

    move/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1589
    const/16 v51, 0x111

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v52

    invoke-static/range {v52 .. v53}, Lcom/android/exchange/utility/CalendarUtilities;->millisToEasDateTime(J)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p3

    move/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1592
    const-string v51, "eventLocation"

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1593
    .local v29, loc:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_8

    .line 1594
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v51

    const-wide/high16 v53, 0x4028

    cmpg-double v51, v51, v53

    if-gez v51, :cond_7

    .line 1596
    invoke-static/range {v29 .. v29}, Lcom/android/emailcommon/utility/Utility;->replaceBareLfWithCrlf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 1598
    :cond_7
    const/16 v51, 0x117

    move-object/from16 v0, p3

    move/from16 v1, v51

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1600
    :cond_8
    const-string v51, "title"

    const/16 v52, 0x126

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v51

    move/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1602
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v51

    const-wide/high16 v53, 0x4028

    cmpl-double v51, v51, v53

    if-ltz v51, :cond_15

    .line 1603
    const/16 v51, 0x44a

    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1604
    const/16 v51, 0x446

    const-string v52, "1"

    move-object/from16 v0, p3

    move/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1605
    const-string v51, "description"

    const/16 v52, 0x44b

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v51

    move/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1606
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1612
    :goto_7
    if-nez v28, :cond_26

    .line 1614
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v51

    const-wide/high16 v53, 0x4028

    cmpl-double v51, v51, v53

    if-gez v51, :cond_9

    if-nez v26, :cond_a

    .line 1615
    :cond_9
    const-string v51, "organizer"

    const/16 v52, 0x119

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v51

    move/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V

    .line 1618
    :cond_a
    const-string v51, "rrule"

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1619
    .local v41, rrule:Ljava/lang/String;
    if-eqz v41, :cond_b

    .line 1620
    move-object/from16 v0, v41

    move-wide/from16 v1, v43

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/android/exchange/utility/CalendarUtilities;->recurrenceFromRrule(Ljava/lang/String;JLcom/android/exchange/adapter/Serializer;)V

    .line 1624
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v45

    .line 1626
    .local v45, subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    const/4 v15, -0x1

    .line 1627
    .local v15, earliestReminder:I
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_c
    :goto_8
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_19

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/Entity$NamedContentValues;

    .line 1628
    .local v31, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object/from16 v32, v0

    .line 1629
    .local v32, ncvUri:Landroid/net/Uri;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v33, v0

    .line 1630
    .local v33, ncvValues:Landroid/content/ContentValues;
    sget-object v51, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v32

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_17

    .line 1631
    const-string v51, "name"

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1633
    .local v38, propertyName:Ljava/lang/String;
    const-string v51, "value"

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 1635
    .local v39, propertyValue:Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v51

    if-nez v51, :cond_c

    .line 1638
    const-string v51, "categories"

    move-object/from16 v0, v38

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_c

    .line 1641
    new-instance v42, Ljava/util/StringTokenizer;

    const-string v51, "\\"

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    .local v42, st:Ljava/util/StringTokenizer;
    invoke-virtual/range {v42 .. v42}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v51

    if-lez v51, :cond_c

    .line 1644
    const/16 v51, 0x10e

    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1645
    :goto_9
    invoke-virtual/range {v42 .. v42}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v51

    if-eqz v51, :cond_16

    .line 1646
    invoke-virtual/range {v42 .. v42}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 1647
    .local v9, category:Ljava/lang/String;
    const/16 v51, 0x10f

    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1, v9}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_9

    .line 1493
    .end local v4           #allDay:Z
    .end local v9           #category:Ljava/lang/String;
    .end local v15           #earliestReminder:I
    .end local v16           #endTime:J
    .end local v22           #eventTimeZone:Ljava/util/TimeZone;
    .end local v23           #hasAttendees:Z
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v26           #isChange:Z
    .end local v28           #isException:Z
    .end local v29           #loc:Ljava/lang/String;
    .end local v31           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v32           #ncvUri:Landroid/net/Uri;
    .end local v33           #ncvValues:Landroid/content/ContentValues;
    .end local v38           #propertyName:Ljava/lang/String;
    .end local v39           #propertyValue:Ljava/lang/String;
    .end local v41           #rrule:Ljava/lang/String;
    .end local v42           #st:Ljava/util/StringTokenizer;
    .end local v43           #startTime:J
    .end local v45           #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    .end local v47           #timeZoneName:Ljava/lang/String;
    .end local v49           #version:Ljava/lang/Double;
    :cond_d
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 1506
    .restart local v4       #allDay:Z
    .restart local v11       #deleted:Ljava/lang/Integer;
    .restart local v23       #hasAttendees:Z
    .restart local v26       #isChange:Z
    .restart local v28       #isException:Z
    .restart local v49       #version:Ljava/lang/Double;
    :cond_e
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 1508
    .restart local v21       #eventStatus:Ljava/lang/Integer;
    .restart local v27       #isDeleted:Z
    :cond_f
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 1523
    .restart local v25       #isCanceled:Z
    :cond_10
    const/16 v51, 0x115

    const-string v52, "0"

    move-object/from16 v0, p3

    move/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_3

    .line 1545
    .end local v11           #deleted:Ljava/lang/Integer;
    .end local v21           #eventStatus:Ljava/lang/Integer;
    .end local v25           #isCanceled:Z
    .end local v27           #isDeleted:Z
    :cond_11
    const-string v51, "eventTimezone"

    goto/16 :goto_4

    .line 1559
    .restart local v22       #eventTimeZone:Ljava/util/TimeZone;
    .restart local v47       #timeZoneName:Ljava/lang/String;
    :cond_12
    const-string v51, "0"

    goto/16 :goto_5

    .line 1569
    .restart local v43       #startTime:J
    :cond_13
    const-wide/32 v13, 0x36ee80

    .line 1570
    .local v13, durationMillis:J
    const-string v51, "duration"

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_14

    .line 1571
    new-instance v12, Lcom/android/calendarcommon2/Duration;

    invoke-direct {v12}, Lcom/android/calendarcommon2/Duration;-><init>()V

    .line 1573
    .local v12, duration:Lcom/android/calendarcommon2/Duration;
    :try_start_0
    const-string v51, "duration"

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v12, v0}, Lcom/android/calendarcommon2/Duration;->parse(Ljava/lang/String;)V

    .line 1574
    invoke-virtual {v12}, Lcom/android/calendarcommon2/Duration;->getMillis()J
    :try_end_0
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v13

    .line 1579
    .end local v12           #duration:Lcom/android/calendarcommon2/Duration;
    :cond_14
    :goto_a
    add-long v16, v43, v13

    .restart local v16       #endTime:J
    goto/16 :goto_6

    .line 1609
    .end local v13           #durationMillis:J
    .restart local v29       #loc:Ljava/lang/String;
    :cond_15
    const-string v51, "description"

    const/16 v52, 0x10b

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v51

    move/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/Serializer;->writeStringValue(Landroid/content/ContentValues;Ljava/lang/String;I)V

    goto/16 :goto_7

    .line 1649
    .restart local v15       #earliestReminder:I
    .restart local v24       #i$:Ljava/util/Iterator;
    .restart local v31       #ncv:Landroid/content/Entity$NamedContentValues;
    .restart local v32       #ncvUri:Landroid/net/Uri;
    .restart local v33       #ncvValues:Landroid/content/ContentValues;
    .restart local v38       #propertyName:Ljava/lang/String;
    .restart local v39       #propertyValue:Ljava/lang/String;
    .restart local v41       #rrule:Ljava/lang/String;
    .restart local v42       #st:Ljava/util/StringTokenizer;
    .restart local v45       #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    :cond_16
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_8

    .line 1652
    .end local v38           #propertyName:Ljava/lang/String;
    .end local v39           #propertyValue:Ljava/lang/String;
    .end local v42           #st:Ljava/util/StringTokenizer;
    :cond_17
    sget-object v51, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v32

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_c

    .line 1653
    const-string v51, "minutes"

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v30

    .line 1654
    .local v30, mins:Ljava/lang/Integer;
    if-eqz v30, :cond_c

    .line 1656
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v51

    if-gez v51, :cond_18

    .line 1657
    const/16 v51, 0x1e

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    .line 1660
    :cond_18
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v51

    move/from16 v0, v51

    if-le v0, v15, :cond_c

    .line 1661
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto/16 :goto_8

    .line 1668
    .end local v30           #mins:Ljava/lang/Integer;
    .end local v31           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v32           #ncvUri:Landroid/net/Uri;
    .end local v33           #ncvValues:Landroid/content/ContentValues;
    :cond_19
    if-ltz v15, :cond_1a

    .line 1669
    const/16 v51, 0x124

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p3

    move/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1674
    :cond_1a
    if-eqz p2, :cond_1b

    .line 1675
    const/16 v51, 0x128

    move-object/from16 v0, p3

    move/from16 v1, v51

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1679
    :cond_1b
    const/16 v35, 0x0

    .line 1680
    .local v35, organizerName:Ljava/lang/String;
    const/16 v34, 0x0

    .line 1681
    .local v34, organizerEmail:Ljava/lang/String;
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_1c
    :goto_b
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_21

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/content/Entity$NamedContentValues;

    .line 1682
    .restart local v31       #ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object/from16 v32, v0

    .line 1683
    .restart local v32       #ncvUri:Landroid/net/Uri;
    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v33, v0

    .line 1684
    .restart local v33       #ncvValues:Landroid/content/ContentValues;
    sget-object v51, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v32

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v51

    if-eqz v51, :cond_1c

    .line 1685
    const-string v51, "attendeeRelationship"

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v40

    .line 1688
    .local v40, relationship:Ljava/lang/Integer;
    if-eqz v40, :cond_1c

    const-string v51, "attendeeEmail"

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_1c

    .line 1690
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v51

    const/16 v52, 0x2

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_1d

    .line 1691
    const-string v51, "attendeeName"

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 1692
    const-string v51, "attendeeEmail"

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1693
    goto :goto_b

    .line 1695
    :cond_1d
    if-nez v23, :cond_1e

    .line 1696
    const/16 v51, 0x107

    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1697
    const/16 v23, 0x1

    .line 1699
    :cond_1e
    const/16 v51, 0x108

    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1700
    const-string v51, "attendeeEmail"

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1701
    .local v5, attendeeEmail:Ljava/lang/String;
    const-string v51, "attendeeName"

    move-object/from16 v0, v33

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1702
    .local v6, attendeeName:Ljava/lang/String;
    if-nez v6, :cond_1f

    .line 1703
    move-object v6, v5

    .line 1705
    :cond_1f
    const/16 v51, 0x10a

    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1, v6}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1706
    const/16 v51, 0x109

    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1, v5}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1707
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v51

    const-wide/high16 v53, 0x4028

    cmpl-double v51, v51, v53

    if-ltz v51, :cond_20

    .line 1708
    const/16 v51, 0x12a

    const-string v52, "1"

    move-object/from16 v0, p3

    move/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1710
    :cond_20
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_b

    .line 1714
    .end local v5           #attendeeEmail:Ljava/lang/String;
    .end local v6           #attendeeName:Ljava/lang/String;
    .end local v31           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v32           #ncvUri:Landroid/net/Uri;
    .end local v33           #ncvValues:Landroid/content/ContentValues;
    .end local v40           #relationship:Ljava/lang/Integer;
    :cond_21
    if-eqz v23, :cond_22

    .line 1715
    invoke-virtual/range {p3 .. p3}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1719
    :cond_22
    const-string v51, "availability"

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1720
    .local v7, availability:I
    invoke-static {v7}, Lcom/android/exchange/utility/CalendarUtilities;->busyStatusFromAvailability(I)I

    move-result v8

    .line 1721
    .local v8, busyStatus:I
    const/16 v51, 0x10d

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p3

    move/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1725
    if-nez v34, :cond_23

    const-string v51, "organizer"

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_23

    .line 1726
    const-string v51, "organizer"

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1728
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v51

    if-eqz v51, :cond_28

    .line 1729
    const/16 v52, 0x118

    if-eqz v23, :cond_27

    const-string v51, "1"

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v52

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1735
    :goto_d
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v51

    const-wide/high16 v53, 0x4028

    cmpl-double v51, v51, v53

    if-gez v51, :cond_24

    if-nez v26, :cond_25

    :cond_24
    if-eqz v35, :cond_25

    .line 1737
    const/16 v51, 0x11a

    move-object/from16 v0, p3

    move/from16 v1, v51

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1742
    :cond_25
    const-string v51, "accessLevel"

    move-object/from16 v0, v18

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v50

    .line 1743
    .local v50, visibility:Ljava/lang/Integer;
    if-eqz v50, :cond_29

    .line 1744
    const/16 v51, 0x125

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Integer;->intValue()I

    move-result v52

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->decodeVisibility(I)Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p3

    move/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1750
    .end local v7           #availability:I
    .end local v8           #busyStatus:I
    .end local v15           #earliestReminder:I
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v34           #organizerEmail:Ljava/lang/String;
    .end local v35           #organizerName:Ljava/lang/String;
    .end local v41           #rrule:Ljava/lang/String;
    .end local v45           #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    .end local v50           #visibility:Ljava/lang/Integer;
    :cond_26
    :goto_e
    return-void

    .line 1729
    .restart local v7       #availability:I
    .restart local v8       #busyStatus:I
    .restart local v15       #earliestReminder:I
    .restart local v24       #i$:Ljava/util/Iterator;
    .restart local v34       #organizerEmail:Ljava/lang/String;
    .restart local v35       #organizerName:Ljava/lang/String;
    .restart local v41       #rrule:Ljava/lang/String;
    .restart local v45       #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    :cond_27
    const-string v51, "0"

    goto :goto_c

    .line 1731
    :cond_28
    const/16 v51, 0x118

    const-string v52, "3"

    move-object/from16 v0, p3

    move/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_d

    .line 1747
    .restart local v50       #visibility:Ljava/lang/Integer;
    :cond_29
    const/16 v51, 0x125

    const-string v52, "1"

    move-object/from16 v0, p3

    move/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_e

    .line 1575
    .end local v7           #availability:I
    .end local v8           #busyStatus:I
    .end local v15           #earliestReminder:I
    .end local v16           #endTime:J
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v29           #loc:Ljava/lang/String;
    .end local v34           #organizerEmail:Ljava/lang/String;
    .end local v35           #organizerName:Ljava/lang/String;
    .end local v41           #rrule:Ljava/lang/String;
    .end local v45           #subValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity$NamedContentValues;>;"
    .end local v50           #visibility:Ljava/lang/Integer;
    .restart local v12       #duration:Lcom/android/calendarcommon2/Duration;
    .restart local v13       #durationMillis:J
    :catch_0
    move-exception v51

    goto/16 :goto_a
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public dataUriFromNamedContentValues(Landroid/content/Entity$NamedContentValues;)Landroid/net/Uri;
    .locals 5
    .parameter "ncv"

    .prologue
    .line 255
    iget-object v3, p1, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 256
    .local v1, id:J
    iget-object v3, p1, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 257
    .local v0, dataUri:Landroid/net/Uri;
    return-object v0
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const-string v0, "Calendar"

    return-object v0
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    sget-object v5, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v5

    .line 267
    :try_start_0
    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v4, v4, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 270
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_1
    sget-object v4, Landroid/provider/CalendarContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v4, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v6, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    invoke-static {v0, v4, v6}, Landroid/provider/SyncStateContract$Helpers;->get(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;)[B

    move-result-object v1

    .line 274
    .local v1, data:[B
    if-eqz v1, :cond_0

    array-length v4, v1

    if-nez v4, :cond_1

    .line 276
    :cond_0
    const-string v4, "0"

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v6}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V

    .line 277
    const-string v3, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 287
    :try_start_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 277
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    :goto_0
    return-object v3

    .line 279
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 280
    .local v3, syncKey:Ljava/lang/String;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "SyncKey retrieved as "

    aput-object v7, v4, v6

    const/4 v6, 0x1

    aput-object v3, v4, v6

    const/4 v6, 0x2

    const-string v7, " from CalendarProvider"

    aput-object v7, v4, v6

    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 287
    :try_start_4
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 281
    monitor-exit v5

    goto :goto_0

    .line 289
    .end local v0           #client:Landroid/content/ContentProviderClient;
    .end local v1           #data:[B
    .end local v3           #syncKey:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 283
    .restart local v0       #client:Landroid/content/ContentProviderClient;
    :catch_0
    move-exception v2

    .line 284
    .local v2, e:Landroid/os/RemoteException;
    :try_start_5
    new-instance v4, Ljava/io/IOException;

    const-string v6, "Can\'t get SyncKey from CalendarProvider"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 287
    .end local v2           #e:Landroid/os/RemoteException;
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
    .line 233
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    const-string v1, "com.android.calendar"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
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
    .line 239
    new-instance v0, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;-><init>(Lcom/android/exchange/adapter/CalendarSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/CalendarSyncAdapter;)V

    .line 240
    .local v0, p:Lcom/android/exchange/adapter/CalendarSyncAdapter$EasCalendarSyncParser;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/AbstractSyncParser;->parse()Z

    move-result v1

    return v1
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .locals 57
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1769
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v4, v5, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1771
    .local v4, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1772
    const/4 v5, 0x0

    .line 2156
    :goto_0
    return v5

    .line 1778
    :cond_0
    :try_start_0
    new-instance v45, Ljava/util/ArrayList;

    invoke-direct/range {v45 .. v45}, Ljava/util/ArrayList;-><init>()V

    .line 1779
    .local v45, orphanedExceptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/exchange/adapter/CalendarSyncAdapter;->ORIGINAL_EVENT_PROJECTION:[Ljava/lang/String;

    const-string v7, "dirty=1 AND original_id NOTNULL AND calendar_id=?"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdArgument:[Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 1782
    .local v16, c:Landroid/database/Cursor;
    :try_start_1
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 1785
    .local v21, cv:Landroid/content/ContentValues;
    const-string v5, "sync_data8"

    const-string v6, "1"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    :cond_1
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1788
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v46

    .line 1789
    .local v46, parentId:J
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "_id=? AND original_sync_id ISNULL AND calendar_id=?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;

    aput-object v10, v7, v9

    move-object/from16 v0, v21

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    .line 1796
    .local v19, cnt:I
    if-nez v19, :cond_1

    .line 1797
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1801
    .end local v19           #cnt:I
    .end local v21           #cv:Landroid/content/ContentValues;
    .end local v46           #parentId:J
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2152
    .end local v16           #c:Landroid/database/Cursor;
    .end local v45           #orphanedExceptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_0
    move-exception v22

    .line 2153
    .local v22, e:Landroid/os/RemoteException;
    const-string v5, "EasCalendarSyncAdapter"

    const-string v6, "Could not read dirty events."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    .end local v22           #e:Landroid/os/RemoteException;
    :goto_2
    const/4 v5, 0x0

    goto :goto_0

    .line 1801
    .restart local v16       #c:Landroid/database/Cursor;
    .restart local v21       #cv:Landroid/content/ContentValues;
    .restart local v45       #orphanedExceptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    :try_start_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1805
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    .local v36, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v43

    .line 1806
    .local v43, orphan:J
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "EasCalendarSyncAdapter"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Deleted orphaned exception: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v43

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1807
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v43

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 1811
    .end local v43           #orphan:J
    :cond_3
    invoke-virtual/range {v45 .. v45}, Ljava/util/ArrayList;->clear()V

    .line 1815
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "(dirty=1 OR sync_data8= 1) AND original_id ISNULL AND calendar_id=?"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdArgument:[Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/provider/CalendarContract$EventsEntity;->newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/content/EntityIterator;

    move-result-object v27

    .line 1819
    .local v27, eventIterator:Landroid/content/EntityIterator;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1822
    .local v17, cidValues:Landroid/content/ContentValues;
    const/16 v34, 0x1

    .line 1823
    .local v34, first:Z
    :cond_4
    :goto_4
    :try_start_4
    invoke-interface/range {v27 .. v27}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1824
    invoke-interface/range {v27 .. v27}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/Entity;

    .line 1827
    .local v23, entity:Landroid/content/Entity;
    invoke-virtual/range {v23 .. v23}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v24

    .line 1828
    .local v24, entityValues:Landroid/content/ContentValues;
    const-string v5, "_sync_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 1833
    .local v50, serverId:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_5
    :goto_5
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/Entity$NamedContentValues;

    .line 1834
    .local v38, ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    sget-object v6, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1835
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v39, v0

    .line 1836
    .local v39, ncvValues:Landroid/content/ContentValues;
    const-string v5, "name"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "upsyncProhibited"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1838
    const-string v5, "1"

    const-string v6, "value"

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1840
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;

    const-string v6, "_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    .line 2150
    .end local v21           #cv:Landroid/content/ContentValues;
    .end local v23           #entity:Landroid/content/Entity;
    .end local v24           #entityValues:Landroid/content/ContentValues;
    .end local v38           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v39           #ncvValues:Landroid/content/ContentValues;
    .end local v50           #serverId:Ljava/lang/String;
    :catchall_1
    move-exception v5

    :try_start_5
    invoke-interface/range {v27 .. v27}, Landroid/content/EntityIterator;->close()V

    throw v5
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1848
    .restart local v21       #cv:Landroid/content/ContentValues;
    .restart local v23       #entity:Landroid/content/Entity;
    .restart local v24       #entityValues:Landroid/content/ContentValues;
    .restart local v50       #serverId:Ljava/lang/String;
    :cond_6
    :try_start_6
    const-string v5, "sync_data2"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1849
    .local v18, clientId:Ljava/lang/String;
    if-nez v18, :cond_7

    .line 1850
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1855
    :cond_7
    const-string v5, "organizer"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1856
    .local v41, organizerEmail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v49

    .line 1858
    .local v49, selfOrganizer:Z
    const-string v5, "dtstart"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "duration"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "dtend"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_8
    if-eqz v41, :cond_4

    .line 1865
    if-eqz v34, :cond_9

    .line 1866
    const/16 v5, 0x16

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1867
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Sending Calendar changes to the server"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1868
    const/16 v34, 0x0

    .line 1870
    :cond_9
    const-string v5, "_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v25

    .line 1871
    .local v25, eventId:J
    if-nez v50, :cond_b

    .line 1873
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Creating new event with clientId: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v18, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1874
    const/4 v5, 0x7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0xc

    move-object/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1876
    const-string v5, "sync_data2"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    const-string v5, "sync_data4"

    const-string v6, "0"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v25

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1922
    :goto_6
    const/16 v5, 0x1d

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1924
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sendEvent(Landroid/content/Entity;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1927
    if-eqz v50, :cond_16

    .line 1928
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "original_sync_id=? AND calendar_id=?"

    const/4 v9, 0x2

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v50, v8, v9

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarIdString:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/provider/CalendarContract$EventsEntity;->newEntityIterator(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/content/EntityIterator;

    move-result-object v32

    .line 1934
    .local v32, exIterator:Landroid/content/EntityIterator;
    const/16 v31, 0x1

    .line 1935
    .local v31, exFirst:Z
    :goto_7
    invoke-interface/range {v32 .. v32}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1936
    invoke-interface/range {v32 .. v32}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/content/Entity;

    .line 1937
    .local v28, exEntity:Landroid/content/Entity;
    if-eqz v31, :cond_a

    .line 1938
    const/16 v5, 0x114

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1939
    const/16 v31, 0x0

    .line 1941
    :cond_a
    const/16 v5, 0x113

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1942
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v5, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sendEvent(Landroid/content/Entity;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 1943
    invoke-virtual/range {v28 .. v28}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v33

    .line 1944
    .local v33, exValues:Landroid/content/ContentValues;
    const-string v5, "dirty"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_13

    .line 1947
    const-string v5, "_id"

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v29

    .line 1952
    .local v29, exEventId:J
    invoke-virtual/range {v23 .. v23}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :goto_8
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/Entity$NamedContentValues;

    .line 1953
    .restart local v38       #ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    move-object/from16 v0, v38

    iget-object v6, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_8

    .line 1884
    .end local v28           #exEntity:Landroid/content/Entity;
    .end local v29           #exEventId:J
    .end local v31           #exFirst:Z
    .end local v32           #exIterator:Landroid/content/EntityIterator;
    .end local v33           #exValues:Landroid/content/ContentValues;
    .end local v38           #ncv:Landroid/content/Entity$NamedContentValues;
    :cond_b
    const-string v5, "deleted"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    .line 1885
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Deleting event with serverId: "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v50, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1886
    const/16 v5, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0xd

    move-object/from16 v0, v50

    invoke-virtual {v5, v6, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1887
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1888
    if-eqz v49, :cond_c

    .line 1889
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mSendCancelIdList:Ljava/util/ArrayList;

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1891
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sendDeclinedEmail(Landroid/content/Entity;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1895
    :cond_d
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Upsync change to event with serverId: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1897
    const-string v5, "sync_data4"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 1900
    .local v56, version:Ljava/lang/String;
    if-nez v56, :cond_e

    .line 1901
    const-string v56, "0"

    .line 1912
    :goto_9
    const-string v5, "sync_data4"

    move-object/from16 v0, v17

    move-object/from16 v1, v56

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    const-string v5, "sync_data4"

    move-object/from16 v0, v24

    move-object/from16 v1, v56

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    sget-object v5, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v25

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1920
    const/16 v5, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    const/16 v6, 0xd

    move-object/from16 v0, v50

    invoke-virtual {v5, v6, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_6

    .line 1905
    :cond_e
    :try_start_7
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v56

    goto :goto_9

    .line 1906
    :catch_1
    move-exception v22

    .line 1909
    .local v22, e:Ljava/lang/Exception;
    :try_start_8
    const-string v56, "0"

    goto :goto_9

    .line 1956
    .end local v22           #e:Ljava/lang/Exception;
    .end local v56           #version:Ljava/lang/String;
    .restart local v28       #exEntity:Landroid/content/Entity;
    .restart local v29       #exEventId:J
    .restart local v31       #exFirst:Z
    .restart local v32       #exIterator:Landroid/content/EntityIterator;
    .restart local v33       #exValues:Landroid/content/ContentValues;
    :cond_f
    const-string v5, "deleted"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_10

    const-string v5, "eventStatus"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_14

    .line 1959
    :cond_10
    const/16 v35, 0x20

    .line 1960
    .local v35, flag:I
    if-nez v49, :cond_11

    .line 1965
    const-string v5, "organizer"

    const-string v6, "organizer"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1967
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sendDeclinedEmail(Landroid/content/Entity;Ljava/lang/String;)V

    .line 1974
    :cond_11
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1977
    const-string v5, "sync_data4"

    const-string v6, "sync_data4"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1980
    const-string v5, "eventLocation"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1981
    const-string v5, "eventLocation"

    const-string v6, "eventLocation"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    :cond_12
    if-eqz v49, :cond_13

    .line 1986
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-object/from16 v0, v28

    move/from16 v1, v35

    move-object/from16 v2, v18

    invoke-static {v5, v0, v1, v2, v6}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEntity(Landroid/content/Context;Landroid/content/Entity;ILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v37

    .line 1989
    .local v37, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v37, :cond_13

    .line 1990
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Queueing exception update to "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v37

    iget-object v9, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 1991
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1995
    .end local v29           #exEventId:J
    .end local v35           #flag:I
    .end local v37           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto/16 :goto_7

    .line 1970
    .restart local v29       #exEventId:J
    :cond_14
    const/16 v35, 0x10

    .restart local v35       #flag:I
    goto :goto_a

    .line 1997
    .end local v28           #exEntity:Landroid/content/Entity;
    .end local v29           #exEventId:J
    .end local v33           #exValues:Landroid/content/ContentValues;
    .end local v35           #flag:I
    :cond_15
    if-nez v31, :cond_16

    .line 1998
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 2002
    .end local v31           #exFirst:Z
    .end local v32           #exIterator:Landroid/content/EntityIterator;
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 2003
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mUploadedIdList:Ljava/util/ArrayList;

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2007
    const/4 v13, 0x0

    .line 2008
    .local v13, attendeeString:Ljava/lang/String;
    const-wide/16 v14, -0x1

    .line 2009
    .local v14, attendeeStringId:J
    const/16 v53, 0x0

    .line 2010
    .local v53, userAttendeeStatus:Ljava/lang/String;
    const-wide/16 v54, -0x1

    .line 2011
    .local v54, userAttendeeStatusId:J
    invoke-virtual/range {v23 .. v23}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_17
    :goto_b
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/Entity$NamedContentValues;

    .line 2012
    .restart local v38       #ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    sget-object v6, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 2013
    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object/from16 v39, v0

    .line 2014
    .restart local v39       #ncvValues:Landroid/content/ContentValues;
    const-string v5, "name"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 2016
    .local v48, propertyName:Ljava/lang/String;
    const-string v5, "attendees"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 2017
    const-string v5, "value"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2019
    const-string v5, "_id"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_b

    .line 2021
    :cond_18
    const-string v5, "userAttendeeStatus"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 2023
    const-string v5, "value"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 2025
    const-string v5, "_id"

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v54

    goto :goto_b

    .line 2034
    .end local v38           #ncv:Landroid/content/Entity$NamedContentValues;
    .end local v39           #ncvValues:Landroid/content/ContentValues;
    .end local v48           #propertyName:Ljava/lang/String;
    :cond_19
    if-eqz v49, :cond_20

    const-string v5, "dirty"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->getInt(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_20

    .line 2036
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    const/16 v8, 0x10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-wide/from16 v6, v25

    move-object/from16 v9, v18

    invoke-static/range {v5 .. v10}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v37

    .line 2040
    .restart local v37       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v37, :cond_1a

    .line 2041
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "Queueing invitation to "

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, v37

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 2042
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2045
    :cond_1a
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 2046
    .local v42, originalAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_1b

    .line 2047
    new-instance v51, Ljava/util/StringTokenizer;

    const-string v5, "\\"

    move-object/from16 v0, v51

    invoke-direct {v0, v13, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    .local v51, st:Ljava/util/StringTokenizer;
    :goto_c
    invoke-virtual/range {v51 .. v51}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 2050
    invoke-virtual/range {v51 .. v51}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 2053
    .end local v51           #st:Ljava/util/StringTokenizer;
    :cond_1b
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    .line 2056
    .local v40, newTokenizedAttendees:Ljava/lang/StringBuilder;
    invoke-virtual/range {v23 .. v23}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_1c
    :goto_d
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/content/Entity$NamedContentValues;

    .line 2057
    .restart local v38       #ncv:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/content/Entity$NamedContentValues;->uri:Landroid/net/Uri;

    sget-object v6, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 2058
    move-object/from16 v0, v38

    iget-object v5, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v6, "attendeeEmail"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2061
    .local v12, attendeeEmail:Ljava/lang/String;
    move-object/from16 v0, v42

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2062
    move-object/from16 v0, v40

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2063
    const-string v5, "\\"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 2069
    .end local v12           #attendeeEmail:Ljava/lang/String;
    .end local v38           #ncv:Landroid/content/Entity$NamedContentValues;
    :cond_1d
    new-instance v21, Landroid/content/ContentValues;

    .end local v21           #cv:Landroid/content/ContentValues;
    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 2070
    .restart local v21       #cv:Landroid/content/ContentValues;
    const-string v5, "value"

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    if-eqz v13, :cond_1f

    .line 2072
    sget-object v5, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2085
    :goto_e
    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_1e
    :goto_f
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2087
    .local v11, removedAttendee:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    const/16 v8, 0x20

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-wide/from16 v6, v25

    move-object/from16 v9, v18

    invoke-static/range {v5 .. v11}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;Ljava/lang/String;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v37

    .line 2090
    if-eqz v37, :cond_1e

    .line 2092
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Queueing cancellation to removed attendee "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v37

    iget-object v9, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 2093
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 2078
    .end local v11           #removedAttendee:Ljava/lang/String;
    :cond_1f
    const-string v5, "name"

    const-string v6, "attendees"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    const-string v5, "event_id"

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2080
    sget-object v5, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_e

    .line 2096
    .end local v37           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v40           #newTokenizedAttendees:Ljava/lang/StringBuilder;
    .end local v42           #originalAttendeeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_20
    if-nez v49, :cond_4

    .line 2100
    const-string v5, "selfAttendeeStatus"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v20

    .line 2101
    .local v20, currentStatus:I
    const/16 v52, 0x0

    .line 2102
    .local v52, syncStatus:I
    if-eqz v53, :cond_21

    .line 2104
    :try_start_9
    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_2

    move-result v52

    .line 2109
    :cond_21
    :goto_10
    move/from16 v0, v20

    move/from16 v1, v52

    if-eq v0, v1, :cond_4

    if-eqz v20, :cond_4

    .line 2112
    const/4 v8, 0x0

    .line 2113
    .local v8, messageFlag:I
    packed-switch v20, :pswitch_data_0

    .line 2125
    :goto_11
    :pswitch_0
    if-eqz v8, :cond_4

    const-wide/16 v5, 0x0

    cmp-long v5, v54, v5

    if-ltz v5, :cond_4

    .line 2127
    :try_start_a
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    .line 2128
    const-string v5, "value"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2130
    sget-object v5, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v54

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v7, "com.android.exchange"

    invoke-static {v5, v6, v7}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2135
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    move-wide/from16 v6, v25

    move-object/from16 v9, v18

    invoke-static/range {v5 .. v10}, Lcom/android/exchange/utility/CalendarUtilities;->createMessageForEventId(Landroid/content/Context;JILjava/lang/String;Lcom/android/emailcommon/provider/Account;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v37

    .line 2138
    .restart local v37       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v37, :cond_4

    .line 2139
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Queueing invitation reply to "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v37

    iget-object v9, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V

    .line 2140
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mOutgoingMailList:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2115
    .end local v37           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :pswitch_1
    const/16 v8, 0x40

    .line 2116
    goto :goto_11

    .line 2118
    :pswitch_2
    const/16 v8, 0x80

    .line 2119
    goto :goto_11

    .line 2121
    :pswitch_3
    const/16 v8, 0x100

    goto :goto_11

    .line 2146
    .end local v8           #messageFlag:I
    .end local v13           #attendeeString:Ljava/lang/String;
    .end local v14           #attendeeStringId:J
    .end local v18           #clientId:Ljava/lang/String;
    .end local v20           #currentStatus:I
    .end local v23           #entity:Landroid/content/Entity;
    .end local v24           #entityValues:Landroid/content/ContentValues;
    .end local v25           #eventId:J
    .end local v41           #organizerEmail:Ljava/lang/String;
    .end local v49           #selfOrganizer:Z
    .end local v50           #serverId:Ljava/lang/String;
    .end local v52           #syncStatus:I
    .end local v53           #userAttendeeStatus:Ljava/lang/String;
    .end local v54           #userAttendeeStatusId:J
    :cond_22
    if-nez v34, :cond_23

    .line 2147
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2150
    :cond_23
    :try_start_b
    invoke-interface/range {v27 .. v27}, Landroid/content/EntityIterator;->close()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_2

    .line 2105
    .restart local v13       #attendeeString:Ljava/lang/String;
    .restart local v14       #attendeeStringId:J
    .restart local v18       #clientId:Ljava/lang/String;
    .restart local v20       #currentStatus:I
    .restart local v23       #entity:Landroid/content/Entity;
    .restart local v24       #entityValues:Landroid/content/ContentValues;
    .restart local v25       #eventId:J
    .restart local v41       #organizerEmail:Ljava/lang/String;
    .restart local v49       #selfOrganizer:Z
    .restart local v50       #serverId:Ljava/lang/String;
    .restart local v52       #syncStatus:I
    .restart local v53       #userAttendeeStatus:Ljava/lang/String;
    .restart local v54       #userAttendeeStatusId:J
    :catch_2
    move-exception v5

    goto/16 :goto_10

    .line 2113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
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
    .line 226
    if-eqz p3, :cond_0

    .line 227
    sget-object v0, Lcom/android/exchange/Eas;->FILTER_2_WEEKS:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->setPimSyncOptions(Ljava/lang/Double;Ljava/lang/String;Lcom/android/exchange/adapter/Serializer;)V

    .line 229
    :cond_0
    return-void
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
    .line 298
    sget-object v3, Lcom/android/exchange/adapter/CalendarSyncAdapter;->sSyncKeyLock:Ljava/lang/Object;

    monitor-enter v3

    .line 299
    :try_start_0
    const-string v2, "0"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_1

    .line 300
    :cond_0
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v2, v2, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 303
    .local v0, client:Landroid/content/ContentProviderClient;
    :try_start_1
    sget-object v2, Landroid/provider/CalendarContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.android.exchange"

    invoke-static {v2, v4, v5}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccountManagerAccount:Landroid/accounts/Account;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v0, v2, v4, v5}, Landroid/provider/SyncStateContract$Helpers;->set(Landroid/content/ContentProviderClient;Landroid/net/Uri;Landroid/accounts/Account;[B)V

    .line 308
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "SyncKey set to "

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const/4 v4, 0x2

    const-string v5, " in CalendarProvider"

    aput-object v5, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->userLog([Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 313
    :try_start_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 316
    .end local v0           #client:Landroid/content/ContentProviderClient;
    :cond_1
    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/Mailbox;

    iput-object p1, v2, Lcom/android/emailcommon/provider/Mailbox;->mSyncKey:Ljava/lang/String;

    .line 317
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 318
    return-void

    .line 309
    .restart local v0       #client:Landroid/content/ContentProviderClient;
    :catch_0
    move-exception v1

    .line 310
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Can\'t set SyncKey in CalendarProvider"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 313
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    throw v2

    .line 317
    .end local v0           #client:Landroid/content/ContentProviderClient;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public wipe()V
    .locals 7

    .prologue
    .line 215
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v3, "com.android.exchange"

    invoke-static {v1, v2, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->asSyncAdapter(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 217
    .local v0, eventsAsSyncAdapter:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v1, v1, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "calendar_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mCalendarId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 220
    invoke-static {}, Lcom/android/exchange/ExchangeService;->unregisterCalendarObservers()V

    .line 221
    return-void
.end method
