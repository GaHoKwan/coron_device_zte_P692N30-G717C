.class public Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;
.super Ljava/lang/Object;
.source "TIFFFaxDecompressor.java"


# static fields
.field static additionalMakeup:[S

.field static black:[S

.field static flipTable:[B

.field static initBlack:[S

.field static table1:[I

.field static table2:[I

.field static twoBitBlack:[S

.field static twoDCodes:[B

.field static white:[S


# instance fields
.field private bitPointer:I

.field private bitsPerScanline:I

.field private buffer:[B

.field private bytePointer:I

.field private changingElemSize:I

.field protected compression:I

.field private currChangingElems:[I

.field private data:[B

.field public fails:I

.field protected fillBits:I

.field protected fillOrder:I

.field private h:I

.field private lastChangingElement:I

.field private lineBitNum:I

.field protected oneD:I

.field private prevChangingElems:[I

.field private t4Options:I

.field private t6Options:I

.field protected uncompressedMode:I

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    const/16 v1, 0x9

    .line 99
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->table1:[I

    .line 110
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->table2:[I

    .line 122
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->flipTable:[B

    .line 156
    const/16 v0, 0x400

    new-array v0, v0, [S

    fill-array-data v0, :array_3

    sput-object v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->white:[S

    .line 414
    new-array v0, v2, [S

    fill-array-data v0, :array_4

    sput-object v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->additionalMakeup:[S

    .line 421
    new-array v0, v2, [S

    fill-array-data v0, :array_5

    sput-object v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->initBlack:[S

    .line 428
    const/4 v0, 0x4

    new-array v0, v0, [S

    fill-array-data v0, :array_6

    sput-object v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->twoBitBlack:[S

    .line 430
    const/16 v0, 0x200

    new-array v0, v0, [S

    fill-array-data v0, :array_7

    sput-object v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->black:[S

    .line 559
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    sput-object v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->twoDCodes:[B

    return-void

    .line 99
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    .line 110
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0xc0t 0x0t 0x0t 0x0t
        0xe0t 0x0t 0x0t 0x0t
        0xf0t 0x0t 0x0t 0x0t
        0xf8t 0x0t 0x0t 0x0t
        0xfct 0x0t 0x0t 0x0t
        0xfet 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data

    .line 122
    :array_2
    .array-data 0x1
        0x0t
        0x80t
        0x40t
        0xc0t
        0x20t
        0xa0t
        0x60t
        0xe0t
        0x10t
        0x90t
        0x50t
        0xd0t
        0x30t
        0xb0t
        0x70t
        0xf0t
        0x8t
        0x88t
        0x48t
        0xc8t
        0x28t
        0xa8t
        0x68t
        0xe8t
        0x18t
        0x98t
        0x58t
        0xd8t
        0x38t
        0xb8t
        0x78t
        0xf8t
        0x4t
        0x84t
        0x44t
        0xc4t
        0x24t
        0xa4t
        0x64t
        0xe4t
        0x14t
        0x94t
        0x54t
        0xd4t
        0x34t
        0xb4t
        0x74t
        0xf4t
        0xct
        0x8ct
        0x4ct
        0xcct
        0x2ct
        0xact
        0x6ct
        0xect
        0x1ct
        0x9ct
        0x5ct
        0xdct
        0x3ct
        0xbct
        0x7ct
        0xfct
        0x2t
        0x82t
        0x42t
        0xc2t
        0x22t
        0xa2t
        0x62t
        0xe2t
        0x12t
        0x92t
        0x52t
        0xd2t
        0x32t
        0xb2t
        0x72t
        0xf2t
        0xat
        0x8at
        0x4at
        0xcat
        0x2at
        0xaat
        0x6at
        0xeat
        0x1at
        0x9at
        0x5at
        0xdat
        0x3at
        0xbat
        0x7at
        0xfat
        0x6t
        0x86t
        0x46t
        0xc6t
        0x26t
        0xa6t
        0x66t
        0xe6t
        0x16t
        0x96t
        0x56t
        0xd6t
        0x36t
        0xb6t
        0x76t
        0xf6t
        0xet
        0x8et
        0x4et
        0xcet
        0x2et
        0xaet
        0x6et
        0xeet
        0x1et
        0x9et
        0x5et
        0xdet
        0x3et
        0xbet
        0x7et
        0xfet
        0x1t
        0x81t
        0x41t
        0xc1t
        0x21t
        0xa1t
        0x61t
        0xe1t
        0x11t
        0x91t
        0x51t
        0xd1t
        0x31t
        0xb1t
        0x71t
        0xf1t
        0x9t
        0x89t
        0x49t
        0xc9t
        0x29t
        0xa9t
        0x69t
        0xe9t
        0x19t
        0x99t
        0x59t
        0xd9t
        0x39t
        0xb9t
        0x79t
        0xf9t
        0x5t
        0x85t
        0x45t
        0xc5t
        0x25t
        0xa5t
        0x65t
        0xe5t
        0x15t
        0x95t
        0x55t
        0xd5t
        0x35t
        0xb5t
        0x75t
        0xf5t
        0xdt
        0x8dt
        0x4dt
        0xcdt
        0x2dt
        0xadt
        0x6dt
        0xedt
        0x1dt
        0x9dt
        0x5dt
        0xddt
        0x3dt
        0xbdt
        0x7dt
        0xfdt
        0x3t
        0x83t
        0x43t
        0xc3t
        0x23t
        0xa3t
        0x63t
        0xe3t
        0x13t
        0x93t
        0x53t
        0xd3t
        0x33t
        0xb3t
        0x73t
        0xf3t
        0xbt
        0x8bt
        0x4bt
        0xcbt
        0x2bt
        0xabt
        0x6bt
        0xebt
        0x1bt
        0x9bt
        0x5bt
        0xdbt
        0x3bt
        0xbbt
        0x7bt
        0xfbt
        0x7t
        0x87t
        0x47t
        0xc7t
        0x27t
        0xa7t
        0x67t
        0xe7t
        0x17t
        0x97t
        0x57t
        0xd7t
        0x37t
        0xb7t
        0x77t
        0xf7t
        0xft
        0x8ft
        0x4ft
        0xcft
        0x2ft
        0xaft
        0x6ft
        0xeft
        0x1ft
        0x9ft
        0x5ft
        0xdft
        0x3ft
        0xbft
        0x7ft
        0xfft
    .end array-data

    .line 156
    :array_3
    .array-data 0x2
        0x1et 0x19t
        0x0t 0x19t
        0x0t 0x19t
        0x0t 0x19t
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0xb0t 0x3t
        0xb0t 0x3t
        0xb0t 0x3t
        0xb0t 0x3t
        0xd0t 0x3t
        0xd0t 0x3t
        0xd0t 0x3t
        0xd0t 0x3t
        0xb0t 0x5t
        0xb0t 0x5t
        0xb0t 0x5t
        0xb0t 0x5t
        0xd0t 0x5t
        0xd0t 0x5t
        0xd0t 0x5t
        0xd0t 0x5t
        0xcet 0x2t
        0xcet 0x2t
        0xcet 0x2t
        0xcet 0x2t
        0xcet 0x2t
        0xcet 0x2t
        0xcet 0x2t
        0xcet 0x2t
        0xeet 0x2t
        0xeet 0x2t
        0xeet 0x2t
        0xeet 0x2t
        0xeet 0x2t
        0xeet 0x2t
        0xeet 0x2t
        0xeet 0x2t
        0xf0t 0x5t
        0xf0t 0x5t
        0xf0t 0x5t
        0xf0t 0x5t
        0x10t 0x6t
        0x10t 0x6t
        0x10t 0x6t
        0x10t 0x6t
        0xact 0x1t
        0xact 0x1t
        0xact 0x1t
        0xact 0x1t
        0xact 0x1t
        0xact 0x1t
        0xact 0x1t
        0xact 0x1t
        0xact 0x1t
        0xact 0x1t
        0xact 0x1t
        0xact 0x1t
        0xact 0x1t
        0xact 0x1t
        0xact 0x1t
        0xact 0x1t
        0x8et 0x2t
        0x8et 0x2t
        0x8et 0x2t
        0x8et 0x2t
        0x8et 0x2t
        0x8et 0x2t
        0x8et 0x2t
        0x8et 0x2t
        0x30t 0x4t
        0x30t 0x4t
        0x30t 0x4t
        0x30t 0x4t
        0x50t 0x4t
        0x50t 0x4t
        0x50t 0x4t
        0x50t 0x4t
        0x70t 0x4t
        0x70t 0x4t
        0x70t 0x4t
        0x70t 0x4t
        0x90t 0x4t
        0x90t 0x4t
        0x90t 0x4t
        0x90t 0x4t
        0xb0t 0x4t
        0xb0t 0x4t
        0xb0t 0x4t
        0xb0t 0x4t
        0xd0t 0x4t
        0xd0t 0x4t
        0xd0t 0x4t
        0xd0t 0x4t
        0x6et 0x2t
        0x6et 0x2t
        0x6et 0x2t
        0x6et 0x2t
        0x6et 0x2t
        0x6et 0x2t
        0x6et 0x2t
        0x6et 0x2t
        0xf0t 0x3t
        0xf0t 0x3t
        0xf0t 0x3t
        0xf0t 0x3t
        0x10t 0x4t
        0x10t 0x4t
        0x10t 0x4t
        0x10t 0x4t
        0x2ct 0x0t
        0x2ct 0x0t
        0x2ct 0x0t
        0x2ct 0x0t
        0x2ct 0x0t
        0x2ct 0x0t
        0x2ct 0x0t
        0x2ct 0x0t
        0x2ct 0x0t
        0x2ct 0x0t
        0x2ct 0x0t
        0x2ct 0x0t
        0x2ct 0x0t
        0x2ct 0x0t
        0x2ct 0x0t
        0x2ct 0x0t
        0x8ct 0x1t
        0x8ct 0x1t
        0x8ct 0x1t
        0x8ct 0x1t
        0x8ct 0x1t
        0x8ct 0x1t
        0x8ct 0x1t
        0x8ct 0x1t
        0x8ct 0x1t
        0x8ct 0x1t
        0x8ct 0x1t
        0x8ct 0x1t
        0x8ct 0x1t
        0x8ct 0x1t
        0x8ct 0x1t
        0x8ct 0x1t
        0xb0t 0x6t
        0xb0t 0x6t
        0xb0t 0x6t
        0xb0t 0x6t
        0xd0t 0x6t
        0xd0t 0x6t
        0xd0t 0x6t
        0xd0t 0x6t
        0x4et 0x3t
        0x4et 0x3t
        0x4et 0x3t
        0x4et 0x3t
        0x4et 0x3t
        0x4et 0x3t
        0x4et 0x3t
        0x4et 0x3t
        0xf0t 0x4t
        0xf0t 0x4t
        0xf0t 0x4t
        0xf0t 0x4t
        0x10t 0x5t
        0x10t 0x5t
        0x10t 0x5t
        0x10t 0x5t
        0x30t 0x5t
        0x30t 0x5t
        0x30t 0x5t
        0x30t 0x5t
        0x50t 0x5t
        0x50t 0x5t
        0x50t 0x5t
        0x50t 0x5t
        0x70t 0x5t
        0x70t 0x5t
        0x70t 0x5t
        0x70t 0x5t
        0x90t 0x5t
        0x90t 0x5t
        0x90t 0x5t
        0x90t 0x5t
        0xaet 0x2t
        0xaet 0x2t
        0xaet 0x2t
        0xaet 0x2t
        0xaet 0x2t
        0xaet 0x2t
        0xaet 0x2t
        0xaet 0x2t
        0x8et 0x3t
        0x8et 0x3t
        0x8et 0x3t
        0x8et 0x3t
        0x8et 0x3t
        0x8et 0x3t
        0x8et 0x3t
        0x8et 0x3t
        0xb0t 0x7t
        0xb0t 0x7t
        0xb0t 0x7t
        0xb0t 0x7t
        0xd0t 0x7t
        0xd0t 0x7t
        0xd0t 0x7t
        0xd0t 0x7t
        0xf0t 0x7t
        0xf0t 0x7t
        0xf0t 0x7t
        0xf0t 0x7t
        0x10t 0x0t
        0x10t 0x0t
        0x10t 0x0t
        0x10t 0x0t
        0x11t 0x28t
        0x11t 0x28t
        0x11t 0x28t
        0x11t 0x28t
        0x11t 0x30t
        0x11t 0x30t
        0x11t 0x30t
        0x11t 0x30t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x4at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6at 0x1t
        0x6et 0x3t
        0x6et 0x3t
        0x6et 0x3t
        0x6et 0x3t
        0x6et 0x3t
        0x6et 0x3t
        0x6et 0x3t
        0x6et 0x3t
        0x70t 0x7t
        0x70t 0x7t
        0x70t 0x7t
        0x70t 0x7t
        0x90t 0x7t
        0x90t 0x7t
        0x90t 0x7t
        0x90t 0x7t
        0x13t 0xb8t
        0x13t 0xb8t
        0x13t 0xc0t
        0x13t 0xc0t
        0x13t 0xc8t
        0x13t 0xc8t
        0x13t 0xd8t
        0x13t 0xd8t
        0x4et 0x2t
        0x4et 0x2t
        0x4et 0x2t
        0x4et 0x2t
        0x4et 0x2t
        0x4et 0x2t
        0x4et 0x2t
        0x4et 0x2t
        0xet 0x3t
        0xet 0x3t
        0xet 0x3t
        0xet 0x3t
        0xet 0x3t
        0xet 0x3t
        0xet 0x3t
        0xet 0x3t
        0x30t 0x6t
        0x30t 0x6t
        0x30t 0x6t
        0x30t 0x6t
        0x50t 0x6t
        0x50t 0x6t
        0x50t 0x6t
        0x50t 0x6t
        0x70t 0x6t
        0x70t 0x6t
        0x70t 0x6t
        0x70t 0x6t
        0x90t 0x6t
        0x90t 0x6t
        0x90t 0x6t
        0x90t 0x6t
        0x2et 0x3t
        0x2et 0x3t
        0x2et 0x3t
        0x2et 0x3t
        0x2et 0x3t
        0x2et 0x3t
        0x2et 0x3t
        0x2et 0x3t
        0xf0t 0x6t
        0xf0t 0x6t
        0xf0t 0x6t
        0xf0t 0x6t
        0x10t 0x7t
        0x10t 0x7t
        0x10t 0x7t
        0x10t 0x7t
        0x30t 0x7t
        0x30t 0x7t
        0x30t 0x7t
        0x30t 0x7t
        0x50t 0x7t
        0x50t 0x7t
        0x50t 0x7t
        0x50t 0x7t
        0xdt 0x18t
        0xdt 0x18t
        0xdt 0x18t
        0xdt 0x18t
        0xdt 0x18t
        0xdt 0x18t
        0xdt 0x18t
        0xdt 0x18t
        0xdt 0x18t
        0xdt 0x18t
        0xdt 0x18t
        0xdt 0x18t
        0xdt 0x18t
        0xdt 0x18t
        0xdt 0x18t
        0xdt 0x18t
        0xdt 0xd0t
        0xdt 0xd0t
        0xdt 0xd0t
        0xdt 0xd0t
        0xdt 0xd0t
        0xdt 0xd0t
        0xdt 0xd0t
        0xdt 0xd0t
        0xdt 0xd0t
        0xdt 0xd0t
        0xdt 0xd0t
        0xdt 0xd0t
        0xdt 0xd0t
        0xdt 0xd0t
        0xdt 0xd0t
        0xdt 0xd0t
        0x11t 0x38t
        0x11t 0x38t
        0x11t 0x38t
        0x11t 0x38t
        0x11t 0x40t
        0x11t 0x40t
        0x11t 0x40t
        0x11t 0x40t
        0x13t 0x58t
        0x13t 0x58t
        0x13t 0x60t
        0x13t 0x60t
        0x11t 0x50t
        0x11t 0x50t
        0x11t 0x50t
        0x11t 0x50t
        0x11t 0x48t
        0x11t 0x48t
        0x11t 0x48t
        0x11t 0x48t
        0x13t 0x68t
        0x13t 0x68t
        0x13t 0x70t
        0x13t 0x70t
        0x13t 0x78t
        0x13t 0x78t
        0x13t 0x80t
        0x13t 0x80t
        0x13t 0x88t
        0x13t 0x88t
        0x13t 0x90t
        0x13t 0x90t
        0x13t 0x98t
        0x13t 0x98t
        0x13t 0xa0t
        0x13t 0xa0t
        0x13t 0xa8t
        0x13t 0xa8t
        0x13t 0xb0t
        0x13t 0xb0t
        0xft 0x20t
        0xft 0x20t
        0xft 0x20t
        0xft 0x20t
        0xft 0x20t
        0xft 0x20t
        0xft 0x20t
        0xft 0x20t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x48t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0x68t 0x0t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xbt 0x10t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0xat 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0x2at 0x1t
        0xct 0x2t
        0xct 0x2t
        0xct 0x2t
        0xct 0x2t
        0xct 0x2t
        0xct 0x2t
        0xct 0x2t
        0xct 0x2t
        0xct 0x2t
        0xct 0x2t
        0xct 0x2t
        0xct 0x2t
        0xct 0x2t
        0xct 0x2t
        0xct 0x2t
        0xct 0x2t
        0x2ct 0x2t
        0x2ct 0x2t
        0x2ct 0x2t
        0x2ct 0x2t
        0x2ct 0x2t
        0x2ct 0x2t
        0x2ct 0x2t
        0x2ct 0x2t
        0x2ct 0x2t
        0x2ct 0x2t
        0x2ct 0x2t
        0x2ct 0x2t
        0x2ct 0x2t
        0x2ct 0x2t
        0x2ct 0x2t
        0x2ct 0x2t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0x88t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xa8t 0x0t
        0xcct 0x1t
        0xcct 0x1t
        0xcct 0x1t
        0xcct 0x1t
        0xcct 0x1t
        0xcct 0x1t
        0xcct 0x1t
        0xcct 0x1t
        0xcct 0x1t
        0xcct 0x1t
        0xcct 0x1t
        0xcct 0x1t
        0xcct 0x1t
        0xcct 0x1t
        0xcct 0x1t
        0xcct 0x1t
        0xect 0x1t
        0xect 0x1t
        0xect 0x1t
        0xect 0x1t
        0xect 0x1t
        0xect 0x1t
        0xect 0x1t
        0xect 0x1t
        0xect 0x1t
        0xect 0x1t
        0xect 0x1t
        0xect 0x1t
        0xect 0x1t
        0xect 0x1t
        0xect 0x1t
        0xect 0x1t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xbt 0x8t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xc8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
        0xe8t 0x0t
    .end array-data

    .line 414
    :array_4
    .array-data 0x2
        0x7t 0x70t
        0x7t 0x70t
        0x8t 0x7ct
        0x9t 0x80t
        0x9t 0x84t
        0x9t 0x88t
        0x9t 0x8ct
        0x9t 0x90t
        0x7t 0x74t
        0x7t 0x74t
        0x7t 0x78t
        0x7t 0x78t
        0x9t 0x94t
        0x9t 0x98t
        0x9t 0x9ct
        0x9t 0xa0t
    .end array-data

    .line 421
    :array_5
    .array-data 0x2
        0x9at 0xct
        0xct 0x19t
        0xc8t 0x0t
        0xa8t 0x0t
        0x26t 0x0t
        0x26t 0x0t
        0x86t 0x0t
        0x86t 0x0t
        0x64t 0x0t
        0x64t 0x0t
        0x64t 0x0t
        0x64t 0x0t
        0x44t 0x0t
        0x44t 0x0t
        0x44t 0x0t
        0x44t 0x0t
    .end array-data

    .line 428
    :array_6
    .array-data 0x2
        0x24t 0x1t
        0x4t 0x1t
        0xe2t 0x0t
        0xe2t 0x0t
    .end array-data

    .line 430
    :array_7
    .array-data 0x2
        0x3et 0x0t
        0x3et 0x0t
        0x1et 0x0t
        0x1et 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x99t 0xct
        0x4ct 0x2t
        0x4ct 0x2t
        0x4ct 0x2t
        0x4ct 0x2t
        0x4ct 0x2t
        0x4ct 0x2t
        0x4ct 0x2t
        0x4ct 0x2t
        0x90t 0x6t
        0x90t 0x6t
        0x13t 0x50t
        0x13t 0x58t
        0x13t 0x60t
        0x13t 0x68t
        0xf0t 0x6t
        0xf0t 0x6t
        0x10t 0x7t
        0x10t 0x7t
        0x13t 0xa0t
        0x13t 0xa8t
        0x13t 0xb0t
        0x13t 0xb8t
        0x70t 0x7t
        0x70t 0x7t
        0x90t 0x7t
        0x90t 0x7t
        0x13t 0xc0t
        0x13t 0xc8t
        0xet 0x3t
        0xet 0x3t
        0xet 0x3t
        0xet 0x3t
        0x2et 0x3t
        0x2et 0x3t
        0x2et 0x3t
        0x2et 0x3t
        0x13t 0xd0t
        0x13t 0xd8t
        0x11t 0x28t
        0x11t 0x28t
        0x11t 0x30t
        0x11t 0x30t
        0x11t 0x38t
        0x11t 0x38t
        0x13t 0x40t
        0x13t 0x48t
        0xb0t 0x6t
        0xb0t 0x6t
        0xd0t 0x6t
        0xd0t 0x6t
        0x13t 0x70t
        0x13t 0x78t
        0x13t 0x80t
        0x13t 0x88t
        0x13t 0x90t
        0x13t 0x98t
        0xdt 0x8t
        0xdt 0x8t
        0xdt 0x8t
        0xdt 0x8t
        0xdt 0x8t
        0xdt 0x8t
        0xdt 0x8t
        0xdt 0x8t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xa8t 0x1t
        0xeet 0x2t
        0xeet 0x2t
        0xeet 0x2t
        0xeet 0x2t
        0x50t 0x6t
        0x50t 0x6t
        0x70t 0x6t
        0x70t 0x6t
        0x90t 0x5t
        0x90t 0x5t
        0xb0t 0x5t
        0xb0t 0x5t
        0xd0t 0x5t
        0xd0t 0x5t
        0xf0t 0x5t
        0xf0t 0x5t
        0x30t 0x7t
        0x30t 0x7t
        0x50t 0x7t
        0x50t 0x7t
        0xb0t 0x7t
        0xb0t 0x7t
        0x11t 0x20t
        0x11t 0x20t
        0xct 0x2t
        0xct 0x2t
        0xct 0x2t
        0xct 0x2t
        0xct 0x2t
        0xct 0x2t
        0xct 0x2t
        0xct 0x2t
        0x2ct 0x2t
        0x2ct 0x2t
        0x2ct 0x2t
        0x2ct 0x2t
        0x2ct 0x2t
        0x2ct 0x2t
        0x2ct 0x2t
        0x2ct 0x2t
        0x10t 0x6t
        0x10t 0x6t
        0x30t 0x6t
        0x30t 0x6t
        0xd0t 0x7t
        0xd0t 0x7t
        0xf0t 0x7t
        0xf0t 0x7t
        0xd0t 0x3t
        0xd0t 0x3t
        0xf0t 0x3t
        0xf0t 0x3t
        0x10t 0x4t
        0x10t 0x4t
        0x30t 0x4t
        0x30t 0x4t
        0x10t 0x5t
        0x10t 0x5t
        0x30t 0x5t
        0x30t 0x5t
        0xcet 0x2t
        0xcet 0x2t
        0xcet 0x2t
        0xcet 0x2t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0xc8t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x46t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0x66t 0x1t
        0xeat 0x1t
        0xeat 0x1t
        0xeat 0x1t
        0xeat 0x1t
        0xeat 0x1t
        0xeat 0x1t
        0xeat 0x1t
        0xeat 0x1t
        0xeat 0x1t
        0xeat 0x1t
        0xeat 0x1t
        0xeat 0x1t
        0xeat 0x1t
        0xeat 0x1t
        0xeat 0x1t
        0xeat 0x1t
        0x11t 0x10t
        0x11t 0x10t
        0x11t 0x18t
        0x11t 0x18t
        0x50t 0x3t
        0x50t 0x3t
        0x70t 0x3t
        0x70t 0x3t
        0x90t 0x3t
        0x90t 0x3t
        0xb0t 0x3t
        0xb0t 0x3t
        0x6et 0x2t
        0x6et 0x2t
        0x6et 0x2t
        0x6et 0x2t
        0x8et 0x2t
        0x8et 0x2t
        0x8et 0x2t
        0x8et 0x2t
        0x50t 0x4t
        0x50t 0x4t
        0x70t 0x4t
        0x70t 0x4t
        0x90t 0x4t
        0x90t 0x4t
        0xb0t 0x4t
        0xb0t 0x4t
        0xd0t 0x4t
        0xd0t 0x4t
        0xf0t 0x4t
        0xf0t 0x4t
        0xaet 0x2t
        0xaet 0x2t
        0xaet 0x2t
        0xaet 0x2t
        0x50t 0x5t
        0x50t 0x5t
        0x70t 0x5t
        0x70t 0x5t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
        0x86t 0x1t
    .end array-data

    .line 559
    :array_8
    .array-data 0x1
        0x50t
        0x58t
        0x17t
        0x47t
        0x1et
        0x1et
        0x3et
        0x3et
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x23t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x33t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
        0x29t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->uncompressedMode:I

    .line 81
    iput v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fillBits:I

    .line 94
    iput v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->changingElemSize:I

    .line 98
    iput v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->lastChangingElement:I

    .line 594
    return-void
.end method

.method private decodeBlackCodeWord()I
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 1279
    const/4 v1, -0x1

    .line 1280
    .local v1, code:I
    const/4 v6, 0x0

    .line 1281
    .local v6, runLength:I
    const/4 v5, 0x0

    .line 1283
    .local v5, isWhite:Z
    :cond_0
    :goto_0
    if-nez v5, :cond_5

    .line 1284
    invoke-direct {p0, v8}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v2

    .line 1285
    .local v2, current:I
    sget-object v7, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->initBlack:[S

    aget-short v3, v7, v2

    .line 1288
    .local v3, entry:I
    and-int/lit8 v4, v3, 0x1

    .line 1289
    .local v4, isT:I
    ushr-int/lit8 v7, v3, 0x1

    and-int/lit8 v0, v7, 0xf

    .line 1290
    .local v0, bits:I
    ushr-int/lit8 v7, v3, 0x5

    and-int/lit16 v1, v7, 0x7ff

    .line 1292
    const/16 v7, 0x64

    if-ne v1, v7, :cond_3

    .line 1293
    const/16 v7, 0x9

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v2

    .line 1294
    sget-object v7, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->black:[S

    aget-short v3, v7, v2

    .line 1297
    and-int/lit8 v4, v3, 0x1

    .line 1298
    ushr-int/lit8 v7, v3, 0x1

    and-int/lit8 v0, v7, 0xf

    .line 1299
    ushr-int/lit8 v7, v3, 0x5

    and-int/lit16 v1, v7, 0x7ff

    .line 1301
    const/16 v7, 0xc

    if-ne v0, v7, :cond_1

    .line 1303
    const/4 v7, 0x5

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 1304
    invoke-direct {p0, v8}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v2

    .line 1305
    sget-object v7, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->additionalMakeup:[S

    aget-short v3, v7, v2

    .line 1306
    ushr-int/lit8 v7, v3, 0x1

    and-int/lit8 v0, v7, 0x7

    .line 1307
    ushr-int/lit8 v7, v3, 0x4

    and-int/lit16 v1, v7, 0xfff

    .line 1308
    add-int/2addr v6, v1

    .line 1310
    rsub-int/lit8 v7, v0, 0x4

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->updatePointer(I)V

    goto :goto_0

    .line 1311
    :cond_1
    const/16 v7, 0xf

    if-ne v0, v7, :cond_2

    .line 1313
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Error 2"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1315
    :cond_2
    add-int/2addr v6, v1

    .line 1316
    rsub-int/lit8 v7, v0, 0x9

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 1317
    if-nez v4, :cond_0

    .line 1318
    const/4 v5, 0x1

    goto :goto_0

    .line 1321
    :cond_3
    const/16 v7, 0xc8

    if-ne v1, v7, :cond_4

    .line 1323
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v2

    .line 1324
    sget-object v7, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->twoBitBlack:[S

    aget-short v3, v7, v2

    .line 1325
    ushr-int/lit8 v7, v3, 0x5

    and-int/lit16 v1, v7, 0x7ff

    .line 1326
    add-int/2addr v6, v1

    .line 1327
    ushr-int/lit8 v7, v3, 0x1

    and-int/lit8 v0, v7, 0xf

    .line 1328
    rsub-int/lit8 v7, v0, 0x2

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 1329
    const/4 v5, 0x1

    goto :goto_0

    .line 1332
    :cond_4
    add-int/2addr v6, v1

    .line 1333
    rsub-int/lit8 v7, v0, 0x4

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 1334
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1338
    .end local v0           #bits:I
    .end local v2           #current:I
    .end local v3           #entry:I
    .end local v4           #isT:I
    :cond_5
    return v6
.end method

.method private decodeWhiteCodeWord()I
    .locals 10

    .prologue
    .line 1237
    const/4 v1, -0x1

    .line 1238
    .local v1, code:I
    const/4 v6, 0x0

    .line 1239
    .local v6, runLength:I
    const/4 v5, 0x1

    .line 1241
    .local v5, isWhite:Z
    :cond_0
    :goto_0
    if-eqz v5, :cond_4

    .line 1242
    const/16 v8, 0xa

    invoke-direct {p0, v8}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v2

    .line 1243
    .local v2, current:I
    sget-object v8, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->white:[S

    aget-short v3, v8, v2

    .line 1246
    .local v3, entry:I
    and-int/lit8 v4, v3, 0x1

    .line 1247
    .local v4, isT:I
    ushr-int/lit8 v8, v3, 0x1

    and-int/lit8 v0, v8, 0xf

    .line 1249
    .local v0, bits:I
    const/16 v8, 0xc

    if-ne v0, v8, :cond_1

    .line 1251
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v7

    .line 1253
    .local v7, twoBits:I
    shl-int/lit8 v8, v2, 0x2

    and-int/lit8 v8, v8, 0xc

    or-int v2, v8, v7

    .line 1254
    sget-object v8, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->additionalMakeup:[S

    aget-short v3, v8, v2

    .line 1255
    ushr-int/lit8 v8, v3, 0x1

    and-int/lit8 v0, v8, 0x7

    .line 1256
    ushr-int/lit8 v8, v3, 0x4

    and-int/lit16 v1, v8, 0xfff

    .line 1257
    add-int/2addr v6, v1

    .line 1258
    rsub-int/lit8 v8, v0, 0x4

    invoke-direct {p0, v8}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->updatePointer(I)V

    goto :goto_0

    .line 1259
    .end local v7           #twoBits:I
    :cond_1
    if-nez v0, :cond_2

    .line 1260
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Error 0"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1261
    :cond_2
    const/16 v8, 0xf

    if-ne v0, v8, :cond_3

    .line 1262
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Error 1"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1265
    :cond_3
    ushr-int/lit8 v8, v3, 0x5

    and-int/lit16 v1, v8, 0x7ff

    .line 1266
    add-int/2addr v6, v1

    .line 1267
    rsub-int/lit8 v8, v0, 0xa

    invoke-direct {p0, v8}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 1268
    if-nez v4, :cond_0

    .line 1269
    const/4 v5, 0x0

    goto :goto_0

    .line 1274
    .end local v0           #bits:I
    .end local v2           #current:I
    .end local v3           #entry:I
    .end local v4           #isT:I
    :cond_4
    return v6
.end method

.method private findNextLine()I
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 1343
    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->data:[B

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x8

    add-int/lit8 v1, v5, -0x1

    .line 1344
    .local v1, bitIndexMax:I
    add-int/lit8 v2, v1, -0xc

    .line 1345
    .local v2, bitIndexMax12:I
    iget v5, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bytePointer:I

    mul-int/lit8 v5, v5, 0x8

    iget v6, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bitPointer:I

    add-int v0, v5, v6

    .line 1348
    .local v0, bitIndex:I
    :cond_0
    if-gt v0, v2, :cond_3

    .line 1350
    const/16 v5, 0xc

    invoke-direct {p0, v5}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v3

    .line 1351
    .local v3, next12Bits:I
    add-int/lit8 v0, v0, 0xc

    .line 1355
    :goto_0
    if-eq v3, v4, :cond_1

    if-ge v0, v1, :cond_1

    .line 1356
    and-int/lit16 v5, v3, 0x7ff

    shl-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v4}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    or-int v3, v5, v6

    .line 1359
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1362
    :cond_1
    if-ne v3, v4, :cond_0

    .line 1363
    iget v5, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->oneD:I

    if-ne v5, v4, :cond_2

    .line 1364
    if-ge v0, v1, :cond_0

    .line 1366
    invoke-direct {p0, v4}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v4

    .line 1369
    :cond_2
    return v4

    .line 1375
    .end local v3           #next12Bits:I
    :cond_3
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4
.end method

.method private getNextChangingElement(IZ[I)V
    .locals 7
    .parameter "a0"
    .parameter "isWhite"
    .parameter "ret"

    .prologue
    const/4 v5, 0x0

    .line 1380
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->prevChangingElems:[I

    .line 1381
    .local v2, pce:[I
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->changingElemSize:I

    .line 1386
    .local v0, ces:I
    iget v6, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->lastChangingElement:I

    if-lez v6, :cond_2

    iget v6, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->lastChangingElement:I

    add-int/lit8 v3, v6, -0x1

    .line 1387
    .local v3, start:I
    :goto_0
    if-eqz p2, :cond_3

    .line 1388
    and-int/lit8 v3, v3, -0x2

    .line 1393
    :goto_1
    move v1, v3

    .line 1394
    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_0

    .line 1395
    aget v4, v2, v1

    .line 1396
    .local v4, temp:I
    if-le v4, p1, :cond_4

    .line 1397
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->lastChangingElement:I

    .line 1398
    aput v4, p3, v5

    .line 1403
    .end local v4           #temp:I
    :cond_0
    add-int/lit8 v5, v1, 0x1

    if-ge v5, v0, :cond_1

    .line 1404
    const/4 v5, 0x1

    add-int/lit8 v6, v1, 0x1

    aget v6, v2, v6

    aput v6, p3, v5

    .line 1406
    :cond_1
    return-void

    .end local v1           #i:I
    .end local v3           #start:I
    :cond_2
    move v3, v5

    .line 1386
    goto :goto_0

    .line 1390
    .restart local v3       #start:I
    :cond_3
    or-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1394
    .restart local v1       #i:I
    .restart local v4       #temp:I
    :cond_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_2
.end method

.method private nextLesserThan8Bits(I)I
    .locals 12
    .parameter "bitsToGet"

    .prologue
    .line 1479
    iget-object v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->data:[B

    array-length v9, v9

    add-int/lit8 v6, v9, -0x1

    .line 1480
    .local v6, l:I
    iget v3, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 1482
    .local v3, bp:I
    iget v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fillOrder:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 1483
    iget-object v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->data:[B

    aget-byte v0, v9, v3

    .line 1484
    .local v0, b:B
    if-ne v3, v6, :cond_1

    .line 1485
    const/4 v7, 0x0

    .line 1500
    .local v7, next:B
    :goto_0
    iget v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bitPointer:I

    rsub-int/lit8 v2, v9, 0x8

    .line 1501
    .local v2, bitsLeft:I
    sub-int v1, p1, v2

    .line 1503
    .local v1, bitsFromNextByte:I
    sub-int v8, v2, p1

    .line 1505
    .local v8, shift:I
    if-ltz v8, :cond_5

    .line 1506
    sget-object v9, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->table1:[I

    aget v9, v9, v2

    and-int/2addr v9, v0

    ushr-int v4, v9, v8

    .line 1507
    .local v4, i1:I
    iget v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bitPointer:I

    add-int/2addr v9, p1

    iput v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bitPointer:I

    .line 1508
    iget v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bitPointer:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 1509
    const/4 v9, 0x0

    iput v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bitPointer:I

    .line 1510
    iget v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bytePointer:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 1521
    :cond_0
    :goto_1
    return v4

    .line 1487
    .end local v1           #bitsFromNextByte:I
    .end local v2           #bitsLeft:I
    .end local v4           #i1:I
    .end local v7           #next:B
    .end local v8           #shift:I
    :cond_1
    iget-object v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->data:[B

    add-int/lit8 v10, v3, 0x1

    aget-byte v7, v9, v10

    .restart local v7       #next:B
    goto :goto_0

    .line 1489
    .end local v0           #b:B
    .end local v7           #next:B
    :cond_2
    iget v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fillOrder:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 1490
    sget-object v9, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->flipTable:[B

    iget-object v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->data:[B

    aget-byte v10, v10, v3

    and-int/lit16 v10, v10, 0xff

    aget-byte v0, v9, v10

    .line 1491
    .restart local v0       #b:B
    if-ne v3, v6, :cond_3

    .line 1492
    const/4 v7, 0x0

    .restart local v7       #next:B
    goto :goto_0

    .line 1494
    .end local v7           #next:B
    :cond_3
    sget-object v9, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->flipTable:[B

    iget-object v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->data:[B

    add-int/lit8 v11, v3, 0x1

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    aget-byte v7, v9, v10

    .restart local v7       #next:B
    goto :goto_0

    .line 1497
    .end local v0           #b:B
    .end local v7           #next:B
    :cond_4
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Invalid FillOrder"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1513
    .restart local v0       #b:B
    .restart local v1       #bitsFromNextByte:I
    .restart local v2       #bitsLeft:I
    .restart local v7       #next:B
    .restart local v8       #shift:I
    :cond_5
    sget-object v9, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->table1:[I

    aget v9, v9, v2

    and-int/2addr v9, v0

    neg-int v10, v8

    shl-int v4, v9, v10

    .line 1514
    .restart local v4       #i1:I
    sget-object v9, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->table2:[I

    aget v9, v9, v1

    and-int/2addr v9, v7

    rsub-int/lit8 v10, v1, 0x8

    ushr-int v5, v9, v10

    .line 1516
    .local v5, i2:I
    or-int/2addr v4, v5

    .line 1517
    iget v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bytePointer:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 1518
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bitPointer:I

    goto :goto_1
.end method

.method private nextNBits(I)I
    .locals 15
    .parameter "bitsToGet"

    .prologue
    .line 1410
    iget-object v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->data:[B

    array-length v12, v12

    add-int/lit8 v9, v12, -0x1

    .line 1411
    .local v9, l:I
    iget v4, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 1413
    .local v4, bp:I
    iget v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fillOrder:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 1414
    iget-object v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->data:[B

    aget-byte v0, v12, v4

    .line 1416
    .local v0, b:B
    if-ne v4, v9, :cond_1

    .line 1417
    const/4 v10, 0x0

    .line 1418
    .local v10, next:B
    const/4 v11, 0x0

    .line 1443
    .local v11, next2next:B
    :goto_0
    iget v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bitPointer:I

    rsub-int/lit8 v3, v12, 0x8

    .line 1444
    .local v3, bitsLeft:I
    sub-int v2, p1, v3

    .line 1445
    .local v2, bitsFromNextByte:I
    const/4 v1, 0x0

    .line 1446
    .local v1, bitsFromNext2NextByte:I
    const/16 v12, 0x8

    if-le v2, v12, :cond_0

    .line 1447
    add-int/lit8 v1, v2, -0x8

    .line 1448
    const/16 v2, 0x8

    .line 1451
    :cond_0
    iget v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bytePointer:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 1453
    sget-object v12, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->table1:[I

    aget v12, v12, v3

    and-int/2addr v12, v0

    sub-int v13, p1, v3

    shl-int v6, v12, v13

    .line 1454
    .local v6, i1:I
    sget-object v12, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->table2:[I

    aget v12, v12, v2

    and-int/2addr v12, v10

    rsub-int/lit8 v13, v2, 0x8

    ushr-int v7, v12, v13

    .line 1456
    .local v7, i2:I
    const/4 v8, 0x0

    .line 1457
    .local v8, i3:I
    if-eqz v1, :cond_7

    .line 1458
    shl-int/2addr v7, v1

    .line 1459
    sget-object v12, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->table2:[I

    aget v12, v12, v1

    and-int/2addr v12, v11

    rsub-int/lit8 v13, v1, 0x8

    ushr-int v8, v12, v13

    .line 1461
    or-int/2addr v7, v8

    .line 1462
    iget v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bytePointer:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 1463
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bitPointer:I

    .line 1473
    :goto_1
    or-int v5, v6, v7

    .line 1474
    .local v5, i:I
    return v5

    .line 1419
    .end local v1           #bitsFromNext2NextByte:I
    .end local v2           #bitsFromNextByte:I
    .end local v3           #bitsLeft:I
    .end local v5           #i:I
    .end local v6           #i1:I
    .end local v7           #i2:I
    .end local v8           #i3:I
    .end local v10           #next:B
    .end local v11           #next2next:B
    :cond_1
    add-int/lit8 v12, v4, 0x1

    if-ne v12, v9, :cond_2

    .line 1420
    iget-object v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->data:[B

    add-int/lit8 v13, v4, 0x1

    aget-byte v10, v12, v13

    .line 1421
    .restart local v10       #next:B
    const/4 v11, 0x0

    .restart local v11       #next2next:B
    goto :goto_0

    .line 1423
    .end local v10           #next:B
    .end local v11           #next2next:B
    :cond_2
    iget-object v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->data:[B

    add-int/lit8 v13, v4, 0x1

    aget-byte v10, v12, v13

    .line 1424
    .restart local v10       #next:B
    iget-object v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->data:[B

    add-int/lit8 v13, v4, 0x2

    aget-byte v11, v12, v13

    .restart local v11       #next2next:B
    goto :goto_0

    .line 1426
    .end local v0           #b:B
    .end local v10           #next:B
    .end local v11           #next2next:B
    :cond_3
    iget v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fillOrder:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6

    .line 1427
    sget-object v12, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->flipTable:[B

    iget-object v13, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->data:[B

    aget-byte v13, v13, v4

    and-int/lit16 v13, v13, 0xff

    aget-byte v0, v12, v13

    .line 1429
    .restart local v0       #b:B
    if-ne v4, v9, :cond_4

    .line 1430
    const/4 v10, 0x0

    .line 1431
    .restart local v10       #next:B
    const/4 v11, 0x0

    .restart local v11       #next2next:B
    goto :goto_0

    .line 1432
    .end local v10           #next:B
    .end local v11           #next2next:B
    :cond_4
    add-int/lit8 v12, v4, 0x1

    if-ne v12, v9, :cond_5

    .line 1433
    sget-object v12, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->flipTable:[B

    iget-object v13, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->data:[B

    add-int/lit8 v14, v4, 0x1

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    aget-byte v10, v12, v13

    .line 1434
    .restart local v10       #next:B
    const/4 v11, 0x0

    .restart local v11       #next2next:B
    goto :goto_0

    .line 1436
    .end local v10           #next:B
    .end local v11           #next2next:B
    :cond_5
    sget-object v12, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->flipTable:[B

    iget-object v13, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->data:[B

    add-int/lit8 v14, v4, 0x1

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    aget-byte v10, v12, v13

    .line 1437
    .restart local v10       #next:B
    sget-object v12, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->flipTable:[B

    iget-object v13, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->data:[B

    add-int/lit8 v14, v4, 0x2

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    aget-byte v11, v12, v13

    .restart local v11       #next2next:B
    goto/16 :goto_0

    .line 1440
    .end local v0           #b:B
    .end local v10           #next:B
    .end local v11           #next2next:B
    :cond_6
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "Invalid FillOrder"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1465
    .restart local v0       #b:B
    .restart local v1       #bitsFromNext2NextByte:I
    .restart local v2       #bitsFromNextByte:I
    .restart local v3       #bitsLeft:I
    .restart local v6       #i1:I
    .restart local v7       #i2:I
    .restart local v8       #i3:I
    .restart local v10       #next:B
    .restart local v11       #next2next:B
    :cond_7
    const/16 v12, 0x8

    if-ne v2, v12, :cond_8

    .line 1466
    const/4 v12, 0x0

    iput v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bitPointer:I

    .line 1467
    iget v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bytePointer:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bytePointer:I

    goto :goto_1

    .line 1469
    :cond_8
    iput v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bitPointer:I

    goto :goto_1
.end method

.method private setToBlack(II)V
    .locals 10
    .parameter "bitNum"
    .parameter "numBits"

    .prologue
    const/4 v9, 0x1

    .line 1202
    iget v6, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->lineBitNum:I

    add-int/2addr p1, v6

    .line 1204
    add-int v2, p1, p2

    .line 1205
    .local v2, lastBit:I
    shr-int/lit8 v0, p1, 0x3

    .line 1208
    .local v0, byteNum:I
    and-int/lit8 v4, p1, 0x7

    .line 1209
    .local v4, shift:I
    if-lez v4, :cond_1

    .line 1210
    rsub-int/lit8 v6, v4, 0x7

    shl-int v3, v9, v6

    .line 1211
    .local v3, maskVal:I
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->buffer:[B

    aget-byte v5, v6, v0

    .line 1212
    .local v5, val:B
    :goto_0
    if-lez v3, :cond_0

    if-ge p1, v2, :cond_0

    .line 1213
    or-int v6, v5, v3

    int-to-byte v5, v6

    .line 1214
    shr-int/lit8 v3, v3, 0x1

    .line 1215
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1217
    :cond_0
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->buffer:[B

    aput-byte v5, v6, v0

    .line 1221
    .end local v3           #maskVal:I
    .end local v5           #val:B
    :cond_1
    shr-int/lit8 v0, p1, 0x3

    move v1, v0

    .line 1222
    .end local v0           #byteNum:I
    .local v1, byteNum:I
    :goto_1
    add-int/lit8 v6, v2, -0x7

    if-ge p1, v6, :cond_3

    .line 1223
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->buffer:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1           #byteNum:I
    .restart local v0       #byteNum:I
    const/4 v7, -0x1

    aput-byte v7, v6, v1

    .line 1224
    add-int/lit8 p1, p1, 0x8

    move v1, v0

    .end local v0           #byteNum:I
    .restart local v1       #byteNum:I
    goto :goto_1

    .line 1228
    .end local v1           #byteNum:I
    .restart local v0       #byteNum:I
    :goto_2
    if-ge p1, v2, :cond_2

    .line 1229
    shr-int/lit8 v0, p1, 0x3

    .line 1230
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->buffer:[B

    aget-byte v7, v6, v0

    and-int/lit8 v8, p1, 0x7

    rsub-int/lit8 v8, v8, 0x7

    shl-int v8, v9, v8

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v0

    .line 1231
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 1233
    :cond_2
    return-void

    .end local v0           #byteNum:I
    .restart local v1       #byteNum:I
    :cond_3
    move v0, v1

    .end local v1           #byteNum:I
    .restart local v0       #byteNum:I
    goto :goto_2
.end method

.method private updatePointer(I)V
    .locals 3
    .parameter "bitsToMoveBack"

    .prologue
    .line 1526
    const/16 v1, 0x8

    if-le p1, v1, :cond_0

    .line 1527
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bytePointer:I

    div-int/lit8 v2, p1, 0x8

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 1528
    rem-int/lit8 p1, p1, 0x8

    .line 1531
    :cond_0
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bitPointer:I

    sub-int v0, v1, p1

    .line 1532
    .local v0, i:I
    if-gez v0, :cond_1

    .line 1533
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bytePointer:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 1534
    add-int/lit8 v1, v0, 0x8

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bitPointer:I

    .line 1538
    :goto_0
    return-void

    .line 1536
    :cond_1
    iput v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bitPointer:I

    goto :goto_0
.end method


# virtual methods
.method public SetOptions(IIII)V
    .locals 1
    .parameter "fillOrder"
    .parameter "compression"
    .parameter "t4Options"
    .parameter "t6Options"

    .prologue
    .line 601
    iput p1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fillOrder:I

    .line 602
    iput p2, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->compression:I

    .line 603
    iput p3, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->t4Options:I

    .line 604
    iput p4, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->t6Options:I

    .line 605
    and-int/lit8 v0, p3, 0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->oneD:I

    .line 606
    and-int/lit8 v0, p3, 0x2

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->uncompressedMode:I

    .line 607
    and-int/lit8 v0, p3, 0x4

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fillBits:I

    .line 608
    return-void
.end method

.method public decodeNextScanline()V
    .locals 13

    .prologue
    .line 659
    const/4 v1, 0x0

    .local v1, bits:I
    const/4 v2, 0x0

    .local v2, code:I
    const/4 v5, 0x0

    .line 661
    .local v5, isT:I
    const/4 v6, 0x1

    .line 663
    .local v6, isWhite:Z
    const/4 v0, 0x0

    .line 666
    .local v0, bitOffset:I
    const/4 v10, 0x0

    iput v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->changingElemSize:I

    .line 669
    :cond_0
    iget v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->w:I

    if-ge v0, v10, :cond_6

    .line 672
    move v8, v0

    .line 674
    .local v8, runOffset:I
    :cond_1
    :goto_0
    if-eqz v6, :cond_5

    iget v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->w:I

    if-ge v0, v10, :cond_5

    .line 676
    const/16 v10, 0xa

    invoke-direct {p0, v10}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v3

    .line 677
    .local v3, current:I
    sget-object v10, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->white:[S

    aget-short v4, v10, v3

    .line 680
    .local v4, entry:I
    and-int/lit8 v5, v4, 0x1

    .line 681
    ushr-int/lit8 v10, v4, 0x1

    and-int/lit8 v1, v10, 0xf

    .line 683
    const/16 v10, 0xc

    if-ne v1, v10, :cond_2

    .line 685
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v9

    .line 687
    .local v9, twoBits:I
    shl-int/lit8 v10, v3, 0x2

    and-int/lit8 v10, v10, 0xc

    or-int v3, v10, v9

    .line 688
    sget-object v10, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->additionalMakeup:[S

    aget-short v4, v10, v3

    .line 689
    ushr-int/lit8 v10, v4, 0x1

    and-int/lit8 v1, v10, 0x7

    .line 690
    ushr-int/lit8 v10, v4, 0x4

    and-int/lit16 v2, v10, 0xfff

    .line 691
    add-int/2addr v0, v2

    .line 693
    rsub-int/lit8 v10, v1, 0x4

    invoke-direct {p0, v10}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->updatePointer(I)V

    goto :goto_0

    .line 694
    .end local v9           #twoBits:I
    :cond_2
    if-nez v1, :cond_3

    .line 695
    iget v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fails:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fails:I

    goto :goto_0

    .line 697
    :cond_3
    const/16 v10, 0xf

    if-ne v1, v10, :cond_4

    .line 702
    iget v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fails:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fails:I

    .line 824
    .end local v3           #current:I
    .end local v4           #entry:I
    .end local v8           #runOffset:I
    :goto_1
    return-void

    .line 706
    .restart local v3       #current:I
    .restart local v4       #entry:I
    .restart local v8       #runOffset:I
    :cond_4
    ushr-int/lit8 v10, v4, 0x5

    and-int/lit16 v2, v10, 0x7ff

    .line 707
    add-int/2addr v0, v2

    .line 709
    rsub-int/lit8 v10, v1, 0xa

    invoke-direct {p0, v10}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 710
    if-nez v5, :cond_1

    .line 711
    const/4 v6, 0x0

    .line 712
    iget-object v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->currChangingElems:[I

    iget v11, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->changingElemSize:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->changingElemSize:I

    aput v0, v10, v11

    goto :goto_0

    .line 718
    .end local v3           #current:I
    .end local v4           #entry:I
    :cond_5
    iget v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->w:I

    if-ne v0, v10, :cond_7

    .line 722
    sub-int v7, v0, v8

    .line 723
    .local v7, runLength:I
    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    rem-int/lit8 v10, v7, 0x40

    if-nez v10, :cond_6

    const/16 v10, 0x8

    invoke-direct {p0, v10}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v10

    const/16 v11, 0x35

    if-eq v10, v11, :cond_6

    .line 726
    iget v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fails:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fails:I

    .line 727
    const/16 v10, 0x8

    invoke-direct {p0, v10}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 823
    .end local v7           #runLength:I
    .end local v8           #runOffset:I
    :cond_6
    :goto_2
    iget-object v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->currChangingElems:[I

    iget v11, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->changingElemSize:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->changingElemSize:I

    aput v0, v10, v11

    goto :goto_1

    .line 733
    .restart local v8       #runOffset:I
    :cond_7
    move v8, v0

    .line 735
    :cond_8
    :goto_3
    if-nez v6, :cond_d

    iget v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->w:I

    if-ge v0, v10, :cond_d

    .line 737
    const/4 v10, 0x4

    invoke-direct {p0, v10}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v3

    .line 738
    .restart local v3       #current:I
    sget-object v10, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->initBlack:[S

    aget-short v4, v10, v3

    .line 741
    .restart local v4       #entry:I
    and-int/lit8 v5, v4, 0x1

    .line 742
    ushr-int/lit8 v10, v4, 0x1

    and-int/lit8 v1, v10, 0xf

    .line 743
    ushr-int/lit8 v10, v4, 0x5

    and-int/lit16 v2, v10, 0x7ff

    .line 745
    const/16 v10, 0x64

    if-ne v2, v10, :cond_b

    .line 746
    const/16 v10, 0x9

    invoke-direct {p0, v10}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v3

    .line 747
    sget-object v10, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->black:[S

    aget-short v4, v10, v3

    .line 750
    and-int/lit8 v5, v4, 0x1

    .line 751
    ushr-int/lit8 v10, v4, 0x1

    and-int/lit8 v1, v10, 0xf

    .line 752
    ushr-int/lit8 v10, v4, 0x5

    and-int/lit16 v2, v10, 0x7ff

    .line 754
    const/16 v10, 0xc

    if-ne v1, v10, :cond_9

    .line 756
    const/4 v10, 0x5

    invoke-direct {p0, v10}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 757
    const/4 v10, 0x4

    invoke-direct {p0, v10}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v3

    .line 758
    sget-object v10, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->additionalMakeup:[S

    aget-short v4, v10, v3

    .line 759
    ushr-int/lit8 v10, v4, 0x1

    and-int/lit8 v1, v10, 0x7

    .line 760
    ushr-int/lit8 v10, v4, 0x4

    and-int/lit16 v2, v10, 0xfff

    .line 762
    invoke-direct {p0, v0, v2}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 763
    add-int/2addr v0, v2

    .line 765
    rsub-int/lit8 v10, v1, 0x4

    invoke-direct {p0, v10}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->updatePointer(I)V

    goto :goto_3

    .line 766
    :cond_9
    const/16 v10, 0xf

    if-ne v1, v10, :cond_a

    .line 771
    iget v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fails:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fails:I

    goto/16 :goto_1

    .line 774
    :cond_a
    invoke-direct {p0, v0, v2}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 775
    add-int/2addr v0, v2

    .line 777
    rsub-int/lit8 v10, v1, 0x9

    invoke-direct {p0, v10}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 778
    if-nez v5, :cond_8

    .line 779
    const/4 v6, 0x1

    .line 780
    iget-object v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->currChangingElems:[I

    iget v11, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->changingElemSize:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->changingElemSize:I

    aput v0, v10, v11

    goto :goto_3

    .line 783
    :cond_b
    const/16 v10, 0xc8

    if-ne v2, v10, :cond_c

    .line 785
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v3

    .line 786
    sget-object v10, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->twoBitBlack:[S

    aget-short v4, v10, v3

    .line 787
    ushr-int/lit8 v10, v4, 0x5

    and-int/lit16 v2, v10, 0x7ff

    .line 788
    ushr-int/lit8 v10, v4, 0x1

    and-int/lit8 v1, v10, 0xf

    .line 790
    invoke-direct {p0, v0, v2}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 791
    add-int/2addr v0, v2

    .line 793
    rsub-int/lit8 v10, v1, 0x2

    invoke-direct {p0, v10}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 794
    const/4 v6, 0x1

    .line 795
    iget-object v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->currChangingElems:[I

    iget v11, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->changingElemSize:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->changingElemSize:I

    aput v0, v10, v11

    goto/16 :goto_3

    .line 798
    :cond_c
    invoke-direct {p0, v0, v2}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 799
    add-int/2addr v0, v2

    .line 801
    rsub-int/lit8 v10, v1, 0x4

    invoke-direct {p0, v10}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 802
    const/4 v6, 0x1

    .line 803
    iget-object v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->currChangingElems:[I

    iget v11, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->changingElemSize:I

    add-int/lit8 v12, v11, 0x1

    iput v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->changingElemSize:I

    aput v0, v10, v11

    goto/16 :goto_3

    .line 808
    .end local v3           #current:I
    .end local v4           #entry:I
    :cond_d
    iget v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->w:I

    if-ne v0, v10, :cond_0

    .line 812
    sub-int v7, v0, v8

    .line 813
    .restart local v7       #runLength:I
    if-nez v6, :cond_6

    if-eqz v7, :cond_6

    rem-int/lit8 v10, v7, 0x40

    if-nez v10, :cond_6

    const/16 v10, 0xa

    invoke-direct {p0, v10}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v10

    const/16 v11, 0x37

    if-eq v10, v11, :cond_6

    .line 816
    iget v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fails:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fails:I

    .line 817
    const/16 v10, 0xa

    invoke-direct {p0, v10}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->updatePointer(I)V

    goto/16 :goto_2
.end method

.method public decodeRLE()V
    .locals 3

    .prologue
    .line 643
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->h:I

    if-ge v0, v1, :cond_1

    .line 645
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->decodeNextScanline()V

    .line 648
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bitPointer:I

    if-eqz v1, :cond_0

    .line 649
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bytePointer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 650
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bitPointer:I

    .line 654
    :cond_0
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->lineBitNum:I

    iget v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bitsPerScanline:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->lineBitNum:I

    .line 643
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 656
    :cond_1
    return-void
.end method

.method public decodeRaw([B[BII)V
    .locals 3
    .parameter "buffer"
    .parameter "compData"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v1, 0x0

    .line 612
    iput-object p1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->buffer:[B

    .line 613
    iput-object p2, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->data:[B

    .line 614
    iput p3, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->w:I

    .line 615
    iput p4, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->h:I

    .line 616
    iput p3, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bitsPerScanline:I

    .line 617
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->lineBitNum:I

    .line 619
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bitPointer:I

    .line 620
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bytePointer:I

    .line 621
    add-int/lit8 v0, p3, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->prevChangingElems:[I

    .line 622
    add-int/lit8 v0, p3, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->currChangingElems:[I

    .line 624
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fails:I

    .line 627
    :try_start_0
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->compression:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->decodeRLE()V

    .line 640
    :goto_0
    return-void

    .line 629
    :cond_0
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->compression:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 630
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->decodeT4()V

    goto :goto_0

    .line 637
    :catch_0
    move-exception v0

    goto :goto_0

    .line 631
    :cond_1
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->compression:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 632
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->t6Options:I

    and-int/lit8 v0, v0, 0x2

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->uncompressedMode:I

    .line 633
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->decodeT6()V

    goto :goto_0

    .line 635
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown compression type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->compression:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
.end method

.method public decodeT4()V
    .locals 24

    .prologue
    .line 827
    move-object/from16 v0, p0

    iget v14, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->h:I

    .line 830
    .local v14, height:I
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v4, v0, [I

    .line 833
    .local v4, b:[I
    const/4 v10, 0x0

    .line 836
    .local v10, currIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->data:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 837
    new-instance v22, Ljava/lang/RuntimeException;

    const-string v23, "Insufficient data to read initial EOL."

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 841
    :cond_0
    const/16 v22, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->nextNBits(I)I

    move-result v18

    .line 842
    .local v18, next12:I
    const/16 v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 843
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fails:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fails:I

    .line 845
    :cond_1
    const/16 v22, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 848
    const/16 v17, 0x0

    .line 849
    .local v17, modeFlag:I
    const/16 v16, -0x1

    .line 850
    .local v16, lines:I
    :goto_0
    const/16 v22, 0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    .line 852
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->findNextLine()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 853
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 854
    :catch_0
    move-exception v13

    .line 855
    .local v13, eofe:Ljava/lang/Exception;
    new-instance v22, Ljava/lang/RuntimeException;

    const-string v23, "No reference line present."

    invoke-direct/range {v22 .. v23}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 863
    .end local v13           #eofe:Ljava/lang/Exception;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->decodeNextScanline()V

    .line 864
    add-int/lit8 v16, v16, 0x1

    .line 865
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->lineBitNum:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bitsPerScanline:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->lineBitNum:I

    .line 867
    :goto_1
    move/from16 v0, v16

    if-ge v0, v14, :cond_4

    .line 872
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->findNextLine()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    .line 877
    if-nez v17, :cond_d

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->prevChangingElems:[I

    move-object/from16 v21, v0

    .line 883
    .local v21, temp:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->currChangingElems:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->prevChangingElems:[I

    .line 884
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->currChangingElems:[I

    .line 885
    const/4 v10, 0x0

    .line 888
    const/4 v2, -0x1

    .line 889
    .local v2, a0:I
    const/4 v15, 0x1

    .line 890
    .local v15, isWhite:Z
    const/4 v7, 0x0

    .line 892
    .local v7, bitOffset:I
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->lastChangingElement:I

    .line 894
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->w:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_c

    .line 896
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15, v4}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->getNextChangingElement(IZ[I)V

    .line 898
    const/16 v22, 0x0

    aget v5, v4, v22

    .line 899
    .local v5, b1:I
    const/16 v22, 0x1

    aget v6, v4, v22

    .line 902
    .local v6, b2:I
    const/16 v22, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v12

    .line 905
    .local v12, entry:I
    sget-object v22, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->twoDCodes:[B

    aget-byte v22, v22, v12

    move/from16 v0, v22

    and-int/lit16 v12, v0, 0xff

    .line 908
    and-int/lit8 v22, v12, 0x78

    ushr-int/lit8 v9, v22, 0x3

    .line 909
    .local v9, code:I
    and-int/lit8 v8, v12, 0x7

    .line 911
    .local v8, bits:I
    if-nez v9, :cond_5

    .line 912
    if-nez v15, :cond_3

    .line 913
    sub-int v22, v6, v7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v7, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 915
    :cond_3
    move v2, v6

    move v7, v6

    .line 918
    rsub-int/lit8 v22, v8, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->updatePointer(I)V

    goto :goto_2

    .line 873
    .end local v2           #a0:I
    .end local v5           #b1:I
    .end local v6           #b2:I
    .end local v7           #bitOffset:I
    .end local v8           #bits:I
    .end local v9           #code:I
    .end local v12           #entry:I
    .end local v15           #isWhite:Z
    .end local v21           #temp:[I
    :catch_1
    move-exception v13

    .line 874
    .restart local v13       #eofe:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fails:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fails:I

    .line 991
    .end local v13           #eofe:Ljava/lang/Exception;
    :cond_4
    :goto_3
    return-void

    .line 919
    .restart local v2       #a0:I
    .restart local v5       #b1:I
    .restart local v6       #b2:I
    .restart local v7       #bitOffset:I
    .restart local v8       #bits:I
    .restart local v9       #code:I
    .restart local v12       #entry:I
    .restart local v15       #isWhite:Z
    .restart local v21       #temp:[I
    :cond_5
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v9, v0, :cond_7

    .line 921
    rsub-int/lit8 v22, v8, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 925
    if-eqz v15, :cond_6

    .line 926
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->decodeWhiteCodeWord()I

    move-result v20

    .line 927
    .local v20, number:I
    add-int v7, v7, v20

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->currChangingElems:[I

    move-object/from16 v22, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10           #currIndex:I
    .local v11, currIndex:I
    aput v7, v22, v10

    .line 930
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->decodeBlackCodeWord()I

    move-result v20

    .line 931
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v7, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 932
    add-int v7, v7, v20

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->currChangingElems:[I

    move-object/from16 v22, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11           #currIndex:I
    .restart local v10       #currIndex:I
    aput v7, v22, v11

    .line 945
    :goto_4
    move v2, v7

    .line 946
    goto/16 :goto_2

    .line 935
    .end local v20           #number:I
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->decodeBlackCodeWord()I

    move-result v20

    .line 936
    .restart local v20       #number:I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v7, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 937
    add-int v7, v7, v20

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->currChangingElems:[I

    move-object/from16 v22, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10           #currIndex:I
    .restart local v11       #currIndex:I
    aput v7, v22, v10

    .line 940
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->decodeWhiteCodeWord()I

    move-result v20

    .line 941
    add-int v7, v7, v20

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->currChangingElems:[I

    move-object/from16 v22, v0

    add-int/lit8 v10, v11, 0x1

    .end local v11           #currIndex:I
    .restart local v10       #currIndex:I
    aput v7, v22, v11

    goto :goto_4

    .line 946
    .end local v20           #number:I
    :cond_7
    const/16 v22, 0x8

    move/from16 v0, v22

    if-gt v9, v0, :cond_a

    .line 948
    add-int/lit8 v22, v9, -0x5

    add-int v3, v5, v22

    .line 950
    .local v3, a1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->currChangingElems:[I

    move-object/from16 v22, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10           #currIndex:I
    .restart local v11       #currIndex:I
    aput v3, v22, v10

    .line 954
    if-nez v15, :cond_8

    .line 955
    sub-int v22, v3, v7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v7, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 957
    :cond_8
    move v2, v3

    move v7, v3

    .line 958
    if-nez v15, :cond_9

    const/4 v15, 0x1

    .line 960
    :goto_5
    rsub-int/lit8 v22, v8, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->updatePointer(I)V

    move v10, v11

    .end local v11           #currIndex:I
    .restart local v10       #currIndex:I
    goto/16 :goto_2

    .line 958
    .end local v10           #currIndex:I
    .restart local v11       #currIndex:I
    :cond_9
    const/4 v15, 0x0

    goto :goto_5

    .line 962
    .end local v3           #a1:I
    .end local v11           #currIndex:I
    .restart local v10       #currIndex:I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fails:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->fails:I

    .line 964
    const/16 v19, 0x0

    .line 965
    .local v19, numLinesTested:I
    :goto_6
    const/16 v22, 0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-eq v0, v1, :cond_b

    .line 967
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->findNextLine()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v17

    .line 968
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 969
    :catch_2
    move-exception v13

    .line 970
    .restart local v13       #eofe:Ljava/lang/Exception;
    goto/16 :goto_3

    .line 973
    .end local v13           #eofe:Ljava/lang/Exception;
    :cond_b
    add-int/lit8 v22, v19, -0x1

    add-int v16, v16, v22

    .line 974
    const/16 v22, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 981
    .end local v5           #b1:I
    .end local v6           #b2:I
    .end local v8           #bits:I
    .end local v9           #code:I
    .end local v12           #entry:I
    .end local v19           #numLinesTested:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->currChangingElems:[I

    move-object/from16 v22, v0

    add-int/lit8 v11, v10, 0x1

    .end local v10           #currIndex:I
    .restart local v11       #currIndex:I
    aput v7, v22, v10

    .line 982
    move-object/from16 v0, p0

    iput v11, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->changingElemSize:I

    move v10, v11

    .line 988
    .end local v2           #a0:I
    .end local v7           #bitOffset:I
    .end local v11           #currIndex:I
    .end local v15           #isWhite:Z
    .end local v21           #temp:[I
    .restart local v10       #currIndex:I
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->lineBitNum:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bitsPerScanline:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->lineBitNum:I

    .line 989
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 985
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->decodeNextScanline()V

    goto :goto_7
.end method

.method public declared-synchronized decodeT6()V
    .locals 24

    .prologue
    .line 994
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->h:I

    move/from16 v16, v0

    .line 1004
    .local v16, height:I
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v4, v0, [I

    .line 1011
    .local v4, b:[I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->currChangingElems:[I

    .line 1016
    .local v9, cce:[I
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->changingElemSize:I

    .line 1017
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->changingElemSize:I

    move/from16 v22, v0

    add-int/lit8 v23, v22, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->changingElemSize:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->w:I

    move/from16 v23, v0

    aput v23, v9, v22

    .line 1018
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->changingElemSize:I

    move/from16 v22, v0

    add-int/lit8 v23, v22, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->changingElemSize:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->w:I

    move/from16 v23, v0

    aput v23, v9, v22

    .line 1022
    const/16 v18, 0x0

    .local v18, lines:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_13

    .line 1024
    const/4 v2, -0x1

    .line 1025
    .local v2, a0:I
    const/16 v17, 0x1

    .line 1030
    .local v17, isWhite:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->prevChangingElems:[I

    move-object/from16 v20, v0

    .line 1031
    .local v20, temp:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->currChangingElems:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->prevChangingElems:[I

    .line 1032
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->currChangingElems:[I

    move-object/from16 v9, v20

    .line 1033
    const/4 v11, 0x0

    .line 1036
    .local v11, currIndex:I
    const/4 v7, 0x0

    .line 1039
    .local v7, bitOffset:I
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->lastChangingElement:I

    move v12, v11

    .line 1042
    .end local v11           #currIndex:I
    .local v12, currIndex:I
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->w:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_12

    .line 1044
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v2, v1, v4}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->getNextChangingElement(IZ[I)V

    .line 1045
    const/16 v22, 0x0

    aget v5, v4, v22

    .line 1046
    .local v5, b1:I
    const/16 v22, 0x1

    aget v6, v4, v22

    .line 1049
    .local v6, b2:I
    const/16 v22, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v14

    .line 1051
    .local v14, entry:I
    sget-object v22, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->twoDCodes:[B

    aget-byte v22, v22, v14

    move/from16 v0, v22

    and-int/lit16 v14, v0, 0xff

    .line 1054
    and-int/lit8 v22, v14, 0x78

    ushr-int/lit8 v10, v22, 0x3

    .line 1055
    .local v10, code:I
    and-int/lit8 v8, v14, 0x7

    .line 1057
    .local v8, bits:I
    if-nez v10, :cond_3

    .line 1059
    if-nez v17, :cond_2

    .line 1060
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->w:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v6, v0, :cond_1

    .line 1061
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->w:I

    .line 1063
    :cond_1
    sub-int v22, v6, v7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v7, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 1065
    :cond_2
    move v2, v6

    move v7, v6

    .line 1068
    rsub-int/lit8 v22, v8, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->updatePointer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 994
    .end local v2           #a0:I
    .end local v4           #b:[I
    .end local v5           #b1:I
    .end local v6           #b2:I
    .end local v7           #bitOffset:I
    .end local v8           #bits:I
    .end local v9           #cce:[I
    .end local v10           #code:I
    .end local v12           #currIndex:I
    .end local v14           #entry:I
    .end local v16           #height:I
    .end local v17           #isWhite:Z
    .end local v18           #lines:I
    .end local v20           #temp:[I
    :catchall_0
    move-exception v22

    monitor-exit p0

    throw v22

    .line 1069
    .restart local v2       #a0:I
    .restart local v4       #b:[I
    .restart local v5       #b1:I
    .restart local v6       #b2:I
    .restart local v7       #bitOffset:I
    .restart local v8       #bits:I
    .restart local v9       #cce:[I
    .restart local v10       #code:I
    .restart local v12       #currIndex:I
    .restart local v14       #entry:I
    .restart local v16       #height:I
    .restart local v17       #isWhite:Z
    .restart local v18       #lines:I
    .restart local v20       #temp:[I
    :cond_3
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v10, v0, :cond_7

    .line 1071
    rsub-int/lit8 v22, v8, 0x7

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->updatePointer(I)V

    .line 1075
    if-eqz v17, :cond_5

    .line 1077
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->decodeWhiteCodeWord()I

    move-result v19

    .line 1078
    .local v19, number:I
    add-int v7, v7, v19

    .line 1079
    add-int/lit8 v11, v12, 0x1

    .end local v12           #currIndex:I
    .restart local v11       #currIndex:I
    aput v7, v9, v12

    .line 1081
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->decodeBlackCodeWord()I

    move-result v19

    .line 1082
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->w:I

    move/from16 v22, v0

    sub-int v22, v22, v7

    move/from16 v0, v19

    move/from16 v1, v22

    if-le v0, v1, :cond_4

    .line 1083
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->w:I

    move/from16 v22, v0

    sub-int v19, v22, v7

    .line 1085
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v7, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 1086
    add-int v7, v7, v19

    .line 1087
    add-int/lit8 v12, v11, 0x1

    .end local v11           #currIndex:I
    .restart local v12       #currIndex:I
    aput v7, v9, v11

    move v11, v12

    .line 1103
    .end local v12           #currIndex:I
    .restart local v11       #currIndex:I
    :goto_2
    move v2, v7

    move v12, v11

    .line 1104
    .end local v11           #currIndex:I
    .restart local v12       #currIndex:I
    goto/16 :goto_1

    .line 1090
    .end local v19           #number:I
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->decodeBlackCodeWord()I

    move-result v19

    .line 1091
    .restart local v19       #number:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->w:I

    move/from16 v22, v0

    sub-int v22, v22, v7

    move/from16 v0, v19

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    .line 1092
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->w:I

    move/from16 v22, v0

    sub-int v19, v22, v7

    .line 1094
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v7, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 1095
    add-int v7, v7, v19

    .line 1096
    add-int/lit8 v11, v12, 0x1

    .end local v12           #currIndex:I
    .restart local v11       #currIndex:I
    aput v7, v9, v12

    .line 1098
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->decodeWhiteCodeWord()I

    move-result v19

    .line 1099
    add-int v7, v7, v19

    .line 1100
    add-int/lit8 v12, v11, 0x1

    .end local v11           #currIndex:I
    .restart local v12       #currIndex:I
    aput v7, v9, v11

    move v11, v12

    .end local v12           #currIndex:I
    .restart local v11       #currIndex:I
    goto :goto_2

    .line 1104
    .end local v11           #currIndex:I
    .end local v19           #number:I
    .restart local v12       #currIndex:I
    :cond_7
    const/16 v22, 0x8

    move/from16 v0, v22

    if-gt v10, v0, :cond_b

    .line 1105
    add-int/lit8 v22, v10, -0x5

    add-int v3, v5, v22

    .line 1106
    .local v3, a1:I
    add-int/lit8 v11, v12, 0x1

    .end local v12           #currIndex:I
    .restart local v11       #currIndex:I
    aput v3, v9, v12

    .line 1110
    if-nez v17, :cond_9

    .line 1111
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->w:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v3, v0, :cond_8

    .line 1112
    move-object/from16 v0, p0

    iget v3, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->w:I

    .line 1114
    :cond_8
    sub-int v22, v3, v7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v7, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 1116
    :cond_9
    move v2, v3

    move v7, v3

    .line 1117
    if-nez v17, :cond_a

    const/16 v17, 0x1

    .line 1119
    :goto_3
    rsub-int/lit8 v22, v8, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->updatePointer(I)V

    move v12, v11

    .end local v11           #currIndex:I
    .restart local v12       #currIndex:I
    goto/16 :goto_1

    .line 1117
    .end local v12           #currIndex:I
    .restart local v11       #currIndex:I
    :cond_a
    const/16 v17, 0x0

    goto :goto_3

    .line 1120
    .end local v3           #a1:I
    .end local v11           #currIndex:I
    .restart local v12       #currIndex:I
    :cond_b
    const/16 v22, 0xb

    move/from16 v0, v22

    if-ne v10, v0, :cond_0

    .line 1121
    const/16 v22, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v13

    .line 1123
    .local v13, entranceCode:I
    const/16 v21, 0x0

    .line 1124
    .local v21, zeros:I
    const/4 v15, 0x0

    .line 1126
    .local v15, exit:Z
    :goto_4
    if-nez v15, :cond_0

    .line 1127
    :goto_5
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_c

    .line 1128
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 1131
    :cond_c
    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_f

    .line 1135
    add-int/lit8 v21, v21, -0x6

    .line 1137
    if-nez v17, :cond_d

    if-lez v21, :cond_d

    .line 1138
    add-int/lit8 v11, v12, 0x1

    .end local v12           #currIndex:I
    .restart local v11       #currIndex:I
    aput v7, v9, v12

    move v12, v11

    .line 1142
    .end local v11           #currIndex:I
    .restart local v12       #currIndex:I
    :cond_d
    add-int v7, v7, v21

    .line 1143
    if-lez v21, :cond_e

    .line 1145
    const/16 v17, 0x1

    .line 1150
    :cond_e
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->nextLesserThan8Bits(I)I

    move-result v22

    if-nez v22, :cond_10

    .line 1151
    if-nez v17, :cond_17

    .line 1152
    add-int/lit8 v11, v12, 0x1

    .end local v12           #currIndex:I
    .restart local v11       #currIndex:I
    aput v7, v9, v12

    .line 1154
    :goto_6
    const/16 v17, 0x1

    .line 1162
    :goto_7
    const/4 v15, 0x1

    move v12, v11

    .line 1165
    .end local v11           #currIndex:I
    .restart local v12       #currIndex:I
    :cond_f
    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    .line 1166
    if-nez v17, :cond_15

    .line 1167
    add-int/lit8 v11, v12, 0x1

    .end local v12           #currIndex:I
    .restart local v11       #currIndex:I
    aput v7, v9, v12

    .line 1169
    :goto_8
    add-int v7, v7, v21

    .line 1172
    const/16 v17, 0x1

    move v12, v11

    .end local v11           #currIndex:I
    .restart local v12       #currIndex:I
    goto :goto_4

    .line 1156
    :cond_10
    if-eqz v17, :cond_16

    .line 1157
    add-int/lit8 v11, v12, 0x1

    .end local v12           #currIndex:I
    .restart local v11       #currIndex:I
    aput v7, v9, v12

    .line 1159
    :goto_9
    const/16 v17, 0x0

    goto :goto_7

    .line 1174
    .end local v11           #currIndex:I
    .restart local v12       #currIndex:I
    :cond_11
    add-int v7, v7, v21

    .line 1176
    add-int/lit8 v11, v12, 0x1

    .end local v12           #currIndex:I
    .restart local v11       #currIndex:I
    aput v7, v9, v12

    .line 1177
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v7, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->setToBlack(II)V

    .line 1178
    add-int/lit8 v7, v7, 0x1

    .line 1181
    const/16 v17, 0x0

    move v12, v11

    .end local v11           #currIndex:I
    .restart local v12       #currIndex:I
    goto :goto_4

    .line 1190
    .end local v5           #b1:I
    .end local v6           #b2:I
    .end local v8           #bits:I
    .end local v10           #code:I
    .end local v13           #entranceCode:I
    .end local v14           #entry:I
    .end local v15           #exit:Z
    .end local v21           #zeros:I
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->w:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-gt v12, v0, :cond_14

    .line 1191
    add-int/lit8 v11, v12, 0x1

    .end local v12           #currIndex:I
    .restart local v11       #currIndex:I
    aput v7, v9, v12

    .line 1194
    :goto_a
    move-object/from16 v0, p0

    iput v11, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->changingElemSize:I

    .line 1196
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->lineBitNum:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->bitsPerScanline:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecompressor;->lineBitNum:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1022
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 1198
    .end local v2           #a0:I
    .end local v7           #bitOffset:I
    .end local v11           #currIndex:I
    .end local v17           #isWhite:Z
    .end local v20           #temp:[I
    :cond_13
    monitor-exit p0

    return-void

    .restart local v2       #a0:I
    .restart local v7       #bitOffset:I
    .restart local v12       #currIndex:I
    .restart local v17       #isWhite:Z
    .restart local v20       #temp:[I
    :cond_14
    move v11, v12

    .end local v12           #currIndex:I
    .restart local v11       #currIndex:I
    goto :goto_a

    .end local v11           #currIndex:I
    .restart local v5       #b1:I
    .restart local v6       #b2:I
    .restart local v8       #bits:I
    .restart local v10       #code:I
    .restart local v12       #currIndex:I
    .restart local v13       #entranceCode:I
    .restart local v14       #entry:I
    .restart local v15       #exit:Z
    .restart local v21       #zeros:I
    :cond_15
    move v11, v12

    .end local v12           #currIndex:I
    .restart local v11       #currIndex:I
    goto :goto_8

    .end local v11           #currIndex:I
    .restart local v12       #currIndex:I
    :cond_16
    move v11, v12

    .end local v12           #currIndex:I
    .restart local v11       #currIndex:I
    goto :goto_9

    .end local v11           #currIndex:I
    .restart local v12       #currIndex:I
    :cond_17
    move v11, v12

    .end local v12           #currIndex:I
    .restart local v11       #currIndex:I
    goto :goto_6
.end method
