.class public Lcom/mediatek/apst/util/command/calendar/AddEventRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "AddEventRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private fromFeature:I

.field private insertedId:J

.field private result:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 75
    const/high16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 76
    return-void
.end method


# virtual methods
.method public getFromFeature()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/mediatek/apst/util/command/calendar/AddEventRsp;->fromFeature:I

    return v0
.end method

.method public getInsertedId()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/calendar/AddEventRsp;->insertedId:J

    return-wide v0
.end method

.method public getResult()Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/apst/util/command/calendar/AddEventRsp;->result:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;

    return-object v0
.end method

.method public setFromFeature(I)V
    .locals 0
    .parameter "fromFeature"

    .prologue
    .line 102
    iput p1, p0, Lcom/mediatek/apst/util/command/calendar/AddEventRsp;->fromFeature:I

    .line 103
    return-void
.end method

.method public setInsertedId(J)V
    .locals 0
    .parameter "insertedId"

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/calendar/AddEventRsp;->insertedId:J

    .line 87
    return-void
.end method

.method public setResult(Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/mediatek/apst/util/command/calendar/AddEventRsp;->result:Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;

    .line 95
    return-void
.end method
