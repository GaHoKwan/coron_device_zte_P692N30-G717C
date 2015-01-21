.class public Lcom/mediatek/apst/util/command/contacts/GetDetailedContactReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "GetDetailedContactReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private contactId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 68
    return-void
.end method


# virtual methods
.method public getContactId()J
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/contacts/GetDetailedContactReq;->contactId:J

    return-wide v0
.end method

.method public setContactId(J)V
    .locals 0
    .parameter "contactId"

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/contacts/GetDetailedContactReq;->contactId:J

    .line 84
    return-void
.end method
