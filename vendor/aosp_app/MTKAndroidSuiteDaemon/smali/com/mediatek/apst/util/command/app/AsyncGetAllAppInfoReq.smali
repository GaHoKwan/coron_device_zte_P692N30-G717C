.class public Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "AsyncGetAllAppInfoReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private destIconHeight:I

.field private destIconWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 69
    return-void
.end method


# virtual methods
.method public getDestIconHeight()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoReq;->destIconHeight:I

    return v0
.end method

.method public getDestIconWidth()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoReq;->destIconWidth:I

    return v0
.end method

.method public setDestIconHeight(I)V
    .locals 0
    .parameter "destIconHeight"

    .prologue
    .line 110
    iput p1, p0, Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoReq;->destIconHeight:I

    .line 111
    return-void
.end method

.method public setDestIconWidth(I)V
    .locals 0
    .parameter "destIconWidth"

    .prologue
    .line 101
    iput p1, p0, Lcom/mediatek/apst/util/command/app/AsyncGetAllAppInfoReq;->destIconWidth:I

    .line 102
    return-void
.end method
