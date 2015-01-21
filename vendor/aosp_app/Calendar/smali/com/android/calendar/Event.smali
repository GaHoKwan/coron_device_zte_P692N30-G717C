.class public Lcom/android/calendar/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ALLDAY_WHERE:Ljava/lang/String; = "dispAllday=1"

.field public static final DECLINED_EVENT_ALPHA:I = 0x88

.field private static final DISPLAY_AS_ALLDAY:Ljava/lang/String; = "dispAllday"

.field private static final EVENTS_WHERE:Ljava/lang/String; = "dispAllday=0"

.field public static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field private static final PROFILE:Z = false

.field private static final PROJECTION_ALL_DAY_INDEX:I = 0x2

.field private static final PROJECTION_BEGIN_INDEX:I = 0x6

.field private static final PROJECTION_COLOR_INDEX:I = 0x3

.field private static final PROJECTION_DISPLAY_AS_ALLDAY:I = 0x13

.field private static final PROJECTION_END_DAY_INDEX:I = 0xa

.field private static final PROJECTION_END_INDEX:I = 0x7

.field private static final PROJECTION_END_MINUTE_INDEX:I = 0xc

.field private static final PROJECTION_EVENT_ID_INDEX:I = 0x5

.field private static final PROJECTION_GUESTS_CAN_INVITE_OTHERS_INDEX:I = 0x12

.field private static final PROJECTION_HAS_ALARM_INDEX:I = 0xd

.field private static final PROJECTION_LOCATION_INDEX:I = 0x1

.field private static final PROJECTION_ORGANIZER_INDEX:I = 0x11

.field private static final PROJECTION_RDATE_INDEX:I = 0xf

.field private static final PROJECTION_RRULE_INDEX:I = 0xe

.field private static final PROJECTION_SELF_ATTENDEE_STATUS_INDEX:I = 0x10

.field private static final PROJECTION_START_DAY_INDEX:I = 0x9

.field private static final PROJECTION_START_MINUTE_INDEX:I = 0xb

.field private static final PROJECTION_TIMEZONE_INDEX:I = 0x4

.field private static final PROJECTION_TITLE_INDEX:I = 0x0

.field private static final SORT_ALLDAY_BY:Ljava/lang/String; = "startDay ASC, endDay DESC, title ASC"

.field private static final SORT_EVENTS_BY:Ljava/lang/String; = "begin ASC, end DESC, title ASC"

.field private static final TAG:Ljava/lang/String; = "CalEvent"

.field private static mNoColorColor:I

.field private static mNoTitleString:Ljava/lang/String;


# instance fields
.field public allDay:Z

.field public bottom:F

.field public color:I

.field public endDay:I

.field public endMillis:J

.field public endTime:I

.field public guestsCanModify:Z

.field public hasAlarm:Z

.field public id:J

.field public isRepeating:Z

.field public left:F

.field public location:Ljava/lang/CharSequence;

.field private mColumn:I

.field private mMaxColumns:I

.field public nextDown:Lcom/android/calendar/Event;

.field public nextLeft:Lcom/android/calendar/Event;

.field public nextRight:Lcom/android/calendar/Event;

.field public nextUp:Lcom/android/calendar/Event;

.field public organizer:Ljava/lang/String;

.field public right:F

.field public selfAttendeeStatus:I

.field public startDay:I

.field public startMillis:J

.field public startTime:I

.field public title:Ljava/lang/CharSequence;

