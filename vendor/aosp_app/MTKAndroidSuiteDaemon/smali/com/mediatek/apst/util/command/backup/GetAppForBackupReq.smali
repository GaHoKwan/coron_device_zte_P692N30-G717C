.class public Lcom/mediatek/apst/util/command/backup/GetAppForBackupReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "GetAppForBackupReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private destIconHeight:I

.field private destIconWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const/high16 v0, 0x111

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 60
    return-void
.end method


# virtual methods
.method public getDestIconHeight()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/mediatek/apst/util/command/backup/GetAppForBackupReq;->destIconHeight:I

    return v0
.end method

.method public getDestIconWidth()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/mediatek/apst/util/command/backup/GetAppForBackupReq;->destIconWidth:I

    return v0
.end method

.method public setDestIconHeight(I)V
    .locals 0
    .parameter "destIconHeight"

    .prologue
    .line 107
    iput p1, p0, Lcom/mediatek/apst/util/command/backup/GetAppForBackupReq;->destIconHeight:I

    .line 108
    return-void
.end method

.method public setDestIconWidth(I)V
    .locals 0
    .parameter "destIconWidth"

    .prologue
    .line 96
    iput p1, p0, Lcom/mediatek/apst/util/command/backup/GetAppForBackupReq;->destIconWidth:I

    .line 97
    return-void
.end method
