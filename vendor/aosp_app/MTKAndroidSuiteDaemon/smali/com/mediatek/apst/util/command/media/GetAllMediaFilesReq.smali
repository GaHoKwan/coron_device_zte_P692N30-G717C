.class public Lcom/mediatek/apst/util/command/media/GetAllMediaFilesReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "GetAllMediaFilesReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private requestedContentTypes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const/high16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 67
    return-void
.end method


# virtual methods
.method public getRequestedContentTypes()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/mediatek/apst/util/command/media/GetAllMediaFilesReq;->requestedContentTypes:I

    return v0
.end method

.method public setRequestedContentTypes(I)V
    .locals 0
    .parameter "requestedContentTypes"

    .prologue
    .line 113
    iput p1, p0, Lcom/mediatek/apst/util/command/media/GetAllMediaFilesReq;->requestedContentTypes:I

    .line 114
    return-void
.end method
