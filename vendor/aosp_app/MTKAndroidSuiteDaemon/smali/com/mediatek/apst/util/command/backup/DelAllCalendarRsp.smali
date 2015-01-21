.class public Lcom/mediatek/apst/util/command/backup/DelAllCalendarRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "DelAllCalendarRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 68
    const/high16 v0, 0x111

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 69
    return-void
.end method
