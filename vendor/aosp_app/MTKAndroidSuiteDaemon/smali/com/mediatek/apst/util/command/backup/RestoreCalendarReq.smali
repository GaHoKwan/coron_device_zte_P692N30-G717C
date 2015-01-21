.class public Lcom/mediatek/apst/util/command/backup/RestoreCalendarReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "RestoreCalendarReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private eventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    const/high16 v0, 0x111

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 72
    return-void
.end method


# virtual methods
.method public getEvent()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/RestoreCalendarReq;->eventList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setEvent(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, event:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/calendar/CalendarEvent;>;"
    iput-object p1, p0, Lcom/mediatek/apst/util/command/backup/RestoreCalendarReq;->eventList:Ljava/util/ArrayList;

    .line 80
    return-void
.end method
