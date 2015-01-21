.class public Lcom/mediatek/apst/util/command/RawBlockResponse;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "RawBlockResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private progress:I

.field private raw:[B

.field private total:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "featureId"
    .parameter "requestToken"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 82
    return-void
.end method

.method public static builder(I)Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;
    .locals 1
    .parameter "featureId"

    .prologue
    .line 171
    new-instance v0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;

    invoke-direct {v0, p0}, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;-><init>(I)V

    return-object v0
.end method

.method public static builder(II)Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;
    .locals 1
    .parameter "rawBlockSize"
    .parameter "featureId"

    .prologue
    .line 159
    new-instance v0, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/apst/util/command/RawBlockResponse$Builder;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/mediatek/apst/util/command/RawBlockResponse;->progress:I

    return v0
.end method

.method public getRaw()[B
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/apst/util/command/RawBlockResponse;->raw:[B

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/mediatek/apst/util/command/RawBlockResponse;->total:I

    return v0
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 136
    iput p1, p0, Lcom/mediatek/apst/util/command/RawBlockResponse;->progress:I

    .line 137
    return-void
.end method

.method public setRaw([B)V
    .locals 1
    .parameter "raw"

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 122
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mediatek/apst/util/command/RawBlockResponse;->raw:[B

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iput-object p1, p0, Lcom/mediatek/apst/util/command/RawBlockResponse;->raw:[B

    goto :goto_0
.end method

.method public setTotal(I)V
    .locals 0
    .parameter "total"

    .prologue
    .line 144
    iput p1, p0, Lcom/mediatek/apst/util/command/RawBlockResponse;->total:I

    .line 145
    return-void
.end method
