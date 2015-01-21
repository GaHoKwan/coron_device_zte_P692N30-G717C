.class public Lcom/mediatek/apst/util/command/backup/RestoreSmsReq;
.super Lcom/mediatek/apst/util/command/RawBlockRequest;
.source "RestoreSmsReq.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/apst/util/command/backup/RestoreSmsReq$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    const/high16 v0, 0x111

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RawBlockRequest;-><init>(I)V

    .line 68
    return-void
.end method

.method public static bridge synthetic builder(I)Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-static {p0}, Lcom/mediatek/apst/util/command/backup/RestoreSmsReq;->builder(I)Lcom/mediatek/apst/util/command/backup/RestoreSmsReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lcom/mediatek/apst/util/command/backup/RestoreSmsReq$Builder;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/mediatek/apst/util/command/backup/RestoreSmsReq$Builder;

    invoke-direct {v0}, Lcom/mediatek/apst/util/command/backup/RestoreSmsReq$Builder;-><init>()V

    return-object v0
.end method

.method public static builder(I)Lcom/mediatek/apst/util/command/backup/RestoreSmsReq$Builder;
    .locals 1
    .parameter "rawBlockSize"

    .prologue
    .line 86
    new-instance v0, Lcom/mediatek/apst/util/command/backup/RestoreSmsReq$Builder;

    invoke-direct {v0, p0}, Lcom/mediatek/apst/util/command/backup/RestoreSmsReq$Builder;-><init>(I)V

    return-object v0
.end method
