.class public Lcom/mediatek/apst/target/data/provider/calendar/CalendarEventContent;
.super Ljava/lang/Object;
.source "CalendarEventContent.java"


# static fields
.field public static final ACCESS_CONFIDENTIAL:I = 0x1

.field public static final ACCESS_DEFAULT:I = 0x0

.field public static final ACCESS_LEVEL:Ljava/lang/String; = "accessLevel"

.field public static final ACCESS_PRIVATE:I = 0x2

.field public static final ACCESS_PUBLIC:I = 0x3

.field public static final ALL_DAY:Ljava/lang/String; = "allDay"

.field public static final AVAILABILITY:Ljava/lang/String; = "availability"

.field public static final AVAILABILITY_BUSY:I = 0x0

.field public static final AVAILABILITY_FREE:I = 0x1

.field public static final CALENDAR_ID:Ljava/lang/String; = "calendar_id"

.field public static final CAN_INVITE_OTHERS:Ljava/lang/String; = "canInviteOthers"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREATE_TIME:Ljava/lang/String; = "createTime"

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final DTEND:Ljava/lang/String; = "dtend"

.field public static final DTSTART:Ljava/lang/String; = "dtstart"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final EVENT_COLOR:Ljava/lang/String; = "eventColor"

.field public static final EVENT_END_TIMEZONE:Ljava/lang/String; = "eventEndTimezone"

.field public static final EVENT_LOCATION:Ljava/lang/String; = "eventLocation"

.field public static final EVENT_TIMEZONE:Ljava/lang/String; = "eventTimezone"

.field public static final EXDATE:Ljava/lang/String; = "exdate"

.field public static final EXRULE:Ljava/lang/String; = "exrule"

.field public static final GUESTS_CAN_INVITE_OTHERS:Ljava/lang/String; = "guestsCanInviteOthers"

.field public static final GUESTS_CAN_MODIFY:Ljava/lang/String; = "guestsCanModify"

.field public static final GUESTS_CAN_SEE_GUESTS:Ljava/lang/String; = "guestsCanSeeGuests"

.field public static final HAS_ALARM:Ljava/lang/String; = "hasAlarm"

.field public static final HAS_ATTENDEE_DATA:Ljava/lang/String; = "hasAttendeeData"

.field public static final HAS_EXTENDED_PROPERTIES:Ljava/lang/String; = "hasExtendedProperties"

.field public static final LAST_DATE:Ljava/lang/String; = "lastDate"

.field public static final LAST_SYNCED:Ljava/lang/String; = "lastSynced"

.field public static final MODIFY_TIME:Ljava/lang/String; = "modifyTime"

.field public static final ORGANIZER:Ljava/lang/String; = "organizer"

.field public static final ORIGINAL_ALL_DAY:Ljava/lang/String; = "originalAllDay"

.field public static final ORIGINAL_ID:Ljava/lang/String; = "original_id"

.field public static final ORIGINAL_INSTANCE_TIME:Ljava/lang/String; = "originalInstanceTime"

.field public static final ORIGINAL_SYNC_ID:Ljava/lang/String; = "original_sync_id"

.field public static final RDATE:Ljava/lang/String; = "rdate"

.field public static final RRULE:Ljava/lang/String; = "rrule"

.field public static final SELF_ATTENDEE_STATUS:Ljava/lang/String; = "selfAttendeeStatus"

.field public static final STATUS:Ljava/lang/String; = "eventStatus"

.field public static final STATUS_CANCELED:I = 0x2

.field public static final STATUS_CONFIRMED:I = 0x1

.field public static final STATUS_TENTATIVE:I = 0x0

.field public static final SYNC_DATA1:Ljava/lang/String; = "sync_data1"

.field public static final SYNC_DATA10:Ljava/lang/String; = "sync_data10"

.field public static final SYNC_DATA2:Ljava/lang/String; = "sync_data2"

.field public static final SYNC_DATA3:Ljava/lang/String; = "sync_data3"

.field public static final SYNC_DATA4:Ljava/lang/String; = "sync_data4"

.field public static final SYNC_DATA5:Ljava/lang/String; = "sync_data5"

.field public static final SYNC_DATA6:Ljava/lang/String; = "sync_data6"

.field public static final SYNC_DATA7:Ljava/lang/String; = "sync_data7"

.field public static final SYNC_DATA8:Ljava/lang/String; = "sync_data8"

