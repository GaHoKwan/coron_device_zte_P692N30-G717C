.class public Lcom/mediatek/apst/util/command/calendar/DeleteEventReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "DeleteEventReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private deleteIds:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    const/high16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 71
    return-void
.end method


# virtual methods
.method public getDeleteIds()[J
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/apst/util/command/calendar/DeleteEventReq;->deleteIds:[J

    return-object v0
.end method

.method public setDeleteId([J)V
    .locals 0
    .parameter "deleteIds"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mediatek/apst/util/command/calendar/DeleteEventReq;->deleteIds:[J

    .line 87
    return-void
.end method
