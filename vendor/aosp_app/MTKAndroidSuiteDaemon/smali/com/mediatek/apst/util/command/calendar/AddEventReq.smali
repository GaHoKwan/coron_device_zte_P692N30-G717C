.class public Lcom/mediatek/apst/util/command/calendar/AddEventReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "AddEventReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private event:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;

.field private fromFeature:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    const/high16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 73
    return-void
.end method


# virtual methods
.method public getEvent()Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/apst/util/command/calendar/AddEventReq;->event:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;

    return-object v0
.end method

.method public getFromFeature()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/mediatek/apst/util/command/calendar/AddEventReq;->fromFeature:I

    return v0
.end method

.method public setEvent(Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mediatek/apst/util/command/calendar/AddEventReq;->event:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;

    .line 81
    return-void
.end method

.method public setFromFeature(I)V
    .locals 0
    .parameter "fromFeature"

    .prologue
    .line 88
    iput p1, p0, Lcom/mediatek/apst/util/command/calendar/AddEventReq;->fromFeature:I

    .line 89
    return-void
.end method
