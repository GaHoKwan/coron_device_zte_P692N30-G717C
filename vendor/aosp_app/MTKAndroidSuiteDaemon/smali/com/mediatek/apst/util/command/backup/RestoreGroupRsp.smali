.class public Lcom/mediatek/apst/util/command/backup/RestoreGroupRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "RestoreGroupRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private mGroupCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "token"

    .prologue
    .line 66
    const/high16 v0, 0x111

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 67
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/mediatek/apst/util/command/backup/RestoreGroupRsp;->mGroupCount:I

    return v0
.end method

.method public setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 74
    iput p1, p0, Lcom/mediatek/apst/util/command/backup/RestoreGroupRsp;->mGroupCount:I

    .line 75
    return-void
.end method
