.class Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;
.super Ljava/lang/Object;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/agenda/AgendaByDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RowInfo"
.end annotation


# instance fields
.field final mAllDay:Z

.field final mDay:I

.field final mEventEndTimeMilli:J

.field final mEventId:J

.field final mEventStartTimeMilli:J

.field mFirstDayAfterYesterday:Z

.field final mInstanceId:J

.field final mPosition:I

.field final mType:I


# direct methods
.method constructor <init>(II)V
    .locals 3
    .parameter "type"
    .parameter "julianDay"

    .prologue
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    iput p1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    .line 464
    iput p2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    .line 465
    iput v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mPosition:I

    .line 466
    iput-wide v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventId:J

    .line 467
    iput-wide v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    .line 468
    iput-wide v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventEndTimeMilli:J

    .line 469
    iput-boolean v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mFirstDayAfterYesterday:Z

    .line 470
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mInstanceId:J

    .line 471
    iput-boolean v2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mAllDay:Z

    .line 472
    return-void
.end method

.method constructor <init>(IIIJJJJZ)V
    .locals 1
    .parameter "type"
    .parameter "julianDay"
    .parameter "position"
    .parameter "id"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "instanceId"
    .parameter "allDay"

    .prologue
    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput p1, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mType:I

    .line 452
    iput p2, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mDay:I

    .line 453
    iput p3, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mPosition:I

    .line 454
    iput-wide p4, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventId:J

    .line 455
    iput-wide p6, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventStartTimeMilli:J

    .line 456
    iput-wide p8, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mEventEndTimeMilli:J

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mFirstDayAfterYesterday:Z

    .line 458
    iput-wide p10, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mInstanceId:J

    .line 459
    iput-boolean p12, p0, Lcom/android/calendar/agenda/AgendaByDayAdapter$RowInfo;->mAllDay:Z

    .line 460
    return-void
.end method
