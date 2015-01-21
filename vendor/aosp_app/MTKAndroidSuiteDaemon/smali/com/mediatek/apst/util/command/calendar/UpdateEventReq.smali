.class public Lcom/mediatek/apst/util/command/calendar/UpdateEventReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "UpdateEventReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private newOne:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;

.field private updateId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    const/high16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 62
    return-void
.end method


# virtual methods
.method public getNewOne()Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/apst/util/command/calendar/UpdateEventReq;->newOne:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;

    return-object v0
.end method

.method public getUpdateId()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/calendar/UpdateEventReq;->updateId:J

    return-wide v0
.end method

.method public setNewOne(Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;)V
    .locals 0
    .parameter "newOne"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mediatek/apst/util/command/calendar/UpdateEventReq;->newOne:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;

    .line 86
    return-void
.end method

.method public setUpdateId(J)V
    .locals 0
    .parameter "updateId"

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/calendar/UpdateEventReq;->updateId:J

    .line 82
    return-void
.end method
