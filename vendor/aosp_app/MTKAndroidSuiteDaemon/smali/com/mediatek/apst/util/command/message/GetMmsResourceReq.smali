.class public Lcom/mediatek/apst/util/command/message/GetMmsResourceReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "GetMmsResourceReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private mmsId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 74
    return-void
.end method


# virtual methods
.method public getMmsId()J
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/message/GetMmsResourceReq;->mmsId:J

    return-wide v0
.end method

.method public setMmsId(J)V
    .locals 0
    .parameter "msgId"

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/message/GetMmsResourceReq;->mmsId:J

    .line 81
    return-void
.end method
