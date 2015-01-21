.class public final Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
.super Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;
.source "CalendarProxy.java"


# static fields
.field private static sInstance:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;-><init>(Landroid/content/Context;)V

    .line 95
    const-string v0, "CalendarProxy"

    invoke-virtual {p0, v0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->setProxyName(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    .locals 2
    .parameter "context"

    .prologue
    .line 104
    const-class v1, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    invoke-direct {v0, p0}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    .line 109
    :goto_0
    sget-object v0, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 107
    :cond_0
    :try_start_1
    sget-object v0, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;

    invoke-virtual {v0, p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->setContext(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMaxEventIdFromInsert()J
    .locals 9

    .prologue
    const-wide/16 v7, 0x1

    const/4 v6, 0x1

    .line 932
    const-wide/16 v0, 0x0

    .line 933
    .local v0, insertedId:J
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x7

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 934
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "calendar_id"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 935
    const-string v4, "title"

    const-string v5, "Test"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    const-string v4, "dtstart"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 937
    const-string v4, "allDay"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 938
    const-string v4, "dtend"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 939
    const-string v4, "eventTimezone"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const-string v4, "organizer"

    const-string v5, "Test"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v4

    sget-object v5, Lcom/mediatek/apst/target/data/provider/calendar/CalendarEventContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 943
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 944
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 945
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v4

    sget-object v5, Lcom/mediatek/apst/target/data/provider/calendar/CalendarEventContent;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 947
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMaxEventIdFromInsert: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 949
    :cond_0
    return-wide v0
.end method


# virtual methods
.method public deleteAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 474
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/CalendarEventContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, " 1 = 1 "

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 476
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/ReminderContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, " 1 = 1 "

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 478
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/AttendeeContent;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, " 1 = 1 "

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 480
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ">>>>Delete all end"

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    return-void
.end method

.method public deleteAttendee(J)I
    .locals 7
    .parameter "attendeeId"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 571
    const/4 v0, 0x0

    .line 573
    .local v0, result:I
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/apst/target/data/provider/calendar/AttendeeContent;->CONTENT_URI:Landroid/net/Uri;

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

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 577
    if-gez v0, :cond_1

    .line 578
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete Attendee, result is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    :cond_0
    :goto_0
    return v0

    .line 580
    :cond_1
    if-le v0, v5, :cond_0

    .line 582
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "Deleted several Attendees in one time, please check if it is normal."

    invoke-static {v1, v2}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteAttendeesByEventId(JLjava/lang/String;)I
    .locals 6
    .parameter "eventId"
    .parameter "organizer"

    .prologue
    const/4 v5, 0x0

    .line 515
    const/4 v0, 0x0

    .line 517
    .local v0, result:I
    if-eqz p3, :cond_1

    .line 518
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/apst/target/data/provider/calendar/AttendeeContent;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "attendeeEmail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " <> \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 529
    :goto_0
    if-gez v0, :cond_0

    .line 530
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete Attendee, result is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    :cond_0
    return v0

    .line 524
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/apst/target/data/provider/calendar/AttendeeContent;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public deleteEvent(J)I
    .locals 10
    .parameter "eventId"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 392
    const/4 v2, 0x0

    .line 394
    .local v2, result:I
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v3

    sget-object v4, Lcom/mediatek/apst/target/data/provider/calendar/CalendarEventContent;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v9}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 398
    if-gez v2, :cond_1

    .line 399
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete Event, result is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->deleteRemindersByEventId(J)I

    move-result v1

    .line 409
    .local v1, deleteRemindersCount:I
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete Reminders Count is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logV([Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0, p1, p2, v9}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->deleteAttendeesByEventId(JLjava/lang/String;)I

    move-result v0

    .line 412
    .local v0, deleteAttendeesCount:I
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete Attendees Count is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logV([Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    return v2

    .line 401
    .end local v0           #deleteAttendeesCount:I
    .end local v1           #deleteRemindersCount:I
    :cond_1
    if-le v2, v7, :cond_0

    .line 403
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "Deleted several Events in one time, please check if it is normal."

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteEvents([J)[Z
    .locals 9
    .parameter "eventIds"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 425
    if-nez p1, :cond_1

    .line 426
    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v8

    const-string v6, "EventIds is null."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v4

    .line 459
    :cond_0
    :goto_0
    return-object v3

    .line 429
    :cond_1
    array-length v2, p1

    .line 430
    .local v2, length:I
    new-array v3, v2, [Z

    .line 437
    .local v3, results:[Z
    if-ne v2, v7, :cond_3

    .line 438
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 439
    aget-wide v4, p1, v1

    invoke-virtual {p0, v4, v5}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->deleteEvent(J)I

    move-result v0

    .line 440
    .local v0, count:I
    if-lt v0, v7, :cond_2

    .line 441
    aput-boolean v7, v3, v1

    .line 438
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 444
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_3
    if-le v2, v7, :cond_0

    .line 445
    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v8

    const-string v6, ">>>>Delete all event start"

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v5

    sget-object v6, Lcom/mediatek/apst/target/data/provider/calendar/CalendarEventContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4, v4}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 450
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v5

    sget-object v6, Lcom/mediatek/apst/target/data/provider/calendar/ReminderContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4, v4}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 452
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v5

    sget-object v6, Lcom/mediatek/apst/target/data/provider/calendar/AttendeeContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4, v4}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 454
    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v8

    const-string v5, ">>>>Delete all event end"

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public deleteReminder(J)I
    .locals 7
    .parameter "reminderId"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 544
    const/4 v0, 0x0

    .line 546
    .local v0, result:I
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/apst/target/data/provider/calendar/ReminderContent;->CONTENT_URI:Landroid/net/Uri;

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

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 550
    if-gez v0, :cond_1

    .line 551
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete Reminder, result is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    :cond_0
    :goto_0
    return v0

    .line 553
    :cond_1
    if-le v0, v5, :cond_0

    .line 555
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "Deleted several Reminders in one time, please check if it is normal."

    invoke-static {v1, v2}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteRemindersByEventId(J)I
    .locals 5
    .parameter "eventId"

    .prologue
    .line 491
    const/4 v0, 0x0

    .line 493
    .local v0, result:I
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v1

    sget-object v2, Lcom/mediatek/apst/target/data/provider/calendar/ReminderContent;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 497
    if-gez v0, :cond_0

    .line 498
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete Reminders, result is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    :cond_0
    return v0
.end method

.method public fastDeleteEvents([J)I
    .locals 8
    .parameter "ids"

    .prologue
    const/4 v0, 0x0

    .line 2095
    if-nez p1, :cond_0

    .line 2096
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v0

    const-string v6, "List is null."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2117
    :goto_0
    return v0

    .line 2100
    :cond_0
    const/4 v0, 0x0

    .line 2101
    .local v0, deleteCount:I
    const/4 v3, 0x0

    .line 2102
    .local v3, selection:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2103
    .local v4, strBuf:Ljava/lang/StringBuffer;
    const-string v5, "_id IN("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2104
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_1

    .line 2105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v6, p1, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2104
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2108
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 2109
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2110
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2112
    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/CalendarEventContent;->CONTENT_URI:Landroid/net/Uri;

    .line 2114
    .local v1, deleteUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v3, v6}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2117
    goto :goto_0
.end method

.method public fastSyncAddEvents([B)[B
    .locals 1
    .parameter "raw"

    .prologue
    .line 1852
    invoke-virtual {p0, p1}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->slowSyncAddEvents([B)[B

    move-result-object v0

    return-object v0
.end method

.method public fastSyncGetAllSyncFlags(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 8
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1863
    if-nez p1, :cond_1

    .line 1864
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    const-string v1, "Block consumer should not be null."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1892
    :cond_0
    :goto_0
    return-void

    .line 1868
    :cond_1
    const/4 v6, 0x0

    .line 1871
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/CalendarEventContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "modifyTime"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "calendar_id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "eventTimezone"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "dtstart"

    aput-object v4, v2, v3

    const-string v3, "deleted<>1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1882
    new-instance v7, Lcom/mediatek/apst/target/data/proxy/calendar/FastCalendarSyncFlagsCursorParser;

    invoke-direct {v7, v6, p1, p2}, Lcom/mediatek/apst/target/data/proxy/calendar/FastCalendarSyncFlagsCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 1884
    .local v7, parser:Lcom/mediatek/apst/target/data/proxy/calendar/FastCalendarSyncFlagsCursorParser;
    invoke-virtual {v7}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1887
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1888
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1889
    const/4 v6, 0x0

    goto :goto_0

    .line 1887
    .end local v7           #parser:Lcom/mediatek/apst/target/data/proxy/calendar/FastCalendarSyncFlagsCursorParser;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1888
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1889
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method public fastSyncGetAttendees([JLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 12
    .parameter "requestedEventIds"
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 2037
    if-nez p2, :cond_1

    .line 2038
    new-array v0, v10, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v4

    aput-object p3, v0, v5

    const-string v1, "Block consumer should not be null."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2087
    :cond_0
    :goto_0
    return-void

    .line 2042
    :cond_1
    if-nez p1, :cond_2

    .line 2043
    new-array v0, v10, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v4

    aput-object p3, v0, v5

    const-string v1, "Requested events id list should not be null."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2045
    invoke-interface {p2, v11, v2, v2}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2047
    :cond_2
    array-length v0, p1

    if-gtz v0, :cond_3

    .line 2048
    new-array v0, v10, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v4

    aput-object p3, v0, v5

    const-string v1, "Requested events id list is empty."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2050
    invoke-interface {p2, v11, v2, v2}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2053
    :cond_3
    const/4 v6, 0x0

    .line 2054
    .local v6, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 2055
    .local v3, selection:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 2057
    .local v9, strBuf:Ljava/lang/StringBuffer;
    const-string v0, "event_id IN("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2058
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, p1

    if-ge v7, v0, :cond_4

    .line 2059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v1, p1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2058
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2062
    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 2063
    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2064
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2067
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/AttendeeContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "event_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "attendeeName"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "attendeeEmail"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "attendeeStatus"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "attendeeRelationship"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "attendeeType"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2077
    new-instance v8, Lcom/mediatek/apst/target/data/proxy/calendar/FastAttendeeCursorParser;

    invoke-direct {v8, v6, p2, p3}, Lcom/mediatek/apst/target/data/proxy/calendar/FastAttendeeCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 2079
    .local v8, parser:Lcom/mediatek/apst/target/data/proxy/calendar/FastAttendeeCursorParser;
    invoke-virtual {v8}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2082
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2083
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2084
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2082
    .end local v8           #parser:Lcom/mediatek/apst/target/data/proxy/calendar/FastAttendeeCursorParser;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2083
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2084
    const/4 v6, 0x0

    :cond_5
    throw v0
.end method

.method public fastSyncGetEvents([JLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 12
    .parameter "requestedEventIds"
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1904
    if-nez p2, :cond_1

    .line 1905
    new-array v0, v10, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v4

    aput-object p3, v0, v5

    const-string v1, "Block consumer should not be null."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1965
    :cond_0
    :goto_0
    return-void

    .line 1909
    :cond_1
    if-nez p1, :cond_2

    .line 1910
    new-array v0, v10, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v4

    aput-object p3, v0, v5

    const-string v1, "Requested events id list should not be null."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1912
    invoke-interface {p2, v11, v2, v2}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 1914
    :cond_2
    array-length v0, p1

    if-gtz v0, :cond_3

    .line 1915
    new-array v0, v10, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v4

    aput-object p3, v0, v5

    const-string v1, "Requested events id list is empty."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1917
    invoke-interface {p2, v11, v2, v2}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 1920
    :cond_3
    const/4 v6, 0x0

    .line 1921
    .local v6, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1922
    .local v3, selection:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 1924
    .local v9, strBuf:Ljava/lang/StringBuffer;
    const-string v0, "(_id IN("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1925
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, p1

    if-ge v7, v0, :cond_4

    .line 1926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v1, p1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1925
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1929
    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1930
    const-string v0, ")) AND deleted<>1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1932
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1935
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/CalendarEventContent;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "calendar_id"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "title"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "dtstart"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "dtend"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "allDay"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "eventLocation"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "description"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string v5, "organizer"

    aput-object v5, v2, v4

    const/16 v4, 0x9

    const-string v5, "rrule"

    aput-object v5, v2, v4

    const/16 v4, 0xa

    const-string v5, "createTime"

    aput-object v5, v2, v4

    const/16 v4, 0xb

    const-string v5, "modifyTime"

    aput-object v5, v2, v4

    const/16 v4, 0xc

    const-string v5, "duration"

    aput-object v5, v2, v4

    const/16 v4, 0xd

    const-string v5, "eventTimezone"

    aput-object v5, v2, v4

    const/16 v4, 0xe

    const-string v5, "availability"

    aput-object v5, v2, v4

    const/16 v4, 0xf

    const-string v5, "accessLevel"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1955
    new-instance v8, Lcom/mediatek/apst/target/data/proxy/calendar/FastEventCursorParser;

    invoke-direct {v8, v6, p2, p3}, Lcom/mediatek/apst/target/data/proxy/calendar/FastEventCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 1957
    .local v8, parser:Lcom/mediatek/apst/target/data/proxy/calendar/FastEventCursorParser;
    invoke-virtual {v8}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1960
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1961
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1962
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1960
    .end local v8           #parser:Lcom/mediatek/apst/target/data/proxy/calendar/FastEventCursorParser;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1961
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1962
    const/4 v6, 0x0

    :cond_5
    throw v0
.end method

.method public fastSyncGetReminders([JLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 12
    .parameter "requestedEventIds"
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1977
    if-nez p2, :cond_1

    .line 1978
    new-array v0, v10, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v4

    aput-object p3, v0, v5

    const-string v1, "Block consumer should not be null."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2025
    :cond_0
    :goto_0
    return-void

    .line 1982
    :cond_1
    if-nez p1, :cond_2

    .line 1983
    new-array v0, v10, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v4

    aput-object p3, v0, v5

    const-string v1, "Requested events id list should not be null."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1985
    invoke-interface {p2, v11, v2, v2}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 1987
    :cond_2
    array-length v0, p1

    if-gtz v0, :cond_3

    .line 1988
    new-array v0, v10, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v4

    aput-object p3, v0, v5

    const-string v1, "Requested events id list is empty."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1990
    invoke-interface {p2, v11, v2, v2}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 1993
    :cond_3
    const/4 v6, 0x0

    .line 1994
    .local v6, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1995
    .local v3, selection:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 1997
    .local v9, strBuf:Ljava/lang/StringBuffer;
    const-string v0, "event_id IN("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1998
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, p1

    if-ge v7, v0, :cond_4

    .line 1999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v1, p1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1998
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2002
    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 2003
    const-string v0, ")"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2004
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2007
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/ReminderContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "event_id"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "method"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "minutes"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2015
    new-instance v8, Lcom/mediatek/apst/target/data/proxy/calendar/FastReminderCursorParser;

    invoke-direct {v8, v6, p2, p3}, Lcom/mediatek/apst/target/data/proxy/calendar/FastReminderCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 2017
    .local v8, parser:Lcom/mediatek/apst/target/data/proxy/calendar/FastReminderCursorParser;
    invoke-virtual {v8}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2020
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2021
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2022
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2020
    .end local v8           #parser:Lcom/mediatek/apst/target/data/proxy/calendar/FastReminderCursorParser;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2021
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2022
    const/4 v6, 0x0

    :cond_5
    throw v0
.end method

.method public fastSyncUpdateEvents([B)[B
    .locals 15
    .parameter "raw"

    .prologue
    .line 2126
    if-nez p1, :cond_0

    .line 2127
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Raw data is null."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2128
    const/4 v0, 0x0

    .line 2233
    :goto_0
    return-object v0

    .line 2131
    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 2137
    .local v6, buffer:Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 2144
    .local v8, count:I
    if-gez v8, :cond_1

    .line 2145
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid events count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2147
    const/4 v0, 0x0

    goto :goto_0

    .line 2138
    .end local v8           #count:I
    :catch_0
    move-exception v9

    .line 2139
    .local v9, e:Ljava/nio/BufferUnderflowException;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Can not get the events count in raw data "

    invoke-static {v0, v1, v9}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2141
    const/4 v0, 0x0

    goto :goto_0

    .line 2150
    .end local v9           #e:Ljava/nio/BufferUnderflowException;
    .restart local v8       #count:I
    :cond_1
    new-array v14, v8, [J

    .line 2155
    .local v14, updatedIds:[J
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v8, :cond_5

    .line 2157
    new-instance v11, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;

    invoke-direct {v11}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;-><init>()V

    .line 2158
    .local v11, newEvent:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    const/16 v0, 0x51a

    invoke-virtual {v11, v6, v0}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 2160
    invoke-virtual {v11}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v12

    .line 2162
    .local v12, updateId:J
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/CalendarEventContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "deleted"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2167
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 2168
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor is null. Failed to find the event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to update."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2171
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2199
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 2203
    invoke-virtual {p0, v11}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->insertEvent(Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;)J

    .line 2225
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2229
    aput-wide v12, v14, v10

    .line 2155
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2205
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2206
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 2209
    invoke-virtual {p0, v12, v13}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->deleteEvent(J)I

    .line 2213
    invoke-virtual {p0, v11}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->insertEvent(Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;)J

    goto :goto_2

    .line 2222
    :cond_4
    invoke-virtual {p0, v12, v13, v11}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->updateEvent(JLcom/mediatek/apst/util/entity/calendar/CalendarEvent;)I

    goto :goto_2

    .line 2233
    .end local v7           #c:Landroid/database/Cursor;
    .end local v11           #newEvent:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    .end local v12           #updateId:J
    :cond_5
    invoke-virtual {p0, v14}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->getSyncFlags([J)[B

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getAttendees(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 8
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    .line 708
    const/4 v6, 0x0

    .line 712
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/AttendeeContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "event_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "attendeeName"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "attendeeEmail"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "attendeeStatus"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "attendeeRelationship"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "attendeeType"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 723
    new-instance v7, Lcom/mediatek/apst/target/data/proxy/calendar/FastAttendeeCursorParser;

    invoke-direct {v7, v6, p1, p2}, Lcom/mediatek/apst/target/data/proxy/calendar/FastAttendeeCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 725
    .local v7, parser:Lcom/mediatek/apst/target/data/proxy/calendar/FastAttendeeCursorParser;
    invoke-virtual {v7}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 729
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 730
    const/4 v6, 0x0

    .line 733
    :cond_0
    return-void

    .line 728
    .end local v7           #parser:Lcom/mediatek/apst/target/data/proxy/calendar/FastAttendeeCursorParser;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 729
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 730
    const/4 v6, 0x0

    :cond_1
    throw v0
.end method

.method public getCalendars(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 8
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    .line 598
    const/4 v6, 0x0

    .line 602
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/CalendarContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "calendar_displayName"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "ownerAccount"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 610
    new-instance v7, Lcom/mediatek/apst/target/data/proxy/calendar/FastCalendarCursorParser;

    invoke-direct {v7, v6, p1, p2}, Lcom/mediatek/apst/target/data/proxy/calendar/FastCalendarCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 612
    .local v7, parser:Lcom/mediatek/apst/target/data/proxy/calendar/FastCalendarCursorParser;
    invoke-virtual {v7}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 617
    const/4 v6, 0x0

    .line 620
    :cond_0
    return-void

    .line 615
    .end local v7           #parser:Lcom/mediatek/apst/target/data/proxy/calendar/FastCalendarCursorParser;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 616
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 617
    const/4 v6, 0x0

    :cond_1
    throw v0
.end method

.method public getEvent(JZZ)Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    .locals 12
    .parameter "eventId"
    .parameter "withReminder"
    .parameter "withAttendee"

    .prologue
    .line 297
    new-instance v10, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;

    invoke-direct {v10}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;-><init>()V

    .line 299
    .local v10, event:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/CalendarEventContent;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "calendar_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "dtstart"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "dtend"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "allDay"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "eventLocation"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "description"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "organizer"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "rrule"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "modifyTime"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "createTime"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "duration"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "eventTimezone"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "availability"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "accessLevel"

    aput-object v4, v2, v3

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

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 318
    .local v8, cEvent:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-static {v8}, Lcom/mediatek/apst/target/data/provider/calendar/CalendarEventContent;->cursorToEvent(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;

    move-result-object v10

    .line 320
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 326
    if-nez p3, :cond_1

    move-object v0, v10

    .line 381
    :goto_0
    return-object v0

    .line 322
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Do not find the event. "

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    const/4 v0, 0x0

    goto :goto_0

    .line 330
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/ReminderContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "event_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "method"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "minutes"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 337
    .local v9, cReminder:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    .line 338
    :cond_2
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 339
    new-instance v11, Lcom/mediatek/apst/util/entity/calendar/Reminder;

    invoke-direct {v11}, Lcom/mediatek/apst/util/entity/calendar/Reminder;-><init>()V

    .line 340
    .local v11, reminder:Lcom/mediatek/apst/util/entity/calendar/Reminder;
    invoke-static {v9}, Lcom/mediatek/apst/target/data/provider/calendar/ReminderContent;->cursorToReminder(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/calendar/Reminder;

    move-result-object v11

    .line 341
    if-eqz v10, :cond_2

    .line 342
    invoke-virtual {v10, v11}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->addReminder(Lcom/mediatek/apst/util/entity/calendar/Reminder;)V

    goto :goto_1

    .line 346
    .end local v11           #reminder:Lcom/mediatek/apst/util/entity/calendar/Reminder;
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 352
    :goto_2
    if-nez p4, :cond_5

    move-object v0, v10

    .line 353
    goto :goto_0

    .line 348
    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Do not find the reminder. "

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 357
    :cond_5
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/AttendeeContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "event_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "attendeeName"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "attendeeEmail"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "attendeeStatus"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "attendeeRelationship"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "attendeeType"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 366
    .local v7, cAttendee:Landroid/database/Cursor;
    if-eqz v7, :cond_8

    .line 367
    :cond_6
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 368
    new-instance v6, Lcom/mediatek/apst/util/entity/calendar/Attendee;

    invoke-direct {v6}, Lcom/mediatek/apst/util/entity/calendar/Attendee;-><init>()V

    .line 369
    .local v6, attendee:Lcom/mediatek/apst/util/entity/calendar/Attendee;
    invoke-static {v7}, Lcom/mediatek/apst/target/data/provider/calendar/AttendeeContent;->cursorToAttendee(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/calendar/Attendee;

    move-result-object v6

    .line 370
    if-eqz v10, :cond_6

    .line 371
    invoke-virtual {v10, v6}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->addAttendee(Lcom/mediatek/apst/util/entity/calendar/Attendee;)V

    goto :goto_3

    .line 375
    .end local v6           #attendee:Lcom/mediatek/apst/util/entity/calendar/Attendee;
    :cond_7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :goto_4
    move-object v0, v10

    .line 381
    goto/16 :goto_0

    .line 377
    :cond_8
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Do not find the attendee. "

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public getEvents(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 8
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    .line 630
    const/4 v6, 0x0

    .line 634
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/CalendarEventContent;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "calendar_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "dtstart"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "dtend"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "allDay"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "eventLocation"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "description"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "organizer"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "rrule"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "modifyTime"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "createTime"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "duration"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "eventTimezone"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "availability"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "accessLevel"

    aput-object v4, v2, v3

    const-string v3, "deleted<>1"

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 656
    new-instance v7, Lcom/mediatek/apst/target/data/proxy/calendar/FastEventCursorParser;

    invoke-direct {v7, v6, p1, p2}, Lcom/mediatek/apst/target/data/proxy/calendar/FastEventCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 658
    .local v7, parser:Lcom/mediatek/apst/target/data/proxy/calendar/FastEventCursorParser;
    invoke-virtual {v7}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 663
    const/4 v6, 0x0

    .line 666
    :cond_0
    return-void

    .line 661
    .end local v7           #parser:Lcom/mediatek/apst/target/data/proxy/calendar/FastEventCursorParser;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 662
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 663
    const/4 v6, 0x0

    :cond_1
    throw v0
.end method

.method public getLastSyncDate()J
    .locals 7

    .prologue
    .line 971
    const-wide/16 v1, 0x0

    .line 973
    .local v1, lastSyncDate:J
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/apst/target/util/SharedPrefs;->open(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "calendar_last_sync_date"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 978
    :goto_0
    return-wide v1

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, e:Ljava/lang/ClassCastException;
    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getLocalAccountId()J
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 1611
    const-wide/16 v7, 0x0

    .line 1614
    .local v7, localAccountId:J
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/CalendarContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "account_type = \'local\' or account_type = \'LOCAL\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1620
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1621
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1622
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1624
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1626
    :cond_1
    return-wide v7
.end method

.method public getMaxEventId()J
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 916
    const-wide/16 v7, 0x0

    .line 918
    .local v7, maxId:J
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/CalendarEventContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v9

    const-string v5, "_id DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 921
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 922
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 923
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 925
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 927
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMaxEventId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 928
    return-wide v7
.end method

.method public getPcSyncEventsCount()I
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 2252
    const/4 v7, 0x0

    .line 2255
    .local v7, count:I
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/CalendarEventContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "deleted<>1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2261
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 2262
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 2263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2268
    :goto_0
    return v7

    .line 2265
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getReminders(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 8
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    .line 676
    const/4 v6, 0x0

    .line 680
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/ReminderContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "event_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "method"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "minutes"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "minutes ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 688
    new-instance v7, Lcom/mediatek/apst/target/data/proxy/calendar/FastReminderCursorParser;

    invoke-direct {v7, v6, p1, p2}, Lcom/mediatek/apst/target/data/proxy/calendar/FastReminderCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 690
    .local v7, parser:Lcom/mediatek/apst/target/data/proxy/calendar/FastReminderCursorParser;
    invoke-virtual {v7}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 695
    const/4 v6, 0x0

    .line 698
    :cond_0
    return-void

    .line 693
    .end local v7           #parser:Lcom/mediatek/apst/target/data/proxy/calendar/FastReminderCursorParser;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 694
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 695
    const/4 v6, 0x0

    :cond_1
    throw v0
.end method

.method public getSyncFlags(JJ)[B
    .locals 9
    .parameter "idFrom"
    .parameter "idTo"

    .prologue
    .line 1660
    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1662
    .local v6, buffer:Ljava/nio/ByteBuffer;
    const/4 v0, 0x4

    new-array v8, v0, [B

    .line 1665
    .local v8, syncResultsRaw:[B
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/CalendarEventContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "modifyTime"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "calendar_id"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "eventTimezone"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "dtstart"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id>="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1679
    .local v7, c:Landroid/database/Cursor;
    invoke-virtual {v6}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 1680
    if-eqz v7, :cond_1

    .line 1681
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1682
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSyncFlags count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1683
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1685
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1687
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1689
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1691
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1693
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1695
    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 1697
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1702
    :goto_1
    invoke-virtual {v6}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 1703
    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    move-result v0

    new-array v8, v0, [B

    .line 1704
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1706
    return-object v8

    .line 1699
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1700
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "cursor is null"

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getSyncFlags([J)[B
    .locals 14
    .parameter "idSet"

    .prologue
    .line 1716
    if-nez p1, :cond_0

    .line 1717
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Target ID list is null."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1719
    const/4 v0, 0x4

    new-array v13, v0, [B

    .line 1843
    :goto_0
    return-object v13

    .line 1721
    :cond_0
    array-length v0, p1

    if-gtz v0, :cond_1

    .line 1722
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Target ID list is empty."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1724
    const/4 v0, 0x4

    new-array v13, v0, [B

    goto :goto_0

    .line 1728
    :cond_1
    const/4 v3, 0x0

    .line 1729
    .local v3, selection:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 1730
    .local v12, strBuf:Ljava/lang/StringBuffer;
    const-string v0, "("

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1731
    const-string v0, "_id IN("

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1732
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v0, p1

    if-ge v8, v0, :cond_2

    .line 1733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v1, p1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1732
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1736
    :cond_2
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1737
    const-string v0, ")) AND deleted<>1"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1739
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1741
    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 1743
    .local v6, buffer:Ljava/nio/ByteBuffer;
    const/4 v0, 0x4

    new-array v13, v0, [B

    .line 1746
    .local v13, syncResultsRaw:[B
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/CalendarEventContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "modifyTime"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "calendar_id"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "title"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "eventTimezone"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "dtstart"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1766
    .local v7, c:Landroid/database/Cursor;
    invoke-virtual {v6}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 1767
    array-length v0, p1

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1768
    const/4 v11, 0x0

    .line 1769
    .local v11, index:I
    if-eqz v7, :cond_5

    .line 1770
    :cond_3
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1771
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1772
    .local v9, id:J
    :goto_3
    array-length v0, p1

    if-gt v11, v0, :cond_3

    .line 1773
    array-length v0, p1

    if-ne v11, v0, :cond_6

    .line 1823
    .end local v9           #id:J
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1825
    :cond_5
    :goto_4
    array-length v0, p1

    if-ge v11, v0, :cond_b

    .line 1827
    const-wide/16 v0, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1829
    const-wide/16 v0, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1831
    const-wide/16 v0, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1833
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1835
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1837
    const-wide/16 v0, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1825
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1777
    .restart local v9       #id:J
    :cond_6
    const-wide/16 v0, 0x0

    aget-wide v4, p1, v11

    cmp-long v0, v0, v4

    if-ltz v0, :cond_8

    .line 1779
    const-wide/16 v0, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1781
    const-wide/16 v0, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1783
    const-wide/16 v0, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1785
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1787
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1789
    const-wide/16 v0, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1772
    :cond_7
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1791
    :cond_8
    aget-wide v0, p1, v11

    cmp-long v0, v9, v0

    if-nez v0, :cond_9

    .line 1793
    invoke-virtual {v6, v9, v10}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1795
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1797
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1799
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1801
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1803
    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 1804
    :cond_9
    aget-wide v0, p1, v11

    cmp-long v0, v9, v0

    if-lez v0, :cond_a

    .line 1806
    const-wide/16 v0, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1808
    const-wide/16 v0, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1810
    const-wide/16 v0, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 1812
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1814
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 1816
    const-wide/16 v0, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 1818
    :cond_a
    aget-wide v0, p1, v11

    cmp-long v0, v9, v0

    if-gez v0, :cond_7

    goto/16 :goto_2

    .line 1839
    .end local v9           #id:J
    :cond_b
    invoke-virtual {v6}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 1840
    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    move-result v0

    new-array v13, v0, [B

    .line 1841
    invoke-virtual {v6, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_0
.end method

.method public insertAllEvents(Ljava/util/List;)J
    .locals 24
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 1372
    .local p1, eventList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;>;"
    if-nez p1, :cond_0

    .line 1373
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object p1, v20, v21

    const-string v21, "eventList is null."

    invoke-static/range {v20 .. v21}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1374
    const-wide/16 v20, -0x1

    .line 1604
    :goto_0
    return-wide v20

    .line 1376
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    .line 1379
    .local v9, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->getMaxEventId()J

    move-result-wide v20

    const-wide/16 v22, 0x1

    add-long v7, v20, v22

    .line 1380
    .local v7, beginId:J
    new-instance v10, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy$4;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy$4;-><init>(Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;)V

    .line 1402
    .local v10, eventInserter:Lcom/mediatek/android/content/DefaultBulkInsertHelper;
    new-instance v4, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy$5;-><init>(Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;)V

    .line 1424
    .local v4, attendeeInserter:Lcom/mediatek/android/content/DefaultBulkInsertHelper;
    new-instance v15, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy$6;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy$6;-><init>(Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;)V

    .line 1446
    .local v15, reminderInserter:Lcom/mediatek/android/content/DefaultBulkInsertHelper;
    const/16 v18, 0x0

    .line 1448
    .local v18, shouldExit:Z
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v9, :cond_e

    .line 1449
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "----->count is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1450
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;

    .line 1451
    .local v13, newEvent:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    new-instance v19, Lcom/mediatek/android/content/MeasuredContentValues;

    const/16 v20, 0x14

    invoke-direct/range {v19 .. v20}, Lcom/mediatek/android/content/MeasuredContentValues;-><init>(I)V

    .line 1452
    .local v19, values:Lcom/mediatek/android/content/MeasuredContentValues;
    const-string v20, "_id"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1453
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "newEvent.getId() "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1455
    const-string v20, "calendar_id"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getCalendarId()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1457
    const-string v20, "title"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getTitle()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    const-string v20, "dtstart"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getTimeFrom()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1460
    const-string v21, "allDay"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->isAllDay()Z

    move-result v20

    if-eqz v20, :cond_2

    const/16 v20, 0x1

    :goto_2
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1462
    const-string v20, "eventLocation"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getEventLocation()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    const-string v20, "description"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getDescription()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    const-string v20, "organizer"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getCalendarOwner()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    const-string v20, "rrule"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getRepetition()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    const-string v20, "modifyTime"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getModifyTime()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1471
    const-string v20, "createTime"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getCreateTime()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1474
    const-string v20, "duration"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getDuration()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getDuration()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_3

    .line 1478
    const-string v21, "dtend"

    const/16 v20, 0x0

    check-cast v20, Ljava/lang/Long;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1489
    :goto_3
    const-string v20, "guestsCanModify"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1494
    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getReminders()Ljava/util/List;

    move-result-object v16

    .line 1495
    .local v16, reminderList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/calendar/Reminder;>;"
    if-eqz v16, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_6

    .line 1496
    const-string v20, "hasAlarm"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1498
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mediatek/apst/util/entity/calendar/Reminder;

    .line 1499
    .local v14, reminder:Lcom/mediatek/apst/util/entity/calendar/Reminder;
    new-instance v17, Lcom/mediatek/android/content/MeasuredContentValues;

    const/16 v20, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mediatek/android/content/MeasuredContentValues;-><init>(I)V

    .line 1503
    .local v17, reminderValues:Lcom/mediatek/android/content/MeasuredContentValues;
    const-string v20, "event_id"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1505
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "----->Reminder.COLUMN_EVENT_ID is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1508
    const-string v20, "method"

    invoke-virtual {v14}, Lcom/mediatek/apst/util/entity/calendar/Reminder;->getMethod()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1510
    const-string v20, "minutes"

    invoke-virtual {v14}, Lcom/mediatek/apst/util/entity/calendar/Reminder;->getMinutes()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1512
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->append(Lcom/mediatek/android/content/MeasuredContentValues;)Z

    move-result v20

    if-nez v20, :cond_5

    const/16 v18, 0x1

    .line 1513
    :goto_4
    if-eqz v18, :cond_1

    .line 1514
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error in bulk inserting reminders, statusCode: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v15}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1518
    const-wide/16 v20, 0x0

    goto/16 :goto_0

    .line 1460
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #reminder:Lcom/mediatek/apst/util/entity/calendar/Reminder;
    .end local v16           #reminderList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/calendar/Reminder;>;"
    .end local v17           #reminderValues:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_2
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 1480
    :cond_3
    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getTimeTo()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    if-nez v20, :cond_4

    .line 1481
    const-string v20, "dtend"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 1483
    :cond_4
    const-string v20, "dtend"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getTimeTo()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_3

    .line 1512
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v14       #reminder:Lcom/mediatek/apst/util/entity/calendar/Reminder;
    .restart local v16       #reminderList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/calendar/Reminder;>;"
    .restart local v17       #reminderValues:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_5
    const/16 v18, 0x0

    goto :goto_4

    .line 1522
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v14           #reminder:Lcom/mediatek/apst/util/entity/calendar/Reminder;
    .end local v17           #reminderValues:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_6
    const-string v20, "hasAlarm"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1526
    :cond_7
    const-string v20, "hasExtendedProperties"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1528
    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getAttendees()Ljava/util/List;

    move-result-object v5

    .line 1529
    .local v5, attendeeList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/calendar/Attendee;>;"
    if-eqz v5, :cond_a

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_a

    .line 1530
    const-string v20, "hasAttendeeData"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1532
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/apst/util/entity/calendar/Attendee;

    .line 1533
    .local v3, attendee:Lcom/mediatek/apst/util/entity/calendar/Attendee;
    new-instance v6, Lcom/mediatek/android/content/MeasuredContentValues;

    const/16 v20, 0x6

    move/from16 v0, v20

    invoke-direct {v6, v0}, Lcom/mediatek/android/content/MeasuredContentValues;-><init>(I)V

    .line 1537
    .local v6, attendeeValues:Lcom/mediatek/android/content/MeasuredContentValues;
    const-string v20, "event_id"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1539
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "event_id = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1542
    const-string v20, "attendeeName"

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->getAttendeeName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    const-string v20, "attendeeEmail"

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    const-string v20, "attendeeStatus"

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->getAttendeeStatus()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1548
    const-string v20, "attendeeRelationship"

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->getAttendeeRelationShip()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1551
    const-string v20, "attendeeType"

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->getAttendeeType()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1553
    invoke-virtual {v4, v6}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->append(Lcom/mediatek/android/content/MeasuredContentValues;)Z

    move-result v20

    if-nez v20, :cond_9

    const/16 v18, 0x1

    .line 1554
    :goto_5
    if-eqz v18, :cond_8

    .line 1555
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error in bulk inserting atendees, statusCode: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1559
    const-wide/16 v20, 0x0

    goto/16 :goto_0

    .line 1553
    :cond_9
    const/16 v18, 0x0

    goto :goto_5

    .line 1563
    .end local v3           #attendee:Lcom/mediatek/apst/util/entity/calendar/Attendee;
    .end local v6           #attendeeValues:Lcom/mediatek/android/content/MeasuredContentValues;
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_a
    const-string v20, "hasAttendeeData"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1566
    :cond_b
    const-string v20, "eventTimezone"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getTimeZone()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    const-string v20, "availability"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getAvailability()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1570
    const-string v20, "accessLevel"

    invoke-virtual {v13}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getAccessLevel()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1573
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->append(Lcom/mediatek/android/content/MeasuredContentValues;)Z

    move-result v20

    if-nez v20, :cond_c

    const/16 v18, 0x1

    .line 1574
    :goto_6
    if-eqz v18, :cond_d

    .line 1575
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error in bulk inserting events, statusCode: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1578
    const-wide/16 v20, 0x0

    goto/16 :goto_0

    .line 1573
    :cond_c
    const/16 v18, 0x0

    goto :goto_6

    .line 1448
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 1582
    .end local v5           #attendeeList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/calendar/Attendee;>;"
    .end local v13           #newEvent:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    .end local v16           #reminderList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/calendar/Reminder;>;"
    .end local v19           #values:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_e
    invoke-virtual {v10}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v20

    if-nez v20, :cond_f

    const/16 v18, 0x1

    .line 1583
    :goto_7
    if-eqz v18, :cond_10

    .line 1584
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error in bulk inserting events, statusCode: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1586
    const-wide/16 v20, 0x0

    goto/16 :goto_0

    .line 1582
    :cond_f
    const/16 v18, 0x0

    goto :goto_7

    .line 1589
    :cond_10
    invoke-virtual {v15}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v20

    if-nez v20, :cond_11

    const/16 v18, 0x1

    .line 1590
    :goto_8
    if-eqz v18, :cond_12

    .line 1591
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error in bulk inserting reminders, statusCode: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v15}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1594
    const-wide/16 v20, 0x0

    goto/16 :goto_0

    .line 1589
    :cond_11
    const/16 v18, 0x0

    goto :goto_8

    .line 1597
    :cond_12
    invoke-virtual {v4}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v20

    if-nez v20, :cond_13

    const/16 v18, 0x1

    .line 1598
    :goto_9
    if-eqz v18, :cond_14

    .line 1599
    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Error in bulk inserting attendees, statusCode: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v4}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1602
    const-wide/16 v20, 0x0

    goto/16 :goto_0

    .line 1597
    :cond_13
    const/16 v18, 0x0

    goto :goto_9

    .line 1604
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->getMaxEventId()J

    move-result-wide v20

    sub-long v20, v20, v7

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    goto/16 :goto_0
.end method

.method public insertAttendee(Lcom/mediatek/apst/util/entity/calendar/Attendee;J)J
    .locals 10
    .parameter "attendee"
    .parameter "eventId"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 217
    if-nez p1, :cond_0

    .line 218
    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    const-string v6, "Attendee passed in is null."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    const-wide/16 v1, -0x1

    .line 250
    :goto_0
    return-wide v1

    .line 222
    :cond_0
    const-wide/16 v1, -0x1

    .line 223
    .local v1, insertedId:J
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 224
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "event_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 225
    const-string v5, "attendeeName"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->getAttendeeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v5, "attendeeEmail"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v5, "attendeeStatus"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->getAttendeeStatus()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    const-string v5, "attendeeRelationship"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->getAttendeeRelationShip()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    const-string v5, "attendeeType"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->getAttendeeType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v5

    sget-object v6, Lcom/mediatek/apst/target/data/provider/calendar/AttendeeContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 239
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 240
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    .line 249
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    :goto_1
    invoke-virtual {p1, v1, v2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Ljava/lang/NumberFormatException;
    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v5, v9, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 244
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 245
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v5, v9, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public insertEvent(Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;)J
    .locals 14
    .parameter "event"

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 118
    if-nez p1, :cond_1

    .line 119
    new-array v8, v10, [Ljava/lang/Object;

    aput-object p1, v8, v11

    const-string v9, "Event passed in is null."

    invoke-static {v8, v9}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    const-wide/16 v3, -0x1

    .line 206
    :cond_0
    return-wide v3

    .line 122
    :cond_1
    const-wide/16 v3, -0x1

    .line 123
    .local v3, insertedId:J
    new-instance v7, Landroid/content/ContentValues;

    const/16 v8, 0x13

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 124
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "calendar_id"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getCalendarId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 125
    const-string v8, "title"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v8, "dtstart"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getTimeFrom()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 127
    const-string v12, "allDay"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->isAllDay()Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v10

    :goto_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    const-string v8, "eventLocation"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getEventLocation()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v8, "description"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v8, "organizer"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getCalendarOwner()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v8, "rrule"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getRepetition()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v8, "modifyTime"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getModifyTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    const-string v8, "createTime"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getCreateTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 139
    const-string v8, "duration"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getDuration()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getDuration()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 142
    const-string v12, "dtend"

    move-object v8, v9

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v7, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 151
    :goto_1
    const-string v8, "guestsCanModify"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getReminders()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getReminders()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 157
    const-string v8, "hasAlarm"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    :goto_2
    const-string v8, "hasExtendedProperties"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getAttendees()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getAttendees()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 167
    const-string v8, "hasAttendeeData"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    :goto_3
    const-string v8, "eventTimezone"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getTimeZone()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v8, "availability"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getAvailability()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    const-string v8, "accessLevel"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getAccessLevel()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v8

    sget-object v12, Lcom/mediatek/apst/target/data/provider/calendar/CalendarEventContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8, v12, v7}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 181
    .local v6, uri:Landroid/net/Uri;
    if-eqz v6, :cond_2

    .line 182
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v3

    .line 197
    .end local v6           #uri:Landroid/net/Uri;
    :cond_2
    :goto_4
    invoke-virtual {p1, v3, v4}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    .line 199
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getReminders()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/apst/util/entity/calendar/Reminder;

    .line 200
    .local v5, reminder:Lcom/mediatek/apst/util/entity/calendar/Reminder;
    invoke-virtual {p0, v5, v3, v4}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->insertReminder(Lcom/mediatek/apst/util/entity/calendar/Reminder;J)J

    goto :goto_5

    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #reminder:Lcom/mediatek/apst/util/entity/calendar/Reminder;
    :cond_3
    move v8, v11

    .line 127
    goto/16 :goto_0

    .line 144
    :cond_4
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getTimeTo()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    if-nez v8, :cond_5

    .line 145
    const-string v8, "dtend"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 147
    :cond_5
    const-string v8, "dtend"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getTimeTo()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1

    .line 160
    :cond_6
    const-string v8, "hasAlarm"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 170
    :cond_7
    const-string v8, "hasAttendeeData"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, e:Ljava/lang/NumberFormatException;
    new-array v8, v10, [Ljava/lang/Object;

    aput-object p1, v8, v11

    invoke-static {v8, v9, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 192
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 193
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-array v8, v10, [Ljava/lang/Object;

    aput-object p1, v8, v11

    invoke-static {v8, v9, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 203
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_8
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getAttendees()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/calendar/Attendee;

    .line 204
    .local v0, attendee:Lcom/mediatek/apst/util/entity/calendar/Attendee;
    invoke-virtual {p0, v0, v3, v4}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->insertAttendee(Lcom/mediatek/apst/util/entity/calendar/Attendee;J)J

    goto :goto_6
.end method

.method public insertReminder(Lcom/mediatek/apst/util/entity/calendar/Reminder;J)J
    .locals 11
    .parameter "reminder"
    .parameter "eventId"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 261
    if-nez p1, :cond_0

    .line 262
    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    const-string v6, "Reminder passed in is null."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    const-wide/16 v1, -0x1

    .line 283
    :goto_0
    return-wide v1

    .line 266
    :cond_0
    const-wide/16 v1, -0x1

    .line 267
    .local v1, insertedId:J
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 268
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "event_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 269
    const-string v5, "method"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/Reminder;->getMethod()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 270
    const-string v5, "minutes"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/calendar/Reminder;->getMinutes()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 272
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v5

    sget-object v6, Lcom/mediatek/apst/target/data/provider/calendar/ReminderContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 274
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 275
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v1

    .line 282
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    :goto_1
    invoke-virtual {p1, v1, v2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Ljava/lang/NumberFormatException;
    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v5, v10, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 279
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 280
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-array v5, v9, [Ljava/lang/Object;

    aput-object p1, v5, v8

    invoke-static {v5, v10, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public isSyncAble()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1633
    const/4 v7, -0x1

    .line 1636
    .local v7, syncEvents:I
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/CalendarContent;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "sync_events"

    aput-object v3, v2, v9

    const-string v3, "account_type = \'local\' or account_type = \'LOCAL\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1642
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1643
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1644
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1646
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1648
    :cond_1
    if-ne v7, v8, :cond_2

    move v0, v8

    :goto_0
    return v0

    :cond_2
    move v0, v9

    goto :goto_0
.end method

.method public isSyncNeedReinit()Z
    .locals 5

    .prologue
    .line 957
    const/4 v1, 0x1

    .line 959
    .local v1, syncNeedReinit:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/apst/target/util/SharedPrefs;->open(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "calendar_sync_need_reinit"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 964
    :goto_0
    return v1

    .line 961
    :catch_0
    move-exception v0

    .line 962
    .local v0, e:Ljava/lang/ClassCastException;
    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public slowSyncAddEvents([B)[B
    .locals 26
    .parameter "raw"

    .prologue
    .line 1121
    if-nez p1, :cond_0

    .line 1122
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p1, v22, v23

    const-string v23, "Raw data is null."

    invoke-static/range {v22 .. v23}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1123
    const/16 v22, 0x0

    .line 1363
    :goto_0
    return-object v22

    .line 1126
    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 1132
    .local v9, buffer:Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 1139
    .local v10, count:I
    if-gez v10, :cond_1

    .line 1140
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p1, v22, v23

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Invalid events count "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1142
    const/16 v22, 0x0

    goto :goto_0

    .line 1133
    .end local v10           #count:I
    :catch_0
    move-exception v11

    .line 1134
    .local v11, e:Ljava/nio/BufferUnderflowException;
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p1, v22, v23

    const-string v23, "Can not get the events count in raw data "

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v11}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1136
    const/16 v22, 0x0

    goto :goto_0

    .line 1145
    .end local v11           #e:Ljava/nio/BufferUnderflowException;
    .restart local v10       #count:I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->getMaxEventId()J

    move-result-wide v22

    const-wide/16 v24, 0x1

    add-long v7, v22, v24

    .line 1146
    .local v7, beginId:J
    const-wide/16 v22, 0x1

    cmp-long v22, v7, v22

    if-nez v22, :cond_2

    .line 1147
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->getMaxEventIdFromInsert()J

    move-result-wide v22

    const-wide/16 v24, 0x1

    add-long v7, v22, v24

    .line 1149
    :cond_2
    new-instance v12, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v12, v0, v1}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy$1;-><init>(Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;[B)V

    .line 1171
    .local v12, eventInserter:Lcom/mediatek/android/content/DefaultBulkInsertHelper;
    new-instance v4, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v1}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy$2;-><init>(Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;[B)V

    .line 1193
    .local v4, attendeeInserter:Lcom/mediatek/android/content/DefaultBulkInsertHelper;
    new-instance v17, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy$3;-><init>(Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;[B)V

    .line 1215
    .local v17, reminderInserter:Lcom/mediatek/android/content/DefaultBulkInsertHelper;
    const/16 v20, 0x0

    .line 1217
    .local v20, shouldExit:Z
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    if-ge v13, v10, :cond_10

    .line 1219
    new-instance v15, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;

    invoke-direct {v15}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;-><init>()V

    .line 1220
    .local v15, newEvent:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    const/16 v22, 0x51a

    move/from16 v0, v22

    invoke-virtual {v15, v9, v0}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 1221
    new-instance v21, Lcom/mediatek/android/content/MeasuredContentValues;

    const/16 v22, 0x13

    invoke-direct/range {v21 .. v22}, Lcom/mediatek/android/content/MeasuredContentValues;-><init>(I)V

    .line 1222
    .local v21, values:Lcom/mediatek/android/content/MeasuredContentValues;
    const-string v22, "calendar_id"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getCalendarId()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1224
    const-string v22, "title"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getTitle()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    const-string v22, "dtstart"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getTimeFrom()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1227
    const-string v23, "allDay"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->isAllDay()Z

    move-result v22

    if-eqz v22, :cond_4

    const/16 v22, 0x1

    :goto_2
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1229
    const-string v22, "eventLocation"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getEventLocation()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    const-string v22, "description"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getDescription()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    const-string v22, "organizer"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getCalendarOwner()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    const-string v22, "rrule"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getRepetition()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const-string v22, "modifyTime"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getModifyTime()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1238
    const-string v22, "createTime"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getCreateTime()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1241
    const-string v22, "duration"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getDuration()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getDuration()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_5

    .line 1244
    const-string v23, "dtend"

    const/16 v22, 0x0

    check-cast v22, Ljava/lang/Long;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1255
    :goto_3
    const-string v22, "guestsCanModify"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1260
    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getReminders()Ljava/util/List;

    move-result-object v18

    .line 1261
    .local v18, reminderList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/calendar/Reminder;>;"
    if-eqz v18, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_8

    .line 1262
    const-string v22, "hasAlarm"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1264
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/mediatek/apst/util/entity/calendar/Reminder;

    .line 1265
    .local v16, reminder:Lcom/mediatek/apst/util/entity/calendar/Reminder;
    new-instance v19, Lcom/mediatek/android/content/MeasuredContentValues;

    const/16 v22, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/mediatek/android/content/MeasuredContentValues;-><init>(I)V

    .line 1267
    .local v19, reminderValues:Lcom/mediatek/android/content/MeasuredContentValues;
    const-string v22, "event_id"

    int-to-long v0, v13

    move-wide/from16 v23, v0

    add-long v23, v23, v7

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1269
    const-string v22, "method"

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/entity/calendar/Reminder;->getMethod()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1271
    const-string v22, "minutes"

    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/entity/calendar/Reminder;->getMinutes()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1273
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->append(Lcom/mediatek/android/content/MeasuredContentValues;)Z

    move-result v22

    if-nez v22, :cond_7

    const/16 v20, 0x1

    .line 1274
    :goto_4
    if-eqz v20, :cond_3

    .line 1275
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p1, v22, v23

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error in bulk inserting reminders, statusCode: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1279
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1227
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #reminder:Lcom/mediatek/apst/util/entity/calendar/Reminder;
    .end local v18           #reminderList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/calendar/Reminder;>;"
    .end local v19           #reminderValues:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_4
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 1246
    :cond_5
    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getTimeTo()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    if-nez v22, :cond_6

    .line 1247
    const-string v22, "dtend"

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 1249
    :cond_6
    const-string v22, "dtend"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getTimeTo()J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_3

    .line 1273
    .restart local v14       #i$:Ljava/util/Iterator;
    .restart local v16       #reminder:Lcom/mediatek/apst/util/entity/calendar/Reminder;
    .restart local v18       #reminderList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/calendar/Reminder;>;"
    .restart local v19       #reminderValues:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_7
    const/16 v20, 0x0

    goto :goto_4

    .line 1283
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v16           #reminder:Lcom/mediatek/apst/util/entity/calendar/Reminder;
    .end local v19           #reminderValues:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_8
    const-string v22, "hasAlarm"

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1287
    :cond_9
    const-string v22, "hasExtendedProperties"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1289
    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getAttendees()Ljava/util/List;

    move-result-object v5

    .line 1290
    .local v5, attendeeList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/calendar/Attendee;>;"
    if-eqz v5, :cond_c

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v22

    if-lez v22, :cond_c

    .line 1291
    const-string v22, "hasAttendeeData"

    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1293
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/apst/util/entity/calendar/Attendee;

    .line 1294
    .local v3, attendee:Lcom/mediatek/apst/util/entity/calendar/Attendee;
    new-instance v6, Lcom/mediatek/android/content/MeasuredContentValues;

    const/16 v22, 0x6

    move/from16 v0, v22

    invoke-direct {v6, v0}, Lcom/mediatek/android/content/MeasuredContentValues;-><init>(I)V

    .line 1296
    .local v6, attendeeValues:Lcom/mediatek/android/content/MeasuredContentValues;
    const-string v22, "event_id"

    int-to-long v0, v13

    move-wide/from16 v23, v0

    add-long v23, v23, v7

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1298
    const-string v22, "attendeeName"

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->getAttendeeName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    const-string v22, "attendeeEmail"

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    const-string v22, "attendeeStatus"

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->getAttendeeStatus()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1304
    const-string v22, "attendeeRelationship"

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->getAttendeeRelationShip()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1307
    const-string v22, "attendeeType"

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->getAttendeeType()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v6, v0, v1}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1309
    invoke-virtual {v4, v6}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->append(Lcom/mediatek/android/content/MeasuredContentValues;)Z

    move-result v22

    if-nez v22, :cond_b

    const/16 v20, 0x1

    .line 1310
    :goto_5
    if-eqz v20, :cond_a

    .line 1311
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p1, v22, v23

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error in bulk inserting atendees, statusCode: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v4}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1315
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1309
    :cond_b
    const/16 v20, 0x0

    goto :goto_5

    .line 1319
    .end local v3           #attendee:Lcom/mediatek/apst/util/entity/calendar/Attendee;
    .end local v6           #attendeeValues:Lcom/mediatek/android/content/MeasuredContentValues;
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_c
    const-string v22, "hasAttendeeData"

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1322
    :cond_d
    const-string v22, "eventTimezone"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getTimeZone()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    const-string v22, "availability"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getAvailability()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1326
    const-string v22, "accessLevel"

    invoke-virtual {v15}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getAccessLevel()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1329
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->append(Lcom/mediatek/android/content/MeasuredContentValues;)Z

    move-result v22

    if-nez v22, :cond_e

    const/16 v20, 0x1

    .line 1330
    :goto_6
    if-eqz v20, :cond_f

    .line 1331
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p1, v22, v23

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error in bulk inserting events, statusCode: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v12}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1334
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1329
    :cond_e
    const/16 v20, 0x0

    goto :goto_6

    .line 1217
    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 1338
    .end local v5           #attendeeList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/calendar/Attendee;>;"
    .end local v15           #newEvent:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    .end local v18           #reminderList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/calendar/Reminder;>;"
    .end local v21           #values:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_10
    invoke-virtual {v12}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v22

    if-nez v22, :cond_11

    const/16 v20, 0x1

    .line 1339
    :goto_7
    if-eqz v20, :cond_12

    .line 1340
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p1, v22, v23

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error in bulk inserting events, statusCode: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v12}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1343
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1338
    :cond_11
    const/16 v20, 0x0

    goto :goto_7

    .line 1346
    :cond_12
    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v22

    if-nez v22, :cond_13

    const/16 v20, 0x1

    .line 1347
    :goto_8
    if-eqz v20, :cond_14

    .line 1348
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p1, v22, v23

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error in bulk inserting reminders, statusCode: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1351
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1346
    :cond_13
    const/16 v20, 0x0

    goto :goto_8

    .line 1354
    :cond_14
    invoke-virtual {v4}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v22

    if-nez v22, :cond_15

    const/16 v20, 0x1

    .line 1355
    :goto_9
    if-eqz v20, :cond_16

    .line 1356
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object p1, v22, v23

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error in bulk inserting attendees, statusCode: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v4}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1359
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1354
    :cond_15
    const/16 v20, 0x0

    goto :goto_9

    .line 1363
    :cond_16
    int-to-long v0, v10

    move-wide/from16 v22, v0

    add-long v22, v22, v7

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v7, v8, v1, v2}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->getSyncFlags(JJ)[B

    move-result-object v22

    goto/16 :goto_0
.end method

.method public slowSyncGetAllAttendees(JLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 8
    .parameter "eventIdTo"
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1083
    if-nez p3, :cond_1

    .line 1084
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    aput-object p3, v0, v3

    aput-object p4, v0, v4

    const-string v1, "Block consumer should not be null."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1088
    :cond_1
    const/4 v6, 0x0

    .line 1091
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/AttendeeContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "event_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "attendeeName"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "attendeeEmail"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "attendeeStatus"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "attendeeRelationship"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "attendeeType"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event_id<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1102
    new-instance v7, Lcom/mediatek/apst/target/data/proxy/calendar/FastAttendeeCursorParser;

    invoke-direct {v7, v6, p3, p4}, Lcom/mediatek/apst/target/data/proxy/calendar/FastAttendeeCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 1104
    .local v7, parser:Lcom/mediatek/apst/target/data/proxy/calendar/FastAttendeeCursorParser;
    invoke-virtual {v7}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1108
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1109
    const/4 v6, 0x0

    goto :goto_0

    .line 1107
    .end local v7           #parser:Lcom/mediatek/apst/target/data/proxy/calendar/FastAttendeeCursorParser;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1108
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1109
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method public slowSyncGetAllEvents(JLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 8
    .parameter "eventIdTo"
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 991
    if-nez p3, :cond_1

    .line 992
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p3, v0, v2

    aput-object p4, v0, v4

    const-string v1, "Block consumer should not be null."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 996
    :cond_1
    const/4 v6, 0x0

    .line 999
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/CalendarEventContent;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "calendar_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "dtstart"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "dtend"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "allDay"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "eventLocation"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "description"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "organizer"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "rrule"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "createTime"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "modifyTime"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "duration"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "eventTimezone"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "availability"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "accessLevel"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1022
    new-instance v7, Lcom/mediatek/apst/target/data/proxy/calendar/FastEventCursorParser;

    invoke-direct {v7, v6, p3, p4}, Lcom/mediatek/apst/target/data/proxy/calendar/FastEventCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 1024
    .local v7, parser:Lcom/mediatek/apst/target/data/proxy/calendar/FastEventCursorParser;
    invoke-virtual {v7}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1027
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1028
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1029
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1027
    .end local v7           #parser:Lcom/mediatek/apst/target/data/proxy/calendar/FastEventCursorParser;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1028
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1029
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method public slowSyncGetAllReminders(JLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 8
    .parameter "eventIdTo"
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1044
    if-nez p3, :cond_1

    .line 1045
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    aput-object p3, v0, v3

    aput-object p4, v0, v4

    const-string v1, "Block consumer should not be null."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1071
    :cond_0
    :goto_0
    return-void

    .line 1049
    :cond_1
    const/4 v6, 0x0

    .line 1052
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/calendar/ReminderContent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "event_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "method"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "minutes"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event_id<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1061
    new-instance v7, Lcom/mediatek/apst/target/data/proxy/calendar/FastReminderCursorParser;

    invoke-direct {v7, v6, p3, p4}, Lcom/mediatek/apst/target/data/proxy/calendar/FastReminderCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 1063
    .local v7, parser:Lcom/mediatek/apst/target/data/proxy/calendar/FastReminderCursorParser;
    invoke-virtual {v7}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1067
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1068
    const/4 v6, 0x0

    goto :goto_0

    .line 1066
    .end local v7           #parser:Lcom/mediatek/apst/target/data/proxy/calendar/FastReminderCursorParser;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1067
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1068
    const/4 v6, 0x0

    :cond_2
    throw v0
.end method

.method public updateAttendee(JLcom/mediatek/apst/util/entity/calendar/Attendee;)I
    .locals 6
    .parameter "id"
    .parameter "attendee"

    .prologue
    const/4 v0, 0x0

    .line 855
    if-nez p3, :cond_0

    .line 856
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const-string v3, "New attendee passed in is null."

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 880
    :goto_0
    return v0

    .line 861
    :cond_0
    const/4 v0, 0x0

    .line 863
    .local v0, updateCount:I
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 864
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "event_id"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->getEventId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 865
    const-string v2, "attendeeName"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->getAttendeeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    const-string v2, "attendeeEmail"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const-string v2, "attendeeStatus"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->getAttendeeStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 871
    const-string v2, "attendeeRelationship"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->getAttendeeRelationShip()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 873
    const-string v2, "attendeeType"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->getAttendeeType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 876
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/apst/target/data/provider/calendar/AttendeeContent;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 880
    goto :goto_0
.end method

.method public updateEvent(JLcom/mediatek/apst/util/entity/calendar/CalendarEvent;)I
    .locals 11
    .parameter "id"
    .parameter "newEvent"

    .prologue
    .line 744
    if-nez p3, :cond_1

    .line 745
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p3, v8, v9

    const-string v9, "New event passed in is null."

    invoke-static {v8, v9}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    const/4 v5, 0x0

    .line 843
    :cond_0
    :goto_0
    return v5

    .line 750
    :cond_1
    const/4 v5, 0x0

    .line 752
    .local v5, updateCount:I
    new-instance v7, Landroid/content/ContentValues;

    const/16 v8, 0x10

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    .line 753
    .local v7, values:Landroid/content/ContentValues;
    const-string v8, "calendar_id"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getCalendarId()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 754
    const-string v8, "title"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v8, "dtstart"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getTimeFrom()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 757
    const-string v9, "allDay"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->isAllDay()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 758
    const-string v8, "eventLocation"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getEventLocation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v8, "description"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v8, "organizer"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getCalendarOwner()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const-string v8, "rrule"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getRepetition()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v8, "modifyTime"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getModifyTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 764
    const-string v8, "createTime"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getCreateTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 766
    const-string v8, "duration"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getDuration()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getDuration()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 769
    const-string v9, "dtend"

    const/4 v8, 0x0

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 778
    :goto_2
    const-string v8, "eventTimezone"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getTimeZone()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    const-string v8, "availability"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getAvailability()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 782
    const-string v8, "accessLevel"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getAccessLevel()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 785
    const-string v8, "guestsCanModify"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 788
    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getCalendarOwner()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p1, p2, v8}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->deleteAttendeesByEventId(JLjava/lang/String;)I

    .line 789
    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getAttendees()Ljava/util/List;

    move-result-object v1

    .line 790
    .local v1, attendeeList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/calendar/Attendee;>;"
    if-eqz v1, :cond_8

    .line 791
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 792
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/apst/util/entity/calendar/Attendee;

    .line 793
    .local v0, attendee:Lcom/mediatek/apst/util/entity/calendar/Attendee;
    invoke-virtual {v0}, Lcom/mediatek/apst/util/entity/calendar/Attendee;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getCalendarOwner()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 795
    invoke-virtual {p0, v0, p1, p2}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->insertAttendee(Lcom/mediatek/apst/util/entity/calendar/Attendee;J)J

    goto :goto_3

    .line 757
    .end local v0           #attendee:Lcom/mediatek/apst/util/entity/calendar/Attendee;
    .end local v1           #attendeeList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/calendar/Attendee;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 771
    :cond_3
    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getTimeTo()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    if-nez v8, :cond_4

    .line 772
    const-string v8, "dtend"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 774
    :cond_4
    const-string v8, "dtend"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getTimeTo()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2

    .line 797
    .restart local v0       #attendee:Lcom/mediatek/apst/util/entity/calendar/Attendee;
    .restart local v1       #attendeeList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/calendar/Attendee;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_5
    const-string v8, "The calender owner will not be inserted, because it is not deleted."

    invoke-static {v8}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    goto :goto_3

    .line 803
    .end local v0           #attendee:Lcom/mediatek/apst/util/entity/calendar/Attendee;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_6
    const-string v8, "attendeeList size is 0."

    invoke-static {v8}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 808
    :cond_7
    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->deleteRemindersByEventId(J)I

    .line 809
    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->getReminders()Ljava/util/List;

    move-result-object v4

    .line 810
    .local v4, reminderList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/calendar/Reminder;>;"
    if-eqz v4, :cond_b

    .line 811
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    .line 812
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/apst/util/entity/calendar/Reminder;

    .line 813
    .local v3, reminder:Lcom/mediatek/apst/util/entity/calendar/Reminder;
    invoke-virtual {p0, v3, p1, p2}, Lcom/mediatek/apst/target/data/proxy/calendar/CalendarProxy;->insertReminder(Lcom/mediatek/apst/util/entity/calendar/Reminder;J)J

    goto :goto_5

    .line 806
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #reminder:Lcom/mediatek/apst/util/entity/calendar/Reminder;
    .end local v4           #reminderList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/calendar/Reminder;>;"
    :cond_8
    const-string v8, "attendeeList is null."

    invoke-static {v8}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    goto :goto_4

    .line 816
    .restart local v4       #reminderList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/calendar/Reminder;>;"
    :cond_9
    const-string v8, "attendeeList size is not 1."

    invoke-static {v8}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 829
    :cond_a
    :goto_6
    sget-object v8, Lcom/mediatek/apst/target/data/provider/calendar/CalendarEventContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 831
    .local v6, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v7, v9, v10}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 834
    if-gez v5, :cond_c

    .line 835
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to update event, eventId is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", updateCount is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 819
    .end local v6           #uri:Landroid/net/Uri;
    :cond_b
    const-string v8, "reminderList is null"

    invoke-static {v8}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    goto :goto_6

    .line 837
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_c
    const/4 v8, 0x1

    if-le v5, v8, :cond_0

    .line 839
    const-string v8, "Updated several event in one time, please check if it is normal."

    invoke-static {v8}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateReminder(JLcom/mediatek/apst/util/entity/calendar/Reminder;)I
    .locals 6
    .parameter "id"
    .parameter "reminder"

    .prologue
    const/4 v0, 0x0

    .line 892
    if-nez p3, :cond_0

    .line 893
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const-string v3, "New reminder passed in is null."

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 909
    :goto_0
    return v0

    .line 898
    :cond_0
    const/4 v0, 0x0

    .line 900
    .local v0, updateCount:I
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 901
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "event_id"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/Reminder;->getEventId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 902
    const-string v2, "method"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/Reminder;->getMethod()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 903
    const-string v2, "minutes"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/calendar/Reminder;->getMinutes()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 905
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v2

    sget-object v3, Lcom/mediatek/apst/target/data/provider/calendar/ReminderContent;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 909
    goto :goto_0
.end method

.method public updateSyncDate(J)Z
    .locals 3
    .parameter "lastSyncDate"

    .prologue
    .line 2242
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/apst/target/util/SharedPrefs;->open(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "calendar_last_sync_date"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "calendar_sync_need_reinit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2245
    const/4 v0, 0x1

    return v0
.end method
