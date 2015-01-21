.class public Lcom/mediatek/apst/util/command/backup/RestoreMmsReq;
.super Lcom/mediatek/apst/util/command/RawBlockRequest;
.source "RestoreMmsReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private isLastImport:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const/high16 v0, 0x111

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RawBlockRequest;-><init>(I)V

    .line 67
    return-void
.end method


# virtual methods
.method public isIsLastImport()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/mediatek/apst/util/command/backup/RestoreMmsReq;->isLastImport:Z

    return v0
.end method

.method public setIsLastImport(Z)V
    .locals 0
    .parameter "isLastImport"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/mediatek/apst/util/command/backup/RestoreMmsReq;->isLastImport:Z

    .line 79
    return-void
.end method
