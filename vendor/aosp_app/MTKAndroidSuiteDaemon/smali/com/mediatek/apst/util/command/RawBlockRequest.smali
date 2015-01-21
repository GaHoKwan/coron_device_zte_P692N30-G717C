.class public Lcom/mediatek/apst/util/command/RawBlockRequest;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "RawBlockRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private raw:[B


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "featureId"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 76
    return-void
.end method

.method public static builder(I)Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;
    .locals 1
    .parameter "featureId"

    .prologue
    .line 130
    new-instance v0, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;

    invoke-direct {v0, p0}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;-><init>(I)V

    return-object v0
.end method

.method public static builder(II)Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;
    .locals 1
    .parameter "rawBlockSize"
    .parameter "featureId"

    .prologue
    .line 118
    new-instance v0, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/apst/util/command/RawBlockRequest$Builder;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public getRaw()[B
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mediatek/apst/util/command/RawBlockRequest;->raw:[B

    return-object v0
.end method

.method public setRaw([B)V
    .locals 1
    .parameter "raw"

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 100
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/apst/util/command/RawBlockRequest;->raw:[B

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/command/RawBlockRequest;->raw:[B

    goto :goto_0
.end method