.field public top:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 66
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const-string v1, "displayColor"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "startMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "endMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "guestsCanModify"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "allDay=1 OR (end-begin)>=86400000 AS dispAllday"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/Event;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/android/calendar/Utils;->isJellybeanOrLater()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    sget-object v0, Lcom/android/calendar/Event;->EVENT_PROJECTION:[Ljava/lang/String;

    const-string v1, "calendar_color"

    aput-object v1, v0, v3

    .line 115
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildEventsFromCursor(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/content/Context;II)V
    .locals 5
    .parameter
    .parameter "cEvents"
    .parameter "context"
    .parameter "startDay"
    .parameter "endDay"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;",
            "Landroid/database/Cursor;",
            "Landroid/content/Context;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    .line 348
    :cond_0
    const-string v3, "CalEvent"

    const-string v4, "buildEventsFromCursor: null cursor or null events list!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_1
    return-void

    .line 352
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 354
    .local v0, count:I
    if-eqz v0, :cond_1

    .line 358
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 359
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x7f0c0049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/calendar/Event;->mNoTitleString:Ljava/lang/String;

    .line 360
    const v3, 0x7f08002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/android/calendar/Event;->mNoColorColor:I

    .line 363
    const/4 v3, -0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 364
    :cond_3
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 365
    invoke-static {p1}, Lcom/android/calendar/Event;->generateEventFromCursor(Landroid/database/Cursor;)Lcom/android/calendar/Event;

    move-result-object v1

    .line 366
    .local v1, e:Lcom/android/calendar/Event;
    iget v3, v1, Lcom/android/calendar/Event;->startDay:I

    if-gt v3, p4, :cond_3

    iget v3, v1, Lcom/android/calendar/Event;->endDay:I

    if-lt v3, p3, :cond_3

    .line 369
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static computePositions(Ljava/util/ArrayList;J)V
    .locals 1
    .parameter
    .parameter "minimumDurationMillis"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 449
    .local p0, eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    if-nez p0, :cond_0

    .line 456
    :goto_0
    return-void

    .line 454
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/calendar/Event;->doComputePositions(Ljava/util/ArrayList;JZ)V

    .line 455
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/calendar/Event;->doComputePositions(Ljava/util/ArrayList;JZ)V

    goto :goto_0
.end method

.method private static doComputePositions(Ljava/util/ArrayList;JZ)V
    .locals 15
    .parameter
    .parameter "minimumDurationMillis"
    .parameter "doAlldayEvents"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;JZ)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p0, eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 461
    .local v7, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v10, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 464
    const-wide/16 p1, 0x0

    .line 467
    :cond_0
    const-wide/16 v5, 0x0

    .line 468
    .local v5, colMask:J
    const/4 v14, 0x0

    .line 469
    .local v14, maxCols:I
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/Event;

    .line 471
    .local v1, event:Lcom/android/calendar/Event;
    invoke-virtual {v1}, Lcom/android/calendar/Event;->drawAsAllday()Z

    move-result v2

    move/from16 v0, p3

    if-ne v2, v0, :cond_1

    .line 474
    if-nez p3, :cond_2

    .line 475
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-wide/from16 v3, p1

    invoke-static/range {v1 .. v6}, Lcom/android/calendar/Event;->removeNonAlldayActiveEvents(Lcom/android/calendar/Event;Ljava/util/Iterator;JJ)J

    move-result-wide v5

    .line 483
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 484
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/Event;

    .line 485
    .local v9, ev:Lcom/android/calendar/Event;
    invoke-virtual {v9, v14}, Lcom/android/calendar/Event;->setMaxColumns(I)V

    goto :goto_2

    .line 478
    .end local v9           #ev:Lcom/android/calendar/Event;
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v1, v2, v5, v6}, Lcom/android/calendar/Event;->removeAlldayActiveEvents(Lcom/android/calendar/Event;Ljava/util/Iterator;J)J

    move-result-wide v5

    goto :goto_1

    .line 487
    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_3
    const/4 v14, 0x0

    .line 488
    const-wide/16 v5, 0x0

    .line 489
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 494
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-static {v5, v6}, Lcom/android/calendar/Event;->findFirstZeroBit(J)I

    move-result v8

    .line 495
    .local v8, col:I
    const/16 v2, 0x40

    if-ne v8, v2, :cond_5

    .line 496
    const/16 v8, 0x3f

    .line 497
    :cond_5
    const-wide/16 v2, 0x1

    shl-long/2addr v2, v8

    or-long/2addr v5, v2

    .line 498
    invoke-virtual {v1, v8}, Lcom/android/calendar/Event;->setColumn(I)V

    .line 499
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 502
    .local v13, len:I
    if-ge v14, v13, :cond_1

    .line 503
    move v14, v13

    goto :goto_0

    .line 505
    .end local v1           #event:Lcom/android/calendar/Event;
    .end local v8           #col:I
    .end local v13           #len:I
    :cond_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/Event;

    .line 506
    .restart local v9       #ev:Lcom/android/calendar/Event;
    invoke-virtual {v9, v14}, Lcom/android/calendar/Event;->setMaxColumns(I)V

    goto :goto_3

    .line 508
    .end local v9           #ev:Lcom/android/calendar/Event;
    :cond_7
    return-void
