.class public Lcom/mediatek/apst/util/command/backup/RestoreContactsReq;
.super Lcom/mediatek/apst/util/command/RawBlockRequest;
.source "RestoreContactsReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/apst/util/command/backup/RestoreContactsReq$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    const/high16 v0, 0x111

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RawBlockRequest;-><init>(I)V

    .line 71
    return-void
.end method

.method public static bridge synthetic builder(I)Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-static {p0}, Lcom/mediatek/apst/util/command/backup/RestoreContactsReq;->builder(I)Lcom/mediatek/apst/util/command/backup/RestoreContactsReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lcom/mediatek/apst/util/command/backup/RestoreContactsReq$Builder;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/mediatek/apst/util/command/backup/RestoreContactsReq$Builder;

    invoke-direct {v0}, Lcom/mediatek/apst/util/command/backup/RestoreContactsReq$Builder;-><init>()V

    return-object v0
.end method

.method public static builder(I)Lcom/mediatek/apst/util/command/backup/RestoreContactsReq$Builder;
    .locals 1
    .parameter "rawBlockSize"

    .prologue
    .line 85
    new-instance v0, Lcom/mediatek/apst/util/command/backup/RestoreContactsReq$Builder;

    invoke-direct {v0, p0}, Lcom/mediatek/apst/util/command/backup/RestoreContactsReq$Builder;-><init>(I)V

    return-object v0
.end method
