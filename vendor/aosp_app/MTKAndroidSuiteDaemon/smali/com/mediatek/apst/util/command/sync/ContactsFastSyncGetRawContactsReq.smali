.class public Lcom/mediatek/apst/util/command/sync/ContactsFastSyncGetRawContactsReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "ContactsFastSyncGetRawContactsReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private requestedContactIds:[J


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
.method public getRequestedContactIds()[J
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncGetRawContactsReq;->requestedContactIds:[J

    return-object v0
.end method

.method public setRequestedContactIds([J)V
    .locals 0
    .parameter "requestedContactIds"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mediatek/apst/util/command/sync/ContactsFastSyncGetRawContactsReq;->requestedContactIds:[J

    .line 89
    return-void
.end method
