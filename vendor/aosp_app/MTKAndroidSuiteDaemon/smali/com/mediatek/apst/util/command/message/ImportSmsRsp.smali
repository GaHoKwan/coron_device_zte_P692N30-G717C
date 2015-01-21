.class public Lcom/mediatek/apst/util/command/message/ImportSmsRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "ImportSmsRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private insertedIds:[J

.field private threadIds:[J


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "token"

    .prologue
    .line 68
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 69
    return-void
.end method


# virtual methods
.method public getInsertedIds()[J
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/apst/util/command/message/ImportSmsRsp;->insertedIds:[J

    return-object v0
.end method

.method public getThreadIds()[J
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/apst/util/command/message/ImportSmsRsp;->threadIds:[J

    return-object v0
.end method

.method public setInsertedIds([J)V
    .locals 0
    .parameter "insertedIds"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mediatek/apst/util/command/message/ImportSmsRsp;->insertedIds:[J

    .line 87
    return-void
.end method

.method public setThreadIds([J)V
    .locals 0
    .parameter "threadIds"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/apst/util/command/message/ImportSmsRsp;->threadIds:[J

    .line 91
    return-void
.end method
