.class Lcom/mediatek/bluetooth/bpp/PrinterAttr;
.super Ljava/lang/Object;
.source "BluetoothBppServer.java"


# instance fields
.field MaxCopies:I

.field public MaxNumberup:[Ljava/lang/String;

.field public MediaSize:[Ljava/lang/String;

.field public Orientations:[Ljava/lang/String;

.field public Qualities:[Ljava/lang/String;

.field public Sides:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0
    .parameter "sides"
    .parameter "orientations"
    .parameter "qualities"
    .parameter "mediasize"
    .parameter "maxnumberup"
    .parameter "maxcopies"

    .prologue
    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    iput-object p1, p0, Lcom/mediatek/bluetooth/bpp/PrinterAttr;->Sides:[Ljava/lang/String;

    .line 632
    iput-object p2, p0, Lcom/mediatek/bluetooth/bpp/PrinterAttr;->Orientations:[Ljava/lang/String;

    .line 633
    iput-object p3, p0, Lcom/mediatek/bluetooth/bpp/PrinterAttr;->Qualities:[Ljava/lang/String;

    .line 634
    iput-object p4, p0, Lcom/mediatek/bluetooth/bpp/PrinterAttr;->MediaSize:[Ljava/lang/String;

    .line 635
    iput-object p5, p0, Lcom/mediatek/bluetooth/bpp/PrinterAttr;->MaxNumberup:[Ljava/lang/String;

    .line 636
    iput p6, p0, Lcom/mediatek/bluetooth/bpp/PrinterAttr;->MaxCopies:I

    .line 637
    return-void
.end method
