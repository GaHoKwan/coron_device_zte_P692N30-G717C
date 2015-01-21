.class public Lcom/mediatek/apst/util/command/media/RenameFilesRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "RenameFilesRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private results:[Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 66
    const/high16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 67
    return-void
.end method


# virtual methods
.method public getResults()[Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/apst/util/command/media/RenameFilesRsp;->results:[Z

    return-object v0
.end method

.method public setResults([Z)V
    .locals 0
    .parameter "results"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mediatek/apst/util/command/media/RenameFilesRsp;->results:[Z

    .line 81
    return-void
.end method
