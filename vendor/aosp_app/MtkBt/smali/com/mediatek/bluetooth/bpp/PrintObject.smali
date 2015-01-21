.class Lcom/mediatek/bluetooth/bpp/PrintObject;
.super Ljava/lang/Object;
.source "BluetoothBppServer.java"


# instance fields
.field public Copies:I

.field public DirName:Ljava/lang/String;

.field public DocFmt:Ljava/lang/String;

.field public FileName:Ljava/lang/String;

.field public JobState:I

.field public MediaSize:Ljava/lang/String;

.field public MimeType:Ljava/lang/String;

.field public NumberUp:Ljava/lang/String;

.field public ObjectSize:Ljava/lang/String;

.field public Orient:Ljava/lang/String;

.field public PrintMediaType:I

.field public PrinterState:I

.field public PrinterStateReason:I

.field public Quality:Ljava/lang/String;

.field public Sides:Ljava/lang/String;

.field public bJobBased:Z

.field public nMediaSize:I

.field public nMimeType:I

.field public nNumberUp:I

.field public nObjectSize:I

.field public nOrient:I

.field public nQuality:I

.field public nSides:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "dirname"
    .parameter "filename"
    .parameter "mimetype"
    .parameter "objectsize"
    .parameter "bjobbased"
    .parameter "copies"
    .parameter "numberup"
    .parameter "sides"
    .parameter "orient"
    .parameter "quality"
    .parameter "mediasize"

    .prologue
    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 672
    iput-object p1, p0, Lcom/mediatek/bluetooth/bpp/PrintObject;->DirName:Ljava/lang/String;

    .line 673
    iput-object p2, p0, Lcom/mediatek/bluetooth/bpp/PrintObject;->FileName:Ljava/lang/String;

    .line 674
    iput-object p3, p0, Lcom/mediatek/bluetooth/bpp/PrintObject;->MimeType:Ljava/lang/String;

    .line 675
    iput-object p4, p0, Lcom/mediatek/bluetooth/bpp/PrintObject;->ObjectSize:Ljava/lang/String;

    .line 676
    iput-boolean p5, p0, Lcom/mediatek/bluetooth/bpp/PrintObject;->bJobBased:Z

    .line 678
    iput p6, p0, Lcom/mediatek/bluetooth/bpp/PrintObject;->Copies:I

    .line 679
    iput-object p7, p0, Lcom/mediatek/bluetooth/bpp/PrintObject;->NumberUp:Ljava/lang/String;

    .line 680
    iput-object p8, p0, Lcom/mediatek/bluetooth/bpp/PrintObject;->Sides:Ljava/lang/String;

    .line 681
    iput-object p9, p0, Lcom/mediatek/bluetooth/bpp/PrintObject;->Orient:Ljava/lang/String;

    .line 682
    iput-object p10, p0, Lcom/mediatek/bluetooth/bpp/PrintObject;->Quality:Ljava/lang/String;

    .line 683
    iput-object p11, p0, Lcom/mediatek/bluetooth/bpp/PrintObject;->MediaSize:Ljava/lang/String;

    .line 684
    return-void
.end method
