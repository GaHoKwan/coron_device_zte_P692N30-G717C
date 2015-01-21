.class public abstract Lcom/itextpdf/text/pdf/CFFFont$Item;
.super Ljava/lang/Object;
.source "CFFFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/CFFFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "Item"
.end annotation


# instance fields
.field protected myOffset:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/CFFFont$Item;->myOffset:I

    return-void
.end method


# virtual methods
.method public emit([B)V
    .locals 0
    .parameter "buffer"

    .prologue
    .line 396
    return-void
.end method

.method public increment([I)V
    .locals 1
    .parameter "currentOffset"

    .prologue
    .line 393
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/itextpdf/text/pdf/CFFFont$Item;->myOffset:I

    .line 394
    return-void
.end method

.method public xref()V
    .locals 0

    .prologue
    .line 398
    return-void
.end method