.field public static final SYNC_DATA9:Ljava/lang/String; = "sync_data9"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "content://com.android.calendar/events"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apst/target/data/provider/calendar/CalendarEventContent;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cursorToEvent(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    .locals 10
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v9, -0x1

    .line 492
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    if-eq v7, v9, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-ne v7, v8, :cond_2

    :cond_0
    move-object v2, v4

    .line 599
    :cond_1
    :goto_0
    return-object v2

    .line 496
    :cond_2
    new-instance v2, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;

    invoke-direct {v2}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;-><init>()V

    .line 500
    .local v2, event:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    :try_start_0
    const-string v7, "_id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 501
    .local v0, colId:I
    if-eq v9, v0, :cond_3

    .line 502
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    .line 505
    :cond_3
    const-string v7, "calendar_id"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 506
    if-eq v9, v0, :cond_4

    .line 507
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->setCalendarId(J)V

    .line 510
    :cond_4
    const-string v7, "title"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 511
    if-eq v9, v0, :cond_5

    .line 512
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->setTitle(Ljava/lang/String;)V

    .line 515
    :cond_5
    const-string v7, "dtstart"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 516
    if-eq v9, v0, :cond_6

    .line 517
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->setTimeFrom(J)V

    .line 520
    :cond_6
    const-string v7, "dtend"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 521
    if-eq v9, v0, :cond_7

    .line 522
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->setTimeTo(J)V

    .line 525
    :cond_7
    const-string v7, "allDay"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 526
    if-eq v9, v0, :cond_8

    .line 527
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v5, :cond_12

    move v3, v5

    .line 529
    .local v3, isAllDay:Z
    :goto_1
    invoke-virtual {v2, v3}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->setAllDay(Z)V

    .line 532
    .end local v3           #isAllDay:Z
    :cond_8
    const-string v7, "eventLocation"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 533
    if-eq v9, v0, :cond_9

    .line 534
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->setEventLocation(Ljava/lang/String;)V

    .line 537
    :cond_9
    const-string v7, "description"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 538
    if-eq v9, v0, :cond_a

    .line 539
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->setDescription(Ljava/lang/String;)V

    .line 542
    :cond_a
    const-string v7, "organizer"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 543
    if-eq v9, v0, :cond_b

    .line 544
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->setCalendarOwner(Ljava/lang/String;)V

    .line 549
    :cond_b
    const-string v7, "rrule"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 550
    if-eq v9, v0, :cond_c

    .line 551
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->setRepetition(Ljava/lang/String;)V

    .line 554
    :cond_c
    const-string v7, "modifyTime"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 555
    if-eq v9, v0, :cond_d

    .line 556
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->setModifyTime(J)V

    .line 559
    :cond_d
    const-string v7, "createTime"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 560
    if-eq v9, v0, :cond_e

    .line 561
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->setCreateTime(J)V

    .line 566
    :cond_e
    const-string v7, "duration"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 567
    if-eq v9, v0, :cond_f

    .line 568
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->setDuration(Ljava/lang/String;)V

    .line 571
    :cond_f
    const-string v7, "eventTimezone"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 572
    if-eq v9, v0, :cond_10

    .line 573
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->setTimeZone(Ljava/lang/String;)V

    .line 586
    :cond_10
    const-string v7, "availability"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 587
    if-eq v9, v0, :cond_11

    .line 588
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->setAvailability(I)V

    .line 591
    :cond_11
    const-string v7, "accessLevel"

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 592
    if-eq v9, v0, :cond_1

    .line 593
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;->setAccessLevel(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 596
    .end local v0           #colId:I
    :catch_0
    move-exception v1

    .line 597
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v6

    invoke-static {v5, v4, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #colId:I
    :cond_12
    move v3, v6

    .line 527
    goto/16 :goto_1
.end method

.method public static cursorToRaw(Landroid/database/Cursor;Ljava/nio/ByteBuffer;)I
    .locals 10
    .parameter "cursor"
    .parameter "buffer"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v8, -0x1

    .line 610
    if-nez p0, :cond_0

    .line 611
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    aput-object p1, v5, v4

    const-string v4, "Cursor is null."

    invoke-static {v5, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 772
    :goto_0
    return v3

    .line 613
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    if-eq v6, v8, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 615
    :cond_1
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    aput-object p1, v5, v4

    const-string v4, "Cursor has moved to the end."

    invoke-static {v5, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 618
    :cond_2
    if-nez p1, :cond_3

    .line 619
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    aput-object p1, v5, v4

    const-string v4, "Buffer is null."

    invoke-static {v5, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 624
    :cond_3
    invoke-virtual {p1}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 628
    :try_start_0
    const-string v6, "_id"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 629
    .local v0, colId:I
    if-eq v8, v0, :cond_4

    .line 630
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 635
    :goto_1
    const-string v6, "calendar_id"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 636
    if-eq v8, v0, :cond_5

    .line 637
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 642
    :goto_2
    const-string v6, "title"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 643
    if-eq v8, v0, :cond_6

    .line 644
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 649
    :goto_3
    const-string v6, "dtstart"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 650
    if-eq v8, v0, :cond_7

    .line 651
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 656
    :goto_4
    const-string v6, "dtend"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 657
    if-eq v8, v0, :cond_8

    .line 658
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 663
    :goto_5
    const-string v6, "allDay"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 664
    if-eq v8, v0, :cond_a

    .line 665
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v4, :cond_9

    move v2, v4

    .line 667
    .local v2, isAllDay:Z
    :goto_6
    invoke-static {p1, v2}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBoolean(Ljava/nio/ByteBuffer;Z)V

    .line 672
    .end local v2           #isAllDay:Z
    :goto_7
    const-string v6, "eventLocation"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 673
    if-eq v8, v0, :cond_b

    .line 674
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 679
    :goto_8
    const-string v6, "description"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 680
    if-eq v8, v0, :cond_c

    .line 681
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 686
    :goto_9
    const-string v6, "organizer"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 687
    if-eq v8, v0, :cond_d

    .line 688
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 693
    :goto_a
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 695
    const-string v6, "rrule"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 696
    if-eq v8, v0, :cond_e

    .line 697
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 702
    :goto_b
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 704
    const-string v6, "modifyTime"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 705
    if-eq v8, v0, :cond_f

    .line 706
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 710
    :goto_c
    const-string v6, "createTime"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 712
    if-eq v8, v0, :cond_10

    .line 713
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 718
    :goto_d
    const-string v6, "duration"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 719
    if-eq v8, v0, :cond_11

    .line 720
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 725
    :goto_e
    const-string v6, "eventTimezone"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 726
    if-eq v8, v0, :cond_12

    .line 727
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 746
    :goto_f
    const-string v6, "availability"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 747
    if-eq v8, v0, :cond_13

    .line 748
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 753
    :goto_10
    const-string v6, "accessLevel"

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 754
    if-eq v8, v0, :cond_14

    .line 755
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_11
    move v3, v4

    .line 772
    goto/16 :goto_0

    .line 632
    :cond_4
    const-wide/16 v6, -0x1

    invoke-virtual {p1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 760
    .end local v0           #colId:I
    :catch_0
    move-exception v1

    .line 761
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    aput-object p1, v5, v4

    invoke-static {v5, v9, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 762
    invoke-virtual {p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    goto/16 :goto_0

    .line 639
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #colId:I
    :cond_5
    const-wide/16 v6, 0x0

    :try_start_1
    invoke-virtual {p1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 764
    .end local v0           #colId:I
    :catch_1
    move-exception v1

    .line 769
    .local v1, e:Ljava/nio/BufferOverflowException;
    invoke-virtual {p1}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    move v3, v5

    .line 770
    goto/16 :goto_0

    .line 646
    .end local v1           #e:Ljava/nio/BufferOverflowException;
    .restart local v0       #colId:I
    :cond_6
    const/4 v6, 0x0

    :try_start_2
    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 653
    :cond_7
    const-wide/16 v6, 0x0

    invoke-virtual {p1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto/16 :goto_4

    .line 660
    :cond_8
    const-wide/16 v6, 0x0

    invoke-virtual {p1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto/16 :goto_5

    :cond_9
    move v2, v3

    .line 665
    goto/16 :goto_6

    .line 669
    :cond_a
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBoolean(Ljava/nio/ByteBuffer;Z)V

    goto/16 :goto_7

    .line 676
    :cond_b
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 683
    :cond_c
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 690
    :cond_d
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 699
    :cond_e
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 708
    :cond_f
    const-wide/16 v6, 0x0

    invoke-virtual {p1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto/16 :goto_c

    .line 715
    :cond_10
    const-wide/16 v6, 0x0

    invoke-virtual {p1, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto/16 :goto_d

    .line 722
    :cond_11
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 729
    :cond_12
    const/4 v6, 0x0

    invoke-static {p1, v6}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 750
    :cond_13
    const/4 v6, 0x0

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_10

    .line 757
    :cond_14
    const/4 v6, 0x0

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_11
.end method
