.class public final Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;
.super Lcom/itextpdf/text/pdf/CFFFont$Item;
.source "CFFFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/CFFFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "MarkerItem"
.end annotation


# instance fields
.field p:Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V
    .locals 0
    .parameter "pointerToMarker"

    .prologue
    .line 677
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/CFFFont$Item;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;->p:Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;

    return-void
.end method


# virtual methods
.method public xref()V
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;->p:Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;

    iget v1, p0, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;->myOffset:I

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;->set(I)V

    .line 681
    return-void
.end method
