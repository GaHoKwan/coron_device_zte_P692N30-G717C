.class public Lcom/mediatek/apst/util/command/calendar/NotifyCalendarEventChangeReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "NotifyCalendarEventChangeReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private event:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    const/high16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 72
    return-void
.end method


# virtual methods
.method public getEvent()Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/apst/util/command/calendar/NotifyCalendarEventChangeReq;->event:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;

    return-object v0
.end method

.method public setEvent(Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mediatek/apst/util/command/calendar/NotifyCalendarEventChangeReq;->event:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;

    .line 84
    return-void
.end method
