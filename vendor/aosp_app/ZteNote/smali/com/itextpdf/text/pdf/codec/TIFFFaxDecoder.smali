.class public Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;
.super Ljava/lang/Object;
.source "TIFFFaxDecoder.java"


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

.field private bytePointer:I

.field private changingElemSize:I

.field private compression:I

.field private currChangingElems:[I

.field private data:[B

.field private fillBits:I

.field private fillOrder:I

.field private h:I

.field private lastChangingElement:I

.field private oneD:I

.field private prevChangingElems:[I

.field private uncompressedMode:I

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    const/16 v1, 0x9

    .line 76
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->table1:[I

    .line 88
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->table2:[I

    .line 101
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->flipTable:[B

    .line 137
    const/16 v0, 0x400

    new-array v0, v0, [S

    fill-array-data v0, :array_3

    sput-object v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->white:[S

    .line 397
    new-array v0, v2, [S

    fill-array-data v0, :array_4

    sput-object v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->additionalMakeup:[S

    .line 405
    new-array v0, v2, [S

    fill-array-data v0, :array_5

    sput-object v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->initBlack:[S

    .line 413
    const/4 v0, 0x4

    new-array v0, v0, [S

    fill-array-data v0, :array_6

    sput-object v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->twoBitBlack:[S

    .line 416
    const/16 v0, 0x200

    new-array v0, v0, [S

    fill-array-data v0, :array_7

    sput-object v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->black:[S

    .line 547
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    sput-object v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->twoDCodes:[B

    return-void

    .line 76
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

    .line 88
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

    .line 101
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

    .line 137
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

    .line 397
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

    .line 405
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

    .line 413
    :array_6
    .array-data 0x2
        0x24t 0x1t
        0x4t 0x1t
        0xe2t 0x0t
        0xe2t 0x0t
    .end array-data

    .line 416
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

    .line 547
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

.method public constructor <init>(III)V
    .locals 2
    .parameter "fillOrder"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v1, 0x0

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->changingElemSize:I

    .line 67
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->lastChangingElement:I

    .line 69
    const/4 v0, 0x2

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->compression:I

    .line 72
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->uncompressedMode:I

    .line 73
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->fillBits:I

    .line 588
    iput p1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->fillOrder:I

    .line 589
    iput p2, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->w:I

    .line 590
    iput p3, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->h:I

    .line 592
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bitPointer:I

    .line 593
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bytePointer:I

    .line 594
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->prevChangingElems:[I

    .line 595
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->currChangingElems:[I

    .line 596
    return-void
.end method

.method private advancePointer()Z
    .locals 1

    .prologue
    .line 1503
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bitPointer:I

    if-eqz v0, :cond_0

    .line 1504
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bytePointer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bytePointer:I

    .line 1505
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bitPointer:I

    .line 1508
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private decodeBlackCodeWord()I
    .locals 10

    .prologue
    const/4 v8, 0x4

    .line 1215
    const/4 v1, -0x1

    .line 1216
    .local v1, code:I
    const/4 v6, 0x0

    .line 1217
    .local v6, runLength:I
    const/4 v5, 0x0

    .line 1219
    .local v5, isWhite:Z
    :cond_0
    :goto_0
    if-nez v5, :cond_5

    .line 1220
    invoke-direct {p0, v8}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v2

    .line 1221
    .local v2, current:I
    sget-object v7, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->initBlack:[S

    aget-short v3, v7, v2

    .line 1224
    .local v3, entry:I
    and-int/lit8 v4, v3, 0x1

    .line 1225
    .local v4, isT:I
    ushr-int/lit8 v7, v3, 0x1

    and-int/lit8 v0, v7, 0xf

    .line 1226
    .local v0, bits:I
    ushr-int/lit8 v7, v3, 0x5

    and-int/lit16 v1, v7, 0x7ff

    .line 1228
    const/16 v7, 0x64

    if-ne v1, v7, :cond_3

    .line 1229
    const/16 v7, 0x9

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v2

    .line 1230
    sget-object v7, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->black:[S

    aget-short v3, v7, v2

    .line 1233
    and-int/lit8 v4, v3, 0x1

    .line 1234
    ushr-int/lit8 v7, v3, 0x1

    and-int/lit8 v0, v7, 0xf

    .line 1235
    ushr-int/lit8 v7, v3, 0x5

    and-int/lit16 v1, v7, 0x7ff

    .line 1237
    const/16 v7, 0xc

    if-ne v0, v7, :cond_1

    .line 1239
    const/4 v7, 0x5

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 1240
    invoke-direct {p0, v8}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v2

    .line 1241
    sget-object v7, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->additionalMakeup:[S

    aget-short v3, v7, v2

    .line 1242
    ushr-int/lit8 v7, v3, 0x1

    and-int/lit8 v0, v7, 0x7

    .line 1243
    ushr-int/lit8 v7, v3, 0x4

    and-int/lit16 v1, v7, 0xfff

    .line 1244
    add-int/2addr v6, v1

    .line 1246
    rsub-int/lit8 v7, v0, 0x4

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->updatePointer(I)V

    goto :goto_0

    .line 1247
    :cond_1
    const/16 v7, 0xf

    if-ne v0, v7, :cond_2

    .line 1249
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "eol.code.word.encountered.in.black.run"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1251
    :cond_2
    add-int/2addr v6, v1

    .line 1252
    rsub-int/lit8 v7, v0, 0x9

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 1253
    if-nez v4, :cond_0

    .line 1254
    const/4 v5, 0x1

    goto :goto_0

    .line 1257
    :cond_3
    const/16 v7, 0xc8

    if-ne v1, v7, :cond_4

    .line 1259
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v2

    .line 1260
    sget-object v7, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->twoBitBlack:[S

    aget-short v3, v7, v2

    .line 1261
    ushr-int/lit8 v7, v3, 0x5

    and-int/lit16 v1, v7, 0x7ff

    .line 1262
    add-int/2addr v6, v1

    .line 1263
    ushr-int/lit8 v7, v3, 0x1

    and-int/lit8 v0, v7, 0xf

    .line 1264
    rsub-int/lit8 v7, v0, 0x2

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 1265
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1268
    :cond_4
    add-int/2addr v6, v1

    .line 1269
    rsub-int/lit8 v7, v0, 0x4

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 1270
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1274
    .end local v0           #bits:I
    .end local v2           #current:I
    .end local v3           #entry:I
    .end local v4           #isT:I
    :cond_5
    return v6
.end method

.method private decodeWhiteCodeWord()I
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1173
    const/4 v1, -0x1

    .line 1174
    .local v1, code:I
    const/4 v6, 0x0

    .line 1175
    .local v6, runLength:I
    const/4 v5, 0x1

    .line 1177
    .local v5, isWhite:Z
    :cond_0
    :goto_0
    if-eqz v5, :cond_4

    .line 1178
    const/16 v8, 0xa

    invoke-direct {p0, v8}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v2

    .line 1179
    .local v2, current:I
    sget-object v8, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->white:[S

    aget-short v3, v8, v2

    .line 1182
    .local v3, entry:I
    and-int/lit8 v4, v3, 0x1

    .line 1183
    .local v4, isT:I
    ushr-int/lit8 v8, v3, 0x1

    and-int/lit8 v0, v8, 0xf

    .line 1185
    .local v0, bits:I
    const/16 v8, 0xc

    if-ne v0, v8, :cond_1

    .line 1187
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v7

    .line 1189
    .local v7, twoBits:I
    shl-int/lit8 v8, v2, 0x2

    and-int/lit8 v8, v8, 0xc

    or-int v2, v8, v7

    .line 1190
    sget-object v8, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->additionalMakeup:[S

    aget-short v3, v8, v2

    .line 1191
    ushr-int/lit8 v8, v3, 0x1

    and-int/lit8 v0, v8, 0x7

    .line 1192
    ushr-int/lit8 v8, v3, 0x4

    and-int/lit16 v1, v8, 0xfff

    .line 1193
    add-int/2addr v6, v1

    .line 1194
    rsub-int/lit8 v8, v0, 0x4

    invoke-direct {p0, v8}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->updatePointer(I)V

    goto :goto_0

    .line 1195
    .end local v7           #twoBits:I
    :cond_1
    if-nez v0, :cond_2

    .line 1196
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "invalid.code.encountered"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1197
    :cond_2
    const/16 v8, 0xf

    if-ne v0, v8, :cond_3

    .line 1198
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "eol.code.word.encountered.in.white.run"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1201
    :cond_3
    ushr-int/lit8 v8, v3, 0x5

    and-int/lit16 v1, v8, 0x7ff

    .line 1202
    add-int/2addr v6, v1

    .line 1203
    rsub-int/lit8 v8, v0, 0xa

    invoke-direct {p0, v8}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 1204
    if-nez v4, :cond_0

    .line 1205
    const/4 v5, 0x0

    goto :goto_0

    .line 1210
    .end local v0           #bits:I
    .end local v2           #current:I
    .end local v3           #entry:I
    .end local v4           #isT:I
    :cond_4
    return v6
.end method

.method private getNextChangingElement(IZ[I)V
    .locals 7
    .parameter "a0"
    .parameter "isWhite"
    .parameter "ret"

    .prologue
    const/4 v5, 0x0

    .line 1345
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->prevChangingElems:[I

    .line 1346
    .local v2, pce:[I
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->changingElemSize:I

    .line 1351
    .local v0, ces:I
    iget v6, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->lastChangingElement:I

    if-lez v6, :cond_2

    iget v6, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->lastChangingElement:I

    add-int/lit8 v3, v6, -0x1

    .line 1352
    .local v3, start:I
    :goto_0
    if-eqz p2, :cond_3

    .line 1353
    and-int/lit8 v3, v3, -0x2

    .line 1358
    :goto_1
    move v1, v3

    .line 1359
    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_0

    .line 1360
    aget v4, v2, v1

    .line 1361
    .local v4, temp:I
    if-le v4, p1, :cond_4

    .line 1362
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->lastChangingElement:I

    .line 1363
    aput v4, p3, v5

    .line 1368
    .end local v4           #temp:I
    :cond_0
    add-int/lit8 v5, v1, 0x1

    if-ge v5, v0, :cond_1

    .line 1369
    const/4 v5, 0x1

    add-int/lit8 v6, v1, 0x1

    aget v6, v2, v6

    aput v6, p3, v5

    .line 1371
    :cond_1
    return-void

    .end local v1           #i:I
    .end local v3           #start:I
    :cond_2
    move v3, v5

    .line 1351
    goto :goto_0

    .line 1355
    .restart local v3       #start:I
    :cond_3
    or-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1359
    .restart local v1       #i:I
    .restart local v4       #temp:I
    :cond_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_2
.end method

.method private nextLesserThan8Bits(I)I
    .locals 13
    .parameter "bitsToGet"

    .prologue
    const/4 v12, 0x0

    .line 1444
    iget-object v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->data:[B

    array-length v9, v9

    add-int/lit8 v6, v9, -0x1

    .line 1445
    .local v6, l:I
    iget v3, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bytePointer:I

    .line 1447
    .local v3, bp:I
    iget v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->fillOrder:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 1448
    iget-object v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->data:[B

    aget-byte v0, v9, v3

    .line 1449
    .local v0, b:B
    if-ne v3, v6, :cond_1

    .line 1450
    const/4 v7, 0x0

    .line 1465
    .local v7, next:B
    :goto_0
    iget v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bitPointer:I

    rsub-int/lit8 v2, v9, 0x8

    .line 1466
    .local v2, bitsLeft:I
    sub-int v1, p1, v2

    .line 1468
    .local v1, bitsFromNextByte:I
    sub-int v8, v2, p1

    .line 1470
    .local v8, shift:I
    if-ltz v8, :cond_5

    .line 1471
    sget-object v9, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->table1:[I

    aget v9, v9, v2

    and-int/2addr v9, v0

    ushr-int v4, v9, v8

    .line 1472
    .local v4, i1:I
    iget v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bitPointer:I

    add-int/2addr v9, p1

    iput v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bitPointer:I

    .line 1473
    iget v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bitPointer:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_0

    .line 1474
    iput v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bitPointer:I

    .line 1475
    iget v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bytePointer:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bytePointer:I

    .line 1486
    :cond_0
    :goto_1
    return v4

    .line 1452
    .end local v1           #bitsFromNextByte:I
    .end local v2           #bitsLeft:I
    .end local v4           #i1:I
    .end local v7           #next:B
    .end local v8           #shift:I
    :cond_1
    iget-object v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->data:[B

    add-int/lit8 v10, v3, 0x1

    aget-byte v7, v9, v10

    .restart local v7       #next:B
    goto :goto_0

    .line 1454
    .end local v0           #b:B
    .end local v7           #next:B
    :cond_2
    iget v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->fillOrder:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 1455
    sget-object v9, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->flipTable:[B

    iget-object v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->data:[B

    aget-byte v10, v10, v3

    and-int/lit16 v10, v10, 0xff

    aget-byte v0, v9, v10

    .line 1456
    .restart local v0       #b:B
    if-ne v3, v6, :cond_3

    .line 1457
    const/4 v7, 0x0

    .restart local v7       #next:B
    goto :goto_0

    .line 1459
    .end local v7           #next:B
    :cond_3
    sget-object v9, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->flipTable:[B

    iget-object v10, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->data:[B

    add-int/lit8 v11, v3, 0x1

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    aget-byte v7, v9, v10

    .restart local v7       #next:B
    goto :goto_0

    .line 1462
    .end local v0           #b:B
    .end local v7           #next:B
    :cond_4
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "tiff.fill.order.tag.must.be.either.1.or.2"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1478
    .restart local v0       #b:B
    .restart local v1       #bitsFromNextByte:I
    .restart local v2       #bitsLeft:I
    .restart local v7       #next:B
    .restart local v8       #shift:I
    :cond_5
    sget-object v9, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->table1:[I

    aget v9, v9, v2

    and-int/2addr v9, v0

    neg-int v10, v8

    shl-int v4, v9, v10

    .line 1479
    .restart local v4       #i1:I
    sget-object v9, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->table2:[I

    aget v9, v9, v1

    and-int/2addr v9, v7

    rsub-int/lit8 v10, v1, 0x8

    ushr-int v5, v9, v10

    .line 1481
    .local v5, i2:I
    or-int/2addr v4, v5

    .line 1482
    iget v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bytePointer:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bytePointer:I

    .line 1483
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bitPointer:I

    goto :goto_1
.end method

.method private nextNBits(I)I
    .locals 15
    .parameter "bitsToGet"

    .prologue
    .line 1375
    iget-object v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->data:[B

    array-length v12, v12

    add-int/lit8 v9, v12, -0x1

    .line 1376
    .local v9, l:I
    iget v4, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bytePointer:I

    .line 1378
    .local v4, bp:I
    iget v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->fillOrder:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    .line 1379
    iget-object v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->data:[B

    aget-byte v0, v12, v4

    .line 1381
    .local v0, b:B
    if-ne v4, v9, :cond_1

    .line 1382
    const/4 v10, 0x0

    .line 1383
    .local v10, next:B
    const/4 v11, 0x0

    .line 1408
    .local v11, next2next:B
    :goto_0
    iget v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bitPointer:I

    rsub-int/lit8 v3, v12, 0x8

    .line 1409
    .local v3, bitsLeft:I
    sub-int v2, p1, v3

    .line 1410
    .local v2, bitsFromNextByte:I
    const/4 v1, 0x0

    .line 1411
    .local v1, bitsFromNext2NextByte:I
    const/16 v12, 0x8

    if-le v2, v12, :cond_0

    .line 1412
    add-int/lit8 v1, v2, -0x8

    .line 1413
    const/16 v2, 0x8

    .line 1416
    :cond_0
    iget v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bytePointer:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bytePointer:I

    .line 1418
    sget-object v12, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->table1:[I

    aget v12, v12, v3

    and-int/2addr v12, v0

    sub-int v13, p1, v3

    shl-int v6, v12, v13

    .line 1419
    .local v6, i1:I
    sget-object v12, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->table2:[I

    aget v12, v12, v2

    and-int/2addr v12, v10

    rsub-int/lit8 v13, v2, 0x8

    ushr-int v7, v12, v13

    .line 1421
    .local v7, i2:I
    const/4 v8, 0x0

    .line 1422
    .local v8, i3:I
    if-eqz v1, :cond_7

    .line 1423
    shl-int/2addr v7, v1

    .line 1424
    sget-object v12, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->table2:[I

    aget v12, v12, v1

    and-int/2addr v12, v11

    rsub-int/lit8 v13, v1, 0x8

    ushr-int v8, v12, v13

    .line 1426
    or-int/2addr v7, v8

    .line 1427
    iget v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bytePointer:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bytePointer:I

    .line 1428
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bitPointer:I

    .line 1438
    :goto_1
    or-int v5, v6, v7

    .line 1439
    .local v5, i:I
    return v5

    .line 1384
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

    .line 1385
    iget-object v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->data:[B

    add-int/lit8 v13, v4, 0x1

    aget-byte v10, v12, v13

    .line 1386
    .restart local v10       #next:B
    const/4 v11, 0x0

    .restart local v11       #next2next:B
    goto :goto_0

    .line 1388
    .end local v10           #next:B
    .end local v11           #next2next:B
    :cond_2
    iget-object v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->data:[B

    add-int/lit8 v13, v4, 0x1

    aget-byte v10, v12, v13

    .line 1389
    .restart local v10       #next:B
    iget-object v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->data:[B

    add-int/lit8 v13, v4, 0x2

    aget-byte v11, v12, v13

    .restart local v11       #next2next:B
    goto :goto_0

    .line 1391
    .end local v0           #b:B
    .end local v10           #next:B
    .end local v11           #next2next:B
    :cond_3
    iget v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->fillOrder:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6

    .line 1392
    sget-object v12, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->flipTable:[B

    iget-object v13, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->data:[B

    aget-byte v13, v13, v4

    and-int/lit16 v13, v13, 0xff

    aget-byte v0, v12, v13

    .line 1394
    .restart local v0       #b:B
    if-ne v4, v9, :cond_4

    .line 1395
    const/4 v10, 0x0

    .line 1396
    .restart local v10       #next:B
    const/4 v11, 0x0

    .restart local v11       #next2next:B
    goto :goto_0

    .line 1397
    .end local v10           #next:B
    .end local v11           #next2next:B
    :cond_4
    add-int/lit8 v12, v4, 0x1

    if-ne v12, v9, :cond_5

    .line 1398
    sget-object v12, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->flipTable:[B

    iget-object v13, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->data:[B

    add-int/lit8 v14, v4, 0x1

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    aget-byte v10, v12, v13

    .line 1399
    .restart local v10       #next:B
    const/4 v11, 0x0

    .restart local v11       #next2next:B
    goto :goto_0

    .line 1401
    .end local v10           #next:B
    .end local v11           #next2next:B
    :cond_5
    sget-object v12, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->flipTable:[B

    iget-object v13, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->data:[B

    add-int/lit8 v14, v4, 0x1

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    aget-byte v10, v12, v13

    .line 1402
    .restart local v10       #next:B
    sget-object v12, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->flipTable:[B

    iget-object v13, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->data:[B

    add-int/lit8 v14, v4, 0x2

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    aget-byte v11, v12, v13

    .restart local v11       #next2next:B
    goto/16 :goto_0

    .line 1405
    .end local v0           #b:B
    .end local v10           #next:B
    .end local v11           #next2next:B
    :cond_6
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "tiff.fill.order.tag.must.be.either.1.or.2"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1430
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

    .line 1431
    const/4 v12, 0x0

    iput v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bitPointer:I

    .line 1432
    iget v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bytePointer:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bytePointer:I

    goto :goto_1

    .line 1434
    :cond_8
    iput v2, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bitPointer:I

    goto :goto_1
.end method

.method private readEOL(Z)I
    .locals 8
    .parameter "isFirstEOL"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 1278
    iget v4, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->fillBits:I

    if-nez v4, :cond_2

    .line 1279
    const/16 v4, 0xc

    invoke-direct {p0, v4}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v2

    .line 1280
    .local v2, next12Bits:I
    if-eqz p1, :cond_1

    if-nez v2, :cond_1

    .line 1287
    invoke-direct {p0, v6}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 1291
    iput v3, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->fillBits:I

    .line 1339
    .end local v2           #next12Bits:I
    :cond_0
    :goto_0
    return v3

    .line 1295
    .restart local v2       #next12Bits:I
    :cond_1
    if-eq v2, v3, :cond_5

    .line 1296
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "scanline.must.begin.with.eol.code.word"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1298
    .end local v2           #next12Bits:I
    :cond_2
    iget v4, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->fillBits:I

    if-ne v4, v3, :cond_5

    .line 1304
    iget v4, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bitPointer:I

    rsub-int/lit8 v0, v4, 0x8

    .line 1306
    .local v0, bitsLeft:I
    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v4

    if-eqz v4, :cond_3

    .line 1307
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "all.fill.bits.preceding.eol.code.must.be.0"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1314
    :cond_3
    if-ge v0, v6, :cond_4

    .line 1315
    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v4

    if-eqz v4, :cond_4

    .line 1316
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "all.fill.bits.preceding.eol.code.must.be.0"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1324
    :cond_4
    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v1

    .local v1, n:I
    if-eq v1, v3, :cond_5

    .line 1327
    if-eqz v1, :cond_4

    .line 1328
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "all.fill.bits.preceding.eol.code.must.be.0"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1334
    .end local v0           #bitsLeft:I
    .end local v1           #n:I
    :cond_5
    iget v4, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->oneD:I

    if-eqz v4, :cond_0

    .line 1339
    invoke-direct {p0, v3}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v3

    goto :goto_0
.end method

.method public static reverseBits([B)V
    .locals 3
    .parameter "b"

    .prologue
    .line 605
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 606
    sget-object v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->flipTable:[B

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    aput-byte v1, p0, v0

    .line 605
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 607
    :cond_0
    return-void
.end method

.method private setToBlack([BIII)V
    .locals 10
    .parameter "buffer"
    .parameter "lineOffset"
    .parameter "bitOffset"
    .parameter "numBits"

    .prologue
    const/4 v9, 0x1

    .line 1138
    mul-int/lit8 v7, p2, 0x8

    add-int v0, v7, p3

    .line 1139
    .local v0, bitNum:I
    add-int v3, v0, p4

    .line 1141
    .local v3, lastBit:I
    shr-int/lit8 v1, v0, 0x3

    .line 1144
    .local v1, byteNum:I
    and-int/lit8 v5, v0, 0x7

    .line 1145
    .local v5, shift:I
    if-lez v5, :cond_1

    .line 1146
    rsub-int/lit8 v7, v5, 0x7

    shl-int v4, v9, v7

    .line 1147
    .local v4, maskVal:I
    aget-byte v6, p1, v1

    .line 1148
    .local v6, val:B
    :goto_0
    if-lez v4, :cond_0

    if-ge v0, v3, :cond_0

    .line 1149
    or-int v7, v6, v4

    int-to-byte v6, v7

    .line 1150
    shr-int/lit8 v4, v4, 0x1

    .line 1151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1153
    :cond_0
    aput-byte v6, p1, v1

    .line 1157
    .end local v4           #maskVal:I
    .end local v6           #val:B
    :cond_1
    shr-int/lit8 v1, v0, 0x3

    move v2, v1

    .line 1158
    .end local v1           #byteNum:I
    .local v2, byteNum:I
    :goto_1
    add-int/lit8 v7, v3, -0x7

    if-ge v0, v7, :cond_3

    .line 1159
    add-int/lit8 v1, v2, 0x1

    .end local v2           #byteNum:I
    .restart local v1       #byteNum:I
    const/4 v7, -0x1

    aput-byte v7, p1, v2

    .line 1160
    add-int/lit8 v0, v0, 0x8

    move v2, v1

    .end local v1           #byteNum:I
    .restart local v2       #byteNum:I
    goto :goto_1

    .line 1164
    .end local v2           #byteNum:I
    .restart local v1       #byteNum:I
    :goto_2
    if-ge v0, v3, :cond_2

    .line 1165
    shr-int/lit8 v1, v0, 0x3

    .line 1166
    aget-byte v7, p1, v1

    and-int/lit8 v8, v0, 0x7

    rsub-int/lit8 v8, v8, 0x7

    shl-int v8, v9, v8

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p1, v1

    .line 1167
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1169
    :cond_2
    return-void

    .end local v1           #byteNum:I
    .restart local v2       #byteNum:I
    :cond_3
    move v1, v2

    .end local v2           #byteNum:I
    .restart local v1       #byteNum:I
    goto :goto_2
.end method

.method private updatePointer(I)V
    .locals 2
    .parameter "bitsToMoveBack"

    .prologue
    .line 1491
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bitPointer:I

    sub-int v0, v1, p1

    .line 1493
    .local v0, i:I
    if-gez v0, :cond_0

    .line 1494
    iget v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bytePointer:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bytePointer:I

    .line 1495
    add-int/lit8 v1, v0, 0x8

    iput v1, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bitPointer:I

    .line 1499
    :goto_0
    return-void

    .line 1497
    :cond_0
    iput v0, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bitPointer:I

    goto :goto_0
.end method


# virtual methods
.method public decode1D([B[BII)V
    .locals 5
    .parameter "buffer"
    .parameter "compData"
    .parameter "startX"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 613
    iput-object p2, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->data:[B

    .line 615
    const/4 v1, 0x0

    .line 616
    .local v1, lineOffset:I
    iget v3, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->w:I

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v2, v3, 0x8

    .line 618
    .local v2, scanlineStride:I
    iput v4, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bitPointer:I

    .line 619
    iput v4, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bytePointer:I

    .line 621
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 622
    invoke-virtual {p0, p1, v1, p3}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->decodeNextScanline([BII)V

    .line 623
    add-int/2addr v1, v2

    .line 621
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    :cond_0
    return-void
.end method

.method public decode2D([B[BIIJ)V
    .locals 23
    .parameter "buffer"
    .parameter "compData"
    .parameter "startX"
    .parameter "height"
    .parameter "tiffT4Options"

    .prologue
    .line 771
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->data:[B

    .line 772
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->compression:I

    .line 774
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bitPointer:I

    .line 775
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bytePointer:I

    .line 777
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->w:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x7

    div-int/lit8 v18, v20, 0x8

    .line 780
    .local v18, scanlineStride:I
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v5, v0, [I

    .line 783
    .local v5, b:[I
    const/4 v11, 0x0

    .line 792
    .local v11, currIndex:I
    const-wide/16 v20, 0x1

    and-long v20, v20, p5

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->oneD:I

    .line 793
    const-wide/16 v20, 0x2

    and-long v20, v20, p5

    const/16 v22, 0x1

    shr-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->uncompressedMode:I

    .line 794
    const-wide/16 v20, 0x4

    and-long v20, v20, p5

    const/16 v22, 0x2

    shr-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->fillBits:I

    .line 797
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->readEOL(Z)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 798
    new-instance v20, Ljava/lang/RuntimeException;

    const-string v21, "first.scanline.must.be.1d.encoded"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 801
    :cond_0
    const/4 v15, 0x0

    .line 806
    .local v15, lineOffset:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v15, v2}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->decodeNextScanline([BII)V

    .line 807
    add-int v15, v15, v18

    .line 809
    const/16 v16, 0x1

    .local v16, lines:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, p4

    if-ge v0, v1, :cond_a

    .line 813
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->readEOL(Z)I

    move-result v20

    if-nez v20, :cond_9

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->prevChangingElems:[I

    move-object/from16 v19, v0

    .line 819
    .local v19, temp:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->currChangingElems:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->prevChangingElems:[I

    .line 820
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->currChangingElems:[I

    .line 821
    const/4 v11, 0x0

    .line 824
    const/4 v3, -0x1

    .line 825
    .local v3, a0:I
    const/4 v14, 0x1

    .line 826
    .local v14, isWhite:Z
    move/from16 v8, p3

    .line 828
    .local v8, bitOffset:I
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->lastChangingElement:I

    .line 830
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->w:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v8, v0, :cond_8

    .line 832
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v14, v5}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->getNextChangingElement(IZ[I)V

    .line 834
    const/16 v20, 0x0

    aget v6, v5, v20

    .line 835
    .local v6, b1:I
    const/16 v20, 0x1

    aget v7, v5, v20

    .line 838
    .local v7, b2:I
    const/16 v20, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v13

    .line 841
    .local v13, entry:I
    sget-object v20, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->twoDCodes:[B

    aget-byte v20, v20, v13

    move/from16 v0, v20

    and-int/lit16 v13, v0, 0xff

    .line 844
    and-int/lit8 v20, v13, 0x78

    ushr-int/lit8 v10, v20, 0x3

    .line 845
    .local v10, code:I
    and-int/lit8 v9, v13, 0x7

    .line 847
    .local v9, bits:I
    if-nez v10, :cond_2

    .line 848
    if-nez v14, :cond_1

    .line 849
    sub-int v20, v7, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v15, v8, v2}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 852
    :cond_1
    move v3, v7

    move v8, v7

    .line 855
    rsub-int/lit8 v20, v9, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->updatePointer(I)V

    goto :goto_1

    .line 856
    :cond_2
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v10, v0, :cond_4

    .line 858
    rsub-int/lit8 v20, v9, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 862
    if-eqz v14, :cond_3

    .line 863
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->decodeWhiteCodeWord()I

    move-result v17

    .line 864
    .local v17, number:I
    add-int v8, v8, v17

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->currChangingElems:[I

    move-object/from16 v20, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11           #currIndex:I
    .local v12, currIndex:I
    aput v8, v20, v11

    .line 867
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->decodeBlackCodeWord()I

    move-result v17

    .line 868
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v15, v8, v2}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 869
    add-int v8, v8, v17

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->currChangingElems:[I

    move-object/from16 v20, v0

    add-int/lit8 v11, v12, 0x1

    .end local v12           #currIndex:I
    .restart local v11       #currIndex:I
    aput v8, v20, v12

    .line 882
    :goto_2
    move v3, v8

    .line 883
    goto/16 :goto_1

    .line 872
    .end local v17           #number:I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->decodeBlackCodeWord()I

    move-result v17

    .line 873
    .restart local v17       #number:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v15, v8, v2}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 874
    add-int v8, v8, v17

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->currChangingElems:[I

    move-object/from16 v20, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11           #currIndex:I
    .restart local v12       #currIndex:I
    aput v8, v20, v11

    .line 877
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->decodeWhiteCodeWord()I

    move-result v17

    .line 878
    add-int v8, v8, v17

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->currChangingElems:[I

    move-object/from16 v20, v0

    add-int/lit8 v11, v12, 0x1

    .end local v12           #currIndex:I
    .restart local v11       #currIndex:I
    aput v8, v20, v12

    goto :goto_2

    .line 883
    .end local v17           #number:I
    :cond_4
    const/16 v20, 0x8

    move/from16 v0, v20

    if-gt v10, v0, :cond_7

    .line 885
    add-int/lit8 v20, v10, -0x5

    add-int v4, v6, v20

    .line 887
    .local v4, a1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->currChangingElems:[I

    move-object/from16 v20, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11           #currIndex:I
    .restart local v12       #currIndex:I
    aput v4, v20, v11

    .line 891
    if-nez v14, :cond_5

    .line 892
    sub-int v20, v4, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v15, v8, v2}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 895
    :cond_5
    move v3, v4

    move v8, v4

    .line 896
    if-nez v14, :cond_6

    const/4 v14, 0x1

    .line 898
    :goto_3
    rsub-int/lit8 v20, v9, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->updatePointer(I)V

    move v11, v12

    .end local v12           #currIndex:I
    .restart local v11       #currIndex:I
    goto/16 :goto_1

    .line 896
    .end local v11           #currIndex:I
    .restart local v12       #currIndex:I
    :cond_6
    const/4 v14, 0x0

    goto :goto_3

    .line 900
    .end local v4           #a1:I
    .end local v12           #currIndex:I
    .restart local v11       #currIndex:I
    :cond_7
    new-instance v20, Ljava/lang/RuntimeException;

    const-string v21, "invalid.code.encountered.while.decoding.2d.group.3.compressed.data"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 906
    .end local v6           #b1:I
    .end local v7           #b2:I
    .end local v9           #bits:I
    .end local v10           #code:I
    .end local v13           #entry:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->currChangingElems:[I

    move-object/from16 v20, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11           #currIndex:I
    .restart local v12       #currIndex:I
    aput v8, v20, v11

    .line 907
    move-object/from16 v0, p0

    iput v12, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->changingElemSize:I

    move v11, v12

    .line 913
    .end local v3           #a0:I
    .end local v8           #bitOffset:I
    .end local v12           #currIndex:I
    .end local v14           #isWhite:Z
    .end local v19           #temp:[I
    .restart local v11       #currIndex:I
    :goto_4
    add-int v15, v15, v18

    .line 809
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 910
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v15, v2}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->decodeNextScanline([BII)V

    goto :goto_4

    .line 915
    :cond_a
    return-void
.end method

.method public decodeNextScanline([BII)V
    .locals 10
    .parameter "buffer"
    .parameter "lineOffset"
    .parameter "bitOffset"

    .prologue
    .line 629
    const/4 v0, 0x0

    .local v0, bits:I
    const/4 v1, 0x0

    .local v1, code:I
    const/4 v4, 0x0

    .line 631
    .local v4, isT:I
    const/4 v5, 0x1

    .line 634
    .local v5, isWhite:Z
    const/4 v7, 0x0

    iput v7, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->changingElemSize:I

    .line 637
    :cond_0
    iget v7, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->w:I

    if-ge p3, v7, :cond_6

    .line 638
    :cond_1
    :goto_0
    if-eqz v5, :cond_5

    .line 640
    const/16 v7, 0xa

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v2

    .line 641
    .local v2, current:I
    sget-object v7, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->white:[S

    aget-short v3, v7, v2

    .line 644
    .local v3, entry:I
    and-int/lit8 v4, v3, 0x1

    .line 645
    ushr-int/lit8 v7, v3, 0x1

    and-int/lit8 v0, v7, 0xf

    .line 647
    const/16 v7, 0xc

    if-ne v0, v7, :cond_2

    .line 649
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v6

    .line 651
    .local v6, twoBits:I
    shl-int/lit8 v7, v2, 0x2

    and-int/lit8 v7, v7, 0xc

    or-int v2, v7, v6

    .line 652
    sget-object v7, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->additionalMakeup:[S

    aget-short v3, v7, v2

    .line 653
    ushr-int/lit8 v7, v3, 0x1

    and-int/lit8 v0, v7, 0x7

    .line 654
    ushr-int/lit8 v7, v3, 0x4

    and-int/lit16 v1, v7, 0xfff

    .line 655
    add-int/2addr p3, v1

    .line 657
    rsub-int/lit8 v7, v0, 0x4

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->updatePointer(I)V

    goto :goto_0

    .line 658
    .end local v6           #twoBits:I
    :cond_2
    if-nez v0, :cond_3

    .line 659
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "invalid.code.encountered"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 660
    :cond_3
    const/16 v7, 0xf

    if-ne v0, v7, :cond_4

    .line 661
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "eol.code.word.encountered.in.white.run"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 664
    :cond_4
    ushr-int/lit8 v7, v3, 0x5

    and-int/lit16 v1, v7, 0x7ff

    .line 665
    add-int/2addr p3, v1

    .line 667
    rsub-int/lit8 v7, v0, 0xa

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 668
    if-nez v4, :cond_1

    .line 669
    const/4 v5, 0x0

    .line 670
    iget-object v7, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->currChangingElems:[I

    iget v8, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->changingElemSize:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->changingElemSize:I

    aput p3, v7, v8

    goto :goto_0

    .line 677
    .end local v2           #current:I
    .end local v3           #entry:I
    :cond_5
    iget v7, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->w:I

    if-ne p3, v7, :cond_7

    .line 678
    iget v7, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->compression:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    .line 679
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->advancePointer()Z

    .line 761
    :cond_6
    :goto_1
    iget-object v7, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->currChangingElems:[I

    iget v8, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->changingElemSize:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->changingElemSize:I

    aput p3, v7, v8

    .line 762
    return-void

    .line 684
    :cond_7
    :goto_2
    if-nez v5, :cond_c

    .line 686
    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v2

    .line 687
    .restart local v2       #current:I
    sget-object v7, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->initBlack:[S

    aget-short v3, v7, v2

    .line 690
    .restart local v3       #entry:I
    and-int/lit8 v4, v3, 0x1

    .line 691
    ushr-int/lit8 v7, v3, 0x1

    and-int/lit8 v0, v7, 0xf

    .line 692
    ushr-int/lit8 v7, v3, 0x5

    and-int/lit16 v1, v7, 0x7ff

    .line 694
    const/16 v7, 0x64

    if-ne v1, v7, :cond_a

    .line 695
    const/16 v7, 0x9

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->nextNBits(I)I

    move-result v2

    .line 696
    sget-object v7, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->black:[S

    aget-short v3, v7, v2

    .line 699
    and-int/lit8 v4, v3, 0x1

    .line 700
    ushr-int/lit8 v7, v3, 0x1

    and-int/lit8 v0, v7, 0xf

    .line 701
    ushr-int/lit8 v7, v3, 0x5

    and-int/lit16 v1, v7, 0x7ff

    .line 703
    const/16 v7, 0xc

    if-ne v0, v7, :cond_8

    .line 705
    const/4 v7, 0x5

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 706
    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v2

    .line 707
    sget-object v7, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->additionalMakeup:[S

    aget-short v3, v7, v2

    .line 708
    ushr-int/lit8 v7, v3, 0x1

    and-int/lit8 v0, v7, 0x7

    .line 709
    ushr-int/lit8 v7, v3, 0x4

    and-int/lit16 v1, v7, 0xfff

    .line 711
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 712
    add-int/2addr p3, v1

    .line 714
    rsub-int/lit8 v7, v0, 0x4

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->updatePointer(I)V

    goto :goto_2

    .line 715
    :cond_8
    const/16 v7, 0xf

    if-ne v0, v7, :cond_9

    .line 717
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "eol.code.word.encountered.in.black.run"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 719
    :cond_9
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 720
    add-int/2addr p3, v1

    .line 722
    rsub-int/lit8 v7, v0, 0x9

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 723
    if-nez v4, :cond_7

    .line 724
    const/4 v5, 0x1

    .line 725
    iget-object v7, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->currChangingElems:[I

    iget v8, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->changingElemSize:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->changingElemSize:I

    aput p3, v7, v8

    goto :goto_2

    .line 728
    :cond_a
    const/16 v7, 0xc8

    if-ne v1, v7, :cond_b

    .line 730
    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v2

    .line 731
    sget-object v7, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->twoBitBlack:[S

    aget-short v3, v7, v2

    .line 732
    ushr-int/lit8 v7, v3, 0x5

    and-int/lit16 v1, v7, 0x7ff

    .line 733
    ushr-int/lit8 v7, v3, 0x1

    and-int/lit8 v0, v7, 0xf

    .line 735
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 736
    add-int/2addr p3, v1

    .line 738
    rsub-int/lit8 v7, v0, 0x2

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 739
    const/4 v5, 0x1

    .line 740
    iget-object v7, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->currChangingElems:[I

    iget v8, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->changingElemSize:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->changingElemSize:I

    aput p3, v7, v8

    goto/16 :goto_2

    .line 743
    :cond_b
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 744
    add-int/2addr p3, v1

    .line 746
    rsub-int/lit8 v7, v0, 0x4

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 747
    const/4 v5, 0x1

    .line 748
    iget-object v7, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->currChangingElems:[I

    iget v8, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->changingElemSize:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->changingElemSize:I

    aput p3, v7, v8

    goto/16 :goto_2

    .line 753
    .end local v2           #current:I
    .end local v3           #entry:I
    :cond_c
    iget v7, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->w:I

    if-ne p3, v7, :cond_0

    .line 754
    iget v7, p0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->compression:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    .line 755
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->advancePointer()Z

    goto/16 :goto_1
.end method

.method public decodeT6([B[BIIJ)V
    .locals 27
    .parameter "buffer"
    .parameter "compData"
    .parameter "startX"
    .parameter "height"
    .parameter "tiffT6Options"

    .prologue
    .line 922
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->data:[B

    .line 923
    const/16 v24, 0x4

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->compression:I

    .line 925
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bitPointer:I

    .line 926
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->bytePointer:I

    .line 928
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->w:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x7

    div-int/lit8 v21, v24, 0x8

    .line 937
    .local v21, scanlineStride:I
    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v6, v0, [I

    .line 942
    .local v6, b:[I
    const-wide/16 v24, 0x2

    and-long v24, v24, p5

    const/16 v26, 0x1

    shr-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->uncompressedMode:I

    .line 945
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->currChangingElems:[I

    .line 950
    .local v11, cce:[I
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->changingElemSize:I

    .line 951
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->changingElemSize:I

    move/from16 v24, v0

    add-int/lit8 v25, v24, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->changingElemSize:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->w:I

    move/from16 v25, v0

    aput v25, v11, v24

    .line 952
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->changingElemSize:I

    move/from16 v24, v0

    add-int/lit8 v25, v24, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->changingElemSize:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->w:I

    move/from16 v25, v0

    aput v25, v11, v24

    .line 954
    const/16 v18, 0x0

    .line 957
    .local v18, lineOffset:I
    const/16 v19, 0x0

    .local v19, lines:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, p4

    if-ge v0, v1, :cond_12

    .line 959
    const/4 v4, -0x1

    .line 960
    .local v4, a0:I
    const/16 v17, 0x1

    .line 965
    .local v17, isWhite:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->prevChangingElems:[I

    move-object/from16 v22, v0

    .line 966
    .local v22, temp:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->currChangingElems:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->prevChangingElems:[I

    .line 967
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->currChangingElems:[I

    move-object/from16 v11, v22

    .line 968
    const/4 v13, 0x0

    .line 971
    .local v13, currIndex:I
    move/from16 v9, p3

    .line 974
    .local v9, bitOffset:I
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->lastChangingElement:I

    .line 977
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->w:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v9, v0, :cond_10

    .line 979
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v4, v1, v6}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->getNextChangingElement(IZ[I)V

    .line 980
    const/16 v24, 0x0

    aget v7, v6, v24

    .line 981
    .local v7, b1:I
    const/16 v24, 0x1

    aget v8, v6, v24

    .line 984
    .local v8, b2:I
    const/16 v24, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v15

    .line 986
    .local v15, entry:I
    sget-object v24, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->twoDCodes:[B

    aget-byte v24, v24, v15

    move/from16 v0, v24

    and-int/lit16 v15, v0, 0xff

    .line 989
    and-int/lit8 v24, v15, 0x78

    ushr-int/lit8 v12, v24, 0x3

    .line 990
    .local v12, code:I
    and-int/lit8 v10, v15, 0x7

    .line 992
    .local v10, bits:I
    if-nez v12, :cond_1

    .line 994
    if-nez v17, :cond_0

    .line 995
    sub-int v24, v8, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 998
    :cond_0
    move v4, v8

    move v9, v8

    .line 1001
    rsub-int/lit8 v24, v10, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->updatePointer(I)V

    goto :goto_1

    .line 1002
    :cond_1
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v12, v0, :cond_3

    .line 1004
    rsub-int/lit8 v24, v10, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->updatePointer(I)V

    .line 1008
    if-eqz v17, :cond_2

    .line 1010
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->decodeWhiteCodeWord()I

    move-result v20

    .line 1011
    .local v20, number:I
    add-int v9, v9, v20

    .line 1012
    add-int/lit8 v14, v13, 0x1

    .end local v13           #currIndex:I
    .local v14, currIndex:I
    aput v9, v11, v13

    .line 1014
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->decodeBlackCodeWord()I

    move-result v20

    .line 1015
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 1016
    add-int v9, v9, v20

    .line 1017
    add-int/lit8 v13, v14, 0x1

    .end local v14           #currIndex:I
    .restart local v13       #currIndex:I
    aput v9, v11, v14

    .line 1030
    :goto_2
    move v4, v9

    .line 1031
    goto :goto_1

    .line 1020
    .end local v20           #number:I
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->decodeBlackCodeWord()I

    move-result v20

    .line 1021
    .restart local v20       #number:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 1022
    add-int v9, v9, v20

    .line 1023
    add-int/lit8 v14, v13, 0x1

    .end local v13           #currIndex:I
    .restart local v14       #currIndex:I
    aput v9, v11, v13

    .line 1025
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->decodeWhiteCodeWord()I

    move-result v20

    .line 1026
    add-int v9, v9, v20

    .line 1027
    add-int/lit8 v13, v14, 0x1

    .end local v14           #currIndex:I
    .restart local v13       #currIndex:I
    aput v9, v11, v14

    goto :goto_2

    .line 1031
    .end local v20           #number:I
    :cond_3
    const/16 v24, 0x8

    move/from16 v0, v24

    if-gt v12, v0, :cond_6

    .line 1032
    add-int/lit8 v24, v12, -0x5

    add-int v5, v7, v24

    .line 1033
    .local v5, a1:I
    add-int/lit8 v14, v13, 0x1

    .end local v13           #currIndex:I
    .restart local v14       #currIndex:I
    aput v5, v11, v13

    .line 1037
    if-nez v17, :cond_4

    .line 1038
    sub-int v24, v5, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 1041
    :cond_4
    move v4, v5

    move v9, v5

    .line 1042
    if-nez v17, :cond_5

    const/16 v17, 0x1

    .line 1044
    :goto_3
    rsub-int/lit8 v24, v10, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->updatePointer(I)V

    move v13, v14

    .end local v14           #currIndex:I
    .restart local v13       #currIndex:I
    goto/16 :goto_1

    .line 1042
    .end local v13           #currIndex:I
    .restart local v14       #currIndex:I
    :cond_5
    const/16 v17, 0x0

    goto :goto_3

    .line 1045
    .end local v5           #a1:I
    .end local v14           #currIndex:I
    .restart local v13       #currIndex:I
    :cond_6
    const/16 v24, 0xb

    move/from16 v0, v24

    if-ne v12, v0, :cond_f

    .line 1046
    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v24

    const/16 v25, 0x7

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_7

    .line 1047
    new-instance v24, Ljava/lang/RuntimeException;

    const-string v25, "invalid.code.encountered.while.decoding.2d.group.4.compressed.data"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 1050
    :cond_7
    const/16 v23, 0x0

    .line 1051
    .local v23, zeros:I
    const/16 v16, 0x0

    .local v16, exit:Z
    move v14, v13

    .line 1053
    .end local v13           #currIndex:I
    .restart local v14       #currIndex:I
    :goto_4
    if-nez v16, :cond_e

    .line 1054
    :goto_5
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    .line 1055
    add-int/lit8 v23, v23, 0x1

    goto :goto_5

    .line 1058
    :cond_8
    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_b

    .line 1062
    add-int/lit8 v23, v23, -0x6

    .line 1064
    if-nez v17, :cond_9

    if-lez v23, :cond_9

    .line 1065
    add-int/lit8 v13, v14, 0x1

    .end local v14           #currIndex:I
    .restart local v13       #currIndex:I
    aput v9, v11, v14

    move v14, v13

    .line 1069
    .end local v13           #currIndex:I
    .restart local v14       #currIndex:I
    :cond_9
    add-int v9, v9, v23

    .line 1070
    if-lez v23, :cond_a

    .line 1072
    const/16 v17, 0x1

    .line 1077
    :cond_a
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->nextLesserThan8Bits(I)I

    move-result v24

    if-nez v24, :cond_c

    .line 1078
    if-nez v17, :cond_15

    .line 1079
    add-int/lit8 v13, v14, 0x1

    .end local v14           #currIndex:I
    .restart local v13       #currIndex:I
    aput v9, v11, v14

    .line 1081
    :goto_6
    const/16 v17, 0x1

    .line 1089
    :goto_7
    const/16 v16, 0x1

    move v14, v13

    .line 1092
    .end local v13           #currIndex:I
    .restart local v14       #currIndex:I
    :cond_b
    const/16 v24, 0x5

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 1093
    if-nez v17, :cond_13

    .line 1094
    add-int/lit8 v13, v14, 0x1

    .end local v14           #currIndex:I
    .restart local v13       #currIndex:I
    aput v9, v11, v14

    .line 1096
    :goto_8
    add-int v9, v9, v23

    .line 1099
    const/16 v17, 0x1

    move v14, v13

    .end local v13           #currIndex:I
    .restart local v14       #currIndex:I
    goto :goto_4

    .line 1083
    :cond_c
    if-eqz v17, :cond_14

    .line 1084
    add-int/lit8 v13, v14, 0x1

    .end local v14           #currIndex:I
    .restart local v13       #currIndex:I
    aput v9, v11, v14

    .line 1086
    :goto_9
    const/16 v17, 0x0

    goto :goto_7

    .line 1101
    .end local v13           #currIndex:I
    .restart local v14       #currIndex:I
    :cond_d
    add-int v9, v9, v23

    .line 1103
    add-int/lit8 v13, v14, 0x1

    .end local v14           #currIndex:I
    .restart local v13       #currIndex:I
    aput v9, v11, v14

    .line 1104
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->setToBlack([BIII)V

    .line 1105
    add-int/lit8 v9, v9, 0x1

    .line 1108
    const/16 v17, 0x0

    move v14, v13

    .end local v13           #currIndex:I
    .restart local v14       #currIndex:I
    goto :goto_4

    :cond_e
    move v13, v14

    .line 1112
    .end local v14           #currIndex:I
    .restart local v13       #currIndex:I
    goto/16 :goto_1

    .line 1117
    .end local v16           #exit:Z
    .end local v23           #zeros:I
    :cond_f
    move-object/from16 v0, p0

    iget v9, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->w:I

    .line 1118
    rsub-int/lit8 v24, v10, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->updatePointer(I)V

    goto/16 :goto_1

    .line 1125
    .end local v7           #b1:I
    .end local v8           #b2:I
    .end local v10           #bits:I
    .end local v12           #code:I
    .end local v15           #entry:I
    :cond_10
    array-length v0, v11

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v13, v0, :cond_11

    .line 1126
    add-int/lit8 v14, v13, 0x1

    .end local v13           #currIndex:I
    .restart local v14       #currIndex:I
    aput v9, v11, v13

    move v13, v14

    .line 1129
    .end local v14           #currIndex:I
    .restart local v13       #currIndex:I
    :cond_11
    move-object/from16 v0, p0

    iput v13, v0, Lcom/itextpdf/text/pdf/codec/TIFFFaxDecoder;->changingElemSize:I

    .line 1131
    add-int v18, v18, v21

    .line 957
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 1133
    .end local v4           #a0:I
    .end local v9           #bitOffset:I
    .end local v13           #currIndex:I
    .end local v17           #isWhite:Z
    .end local v22           #temp:[I
    :cond_12
    return-void

    .restart local v4       #a0:I
    .restart local v7       #b1:I
    .restart local v8       #b2:I
    .restart local v9       #bitOffset:I
    .restart local v10       #bits:I
    .restart local v12       #code:I
    .restart local v14       #currIndex:I
    .restart local v15       #entry:I
    .restart local v16       #exit:Z
    .restart local v17       #isWhite:Z
    .restart local v22       #temp:[I
    .restart local v23       #zeros:I
    :cond_13
    move v13, v14

    .end local v14           #currIndex:I
    .restart local v13       #currIndex:I
    goto :goto_8

    .end local v13           #currIndex:I
    .restart local v14       #currIndex:I
    :cond_14
    move v13, v14

    .end local v14           #currIndex:I
    .restart local v13       #currIndex:I
    goto :goto_9

    .end local v13           #currIndex:I
    .restart local v14       #currIndex:I
    :cond_15
    move v13, v14

    .end local v14           #currIndex:I
    .restart local v13       #currIndex:I
    goto :goto_6
.end method
