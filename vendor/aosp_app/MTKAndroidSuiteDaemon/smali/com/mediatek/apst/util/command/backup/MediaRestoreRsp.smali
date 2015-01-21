.class public Lcom/mediatek/apst/util/command/backup/MediaRestoreRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "MediaRestoreRsp.java"


# static fields
.field public static final SDSPACE_NORMAL:I = 0x1

.field public static final SDSPACE_NOTENOUGH:I = 0x0

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private SDState:I

.field private results:[Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 69
    const/high16 v0, 0x111

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 70
    return-void
.end method


# virtual methods
.method public getResults()[Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/apst/util/command/backup/MediaRestoreRsp;->results:[Z

    return-object v0
.end method

.method public getSDState()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/mediatek/apst/util/command/backup/MediaRestoreRsp;->SDState:I

    return v0
.end method

.method public setResults([Z)V
    .locals 0
    .parameter "results"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/apst/util/command/backup/MediaRestoreRsp;->results:[Z

    .line 88
    return-void
.end method

.method public setSDState(I)V
    .locals 0
    .parameter "sDState"

    .prologue
    .line 91
    iput p1, p0, Lcom/mediatek/apst/util/command/backup/MediaRestoreRsp;->SDState:I

    .line 92
    return-void
.end method