.end method

.method public static findFirstZeroBit(J)I
    .locals 6
    .parameter "val"

    .prologue
    const/16 v1, 0x40

    .line 544
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 545
    const-wide/16 v2, 0x1

    shl-long/2addr v2, v0

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 548
    .end local v0           #ii:I
    :goto_1
    return v0

    .line 544
    .restart local v0       #ii:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 548
    goto :goto_1
.end method

.method private static generateEventFromCursor(Landroid/database/Cursor;)Lcom/android/calendar/Event;
    .locals 15
    .parameter "cEvents"

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 378
    new-instance v1, Lcom/android/calendar/Event;

    invoke-direct {v1}, Lcom/android/calendar/Event;-><init>()V

    .line 380
    .local v1, e:Lcom/android/calendar/Event;
    const/4 v8, 0x5

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/calendar/Event;->id:J

    .line 381
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 382
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 383
    invoke-interface {p0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_4

    move v8, v9

    :goto_0
    iput-boolean v8, v1, Lcom/android/calendar/Event;->allDay:Z

    .line 384
    const/16 v8, 0x11

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    .line 385
    const/16 v8, 0x12

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_5

    move v8, v9

    :goto_1
    iput-boolean v8, v1, Lcom/android/calendar/Event;->guestsCanModify:Z

    .line 387
    iget-object v8, v1, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    if-eqz v8, :cond_0

    iget-object v8, v1, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 388
    :cond_0
    sget-object v8, Lcom/android/calendar/Event;->mNoTitleString:Ljava/lang/String;

    iput-object v8, v1, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 391
    :cond_1
    invoke-interface {p0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_6

    .line 393
    invoke-interface {p0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Lcom/android/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v8

    iput v8, v1, Lcom/android/calendar/Event;->color:I

    .line 398
    :goto_2
    const/4 v8, 0x6

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 399
    .local v4, eStart:J
    const/4 v8, 0x7

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 401
    .local v2, eEnd:J
    iput-wide v4, v1, Lcom/android/calendar/Event;->startMillis:J

    .line 402
    const/16 v8, 0xb

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcom/android/calendar/Event;->startTime:I

    .line 403
    const/16 v8, 0x9

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcom/android/calendar/Event;->startDay:I

    .line 405
    iput-wide v2, v1, Lcom/android/calendar/Event;->endMillis:J

    .line 406
    const/16 v8, 0xc

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcom/android/calendar/Event;->endTime:I

    .line 407
    const/16 v8, 0xa

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcom/android/calendar/Event;->endDay:I

    .line 409
    const/16 v8, 0xd

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_7

    move v8, v9

    :goto_3
    iput-boolean v8, v1, Lcom/android/calendar/Event;->hasAlarm:Z

    .line 412
    const/16 v8, 0xe

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 413
    .local v7, rrule:Ljava/lang/String;
    const/16 v8, 0xf

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 414
    .local v6, rdate:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 415
    :cond_2
    iput-boolean v9, v1, Lcom/android/calendar/Event;->isRepeating:Z

    .line 420
    :goto_4
    const/16 v8, 0x10

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v1, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    .line 422
    iget v8, v1, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    if-ne v8, v13, :cond_3

    .line 425
    const/4 v0, -0x1

    .line 426
    .local v0, bg:I
    iget v8, v1, Lcom/android/calendar/Event;->color:I

    const/16 v9, 0x88

    invoke-static {v8, v9, v0}, Lcom/android/calendar/Utils;->getDeclinedColorFromColor(III)I

    move-result v8

    iput v8, v1, Lcom/android/calendar/Event;->color:I

    .line 429
    .end local v0           #bg:I
    :cond_3
    return-object v1

    .end local v2           #eEnd:J
    .end local v4           #eStart:J
    .end local v6           #rdate:Ljava/lang/String;
    .end local v7           #rrule:Ljava/lang/String;
    :cond_4
    move v8, v10

    .line 383
    goto/16 :goto_0

    :cond_5
    move v8, v10

    .line 385
    goto/16 :goto_1

    .line 395
    :cond_6
    sget v8, Lcom/android/calendar/Event;->mNoColorColor:I

    iput v8, v1, Lcom/android/calendar/Event;->color:I

    goto :goto_2

    .restart local v2       #eEnd:J
    .restart local v4       #eStart:J
    :cond_7
    move v8, v10

    .line 409
    goto :goto_3

    .line 417
    .restart local v6       #rdate:Ljava/lang/String;
    .restart local v7       #rrule:Ljava/lang/String;
    :cond_8
    iput-boolean v10, v1, Lcom/android/calendar/Event;->isRepeating:Z

    goto :goto_4
.end method

.method private static final instancesQuery(Landroid/content/ContentResolver;[Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "cr"
    .parameter "projection"
    .parameter "startDay"
    .parameter "endDay"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 313
    const-string v8, "visible=?"

    .line 314
    .local v8, WHERE_CALENDARS_SELECTED:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "1"

    aput-object v1, v7, v0

    .line 315
    .local v7, WHERE_CALENDARS_ARGS:[Ljava/lang/String;
    const-string v6, "begin ASC"

    .line 317
    .local v6, DEFAULT_SORT_ORDER:Ljava/lang/String;
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 318
    .local v9, builder:Landroid/net/Uri$Builder;
    int-to-long v0, p2

    invoke-static {v9, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 319
    int-to-long v0, p3

    invoke-static {v9, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 320
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    move-object p4, v8

    .line 322
    move-object p5, v7

    .line 332
    :goto_0
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    if-nez p6, :cond_2

    move-object v5, v6

    :goto_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 325
    if-eqz p5, :cond_1

    array-length v0, p5

    if-lez v0, :cond_1

    .line 326
    array-length v0, p5

    add-int/lit8 v0, v0, 0x1

    invoke-static {p5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p5

    .end local p5
    check-cast p5, [Ljava/lang/String;

    .line 327
    .restart local p5
    array-length v0, p5

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    aget-object v1, v7, v1

    aput-object v1, p5, v0

    goto :goto_0

    .line 329
    :cond_1
    move-object p5, v7

    goto :goto_0

    :cond_2
    move-object/from16 v5, p6

    .line 332
    goto :goto_1
.end method

.method public static loadEvents(Landroid/content/Context;Ljava/util/ArrayList;IIILjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 21
    .parameter "context"
    .parameter
    .parameter "startDay"
    .parameter "days"
    .parameter "requestId"
    .parameter "sequenceNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/Event;",
            ">;III",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/Event;>;"
    const/16 v17, 0x0

    .line 235
    .local v17, cEvents:Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 237
    .local v16, cAllday:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 239
    add-int v4, p2, p3

    add-int/lit8 v7, v4, -0x1

    .line 252
    .local v7, endDay:I
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 253
    .local v20, prefs:Landroid/content/SharedPreferences;
    const-string v4, "preferences_hide_declined"

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 256
    .local v18, hideDeclined:Z
    const-string v8, "dispAllday=0"

    .line 257
    .local v8, where:Ljava/lang/String;
    const-string v13, "dispAllday=1"

    .line 258
    .local v13, whereAllday:Ljava/lang/String;
    if-eqz v18, :cond_0

    .line 259
    const-string v19, " AND selfAttendeeStatus!=2"

    .line 261
    .local v19, hideString:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 265
    .end local v19           #hideString:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/calendar/Event;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "begin ASC, end DESC, title ASC"

    move/from16 v6, p2

    invoke-static/range {v4 .. v10}, Lcom/android/calendar/Event;->instancesQuery(Landroid/content/ContentResolver;[Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 267
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Lcom/android/calendar/Event;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "startDay ASC, endDay DESC, title ASC"

    move/from16 v11, p2

    move v12, v7

    invoke-static/range {v9 .. v15}, Lcom/android/calendar/Event;->instancesQuery(Landroid/content/ContentResolver;[Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 272
    invoke-virtual/range {p5 .. p5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    move/from16 v0, p4

    if-eq v0, v4, :cond_3

    .line 280
    if-eqz v17, :cond_1

    .line 281
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_1
    if-eqz v16, :cond_2

    .line 284
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_2
    :goto_0
    return-void

    .line 276
    :cond_3
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3, v7}, Lcom/android/calendar/Event;->buildEventsFromCursor(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/content/Context;II)V

    .line 277
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3, v7}, Lcom/android/calendar/Event;->buildEventsFromCursor(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/content/Context;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    if-eqz v17, :cond_4

    .line 281
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_4
    if-eqz v16, :cond_2

    .line 284
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 280
    .end local v8           #where:Ljava/lang/String;
    .end local v13           #whereAllday:Ljava/lang/String;
    .end local v18           #hideDeclined:Z
    .end local v20           #prefs:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v4

    if-eqz v17, :cond_5

    .line 281
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_5
    if-eqz v16, :cond_6

    .line 284
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v4
.end method

.method public static final newInstance()Lcom/android/calendar/Event;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 204
    new-instance v0, Lcom/android/calendar/Event;

    invoke-direct {v0}, Lcom/android/calendar/Event;-><init>()V

    .line 206
    .local v0, e:Lcom/android/calendar/Event;
    iput-wide v2, v0, Lcom/android/calendar/Event;->id:J

    .line 207
    iput-object v4, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 208
    iput v1, v0, Lcom/android/calendar/Event;->color:I

    .line 209
    iput-object v4, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 210
    iput-boolean v1, v0, Lcom/android/calendar/Event;->allDay:Z

    .line 211
    iput v1, v0, Lcom/android/calendar/Event;->startDay:I

    .line 212
    iput v1, v0, Lcom/android/calendar/Event;->endDay:I

    .line 213
    iput v1, v0, Lcom/android/calendar/Event;->startTime:I

    .line 214
    iput v1, v0, Lcom/android/calendar/Event;->endTime:I

    .line 215
    iput-wide v2, v0, Lcom/android/calendar/Event;->startMillis:J

    .line 216
    iput-wide v2, v0, Lcom/android/calendar/Event;->endMillis:J

    .line 217
    iput-boolean v1, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    .line 218
    iput-boolean v1, v0, Lcom/android/calendar/Event;->isRepeating:Z

    .line 219
    iput v1, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    .line 221
    return-object v0
.end method

.method private static removeAlldayActiveEvents(Lcom/android/calendar/Event;Ljava/util/Iterator;J)J
    .locals 5
    .parameter "event"
    .parameter
    .parameter "colMask"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/Event;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/calendar/Event;",
            ">;J)J"
        }
    .end annotation

    .prologue
    .line 514
    .local p1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 515
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 516
    .local v0, active:Lcom/android/calendar/Event;
    iget v1, v0, Lcom/android/calendar/Event;->endDay:I

    iget v2, p0, Lcom/android/calendar/Event;->startDay:I

    if-ge v1, v2, :cond_0

    .line 517
    const-wide/16 v1, 0x1

    invoke-virtual {v0}, Lcom/android/calendar/Event;->getColumn()I

    move-result v3

    shl-long/2addr v1, v3

    const-wide/16 v3, -0x1

    xor-long/2addr v1, v3

    and-long/2addr p2, v1

    .line 518
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 521
    .end local v0           #active:Lcom/android/calendar/Event;
    :cond_1
    return-wide p2
.end method

.method private static removeNonAlldayActiveEvents(Lcom/android/calendar/Event;Ljava/util/Iterator;JJ)J
    .locals 9
    .parameter "event"
    .parameter
    .parameter "minDurationMillis"
    .parameter "colMask"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/Event;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/calendar/Event;",
            ">;JJ)J"
        }
    .end annotation

    .prologue
    .line 526
    .local p1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/Event;>;"
    invoke-virtual {p0}, Lcom/android/calendar/Event;->getStartMillis()J

    move-result-wide v3

    .line 530
    .local v3, start:J
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 531
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/Event;

    .line 533
    .local v0, active:Lcom/android/calendar/Event;
    invoke-virtual {v0}, Lcom/android/calendar/Event;->getEndMillis()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/android/calendar/Event;->getStartMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v5, v6, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 535
    .local v1, duration:J
    invoke-virtual {v0}, Lcom/android/calendar/Event;->getStartMillis()J

    move-result-wide v5

    add-long/2addr v5, v1

    cmp-long v5, v5, v3

    if-gtz v5, :cond_0

    .line 536
    const-wide/16 v5, 0x1

    invoke-virtual {v0}, Lcom/android/calendar/Event;->getColumn()I

    move-result v7

    shl-long/2addr v5, v7

    const-wide/16 v7, -0x1

    xor-long/2addr v5, v7

    and-long/2addr p4, v5

    .line 537
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 540
    .end local v0           #active:Lcom/android/calendar/Event;
    .end local v1           #duration:J
    :cond_1
    return-wide p4
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 163
    new-instance v0, Lcom/android/calendar/Event;

    invoke-direct {v0}, Lcom/android/calendar/Event;-><init>()V

    .line 165
    .local v0, e:Lcom/android/calendar/Event;
    iget-object v1, p0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 166
    iget v1, p0, Lcom/android/calendar/Event;->color:I

    iput v1, v0, Lcom/android/calendar/Event;->color:I

    .line 167
    iget-object v1, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 168
    iget-boolean v1, p0, Lcom/android/calendar/Event;->allDay:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->allDay:Z

    .line 169
    iget v1, p0, Lcom/android/calendar/Event;->startDay:I

    iput v1, v0, Lcom/android/calendar/Event;->startDay:I

    .line 170
    iget v1, p0, Lcom/android/calendar/Event;->endDay:I

    iput v1, v0, Lcom/android/calendar/Event;->endDay:I

    .line 171
    iget v1, p0, Lcom/android/calendar/Event;->startTime:I

    iput v1, v0, Lcom/android/calendar/Event;->startTime:I

    .line 172
    iget v1, p0, Lcom/android/calendar/Event;->endTime:I

    iput v1, v0, Lcom/android/calendar/Event;->endTime:I

    .line 173
    iget-wide v1, p0, Lcom/android/calendar/Event;->startMillis:J

    iput-wide v1, v0, Lcom/android/calendar/Event;->startMillis:J

    .line 174
    iget-wide v1, p0, Lcom/android/calendar/Event;->endMillis:J

    iput-wide v1, v0, Lcom/android/calendar/Event;->endMillis:J

    .line 175
    iget-boolean v1, p0, Lcom/android/calendar/Event;->hasAlarm:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->hasAlarm:Z

    .line 176
    iget-boolean v1, p0, Lcom/android/calendar/Event;->isRepeating:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->isRepeating:Z

    .line 177
    iget v1, p0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    iput v1, v0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    .line 178
    iget-object v1, p0, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    .line 179
    iget-boolean v1, p0, Lcom/android/calendar/Event;->guestsCanModify:Z

    iput-boolean v1, v0, Lcom/android/calendar/Event;->guestsCanModify:Z

    .line 181
    return-object v0
.end method

.method public final copyTo(Lcom/android/calendar/Event;)V
    .locals 2
    .parameter "dest"

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/android/calendar/Event;->id:J

    iput-wide v0, p1, Lcom/android/calendar/Event;->id:J

    .line 186
    iget-object v0, p0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 187
    iget v0, p0, Lcom/android/calendar/Event;->color:I

    iput v0, p1, Lcom/android/calendar/Event;->color:I

    .line 188
    iget-object v0, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 189
    iget-boolean v0, p0, Lcom/android/calendar/Event;->allDay:Z

    iput-boolean v0, p1, Lcom/android/calendar/Event;->allDay:Z

    .line 190
    iget v0, p0, Lcom/android/calendar/Event;->startDay:I

    iput v0, p1, Lcom/android/calendar/Event;->startDay:I

    .line 191
    iget v0, p0, Lcom/android/calendar/Event;->endDay:I

    iput v0, p1, Lcom/android/calendar/Event;->endDay:I

    .line 192
    iget v0, p0, Lcom/android/calendar/Event;->startTime:I

    iput v0, p1, Lcom/android/calendar/Event;->startTime:I

    .line 193
    iget v0, p0, Lcom/android/calendar/Event;->endTime:I

    iput v0, p1, Lcom/android/calendar/Event;->endTime:I

    .line 194
    iget-wide v0, p0, Lcom/android/calendar/Event;->startMillis:J

    iput-wide v0, p1, Lcom/android/calendar/Event;->startMillis:J

    .line 195
    iget-wide v0, p0, Lcom/android/calendar/Event;->endMillis:J

    iput-wide v0, p1, Lcom/android/calendar/Event;->endMillis:J

    .line 196
    iget-boolean v0, p0, Lcom/android/calendar/Event;->hasAlarm:Z

    iput-boolean v0, p1, Lcom/android/calendar/Event;->hasAlarm:Z

    .line 197
    iget-boolean v0, p0, Lcom/android/calendar/Event;->isRepeating:Z

    iput-boolean v0, p1, Lcom/android/calendar/Event;->isRepeating:Z

    .line 198
    iget v0, p0, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    iput v0, p1, Lcom/android/calendar/Event;->selfAttendeeStatus:I

    .line 199
    iget-object v0, p0, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    .line 200
    iget-boolean v0, p0, Lcom/android/calendar/Event;->guestsCanModify:Z

    iput-boolean v0, p1, Lcom/android/calendar/Event;->guestsCanModify:Z

    .line 201
    return-void
.end method

.method public drawAsAllday()Z
    .locals 4

    .prologue
    .line 652
    iget-boolean v0, p0, Lcom/android/calendar/Event;->allDay:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/calendar/Event;->endMillis:J

    iget-wide v2, p0, Lcom/android/calendar/Event;->startMillis:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final dump()V
    .locals 4

    .prologue
    .line 552
    const-string v0, "Cal"

    const-string v1, "+-----------------------------------------+"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+        id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/calendar/Event;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+     color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/Event;->color:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+     title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+  location = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+    allDay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/calendar/Event;->allDay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+  startDay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/Event;->startDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+    endDay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/Event;->endDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+ startTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/Event;->startTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+   endTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/calendar/Event;->endTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+ organizer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/Event;->organizer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+  guestwrt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/calendar/Event;->guestsCanModify:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return-void
.end method

.method public getColumn()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/android/calendar/Event;->mColumn:I

    return v0
.end method

.method public getEndMillis()J
    .locals 2

    .prologue
    .line 647
    iget-wide v0, p0, Lcom/android/calendar/Event;->endMillis:J

    return-wide v0
.end method

.method public getMaxColumns()I
    .locals 1

    .prologue
    .line 631
    iget v0, p0, Lcom/android/calendar/Event;->mMaxColumns:I

    return v0
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 639
    iget-wide v0, p0, Lcom/android/calendar/Event;->startMillis:J

    return-wide v0
.end method

.method public getTitleAndLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 604
    iget-object v2, p0, Lcom/android/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 610
    iget-object v2, p0, Lcom/android/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, locationString:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 615
    .end local v0           #locationString:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public final intersects(III)Z
    .locals 3
    .parameter "julianDay"
    .parameter "startMinute"
    .parameter "endMinute"

    .prologue
    const/4 v0, 0x0

    .line 568
    iget v1, p0, Lcom/android/calendar/Event;->endDay:I

    if-ge v1, p1, :cond_1

    .line 593
    :cond_0
    :goto_0
    return v0

    .line 572
    :cond_1
    iget v1, p0, Lcom/android/calendar/Event;->startDay:I

    if-gt v1, p1, :cond_0

    .line 576
    iget v1, p0, Lcom/android/calendar/Event;->endDay:I

    if-ne v1, p1, :cond_2

    .line 577
    iget v1, p0, Lcom/android/calendar/Event;->endTime:I

    if-lt v1, p2, :cond_0

    .line 583
    iget v1, p0, Lcom/android/calendar/Event;->endTime:I

    if-ne v1, p2, :cond_2

    iget v1, p0, Lcom/android/calendar/Event;->startTime:I

    iget v2, p0, Lcom/android/calendar/Event;->endTime:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/calendar/Event;->startDay:I

    iget v2, p0, Lcom/android/calendar/Event;->endDay:I

    if-ne v1, v2, :cond_0

    .line 589
    :cond_2
    iget v1, p0, Lcom/android/calendar/Event;->startDay:I

    if-ne v1, p1, :cond_3

    iget v1, p0, Lcom/android/calendar/Event;->startTime:I

    if-gt v1, p3, :cond_0

    .line 593
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setColumn(I)V
    .locals 0
    .parameter "column"

    .prologue
    .line 619
    iput p1, p0, Lcom/android/calendar/Event;->mColumn:I

    .line 620
    return-void
.end method

.method public setEndMillis(J)V
    .locals 0
    .parameter "endMillis"

    .prologue
    .line 643
    iput-wide p1, p0, Lcom/android/calendar/Event;->endMillis:J

    .line 644
    return-void
.end method

.method public setMaxColumns(I)V
    .locals 0
    .parameter "maxColumns"

    .prologue
    .line 627
    iput p1, p0, Lcom/android/calendar/Event;->mMaxColumns:I

    .line 628
    return-void
.end method

.method public setStartMillis(J)V
    .locals 0
    .parameter "startMillis"

    .prologue
    .line 635
    iput-wide p1, p0, Lcom/android/calendar/Event;->startMillis:J

    .line 636
    return-void
.end method
