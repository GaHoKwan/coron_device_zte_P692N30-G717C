.class public Lcom/mediatek/apst/util/command/sync/ContactsSlowSyncGetAllContactDataReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "ContactsSlowSyncGetAllContactDataReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private contactIdLimit:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const/high16 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 67
    return-void
.end method


# virtual methods
.method public getContactIdLimit()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/sync/ContactsSlowSyncGetAllContactDataReq;->contactIdLimit:J

    return-wide v0
.end method

.method public setContactIdLimit(J)V
    .locals 0
    .parameter "contactIdLimit"

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/sync/ContactsSlowSyncGetAllContactDataReq;->contactIdLimit:J

    .line 103
    return-void
.end method
