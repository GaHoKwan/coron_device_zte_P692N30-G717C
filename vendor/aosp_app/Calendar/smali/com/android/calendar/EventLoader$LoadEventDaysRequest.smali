.class Lcom/android/calendar/EventLoader$LoadEventDaysRequest;
.super Ljava/lang/Object;
.source "EventLoader.java"

# interfaces
.implements Lcom/android/calendar/EventLoader$LoadRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/EventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadEventDaysRequest"
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public eventDays:[Z

.field public numDays:I

.field public startDay:I

.field public uiCallback:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "endDay"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/EventLoader$LoadEventDaysRequest;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II[ZLjava/lang/Runnable;)V
    .locals 0
    .parameter "startDay"
    .parameter "numDays"
    .parameter "eventDays"
    .parameter "uiCallback"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lcom/android/calendar/EventLoader$LoadEventDaysRequest;->startDay:I

    .line 79
    iput p2, p0, Lcom/android/calendar/EventLoader$LoadEventDaysRequest;->numDays:I

    .line 80
    iput-object p3, p0, Lcom/android/calendar/EventLoader$LoadEventDaysRequest;->eventDays:[Z

    .line 81
    iput-object p4, p0, Lcom/android/calendar/EventLoader$LoadEventDaysRequest;->uiCallback:Ljava/lang/Runnable;

    .line 82
    return-void
.end method


# virtual methods
.method public processRequest(Lcom/android/calendar/EventLoader;)V
    .locals 13
    .parameter "eventLoader"

    .prologue
    const/4 v11, 0x0

    .line 87
    #getter for: Lcom/android/calendar/EventLoader;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$000(Lcom/android/calendar/EventLoader;)Landroid/os/Handler;

    move-result-object v5

    .line 88
    .local v5, handler:Landroid/os/Handler;
    #getter for: Lcom/android/calendar/EventLoader;->mResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/calendar/EventLoader;->access$100(Lcom/android/calendar/EventLoader;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 91
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v10, p0, Lcom/android/calendar/EventLoader$LoadEventDaysRequest;->eventDays:[Z

    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 94
    iget v10, p0, Lcom/android/calendar/EventLoader$LoadEventDaysRequest;->startDay:I

    iget v11, p0, Lcom/android/calendar/EventLoader$LoadEventDaysRequest;->numDays:I

    sget-object v12, Lcom/android/calendar/EventLoader$LoadEventDaysRequest;->PROJECTION:[Ljava/lang/String;

    invoke-static {v0, v10, v11, v12}, Landroid/provider/CalendarContract$EventDays;->query(Landroid/content/ContentResolver;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 96
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v10, "startDay"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 97
    .local v9, startDayColumnIndex:I
    const-string v10, "endDay"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 100
    .local v2, endDayColumnIndex:I
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 101
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 102
    .local v3, firstDay:I
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 104
    .local v7, lastDay:I
    iget v10, p0, Lcom/android/calendar/EventLoader$LoadEventDaysRequest;->startDay:I

    sub-int v10, v3, v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 105
    .local v4, firstIndex:I
    iget v10, p0, Lcom/android/calendar/EventLoader$LoadEventDaysRequest;->startDay:I

    sub-int v10, v7, v10

    const/16 v11, 0x1e

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 107
    .local v8, lastIndex:I
    move v6, v4

    .local v6, i:I
    :goto_0
    if-gt v6, v8, :cond_0

    .line 108
    iget-object v10, p0, Lcom/android/calendar/EventLoader$LoadEventDaysRequest;->eventDays:[Z

    const/4 v11, 0x1

    aput-boolean v11, v10, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 112
    .end local v3           #firstDay:I
    .end local v4           #firstIndex:I
    .end local v6           #i:I
    .end local v7           #lastDay:I
    .end local v8           #lastIndex:I
    :cond_1
    if-eqz v1, :cond_2

    .line 113
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_2
    iget-object v10, p0, Lcom/android/calendar/EventLoader$LoadEventDaysRequest;->uiCallback:Ljava/lang/Runnable;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    return-void

    .line 112
    .end local v2           #endDayColumnIndex:I
    .end local v9           #startDayColumnIndex:I
    :catchall_0
    move-exception v10

    if-eqz v1, :cond_3

    .line 113
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v10
.end method

.method public skipRequest(Lcom/android/calendar/EventLoader;)V
    .locals 0
    .parameter "eventLoader"

    .prologue
    .line 121
    return-void
.end method
