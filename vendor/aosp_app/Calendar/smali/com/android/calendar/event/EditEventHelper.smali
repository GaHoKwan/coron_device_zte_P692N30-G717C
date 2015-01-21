.class public Lcom/android/calendar/event/EditEventHelper;
.super Ljava/lang/Object;
.source "EditEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/EditEventHelper$EditDoneRunnable;,
        Lcom/android/calendar/event/EditEventHelper$AttendeeItem;
    }
.end annotation


# static fields
.field static final ATTENDEES_DELETE_PREFIX:Ljava/lang/String; = "event_id=? AND attendeeEmail IN ("

.field static final ATTENDEES_INDEX_EMAIL:I = 0x2

.field static final ATTENDEES_INDEX_ID:I = 0x0

.field static final ATTENDEES_INDEX_NAME:I = 0x1

.field static final ATTENDEES_INDEX_RELATIONSHIP:I = 0x3

.field static final ATTENDEES_INDEX_STATUS:I = 0x4

.field static final ATTENDEES_PROJECTION:[Ljava/lang/String; = null

.field static final ATTENDEES_WHERE:Ljava/lang/String; = "event_id=? AND attendeeEmail IS NOT NULL"

.field public static final ATTENDEE_ID_NONE:I = -0x1

.field public static final ATTENDEE_VALUES:[I = null

.field static final CALENDARS_INDEX_ACCESS_LEVEL:I = 0x5

.field static final CALENDARS_INDEX_ACCOUNT_NAME:I = 0xb

.field static final CALENDARS_INDEX_ACCOUNT_TYPE:I = 0xc

.field static final CALENDARS_INDEX_ALLOWED_ATTENDEE_TYPES:I = 0x9

.field static final CALENDARS_INDEX_ALLOWED_AVAILABILITY:I = 0xa

.field static final CALENDARS_INDEX_ALLOWED_REMINDERS:I = 0x8

.field static final CALENDARS_INDEX_CAN_ORGANIZER_RESPOND:I = 0x4

.field static final CALENDARS_INDEX_COLOR:I = 0x3

.field static final CALENDARS_INDEX_DISPLAY_NAME:I = 0x1

.field static final CALENDARS_INDEX_ID:I = 0x0

.field static final CALENDARS_INDEX_MAX_REMINDERS:I = 0x7

.field static final CALENDARS_INDEX_OWNER_ACCOUNT:I = 0x2

.field static final CALENDARS_INDEX_VISIBLE:I = 0x6

.field static final CALENDARS_PROJECTION:[Ljava/lang/String; = null

.field static final CALENDARS_WHERE:Ljava/lang/String; = "_id=?"

.field static final CALENDARS_WHERE_WRITEABLE_VISIBLE:Ljava/lang/String; = "calendar_access_level>=500 AND visible=1"

.field protected static final DAY_IN_SECONDS:I = 0x15180

.field private static final DEBUG:Z = false

.field public static final DOES_NOT_REPEAT:I = 0x0

.field public static final EVENT_ALL_DAY:Ljava/lang/String; = "allDay"

.field protected static final EVENT_INDEX_ACCESS_LEVEL:I = 0xe

.field protected static final EVENT_INDEX_ALL_DAY:I = 0x4

.field protected static final EVENT_INDEX_AVAILABILITY:I = 0xd

.field protected static final EVENT_INDEX_CALENDAR_ID:I = 0x6

.field protected static final EVENT_INDEX_DESCRIPTION:I = 0x2

.field protected static final EVENT_INDEX_DTEND:I = 0x8

.field protected static final EVENT_INDEX_DTSTART:I = 0x7

.field protected static final EVENT_INDEX_DURATION:I = 0x9

.field protected static final EVENT_INDEX_EVENT_LOCATION:I = 0x3

.field protected static final EVENT_INDEX_EVENT_STATUS:I = 0x15

.field protected static final EVENT_INDEX_GUESTS_CAN_MODIFY:I = 0x13

.field protected static final EVENT_INDEX_HAS_ALARM:I = 0x5

.field protected static final EVENT_INDEX_HAS_ATTENDEE_DATA:I = 0x10

.field protected static final EVENT_INDEX_ID:I = 0x0

.field protected static final EVENT_INDEX_IS_LUNAR:I = 0x16

.field protected static final EVENT_INDEX_ORGANIZER:I = 0x12

.field protected static final EVENT_INDEX_ORIGINAL_ID:I = 0x14

.field protected static final EVENT_INDEX_ORIGINAL_SYNC_ID:I = 0x11

.field protected static final EVENT_INDEX_OWNER_ACCOUNT:I = 0xf

.field protected static final EVENT_INDEX_RRULE:I = 0xb

.field protected static final EVENT_INDEX_SYNC_ID:I = 0xc

.field protected static final EVENT_INDEX_TIMEZONE:I = 0xa

.field protected static final EVENT_INDEX_TITLE:I = 0x1

.field public static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field protected static final MODIFY_ALL:I = 0x3

.field protected static final MODIFY_ALL_FOLLOWING:I = 0x2

.field protected static final MODIFY_SELECTED:I = 0x1

.field protected static final MODIFY_UNINITIALIZED:I = 0x0

.field public static final REMINDERS_INDEX_METHOD:I = 0x2

.field public static final REMINDERS_INDEX_MINUTES:I = 0x1

.field public static final REMINDERS_PROJECTION:[Ljava/lang/String; = null

.field public static final REMINDERS_WHERE:Ljava/lang/String; = "event_id=?"

.field public static final REPEATS_CUSTOM:I = 0x7

.field public static final REPEATS_DAILY:I = 0x1

.field public static final REPEATS_EVERY_WEEKDAY:I = 0x2

.field public static final REPEATS_MONTHLY_ON_DAY:I = 0x5

.field public static final REPEATS_MONTHLY_ON_DAY_COUNT:I = 0x4

.field public static final REPEATS_WEEKLY_ON_DAY:I = 0x3

.field public static final REPEATS_YEARLY:I = 0x6

.field private static final TAG:Ljava/lang/String; = "EditEventHelper"


# instance fields
.field protected mEventOk:Z

.field private final mService:Lcom/android/calendar/AsyncQueryService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 65
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "description"

    aput-object v1, v0, v5

    const-string v1, "eventLocation"

    aput-object v1, v0, v6

    const-string v1, "allDay"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "availability"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "accessLevel"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "hasAttendeeData"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "original_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "guestsCanModify"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "original_id"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "eventStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "isLunar"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/event/EditEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 116
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "minutes"

    aput-object v1, v0, v4

    const-string v1, "method"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/calendar/event/EditEventHelper;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 152
    new-array v0, v7, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/calendar/event/EditEventHelper;->ATTENDEE_VALUES:[I

    .line 167
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "calendar_displayName"

    aput-object v1, v0, v4

    const-string v1, "ownerAccount"

    aput-object v1, v0, v5

    const-string v1, "calendar_color"

    aput-object v1, v0, v6

    const-string v1, "canOrganizerRespond"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "maxReminders"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "allowedReminders"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "allowedAttendeeTypes"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "allowedAvailability"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/event/EditEventHelper;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 201
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "attendeeName"

    aput-object v1, v0, v4

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v5

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v6

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/calendar/event/EditEventHelper;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    return-void

    .line 152
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/calendar/CalendarEventModel;)V
    .locals 1
    .parameter "context"
    .parameter "model"

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/calendar/event/EditEventHelper;->mEventOk:Z

    .line 230
    check-cast p1, Lcom/android/calendar/AbstractCalendarActivity;

    .end local p1
    invoke-virtual {p1}, Lcom/android/calendar/AbstractCalendarActivity;->getAsyncQueryService()Lcom/android/calendar/AsyncQueryService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/EditEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    .line 231
    return-void
.end method

.method public static canAddReminders(Lcom/android/calendar/CalendarEventModel;)Z
    .locals 2
    .parameter "model"

    .prologue
    .line 1156
    iget v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canModifyCalendar(Lcom/android/calendar/CalendarEventModel;)Z
    .locals 4
    .parameter "model"

    .prologue
    .line 1151
    iget v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canModifyEvent(Lcom/android/calendar/CalendarEventModel;)Z
    .locals 1
    .parameter "model"

    .prologue
    .line 1146
    invoke-static {p0}, Lcom/android/calendar/event/EditEventHelper;->canModifyCalendar(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanModify:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canRespond(Lcom/android/calendar/CalendarEventModel;)Z
    .locals 4
    .parameter "model"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1171
    invoke-static {p0}, Lcom/android/calendar/event/EditEventHelper;->canModifyCalendar(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1195
    :cond_0
    :goto_0
    return v0

    .line 1175
    :cond_1
    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    if-nez v2, :cond_2

    move v0, v1

    .line 1176
    goto :goto_0

    .line 1179
    :cond_2
    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizerCanRespond:Z

    if-eqz v2, :cond_0

    .line 1185
    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1190
    :cond_3
    const-string v2, "LOCAL"

    iget-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1195
    goto :goto_0
.end method

.method public static extractDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "email"

    .prologue
    .line 1302
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1303
    .local v0, separator:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1304
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1306
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAddressesFromList(Ljava/lang/String;Lcom/android/common/Rfc822Validator;)Ljava/util/LinkedHashSet;
    .locals 6
    .parameter "list"
    .parameter "validator"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/common/Rfc822Validator;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 549
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 550
    .local v2, addresses:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    invoke-static {p0, v2}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 551
    if-nez p1, :cond_1

    .line 565
    :cond_0
    return-object v2

    .line 557
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 558
    .local v1, addressIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/text/util/Rfc822Token;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 559
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 560
    .local v0, address:Landroid/text/util/Rfc822Token;
    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/common/Rfc822Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 561
    const-string v3, "EditEventHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping invalid attendee email address: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method static isFirstEventInSeries(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;)Z
    .locals 4
    .parameter "model"
    .parameter "originalModel"

    .prologue
    .line 898
    iget-wide v0, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    iget-wide v2, p1, Lcom/android/calendar/CalendarEventModel;->mStart:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSameEvent(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;)Z
    .locals 6
    .parameter "model"
    .parameter "originalModel"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 772
    if-nez p1, :cond_1

    .line 783
    :cond_0
    :goto_0
    return v0

    .line 776
    :cond_1
    iget-wide v2, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    iget-wide v4, p1, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move v0, v1

    .line 777
    goto :goto_0

    .line 779
    :cond_2
    iget-wide v2, p0, Lcom/android/calendar/CalendarEventModel;->mId:J

    iget-wide v4, p1, Lcom/android/calendar/CalendarEventModel;->mId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    .line 780
    goto :goto_0
.end method

.method public static saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .locals 10
    .parameter
    .parameter "eventId"
    .parameter
    .parameter
    .parameter "forceSave"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 817
    .local p0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p3, reminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    .local p4, originalReminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-nez p5, :cond_0

    .line 818
    const/4 v8, 0x0

    .line 847
    :goto_0
    return v8

    .line 822
    :cond_0
    const-string v7, "event_id=?"

    .line 823
    .local v7, where:Ljava/lang/String;
    const/4 v8, 0x1

    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    .line 824
    .local v0, args:[Ljava/lang/String;
    sget-object v8, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 826
    .local v1, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v1, v7, v0}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 827
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 830
    .local v6, values:Landroid/content/ContentValues;
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 833
    .local v4, len:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 834
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 836
    .local v5, re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 837
    const-string v8, "minutes"

    invoke-virtual {v5}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 838
    const-string v8, "method"

    invoke-virtual {v5}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 839
    const-string v8, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 840
    sget-object v8, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 841
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 844
    .end local v5           #re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    :cond_1
    sget-object v8, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 845
    .local v2, eventUri:Landroid/net/Uri;
    invoke-static {p0, v2}, Lcom/android/calendar/event/EditEventHelper;->updateModifyTime(Ljava/util/ArrayList;Landroid/net/Uri;)Z

    .line 847
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public static saveRemindersWithBackRef(Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .locals 9
    .parameter
    .parameter "eventIdIndex"
    .parameter
    .parameter
    .parameter "forceSave"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$ReminderEntry;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p2, reminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    .local p3, originalReminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 866
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez p4, :cond_0

    .line 891
    :goto_0
    return v5

    .line 871
    :cond_0
    sget-object v7, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 873
    .local v0, b:Landroid/content/ContentProviderOperation$Builder;
    const-string v7, "event_id=?"

    new-array v8, v6, [Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 874
    invoke-virtual {v0, v5, p1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 875
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 878
    .local v4, values:Landroid/content/ContentValues;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 881
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 882
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/CalendarEventModel$ReminderEntry;

    .line 884
    .local v3, re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 885
    const-string v5, "minutes"

    invoke-virtual {v3}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMinutes()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 886
    const-string v5, "method"

    invoke-virtual {v3}, Lcom/android/calendar/CalendarEventModel$ReminderEntry;->getMethod()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 887
    sget-object v5, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 888
    const-string v5, "event_id"

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 889
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #re:Lcom/android/calendar/CalendarEventModel$ReminderEntry;
    :cond_1
    move v5, v6

    .line 891
    goto :goto_0
.end method

.method public static setModelFromCalendarCursor(Lcom/android/calendar/CalendarEventModel;Landroid/database/Cursor;)Z
    .locals 6
    .parameter "model"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1103
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 1104
    :cond_0
    const-string v1, "EditEventHelper"

    const-string v2, "Attempted to build non-existent model or from an incorrect query."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_1
    :goto_0
    return v0

    .line 1108
    :cond_2
    iget-wide v2, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 1112
    iget-boolean v2, p0, Lcom/android/calendar/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    if-nez v2, :cond_3

    .line 1113
    const-string v1, "EditEventHelper"

    const-string v2, "Can\'t update model with a Calendar cursor until it has seen an Event cursor."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1118
    :cond_3
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1119
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1120
    iget-wide v2, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 1124
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    :cond_5
    iput-boolean v0, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizerCanRespond:Z

    .line 1126
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAccessLevel:I

    .line 1127
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarDisplayName:Ljava/lang/String;

    .line 1128
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarColor:I

    .line 1130
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarMaxReminders:I

    .line 1131
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedReminders:Ljava/lang/String;

    .line 1132
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedAttendeeTypes:Ljava/lang/String;

    .line 1134
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarAllowedAvailability:Ljava/lang/String;

    .line 1138
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/CalendarEventModel;->mAccountType:Ljava/lang/String;

    move v0, v1

    .line 1140
    goto :goto_0
.end method

.method public static setModelFromCursor(Lcom/android/calendar/CalendarEventModel;Landroid/database/Cursor;)V
    .locals 9
    .parameter "model"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1036
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 1037
    :cond_0
    const-string v4, "EditEventHelper"

    const-string v5, "Attempted to build non-existent model or from an incorrect query."

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    :goto_0
    return-void

    .line 1041
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendar/CalendarEventModel;->clear()V

    .line 1042
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1044
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v7, v4

    iput-wide v7, p0, Lcom/android/calendar/CalendarEventModel;->mId:J

    .line 1045
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 1046
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    .line 1047
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    .line 1048
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 1049
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/calendar/CalendarEventModel;->mHasAlarm:Z

    .line 1050
    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v7, v4

    iput-wide v7, p0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 1051
    const/4 v4, 0x7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 1052
    const/16 v4, 0xa

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1053
    .local v3, tz:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1054
    iput-object v3, p0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 1056
    :cond_2
    const/16 v4, 0xb

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1057
    .local v2, rRule:Ljava/lang/String;
    iput-object v2, p0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 1058
    const/16 v4, 0xc

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    .line 1059
    const/16 v4, 0xd

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/CalendarEventModel;->mAvailability:I

    .line 1060
    const/16 v4, 0xe

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1061
    .local v0, accessLevel:I
    const/16 v4, 0xf

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    .line 1062
    const/16 v4, 0x10

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    .line 1063
    const/16 v4, 0x11

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    .line 1064
    const/16 v4, 0x14

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/calendar/CalendarEventModel;->mOriginalId:J

    .line 1065
    const/16 v4, 0x12

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    .line 1066
    iget-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/calendar/CalendarEventModel;->mOrganizer:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/calendar/CalendarEventModel;->mIsOrganizer:Z

    .line 1067
    const/16 v4, 0x13

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_4
    iput-boolean v4, p0, Lcom/android/calendar/CalendarEventModel;->mGuestsCanModify:Z

    .line 1069
    const/16 v4, 0x16

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_8

    move v4, v5

    :goto_5
    iput-boolean v4, p0, Lcom/android/calendar/CalendarEventModel;->mIsLunar:Z

    .line 1072
    if-lez v0, :cond_3

    .line 1076
    add-int/lit8 v0, v0, -0x1

    .line 1078
    :cond_3
    iput v0, p0, Lcom/android/calendar/CalendarEventModel;->mAccessLevel:I

    .line 1079
    const/16 v4, 0x15

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/calendar/CalendarEventModel;->mEventStatus:I

    .line 1081
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    move v1, v5

    .line 1084
    .local v1, hasRRule:Z
    :goto_6
    if-eqz v1, :cond_a

    .line 1085
    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    .line 1090
    :goto_7
    iput-boolean v5, p0, Lcom/android/calendar/CalendarEventModel;->mModelUpdatedWithEventCursor:Z

    goto/16 :goto_0

    .end local v0           #accessLevel:I
    .end local v1           #hasRRule:Z
    .end local v2           #rRule:Ljava/lang/String;
    .end local v3           #tz:Ljava/lang/String;
    :cond_4
    move v4, v6

    .line 1048
    goto/16 :goto_1

    :cond_5
    move v4, v6

    .line 1049
    goto/16 :goto_2

    .restart local v0       #accessLevel:I
    .restart local v2       #rRule:Ljava/lang/String;
    .restart local v3       #tz:Ljava/lang/String;
    :cond_6
    move v4, v6

    .line 1062
    goto :goto_3

    :cond_7
    move v4, v6

    .line 1067
    goto :goto_4

    :cond_8
    move v4, v6

    .line 1069
    goto :goto_5

    :cond_9
    move v1, v6

    .line 1081
    goto :goto_6

    .line 1087
    .restart local v1       #hasRRule:Z
    :cond_a
    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    goto :goto_7
.end method

.method public static updateModifyTime(Ljava/util/ArrayList;Landroid/net/Uri;)Z
    .locals 5
    .parameter
    .parameter "eventUri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 790
    .local p0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 791
    :cond_0
    const/4 v2, 0x0

    .line 799
    :goto_0
    return v2

    .line 794
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 795
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 796
    const-string v2, "modifyTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 797
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 798
    .local v0, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static updateRecurrenceRule(ILcom/android/calendar/CalendarEventModel;I)V
    .locals 11
    .parameter "selection"
    .parameter "model"
    .parameter "weekStart"

    .prologue
    .line 948
    new-instance v7, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v7}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 950
    .local v7, eventRecurrence:Lcom/android/calendarcommon2/EventRecurrence;
    if-nez p0, :cond_1

    .line 951
    const/4 v9, 0x0

    iput-object v9, p1, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 953
    :cond_1
    const/4 v9, 0x7

    if-eq p0, v9, :cond_0

    .line 956
    const/4 v9, 0x1

    if-ne p0, v9, :cond_3

    .line 957
    const/4 v9, 0x4

    iput v9, v7, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    .line 1023
    :cond_2
    :goto_1
    invoke-static {p2}, Lcom/android/calendarcommon2/EventRecurrence;->calendarDay2Day(I)I

    move-result v9

    iput v9, v7, Lcom/android/calendarcommon2/EventRecurrence;->wkst:I

    .line 1024
    invoke-virtual {v7}, Lcom/android/calendarcommon2/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    goto :goto_0

    .line 958
    :cond_3
    const/4 v9, 0x2

    if-ne p0, v9, :cond_5

    .line 959
    const/4 v9, 0x5

    iput v9, v7, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    .line 960
    const/4 v4, 0x5

    .line 961
    .local v4, dayCount:I
    new-array v0, v4, [I

    .line 962
    .local v0, byday:[I
    new-array v1, v4, [I

    .line 964
    .local v1, bydayNum:[I
    const/4 v9, 0x0

    const/high16 v10, 0x2

    aput v10, v0, v9

    .line 965
    const/4 v9, 0x1

    const/high16 v10, 0x4

    aput v10, v0, v9

    .line 966
    const/4 v9, 0x2

    const/high16 v10, 0x8

    aput v10, v0, v9

    .line 967
    const/4 v9, 0x3

    const/high16 v10, 0x10

    aput v10, v0, v9

    .line 968
    const/4 v9, 0x4

    const/high16 v10, 0x20

    aput v10, v0, v9

    .line 969
    const/4 v3, 0x0

    .local v3, day:I
    :goto_2
    if-ge v3, v4, :cond_4

    .line 970
    const/4 v9, 0x0

    aput v9, v1, v3

    .line 969
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 973
    :cond_4
    iput-object v0, v7, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    .line 974
    iput-object v1, v7, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    .line 975
    iput v4, v7, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    goto :goto_1

    .line 976
    .end local v0           #byday:[I
    .end local v1           #bydayNum:[I
    .end local v3           #day:I
    .end local v4           #dayCount:I
    :cond_5
    const/4 v9, 0x3

    if-ne p0, v9, :cond_6

    .line 977
    const/4 v9, 0x5

    iput v9, v7, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    .line 978
    const/4 v9, 0x1

    new-array v6, v9, [I

    .line 979
    .local v6, days:[I
    const/4 v4, 0x1

    .line 980
    .restart local v4       #dayCount:I
    new-array v5, v4, [I

    .line 981
    .local v5, dayNum:[I
    new-instance v8, Landroid/text/format/Time;

    iget-object v9, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-direct {v8, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 982
    .local v8, startTime:Landroid/text/format/Time;
    iget-wide v9, p1, Lcom/android/calendar/CalendarEventModel;->mStart:J

    invoke-virtual {v8, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 984
    const/4 v9, 0x0

    iget v10, v8, Landroid/text/format/Time;->weekDay:I

    invoke-static {v10}, Lcom/android/calendarcommon2/EventRecurrence;->timeDay2Day(I)I

    move-result v10

    aput v10, v6, v9

    .line 986
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v5, v9

    .line 988
    iput-object v6, v7, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    .line 989
    iput-object v5, v7, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    .line 990
    iput v4, v7, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    goto :goto_1

    .line 991
    .end local v4           #dayCount:I
    .end local v5           #dayNum:[I
    .end local v6           #days:[I
    .end local v8           #startTime:Landroid/text/format/Time;
    :cond_6
    const/4 v9, 0x5

    if-ne p0, v9, :cond_7

    .line 992
    const/4 v9, 0x6

    iput v9, v7, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    .line 993
    const/4 v9, 0x0

    iput v9, v7, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    .line 994
    const/4 v9, 0x1

    iput v9, v7, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    .line 995
    const/4 v9, 0x1

    new-array v2, v9, [I

    .line 996
    .local v2, bymonthday:[I
    new-instance v8, Landroid/text/format/Time;

    iget-object v9, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-direct {v8, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 997
    .restart local v8       #startTime:Landroid/text/format/Time;
    iget-wide v9, p1, Lcom/android/calendar/CalendarEventModel;->mStart:J

    invoke-virtual {v8, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 998
    const/4 v9, 0x0

    iget v10, v8, Landroid/text/format/Time;->monthDay:I

    aput v10, v2, v9

    .line 999
    iput-object v2, v7, Lcom/android/calendarcommon2/EventRecurrence;->bymonthday:[I

    goto/16 :goto_1

    .line 1000
    .end local v2           #bymonthday:[I
    .end local v8           #startTime:Landroid/text/format/Time;
    :cond_7
    const/4 v9, 0x4

    if-ne p0, v9, :cond_9

    .line 1001
    const/4 v9, 0x6

    iput v9, v7, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    .line 1002
    const/4 v9, 0x1

    iput v9, v7, Lcom/android/calendarcommon2/EventRecurrence;->bydayCount:I

    .line 1003
    const/4 v9, 0x0

    iput v9, v7, Lcom/android/calendarcommon2/EventRecurrence;->bymonthdayCount:I

    .line 1005
    const/4 v9, 0x1

    new-array v0, v9, [I

    .line 1006
    .restart local v0       #byday:[I
    const/4 v9, 0x1

    new-array v1, v9, [I

    .line 1007
    .restart local v1       #bydayNum:[I
    new-instance v8, Landroid/text/format/Time;

    iget-object v9, p1, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    invoke-direct {v8, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1008
    .restart local v8       #startTime:Landroid/text/format/Time;
    iget-wide v9, p1, Lcom/android/calendar/CalendarEventModel;->mStart:J

    invoke-virtual {v8, v9, v10}, Landroid/text/format/Time;->set(J)V

    .line 1010
    iget v9, v8, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v9, v9, -0x1

    div-int/lit8 v9, v9, 0x7

    add-int/lit8 v4, v9, 0x1

    .line 1011
    .restart local v4       #dayCount:I
    const/4 v9, 0x5

    if-ne v4, v9, :cond_8

    .line 1012
    const/4 v4, -0x1

    .line 1014
    :cond_8
    const/4 v9, 0x0

    aput v4, v1, v9

    .line 1015
    const/4 v9, 0x0

    iget v10, v8, Landroid/text/format/Time;->weekDay:I

    invoke-static {v10}, Lcom/android/calendarcommon2/EventRecurrence;->timeDay2Day(I)I

    move-result v10

    aput v10, v0, v9

    .line 1016
    iput-object v0, v7, Lcom/android/calendarcommon2/EventRecurrence;->byday:[I

    .line 1017
    iput-object v1, v7, Lcom/android/calendarcommon2/EventRecurrence;->bydayNum:[I

    goto/16 :goto_1

    .line 1018
    .end local v0           #byday:[I
    .end local v1           #bydayNum:[I
    .end local v4           #dayCount:I
    .end local v8           #startTime:Landroid/text/format/Time;
    :cond_9
    const/4 v9, 0x6

    if-ne p0, v9, :cond_2

    .line 1019
    const/4 v9, 0x7

    iput v9, v7, Lcom/android/calendarcommon2/EventRecurrence;->freq:I

    goto/16 :goto_1
.end method


# virtual methods
.method addRecurrenceRule(Landroid/content/ContentValues;Lcom/android/calendar/CalendarEventModel;)V
    .locals 16
    .parameter "values"
    .parameter "model"

    .prologue
    .line 903
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 905
    .local v7, rrule:Ljava/lang/String;
    const-string v12, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 907
    .local v4, end:J
    move-object/from16 v0, p2

    iget-wide v10, v0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 908
    .local v10, start:J
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/calendar/CalendarEventModel;->mDuration:Ljava/lang/String;

    .line 910
    .local v3, duration:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 911
    .local v6, isAllDay:Z
    cmp-long v12, v4, v10

    if-lez v12, :cond_2

    .line 912
    if-eqz v6, :cond_1

    .line 914
    sub-long v12, v4, v10

    const-wide/32 v14, 0x5265c00

    add-long/2addr v12, v14

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    const-wide/32 v14, 0x5265c00

    div-long v1, v12, v14

    .line 916
    .local v1, days:J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "P"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "D"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 932
    .end local v1           #days:J
    :cond_0
    :goto_0
    const-string v12, "duration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string v13, "dtend"

    const/4 v12, 0x0

    check-cast v12, Ljava/lang/Long;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 934
    return-void

    .line 919
    :cond_1
    sub-long v12, v4, v10

    const-wide/16 v14, 0x3e8

    div-long v8, v12, v14

    .line 920
    .local v8, seconds:J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "P"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "S"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 921
    goto :goto_0

    .line 922
    .end local v8           #seconds:J
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 925
    if-eqz v6, :cond_3

    .line 926
    const-string v3, "P1D"

    goto :goto_0

    .line 928
    :cond_3
    const-string v3, "P3600S"

    goto :goto_0
.end method

.method checkTimeDependentFields(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;Landroid/content/ContentValues;I)V
    .locals 24
    .parameter "originalModel"
    .parameter "model"
    .parameter "values"
    .parameter "modifyWhich"

    .prologue
    .line 603
    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    .line 604
    .local v13, oldBegin:J
    move-object/from16 v0, p2

    iget-wide v15, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalEnd:J

    .line 605
    .local v15, oldEnd:J
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 606
    .local v12, oldAllDay:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 607
    .local v17, oldRrule:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 609
    .local v20, oldTimezone:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 610
    .local v4, newBegin:J
    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    .line 611
    .local v6, newEnd:J
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 612
    .local v3, newAllDay:Z
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 613
    .local v8, newRrule:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 616
    .local v9, newTimezone:Ljava/lang/String;
    cmp-long v22, v13, v4

    if-nez v22, :cond_1

    cmp-long v22, v15, v6

    if-nez v22, :cond_1

    if-ne v12, v3, :cond_1

    move-object/from16 v0, v17

    invoke-static {v0, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 619
    const-string v22, "dtstart"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 620
    const-string v22, "dtend"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 621
    const-string v22, "duration"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 622
    const-string v22, "allDay"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 623
    const-string v22, "rrule"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 624
    const-string v22, "eventTimezone"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 639
    const/16 v22, 0x3

    move/from16 v0, p4

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 640
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    move-wide/from16 v18, v0

    .line 641
    .local v18, oldStartMillis:J
    cmp-long v22, v13, v4

    if-eqz v22, :cond_2

    .line 643
    sub-long v10, v4, v13

    .line 644
    .local v10, offset:J
    add-long v18, v18, v10

    .line 646
    .end local v10           #offset:J
    :cond_2
    if-eqz v3, :cond_3

    .line 647
    new-instance v21, Landroid/text/format/Time;

    const-string v22, "UTC"

    invoke-direct/range {v21 .. v22}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 648
    .local v21, time:Landroid/text/format/Time;
    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 649
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 650
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 651
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 652
    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    .line 654
    .end local v21           #time:Landroid/text/format/Time;
    :cond_3
    const-string v22, "dtstart"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method protected constructDefaultEndTime(J)J
    .locals 2
    .parameter "startTime"

    .prologue
    .line 595
    const-wide/32 v0, 0x36ee80

    add-long/2addr v0, p1

    return-wide v0
.end method

.method protected constructDefaultStartTime(J)J
    .locals 5
    .parameter "now"

    .prologue
    const/4 v4, 0x0

    .line 576
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 577
    .local v0, defaultStart:Landroid/text/format/Time;
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 578
    iput v4, v0, Landroid/text/format/Time;->second:I

    .line 579
    const/16 v3, 0x1e

    iput v3, v0, Landroid/text/format/Time;->minute:I

    .line 580
    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 581
    .local v1, defaultStartMillis:J
    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    .line 584
    .end local v1           #defaultStartMillis:J
    :goto_0
    return-wide v1

    .restart local v1       #defaultStartMillis:J
    :cond_0
    const-wide/32 v3, 0x1b7740

    add-long/2addr v1, v3

    goto :goto_0
.end method

.method getContentValuesFromModel(Lcom/android/calendar/CalendarEventModel;)Landroid/content/ContentValues;
    .locals 18
    .parameter "model"

    .prologue
    .line 1209
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/calendar/CalendarEventModel;->mTitle:Ljava/lang/String;

    .line 1210
    .local v14, title:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-boolean v8, v0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 1211
    .local v8, isAllDay:Z
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 1212
    .local v9, rrule:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    .line 1213
    .local v13, timezone:Ljava/lang/String;
    if-nez v13, :cond_0

    .line 1214
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v13

    .line 1216
    :cond_0
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12, v13}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1217
    .local v12, startTime:Landroid/text/format/Time;
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7, v13}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1219
    .local v7, endTime:Landroid/text/format/Time;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1220
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mEnd:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1222
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 1226
    .local v15, values:Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-wide v3, v0, Lcom/android/calendar/CalendarEventModel;->mCalendarId:J

    .line 1227
    .local v3, calendarId:J
    if-eqz v8, :cond_4

    .line 1230
    const-string v13, "UTC"

    .line 1231
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v12, Landroid/text/format/Time;->hour:I

    .line 1232
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v12, Landroid/text/format/Time;->minute:I

    .line 1233
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v12, Landroid/text/format/Time;->second:I

    .line 1234
    iput-object v13, v12, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1235
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    .line 1237
    .local v10, startMillis:J
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v7, Landroid/text/format/Time;->hour:I

    .line 1238
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v7, Landroid/text/format/Time;->minute:I

    .line 1239
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v7, Landroid/text/format/Time;->second:I

    .line 1240
    iput-object v13, v7, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1241
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 1242
    .local v5, endMillis:J
    const-wide/32 v16, 0x5265c00

    add-long v16, v16, v10

    cmp-long v16, v5, v16

    if-gez v16, :cond_1

    .line 1245
    const-wide/32 v16, 0x5265c00

    add-long v5, v10, v16

    .line 1252
    :cond_1
    :goto_0
    const-string v16, "calendar_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1253
    const-string v16, "eventTimezone"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    const-string v16, "title"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    const-string v17, "allDay"

    if-eqz v8, :cond_5

    const/16 v16, 0x1

    :goto_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1256
    const-string v16, "dtstart"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1257
    const-string v16, "rrule"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_6

    .line 1259
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Lcom/android/calendar/event/EditEventHelper;->addRecurrenceRule(Landroid/content/ContentValues;Lcom/android/calendar/CalendarEventModel;)V

    .line 1264
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    .line 1265
    const-string v16, "description"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mDescription:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    .line 1270
    const-string v16, "eventLocation"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mLocation:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    :goto_4
    const-string v16, "availability"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/CalendarEventModel;->mAvailability:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1275
    const-string v17, "hasAttendeeData"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    move/from16 v16, v0

    if-eqz v16, :cond_9

    const/16 v16, 0x1

    :goto_5
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1277
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/calendar/CalendarEventModel;->mAccessLevel:I

    .line 1278
    .local v2, accessLevel:I
    if-lez v2, :cond_2

    .line 1281
    add-int/lit8 v2, v2, 0x1

    .line 1283
    :cond_2
    const-string v16, "accessLevel"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1284
    const-string v16, "eventStatus"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/CalendarEventModel;->mEventStatus:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1287
    const-string v17, "isLunar"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mIsLunar:Z

    move/from16 v16, v0

    if-eqz v16, :cond_a

    const/16 v16, 0x1

    :goto_6
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1290
    const-string v16, "LOCAL"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mAccountType:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1291
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    .line 1295
    :cond_3
    return-object v15

    .line 1248
    .end local v2           #accessLevel:I
    .end local v5           #endMillis:J
    .end local v10           #startMillis:J
    :cond_4
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    .line 1249
    .restart local v10       #startMillis:J
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    .restart local v5       #endMillis:J
    goto/16 :goto_0

    .line 1255
    :cond_5
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 1261
    :cond_6
    const-string v17, "duration"

    const/16 v16, 0x0

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const-string v16, "dtend"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2

    .line 1267
    :cond_7
    const-string v17, "description"

    const/16 v16, 0x0

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1272
    :cond_8
    const-string v17, "eventLocation"

    const/16 v16, 0x0

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1275
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 1287
    .restart local v2       #accessLevel:I
    :cond_a
    const/16 v16, 0x0

    goto :goto_6
.end method

.method public saveEvent(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;I)Z
    .locals 44
    .parameter "model"
    .parameter "originalModel"
    .parameter "modifyWhich"

    .prologue
    .line 244
    const/4 v10, 0x0

    .line 250
    .local v10, forceSaveReminders:Z
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/calendar/event/EditEventHelper;->mEventOk:Z

    if-nez v11, :cond_0

    .line 254
    const/4 v11, 0x0

    .line 544
    :goto_0
    return v11

    .line 259
    :cond_0
    if-nez p1, :cond_1

    .line 260
    const-string v11, "EditEventHelper"

    const-string v12, "Attempted to save null model."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v11, 0x0

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/CalendarEventModel;->isValid()Z

    move-result v11

    if-nez v11, :cond_2

    .line 264
    const-string v11, "EditEventHelper"

    const-string v12, "Attempted to save invalid model."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v11, 0x0

    goto :goto_0

    .line 267
    :cond_2
    if-eqz p2, :cond_3

    invoke-static/range {p1 .. p2}, Lcom/android/calendar/event/EditEventHelper;->isSameEvent(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 268
    const-string v11, "EditEventHelper"

    const-string v12, "Attempted to update existing event but models didn\'t refer to the same event."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v11, 0x0

    goto :goto_0

    .line 272
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual/range {p1 .. p2}, Lcom/android/calendar/CalendarEventModel;->isUnchanged(Lcom/android/calendar/CalendarEventModel;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 273
    const/4 v11, 0x0

    goto :goto_0

    .line 276
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v5, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v27, -0x1

    .line 279
    .local v27, eventIdIndex:I
    invoke-virtual/range {p0 .. p1}, Lcom/android/calendar/event/EditEventHelper;->getContentValuesFromModel(Lcom/android/calendar/CalendarEventModel;)Landroid/content/ContentValues;

    move-result-object v43

    .line 281
    .local v43, values:Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v11, :cond_5

    if-nez p2, :cond_5

    .line 282
    const-string v11, "EditEventHelper"

    const-string v12, "Existing event but no originalModel provided. Aborting save."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v11, 0x0

    goto :goto_0

    .line 285
    :cond_5
    const/16 v42, 0x0

    .line 286
    .local v42, uri:Landroid/net/Uri;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    if-eqz v11, :cond_6

    .line 287
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v42

    .line 291
    :cond_6
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 292
    .local v8, reminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v32

    .line 293
    .local v32, len:I
    const-string v12, "hasAlarm"

    if-lez v32, :cond_c

    const/4 v11, 0x1

    :goto_1
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v43

    invoke-virtual {v0, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 295
    if-nez v42, :cond_d

    .line 297
    const-string v11, "hasAttendeeData"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v43

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    const-string v11, "eventStatus"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v43

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 300
    sget-object v11, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    .line 302
    .local v23, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    const/4 v10, 0x1

    .line 396
    .end local v23           #b:Landroid/content/ContentProviderOperation$Builder;
    :cond_7
    :goto_2
    const/4 v11, -0x1

    move/from16 v0, v27

    if-eq v0, v11, :cond_18

    const/16 v34, 0x1

    .line 398
    .local v34, newEvent:Z
    :goto_3
    if-eqz p2, :cond_19

    .line 399
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/calendar/CalendarEventModel;->mReminders:Ljava/util/ArrayList;

    .line 404
    .local v9, originalReminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    :goto_4
    if-eqz v34, :cond_1a

    .line 405
    move/from16 v0, v27

    invoke-static {v5, v0, v8, v9, v10}, Lcom/android/calendar/event/EditEventHelper;->saveRemindersWithBackRef(Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 413
    :cond_8
    :goto_5
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mHasAttendeeData:Z

    move/from16 v28, v0

    .line 415
    .local v28, hasAttendeeData:Z
    if-eqz v28, :cond_1c

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1c

    .line 418
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    move-object/from16 v39, v0

    .line 419
    .local v39, ownerEmail:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    if-eqz v11, :cond_9

    invoke-static/range {v39 .. v39}, Lcom/android/calendar/Utils;->isValidEmail(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 422
    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentValues;->clear()V

    .line 423
    const-string v11, "attendeeEmail"

    move-object/from16 v0, v43

    move-object/from16 v1, v39

    invoke-virtual {v0, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v11, "attendeeRelationship"

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v43

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 425
    const-string v11, "attendeeType"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v43

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 426
    const-string v11, "attendeeStatus"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v43

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 428
    if-eqz v34, :cond_1b

    .line 429
    sget-object v11, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    .line 431
    .restart local v23       #b:Landroid/content/ContentProviderOperation$Builder;
    const-string v11, "event_id"

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v11, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 437
    :goto_6
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    .end local v23           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v39           #ownerEmail:Ljava/lang/String;
    :cond_9
    :goto_7
    if-eqz v28, :cond_25

    if-nez v34, :cond_a

    if-eqz v42, :cond_25

    .line 457
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendar/CalendarEventModel;->getAttendeesString()Ljava/lang/String;

    move-result-object v22

    .line 459
    .local v22, attendees:Ljava/lang/String;
    if-eqz p2, :cond_1d

    .line 460
    invoke-virtual/range {p2 .. p2}, Lcom/android/calendar/CalendarEventModel;->getAttendeesString()Ljava/lang/String;

    move-result-object v37

    .line 466
    .local v37, originalAttendeesString:Ljava/lang/String;
    :goto_8
    if-nez v34, :cond_b

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_25

    .line 470
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    move-object/from16 v33, v0

    .line 471
    .local v33, newAttendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    new-instance v41, Ljava/util/LinkedList;

    invoke-direct/range {v41 .. v41}, Ljava/util/LinkedList;-><init>()V

    .line 475
    .local v41, removedAttendees:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-eqz v42, :cond_1e

    invoke-static/range {v42 .. v42}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 480
    .local v6, eventId:J
    :goto_9
    if-nez v34, :cond_23

    .line 481
    invoke-virtual/range {v41 .. v41}, Ljava/util/LinkedList;->clear()V

    .line 482
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mAttendeesList:Ljava/util/LinkedHashMap;

    move-object/from16 v36, v0

    .line 483
    .local v36, originalAttendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    invoke-virtual/range {v36 .. v36}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_20

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    .line 484
    .local v38, originalEmail:Ljava/lang/String;
    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 486
    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 293
    .end local v6           #eventId:J
    .end local v9           #originalReminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    .end local v22           #attendees:Ljava/lang/String;
    .end local v28           #hasAttendeeData:Z
    .end local v31           #i$:Ljava/util/Iterator;
    .end local v33           #newAttendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    .end local v34           #newEvent:Z
    .end local v36           #originalAttendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    .end local v37           #originalAttendeesString:Ljava/lang/String;
    .end local v38           #originalEmail:Ljava/lang/String;
    .end local v41           #removedAttendees:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 305
    :cond_d
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_e

    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 307
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v43

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/event/EditEventHelper;->checkTimeDependentFields(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;Landroid/content/ContentValues;I)V

    .line 308
    invoke-static/range {v42 .. v42}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 310
    :cond_e
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 313
    invoke-static/range {v42 .. v42}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 315
    :cond_f
    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_11

    .line 318
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    move-wide/from16 v24, v0

    .line 319
    .local v24, begin:J
    const-string v11, "original_sync_id"

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v11, "originalInstanceTime"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, v43

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 321
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    move/from16 v18, v0

    .line 322
    .local v18, allDay:Z
    const-string v12, "originalAllDay"

    if-eqz v18, :cond_10

    const/4 v11, 0x1

    :goto_b
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v43

    invoke-virtual {v0, v12, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    const-string v11, "eventStatus"

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/calendar/CalendarEventModel;->mEventStatus:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v43

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 326
    sget-object v11, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    .line 328
    .restart local v23       #b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    const/4 v10, 0x1

    .line 331
    goto/16 :goto_2

    .line 322
    .end local v23           #b:Landroid/content/ContentProviderOperation$Builder;
    :cond_10
    const/4 v11, 0x0

    goto :goto_b

    .line 331
    .end local v18           #allDay:Z
    .end local v24           #begin:J
    :cond_11
    const/4 v11, 0x2

    move/from16 v0, p3

    if-ne v0, v11, :cond_16

    .line 333
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 338
    invoke-static/range {p1 .. p2}, Lcom/android/calendar/event/EditEventHelper;->isFirstEventInSeries(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 339
    invoke-static/range {v42 .. v42}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    :goto_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 346
    const-string v11, "eventStatus"

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/calendar/CalendarEventModel;->mEventStatus:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v43

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    sget-object v11, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    :goto_d
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 343
    :cond_12
    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1, v11, v12}, Lcom/android/calendar/event/EditEventHelper;->updatePastEvents(Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel;J)Ljava/lang/String;

    goto :goto_c

    .line 350
    :cond_13
    invoke-static/range {p1 .. p2}, Lcom/android/calendar/event/EditEventHelper;->isFirstEventInSeries(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 351
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v43

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/event/EditEventHelper;->checkTimeDependentFields(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;Landroid/content/ContentValues;I)V

    .line 352
    invoke-static/range {v42 .. v42}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    .line 354
    .restart local v23       #b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 362
    .end local v23           #b:Landroid/content/ContentProviderOperation$Builder;
    :cond_14
    move-object/from16 v0, p1

    iget-wide v11, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalStart:J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1, v11, v12}, Lcom/android/calendar/event/EditEventHelper;->updatePastEvents(Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel;J)Ljava/lang/String;

    move-result-object v35

    .line 363
    .local v35, newRrule:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 364
    const-string v11, "rrule"

    move-object/from16 v0, v43

    move-object/from16 v1, v35

    invoke-virtual {v0, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_15
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 369
    const-string v11, "eventStatus"

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/calendar/CalendarEventModel;->mEventStatus:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v43

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    sget-object v11, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 376
    .end local v35           #newRrule:Ljava/lang/String;
    :cond_16
    const/4 v11, 0x3

    move/from16 v0, p3

    if-ne v0, v11, :cond_7

    .line 379
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 383
    invoke-static/range {v42 .. v42}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 386
    sget-object v11, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 390
    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, v43

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/calendar/event/EditEventHelper;->checkTimeDependentFields(Lcom/android/calendar/CalendarEventModel;Lcom/android/calendar/CalendarEventModel;Landroid/content/ContentValues;I)V

    .line 391
    invoke-static/range {v42 .. v42}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 396
    :cond_18
    const/16 v34, 0x0

    goto/16 :goto_3

    .line 401
    .restart local v34       #newEvent:Z
    :cond_19
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .restart local v9       #originalReminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$ReminderEntry;>;"
    goto/16 :goto_4

    .line 407
    :cond_1a
    if-eqz v42, :cond_8

    .line 408
    invoke-static/range {v42 .. v42}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 409
    .restart local v6       #eventId:J
    invoke-static/range {v5 .. v10}, Lcom/android/calendar/event/EditEventHelper;->saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    goto/16 :goto_5

    .line 433
    .end local v6           #eventId:J
    .restart local v28       #hasAttendeeData:Z
    .restart local v39       #ownerEmail:Ljava/lang/String;
    :cond_1b
    const-string v11, "event_id"

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/calendar/CalendarEventModel;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, v43

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 434
    sget-object v11, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    .restart local v23       #b:Landroid/content/ContentProviderOperation$Builder;
    goto/16 :goto_6

    .line 439
    .end local v23           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v39           #ownerEmail:Ljava/lang/String;
    :cond_1c
    if-eqz v28, :cond_9

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    if-eq v11, v12, :cond_9

    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_9

    .line 445
    sget-object v11, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/calendar/CalendarEventModel;->mOwnerAttendeeId:I

    int-to-long v12, v12

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v20

    .line 447
    .local v20, attUri:Landroid/net/Uri;
    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentValues;->clear()V

    .line 448
    const-string v11, "attendeeStatus"

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/calendar/CalendarEventModel;->mSelfAttendeeStatus:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v43

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 449
    const-string v11, "event_id"

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/calendar/CalendarEventModel;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, v43

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 450
    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    .line 451
    .restart local v23       #b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 462
    .end local v20           #attUri:Landroid/net/Uri;
    .end local v23           #b:Landroid/content/ContentProviderOperation$Builder;
    .restart local v22       #attendees:Ljava/lang/String;
    :cond_1d
    const-string v37, ""

    .restart local v37       #originalAttendeesString:Ljava/lang/String;
    goto/16 :goto_8

    .line 475
    .restart local v33       #newAttendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    .restart local v41       #removedAttendees:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_1e
    const-wide/16 v6, -0x1

    goto/16 :goto_9

    .line 489
    .restart local v6       #eventId:J
    .restart local v31       #i$:Ljava/util/Iterator;
    .restart local v36       #originalAttendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    .restart local v38       #originalEmail:Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 494
    .end local v38           #originalEmail:Ljava/lang/String;
    :cond_20
    invoke-virtual/range {v41 .. v41}, Ljava/util/LinkedList;->size()I

    move-result v11

    if-lez v11, :cond_23

    .line 495
    sget-object v11, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    .line 497
    .restart local v23       #b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v41 .. v41}, Ljava/util/LinkedList;->size()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    new-array v0, v11, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 498
    .local v19, args:[Ljava/lang/String;
    const/4 v11, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v19, v11

    .line 499
    const/16 v29, 0x1

    .line 500
    .local v29, i:I
    new-instance v26, Ljava/lang/StringBuilder;

    const-string v11, "event_id=? AND attendeeEmail IN ("

    move-object/from16 v0, v26

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 501
    .local v26, deleteWhere:Ljava/lang/StringBuilder;
    invoke-virtual/range {v41 .. v41}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_e
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_22

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    .line 502
    .local v40, removedAttendee:Ljava/lang/String;
    const/4 v11, 0x1

    move/from16 v0, v29

    if-le v0, v11, :cond_21

    .line 503
    const-string v11, ","

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_21
    const-string v11, "?"

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    add-int/lit8 v30, v29, 0x1

    .end local v29           #i:I
    .local v30, i:I
    aput-object v40, v19, v29

    move/from16 v29, v30

    .end local v30           #i:I
    .restart local v29       #i:I
    goto :goto_e

    .line 508
    .end local v40           #removedAttendee:Ljava/lang/String;
    :cond_22
    const-string v11, ")"

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 510
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 514
    .end local v19           #args:[Ljava/lang/String;
    .end local v23           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v26           #deleteWhere:Ljava/lang/StringBuilder;
    .end local v29           #i:I
    .end local v31           #i$:Ljava/util/Iterator;
    .end local v36           #originalAttendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    :cond_23
    invoke-virtual/range {v33 .. v33}, Ljava/util/HashMap;->size()I

    move-result v11

    if-lez v11, :cond_25

    .line 516
    invoke-virtual/range {v33 .. v33}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .restart local v31       #i$:Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_25

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 517
    .local v21, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    invoke-virtual/range {v43 .. v43}, Landroid/content/ContentValues;->clear()V

    .line 518
    const-string v11, "attendeeName"

    move-object/from16 v0, v21

    iget-object v12, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v11, "attendeeEmail"

    move-object/from16 v0, v21

    iget-object v12, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v11, "attendeeRelationship"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v43

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 522
    const-string v11, "attendeeType"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v43

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 523
    const-string v11, "attendeeStatus"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, v43

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 525
    if-eqz v34, :cond_24

    .line 526
    sget-object v11, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    .line 528
    .restart local v23       #b:Landroid/content/ContentProviderOperation$Builder;
    const-string v11, "event_id"

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v11, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 534
    :goto_10
    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 530
    .end local v23           #b:Landroid/content/ContentProviderOperation$Builder;
    :cond_24
    const-string v11, "event_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, v43

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 531
    sget-object v11, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    move-object/from16 v0, v43

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    .restart local v23       #b:Landroid/content/ContentProviderOperation$Builder;
    goto :goto_10

    .line 541
    .end local v6           #eventId:J
    .end local v21           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    .end local v22           #attendees:Ljava/lang/String;
    .end local v23           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v31           #i$:Ljava/util/Iterator;
    .end local v33           #newAttendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    .end local v37           #originalAttendeesString:Ljava/lang/String;
    .end local v41           #removedAttendees:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_25
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/calendar/event/EditEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/calendar/event/EditEventHelper;->mService:Lcom/android/calendar/AsyncQueryService;

    invoke-virtual {v12}, Lcom/android/calendar/AsyncQueryService;->getNextToken()I

    move-result v12

    const/4 v13, 0x0

    const-string v14, "com.android.calendar"

    const-wide/16 v16, 0x0

    move-object v15, v5

    invoke-virtual/range {v11 .. v17}, Lcom/android/calendar/AsyncQueryService;->startBatch(ILjava/lang/Object;Ljava/lang/String;Ljava/util/ArrayList;J)V

    .line 544
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method public updatePastEvents(Ljava/util/ArrayList;Lcom/android/calendar/CalendarEventModel;J)Ljava/lang/String;
    .locals 21
    .parameter
    .parameter "originalModel"
    .parameter "endTimeMillis"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/android/calendar/CalendarEventModel;",
            "J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 675
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p2

    iget-boolean v13, v0, Lcom/android/calendar/CalendarEventModel;->mAllDay:Z

    .line 676
    .local v13, origAllDay:Z
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    .line 677
    .local v15, origRrule:Ljava/lang/String;
    move-object v12, v15

    .line 679
    .local v12, newRrule:Ljava/lang/String;
    new-instance v14, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v14}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 680
    .local v14, origRecurrence:Lcom/android/calendarcommon2/EventRecurrence;
    invoke-virtual {v14, v15}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 683
    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/calendar/CalendarEventModel;->mStart:J

    .line 684
    .local v5, startTimeMillis:J
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 685
    .local v3, dtstart:Landroid/text/format/Time;
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/calendar/CalendarEventModel;->mTimezone:Ljava/lang/String;

    iput-object v7, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 686
    invoke-virtual {v3, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 688
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 690
    .local v18, updateValues:Landroid/content/ContentValues;
    iget v7, v14, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    if-lez v7, :cond_1

    .line 703
    new-instance v4, Lcom/android/calendarcommon2/RecurrenceSet;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/calendar/CalendarEventModel;->mRrule:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v4, v7, v8, v0, v1}, Lcom/android/calendarcommon2/RecurrenceSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    .local v4, recurSet:Lcom/android/calendarcommon2/RecurrenceSet;
    new-instance v2, Lcom/android/calendarcommon2/RecurrenceProcessor;

    invoke-direct {v2}, Lcom/android/calendarcommon2/RecurrenceProcessor;-><init>()V

    .local v2, recurProc:Lcom/android/calendarcommon2/RecurrenceProcessor;
    move-wide/from16 v7, p3

    .line 707
    :try_start_0
    invoke-virtual/range {v2 .. v8}, Lcom/android/calendarcommon2/RecurrenceProcessor;->expand(Landroid/text/format/Time;Lcom/android/calendarcommon2/RecurrenceSet;JJ)[J
    :try_end_0
    .catch Lcom/android/calendarcommon2/DateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 712
    .local v16, recurrences:[J
    move-object/from16 v0, v16

    array-length v7, v0

    if-nez v7, :cond_0

    .line 713
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "can\'t use this method on first instance"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 708
    .end local v16           #recurrences:[J
    :catch_0
    move-exception v10

    .line 709
    .local v10, de:Lcom/android/calendarcommon2/DateException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 716
    .end local v10           #de:Lcom/android/calendarcommon2/DateException;
    .restart local v16       #recurrences:[J
    :cond_0
    new-instance v11, Lcom/android/calendarcommon2/EventRecurrence;

    invoke-direct {v11}, Lcom/android/calendarcommon2/EventRecurrence;-><init>()V

    .line 717
    .local v11, excepRecurrence:Lcom/android/calendarcommon2/EventRecurrence;
    invoke-virtual {v11, v15}, Lcom/android/calendarcommon2/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 718
    iget v7, v11, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    move-object/from16 v0, v16

    array-length v8, v0

    sub-int/2addr v7, v8

    iput v7, v11, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    .line 719
    invoke-virtual {v11}, Lcom/android/calendarcommon2/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 721
    move-object/from16 v0, v16

    array-length v7, v0

    iput v7, v14, Lcom/android/calendarcommon2/EventRecurrence;->count:I

    .line 752
    .end local v2           #recurProc:Lcom/android/calendarcommon2/RecurrenceProcessor;
    .end local v4           #recurSet:Lcom/android/calendarcommon2/RecurrenceSet;
    .end local v11           #excepRecurrence:Lcom/android/calendarcommon2/EventRecurrence;
    .end local v16           #recurrences:[J
    :goto_0
    const-string v7, "rrule"

    invoke-virtual {v14}, Lcom/android/calendarcommon2/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string v7, "dtstart"

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 754
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/calendar/CalendarEventModel;->mUri:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 757
    .local v9, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    return-object v12

    .line 728
    .end local v9           #b:Landroid/content/ContentProviderOperation$Builder;
    :cond_1
    new-instance v17, Landroid/text/format/Time;

    invoke-direct/range {v17 .. v17}, Landroid/text/format/Time;-><init>()V

    .line 729
    .local v17, untilTime:Landroid/text/format/Time;
    const-string v7, "UTC"

    move-object/from16 v0, v17

    iput-object v7, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 733
    const-wide/16 v7, 0x3e8

    sub-long v7, p3, v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 734
    if-eqz v13, :cond_2

    .line 735
    const/4 v7, 0x0

    move-object/from16 v0, v17

    iput v7, v0, Landroid/text/format/Time;->hour:I

    .line 736
    const/4 v7, 0x0

    move-object/from16 v0, v17

    iput v7, v0, Landroid/text/format/Time;->minute:I

    .line 737
    const/4 v7, 0x0

    move-object/from16 v0, v17

    iput v7, v0, Landroid/text/format/Time;->second:I

    .line 738
    const/4 v7, 0x1

    move-object/from16 v0, v17

    iput-boolean v7, v0, Landroid/text/format/Time;->allDay:Z

    .line 739
    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->normalize(Z)J

    .line 743
    const/4 v7, 0x0

    iput v7, v3, Landroid/text/format/Time;->hour:I

    .line 744
    const/4 v7, 0x0

    iput v7, v3, Landroid/text/format/Time;->minute:I

    .line 745
    const/4 v7, 0x0

    iput v7, v3, Landroid/text/format/Time;->second:I

    .line 746
    const/4 v7, 0x1

    iput-boolean v7, v3, Landroid/text/format/Time;->allDay:Z

    .line 747
    const-string v7, "UTC"

    iput-object v7, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 749
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v14, Lcom/android/calendarcommon2/EventRecurrence;->until:Ljava/lang/String;

    goto :goto_0
.end method
