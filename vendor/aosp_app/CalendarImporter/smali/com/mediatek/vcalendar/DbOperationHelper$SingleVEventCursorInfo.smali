.class public Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;
.super Ljava/lang/Object;
.source "DbOperationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/vcalendar/DbOperationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleVEventCursorInfo"
.end annotation


# instance fields
.field private mAttendeesCursor:Landroid/database/Cursor;

.field private mCalId:J

.field private mCalendarName:Ljava/lang/String;

.field private mRemindersCursor:Landroid/database/Cursor;

.field private mVEventCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$302(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->mVEventCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$402(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 285
    iput-wide p1, p0, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->mCalId:J

    return-wide p1
.end method

.method static synthetic access$502(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->mCalendarName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$602(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->mRemindersCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$702(Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->mAttendeesCursor:Landroid/database/Cursor;

    return-object p1
.end method


# virtual methods
.method public getAlertsCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->mRemindersCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 332
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->mRemindersCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getAttendeesCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 342
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->mAttendeesCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getCalenarName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->mCalendarName:Ljava/lang/String;

    return-object v0
.end method

.method public getCalendarId()J
    .locals 2

    .prologue
    .line 313
    iget-wide v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->mCalId:J

    return-wide v0
.end method

.method public getVEventCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->mVEventCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 304
    iget-object v0, p0, Lcom/mediatek/vcalendar/DbOperationHelper$SingleVEventCursorInfo;->mVEventCursor:Landroid/database/Cursor;

    return-object v0
.end method
