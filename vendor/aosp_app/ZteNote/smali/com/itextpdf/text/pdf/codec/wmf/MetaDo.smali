.class public Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;
.super Ljava/lang/Object;
.source "MetaDo.java"


# static fields
.field public static final META_ANIMATEPALETTE:I = 0x436

.field public static final META_ARC:I = 0x817

.field public static final META_BITBLT:I = 0x922

.field public static final META_CHORD:I = 0x830

.field public static final META_CREATEBRUSHINDIRECT:I = 0x2fc

.field public static final META_CREATEFONTINDIRECT:I = 0x2fb

.field public static final META_CREATEPALETTE:I = 0xf7

.field public static final META_CREATEPATTERNBRUSH:I = 0x1f9

.field public static final META_CREATEPENINDIRECT:I = 0x2fa

.field public static final META_CREATEREGION:I = 0x6ff

.field public static final META_DELETEOBJECT:I = 0x1f0

.field public static final META_DIBBITBLT:I = 0x940

.field public static final META_DIBCREATEPATTERNBRUSH:I = 0x142

.field public static final META_DIBSTRETCHBLT:I = 0xb41

.field public static final META_ELLIPSE:I = 0x418

.field public static final META_ESCAPE:I = 0x626

.field public static final META_EXCLUDECLIPRECT:I = 0x415

.field public static final META_EXTFLOODFILL:I = 0x548

.field public static final META_EXTTEXTOUT:I = 0xa32

.field public static final META_FILLREGION:I = 0x228

.field public static final META_FLOODFILL:I = 0x419

.field public static final META_FRAMEREGION:I = 0x429

.field public static final META_INTERSECTCLIPRECT:I = 0x416

.field public static final META_INVERTREGION:I = 0x12a

.field public static final META_LINETO:I = 0x213

.field public static final META_MOVETO:I = 0x214

.field public static final META_OFFSETCLIPRGN:I = 0x220

.field public static final META_OFFSETVIEWPORTORG:I = 0x211

.field public static final META_OFFSETWINDOWORG:I = 0x20f

.field public static final META_PAINTREGION:I = 0x12b

.field public static final META_PATBLT:I = 0x61d

.field public static final META_PIE:I = 0x81a

.field public static final META_POLYGON:I = 0x324

.field public static final META_POLYLINE:I = 0x325

.field public static final META_POLYPOLYGON:I = 0x538

.field public static final META_REALIZEPALETTE:I = 0x35

.field public static final META_RECTANGLE:I = 0x41b

.field public static final META_RESIZEPALETTE:I = 0x139

.field public static final META_RESTOREDC:I = 0x127

.field public static final META_ROUNDRECT:I = 0x61c

.field public static final META_SAVEDC:I = 0x1e

.field public static final META_SCALEVIEWPORTEXT:I = 0x412

.field public static final META_SCALEWINDOWEXT:I = 0x410

.field public static final META_SELECTCLIPREGION:I = 0x12c

.field public static final META_SELECTOBJECT:I = 0x12d

.field public static final META_SELECTPALETTE:I = 0x234

.field public static final META_SETBKCOLOR:I = 0x201

.field public static final META_SETBKMODE:I = 0x102

.field public static final META_SETDIBTODEV:I = 0xd33

.field public static final META_SETMAPMODE:I = 0x103

.field public static final META_SETMAPPERFLAGS:I = 0x231

.field public static final META_SETPALENTRIES:I = 0x37

.field public static final META_SETPIXEL:I = 0x41f

.field public static final META_SETPOLYFILLMODE:I = 0x106

.field public static final META_SETRELABS:I = 0x105

.field public static final META_SETROP2:I = 0x104

.field public static final META_SETSTRETCHBLTMODE:I = 0x107

.field public static final META_SETTEXTALIGN:I = 0x12e

.field public static final META_SETTEXTCHAREXTRA:I = 0x108

.field public static final META_SETTEXTCOLOR:I = 0x209

.field public static final META_SETTEXTJUSTIFICATION:I = 0x20a

.field public static final META_SETVIEWPORTEXT:I = 0x20e

.field public static final META_SETVIEWPORTORG:I = 0x20d

.field public static final META_SETWINDOWEXT:I = 0x20c

.field public static final META_SETWINDOWORG:I = 0x20b

.field public static final META_STRETCHBLT:I = 0xb23

.field public static final META_STRETCHDIB:I = 0xf43

.field public static final META_TEXTOUT:I = 0x521


# instance fields
.field bottom:I

.field public cb:Lcom/itextpdf/text/pdf/PdfContentByte;

.field public in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

.field inch:I

.field left:I

.field right:I

.field state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

.field top:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 1
    .parameter "in"
    .parameter "cb"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    .line 142
    iput-object p2, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 143
    new-instance v0, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    .line 144
    return-void
.end method

.method static getArc(FFFF)F
    .locals 6
    .parameter "xCenter"
    .parameter "yCenter"
    .parameter "xDot"
    .parameter "yDot"

    .prologue
    .line 669
    sub-float v2, p3, p1

    float-to-double v2, v2

    sub-float v4, p2, p0

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    .line 670
    .local v0, s:D
    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 671
    const-wide v2, 0x401921fb54442d18L

    add-double/2addr v0, v2

    .line 672
    :cond_0
    const-wide v2, 0x400921fb54442d18L

    div-double v2, v0, v2

    const-wide v4, 0x4066800000000000L

    mul-double/2addr v2, v4

    double-to-float v2, v2

    return v2
.end method

.method public static wrapBMP(Lcom/itextpdf/text/Image;)[B
    .locals 11
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x5

    const/4 v7, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 676
    invoke-virtual {p0}, Lcom/itextpdf/text/Image;->getOriginalType()I

    move-result v6

    if-eq v6, v7, :cond_0

    .line 677
    new-instance v6, Ljava/io/IOException;

    const-string v7, "only.bmp.can.be.wrapped.in.wmf"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 679
    :cond_0
    const/4 v1, 0x0

    .line 680
    .local v1, data:[B
    invoke-virtual {p0}, Lcom/itextpdf/text/Image;->getOriginalData()[B

    move-result-object v6

    if-nez v6, :cond_3

    .line 681
    invoke-virtual {p0}, Lcom/itextpdf/text/Image;->getUrl()Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 682
    .local v2, imgIn:Ljava/io/InputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 683
    .local v4, out:Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 684
    .local v0, b:I
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_1

    .line 685
    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 686
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 687
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 691
    .end local v0           #b:I
    .end local v2           #imgIn:Ljava/io/InputStream;
    .end local v4           #out:Ljava/io/ByteArrayOutputStream;
    :goto_1
    array-length v6, v1

    add-int/lit8 v6, v6, -0xe

    add-int/lit8 v6, v6, 0x1

    ushr-int/lit8 v5, v6, 0x1

    .line 692
    .local v5, sizeBmpWords:I
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 694
    .local v3, os:Ljava/io/ByteArrayOutputStream;
    invoke-static {v3, v9}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 695
    const/16 v6, 0x9

    invoke-static {v3, v6}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 696
    const/16 v6, 0x300

    invoke-static {v3, v6}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 697
    add-int/lit8 v6, v5, 0x24

    add-int/lit8 v6, v6, 0x3

    invoke-static {v3, v6}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeDWord(Ljava/io/OutputStream;I)V

    .line 698
    invoke-static {v3, v9}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 699
    add-int/lit8 v6, v5, 0xe

    invoke-static {v3, v6}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeDWord(Ljava/io/OutputStream;I)V

    .line 700
    invoke-static {v3, v8}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 702
    invoke-static {v3, v7}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeDWord(Ljava/io/OutputStream;I)V

    .line 703
    const/16 v6, 0x103

    invoke-static {v3, v6}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 704
    const/16 v6, 0x8

    invoke-static {v3, v6}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 706
    invoke-static {v3, v10}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeDWord(Ljava/io/OutputStream;I)V

    .line 707
    const/16 v6, 0x20b

    invoke-static {v3, v6}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 708
    invoke-static {v3, v8}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 709
    invoke-static {v3, v8}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 711
    invoke-static {v3, v10}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeDWord(Ljava/io/OutputStream;I)V

    .line 712
    const/16 v6, 0x20c

    invoke-static {v3, v6}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 713
    invoke-virtual {p0}, Lcom/itextpdf/text/Image;->getHeight()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v3, v6}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 714
    invoke-virtual {p0}, Lcom/itextpdf/text/Image;->getWidth()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v3, v6}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 716
    add-int/lit8 v6, v5, 0xd

    invoke-static {v3, v6}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeDWord(Ljava/io/OutputStream;I)V

    .line 717
    const/16 v6, 0xb41

    invoke-static {v3, v6}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 718
    const v6, 0xcc0020

    invoke-static {v3, v6}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeDWord(Ljava/io/OutputStream;I)V

    .line 719
    invoke-virtual {p0}, Lcom/itextpdf/text/Image;->getHeight()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v3, v6}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 720
    invoke-virtual {p0}, Lcom/itextpdf/text/Image;->getWidth()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v3, v6}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 721
    invoke-static {v3, v8}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 722
    invoke-static {v3, v8}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 723
    invoke-virtual {p0}, Lcom/itextpdf/text/Image;->getHeight()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v3, v6}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 724
    invoke-virtual {p0}, Lcom/itextpdf/text/Image;->getWidth()F

    move-result v6

    float-to-int v6, v6

    invoke-static {v3, v6}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 725
    invoke-static {v3, v8}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 726
    invoke-static {v3, v8}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 727
    const/16 v6, 0xe

    array-length v7, v1

    add-int/lit8 v7, v7, -0xe

    invoke-virtual {v3, v1, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 728
    array-length v6, v1

    and-int/lit8 v6, v6, 0x1

    if-ne v6, v9, :cond_2

    .line 729
    invoke-virtual {v3, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 746
    :cond_2
    const/4 v6, 0x3

    invoke-static {v3, v6}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeDWord(Ljava/io/OutputStream;I)V

    .line 747
    invoke-static {v3, v8}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 748
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 749
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6

    .line 690
    .end local v3           #os:Ljava/io/ByteArrayOutputStream;
    .end local v5           #sizeBmpWords:I
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/text/Image;->getOriginalData()[B

    move-result-object v1

    goto/16 :goto_1
.end method

.method public static writeDWord(Ljava/io/OutputStream;I)V
    .locals 2
    .parameter "os"
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v1, 0xffff

    .line 758
    and-int v0, p1, v1

    invoke-static {p0, v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 759
    ushr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->writeWord(Ljava/io/OutputStream;I)V

    .line 760
    return-void
.end method

.method public static writeWord(Ljava/io/OutputStream;I)V
    .locals 1
    .parameter "os"
    .parameter "v"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 753
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 754
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 755
    return-void
.end method


# virtual methods
.method public isNullStrokeFill(Z)Z
    .locals 11
    .parameter "isRectangle"

    .prologue
    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 625
    iget-object v8, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->getCurrentPen()Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;

    move-result-object v3

    .line 626
    .local v3, pen:Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;
    iget-object v8, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->getCurrentBrush()Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;

    move-result-object v0

    .line 627
    .local v0, brush:Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;->getStyle()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    move v2, v6

    .line 628
    .local v2, noPen:Z
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;->getStyle()I

    move-result v5

    .line 629
    .local v5, style:I
    if-eqz v5, :cond_0

    if-ne v5, v10, :cond_3

    iget-object v8, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->getBackgroundMode()I

    move-result v8

    if-ne v8, v10, :cond_3

    :cond_0
    move v1, v6

    .line 630
    .local v1, isBrush:Z
    :goto_1
    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    move v4, v6

    .line 631
    .local v4, result:Z
    :goto_2
    if-nez v2, :cond_1

    .line 632
    if-eqz p1, :cond_5

    .line 633
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->setLineJoinRectangle(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 637
    :cond_1
    :goto_3
    return v4

    .end local v1           #isBrush:Z
    .end local v2           #noPen:Z
    .end local v4           #result:Z
    .end local v5           #style:I
    :cond_2
    move v2, v7

    .line 627
    goto :goto_0

    .restart local v2       #noPen:Z
    .restart local v5       #style:I
    :cond_3
    move v1, v7

    .line 629
    goto :goto_1

    .restart local v1       #isBrush:Z
    :cond_4
    move v4, v7

    .line 630
    goto :goto_2

    .line 635
    .restart local v4       #result:Z
    :cond_5
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    iget-object v7, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->setLineJoinPolygon(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    goto :goto_3
.end method

.method public outputText(IIIIIIILjava/lang/String;)V
    .locals 20
    .parameter "x"
    .parameter "y"
    .parameter "flag"
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "text"

    .prologue
    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->getCurrentFont()Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;

    move-result-object v13

    .line 574
    .local v13, font:Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v7

    .line 575
    .local v7, refX:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v8

    .line 576
    .local v8, refY:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->getAngle()F

    move-result v5

    invoke-virtual {v2, v5}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformAngle(F)F

    move-result v10

    .line 577
    .local v10, angle:F
    float-to-double v5, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v4, v5

    .line 578
    .local v4, sin:F
    float-to-double v5, v10

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v3, v5

    .line 579
    .local v3, cos:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v13, v2}, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->getFontSize(Lcom/itextpdf/text/pdf/codec/wmf/MetaState;)F

    move-result v14

    .line 580
    .local v14, fontSize:F
    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->getFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v11

    .line 581
    .local v11, bf:Lcom/itextpdf/text/pdf/BaseFont;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->getTextAlign()I

    move-result v9

    .line 582
    .local v9, align:I
    move-object/from16 v0, p8

    invoke-virtual {v11, v0, v14}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v16

    .line 583
    .local v16, textWidth:F
    const/16 v17, 0x0

    .line 584
    .local v17, tx:F
    const/16 v18, 0x0

    .line 585
    .local v18, ty:F
    const/4 v2, 0x3

    invoke-virtual {v11, v2, v14}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v12

    .line 586
    .local v12, descender:F
    const/16 v2, 0x8

    invoke-virtual {v11, v2, v14}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v19

    .line 587
    .local v19, ury:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    neg-float v5, v4

    move v6, v3

    invoke-virtual/range {v2 .. v8}, Lcom/itextpdf/text/pdf/PdfContentByte;->concatCTM(FFFFFF)V

    .line 589
    and-int/lit8 v2, v9, 0x6

    const/4 v5, 0x6

    if-ne v2, v5, :cond_4

    .line 590
    move/from16 v0, v16

    neg-float v2, v0

    const/high16 v5, 0x4000

    div-float v17, v2, v5

    .line 593
    :cond_0
    :goto_0
    and-int/lit8 v2, v9, 0x18

    const/16 v5, 0x18

    if-ne v2, v5, :cond_5

    .line 594
    const/16 v18, 0x0

    .line 600
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->getBackgroundMode()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_1

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->getCurrentBackgroundColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v15

    .line 602
    .local v15, textColor:Lcom/itextpdf/text/BaseColor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v2, v15}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    add-float v5, v18, v12

    sub-float v6, v19, v12

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v2, v0, v5, v1, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 606
    .end local v15           #textColor:Lcom/itextpdf/text/BaseColor;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->getCurrentTextColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v15

    .line 607
    .restart local v15       #textColor:Lcom/itextpdf/text/BaseColor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v2, v15}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->beginText()V

    .line 609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v2, v11, v14}, Lcom/itextpdf/text/pdf/PdfContentByte;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->setTextMatrix(FF)V

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->showText(Ljava/lang/String;)V

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->endText()V

    .line 613
    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->isUnderline()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/high16 v5, 0x4080

    div-float v5, v14, v5

    sub-float v5, v18, v5

    const/high16 v6, 0x4170

    div-float v6, v14, v6

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v2, v0, v5, v1, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 617
    :cond_2
    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->isStrikeout()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/high16 v5, 0x4040

    div-float v5, v14, v5

    add-float v5, v5, v18

    const/high16 v6, 0x4170

    div-float v6, v14, v6

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v2, v0, v5, v1, v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 621
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    .line 622
    return-void

    .line 591
    .end local v15           #textColor:Lcom/itextpdf/text/BaseColor;
    :cond_4
    and-int/lit8 v2, v9, 0x2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    .line 592
    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v17, v0

    goto/16 :goto_0

    .line 595
    :cond_5
    and-int/lit8 v2, v9, 0x8

    const/16 v5, 0x8

    if-ne v2, v5, :cond_6

    .line 596
    neg-float v0, v12

    move/from16 v18, v0

    goto/16 :goto_1

    .line 598
    :cond_6
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v18, v0

    goto/16 :goto_1
.end method

.method public readAll()V
    .locals 70
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 147
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readInt()I

    move-result v4

    const v11, -0x65393229

    if-eq v4, v11, :cond_0

    .line 148
    new-instance v4, Lcom/itextpdf/text/DocumentException;

    const-string v11, "not.a.placeable.windows.metafile"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v11, v0}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v4, v11}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 150
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readWord()I

    .line 151
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->left:I

    .line 152
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->top:I

    .line 153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->right:I

    .line 154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->bottom:I

    .line 155
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readWord()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->inch:I

    .line 156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->right:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->left:I

    move/from16 v20, v0

    sub-int v11, v11, v20

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->inch:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v11, v11, v20

    const/high16 v20, 0x4290

    mul-float v11, v11, v20

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->setScalingX(F)V

    .line 157
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->bottom:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->top:I

    move/from16 v20, v0

    sub-int v11, v11, v20

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->inch:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v11, v11, v20

    const/high16 v20, 0x4290

    mul-float v11, v11, v20

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->setScalingY(F)V

    .line 158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->left:I

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->setOffsetWx(I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->top:I

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->setOffsetWy(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->right:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->left:I

    move/from16 v20, v0

    sub-int v11, v11, v20

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->setExtentWx(I)V

    .line 161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->bottom:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->top:I

    move/from16 v20, v0

    sub-int v11, v11, v20

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->setExtentWy(I)V

    .line 162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readInt()I

    .line 163
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readWord()I

    .line 164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    const/16 v11, 0x12

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->skip(I)V

    .line 168
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineCap(I)V

    .line 169
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/PdfContentByte;->setLineJoin(I)V

    .line 171
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->getLength()I

    move-result v48

    .line 172
    .local v48, lenMarker:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readInt()I

    move-result v60

    .line 173
    .local v60, tsize:I
    const/4 v4, 0x3

    move/from16 v0, v60

    if-ge v0, v4, :cond_1

    .line 569
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->cleanup(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 570
    return-void

    .line 175
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readWord()I

    move-result v41

    .line 176
    .local v41, function:I
    sparse-switch v41, :sswitch_data_0

    .line 567
    :cond_2
    :goto_1
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    mul-int/lit8 v11, v60, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->getLength()I

    move-result v20

    sub-int v20, v20, v48

    sub-int v11, v11, v20

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->skip(I)V

    goto :goto_0

    .line 182
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    new-instance v11, Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;

    invoke-direct {v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;-><init>()V

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->addMetaObject(Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;)V

    goto :goto_1

    .line 186
    :sswitch_2
    new-instance v52, Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;

    invoke-direct/range {v52 .. v52}, Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;-><init>()V

    .line 187
    .local v52, pen:Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;->init(Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, v52

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->addMetaObject(Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;)V

    goto :goto_1

    .line 193
    .end local v52           #pen:Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;
    :sswitch_3
    new-instance v31, Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;

    invoke-direct/range {v31 .. v31}, Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;-><init>()V

    .line 194
    .local v31, brush:Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;->init(Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->addMetaObject(Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;)V

    goto :goto_1

    .line 200
    .end local v31           #brush:Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;
    :sswitch_4
    new-instance v40, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;

    invoke-direct/range {v40 .. v40}, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;-><init>()V

    .line 201
    .local v40, font:Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;->init(Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->addMetaObject(Lcom/itextpdf/text/pdf/codec/wmf/MetaObject;)V

    goto :goto_1

    .line 207
    .end local v40           #font:Lcom/itextpdf/text/pdf/codec/wmf/MetaFont;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readWord()I

    move-result v43

    .line 208
    .local v43, idx:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move/from16 v0, v43

    invoke-virtual {v4, v0, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->selectMetaObject(ILcom/itextpdf/text/pdf/PdfContentByte;)V

    goto/16 :goto_1

    .line 213
    .end local v43           #idx:I
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readWord()I

    move-result v43

    .line 214
    .restart local v43       #idx:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move/from16 v0, v43

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->deleteMetaObject(I)V

    goto/16 :goto_1

    .line 218
    .end local v43           #idx:I
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->saveState(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    goto/16 :goto_1

    .line 222
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v43

    .line 223
    .restart local v43       #idx:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move/from16 v0, v43

    invoke-virtual {v4, v0, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->restoreState(ILcom/itextpdf/text/pdf/PdfContentByte;)V

    goto/16 :goto_1

    .line 227
    .end local v43           #idx:I
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->setOffsetWy(I)V

    .line 228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->setOffsetWx(I)V

    goto/16 :goto_1

    .line 231
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->setExtentWy(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->setExtentWx(I)V

    goto/16 :goto_1

    .line 236
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v13

    .line 237
    .local v13, y:I
    new-instance v51, Lcom/itextpdf/text/pdf/codec/wmf/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v4

    move-object/from16 v0, v51

    invoke-direct {v0, v4, v13}, Lcom/itextpdf/text/pdf/codec/wmf/Point;-><init>(II)V

    .line 238
    .local v51, p:Lcom/itextpdf/text/pdf/codec/wmf/Point;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->setCurrentPoint(Lcom/itextpdf/text/pdf/codec/wmf/Point;)V

    goto/16 :goto_1

    .line 243
    .end local v13           #y:I
    .end local v51           #p:Lcom/itextpdf/text/pdf/codec/wmf/Point;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v13

    .line 244
    .restart local v13       #y:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v12

    .line 245
    .local v12, x:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->getCurrentPoint()Lcom/itextpdf/text/pdf/codec/wmf/Point;

    move-result-object v51

    .line 246
    .restart local v51       #p:Lcom/itextpdf/text/pdf/codec/wmf/Point;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, v51

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/wmf/Point;->x:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v20, v0

    move-object/from16 v0, v51

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/wmf/Point;->y:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v11, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v11, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    .line 249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    new-instance v11, Lcom/itextpdf/text/pdf/codec/wmf/Point;

    invoke-direct {v11, v12, v13}, Lcom/itextpdf/text/pdf/codec/wmf/Point;-><init>(II)V

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->setCurrentPoint(Lcom/itextpdf/text/pdf/codec/wmf/Point;)V

    goto/16 :goto_1

    .line 254
    .end local v12           #x:I
    .end local v13           #y:I
    .end local v51           #p:Lcom/itextpdf/text/pdf/codec/wmf/Point;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->setLineJoinPolygon(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readWord()I

    move-result v47

    .line 256
    .local v47, len:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v12

    .line 257
    .restart local v12       #x:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v13

    .line 258
    .restart local v13       #y:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v11, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 259
    const/16 v46, 0x1

    .local v46, k:I
    :goto_2
    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_3

    .line 260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v12

    .line 261
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v13

    .line 262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v11, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 259
    add-int/lit8 v46, v46, 0x1

    goto :goto_2

    .line 264
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    goto/16 :goto_1

    .line 269
    .end local v12           #x:I
    .end local v13           #y:I
    .end local v46           #k:I
    .end local v47           #len:I
    :sswitch_e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->isNullStrokeFill(Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 271
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readWord()I

    move-result v47

    .line 272
    .restart local v47       #len:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v57

    .line 273
    .local v57, sx:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v58

    .line 274
    .local v58, sy:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move/from16 v0, v57

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v11, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 275
    const/16 v46, 0x1

    .restart local v46       #k:I
    :goto_3
    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_4

    .line 276
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v12

    .line 277
    .restart local v12       #x:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v13

    .line 278
    .restart local v13       #y:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v11, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 275
    add-int/lit8 v46, v46, 0x1

    goto :goto_3

    .line 280
    .end local v12           #x:I
    .end local v13           #y:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move/from16 v0, v57

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v11, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->strokeAndFill()V

    goto/16 :goto_1

    .line 286
    .end local v46           #k:I
    .end local v47           #len:I
    .end local v57           #sx:I
    .end local v58           #sy:I
    :sswitch_f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->isNullStrokeFill(Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 288
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readWord()I

    move-result v50

    .line 289
    .local v50, numPoly:I
    move/from16 v0, v50

    new-array v0, v0, [I

    move-object/from16 v49, v0

    .line 290
    .local v49, lens:[I
    const/16 v46, 0x0

    .restart local v46       #k:I
    :goto_4
    move-object/from16 v0, v49

    array-length v4, v0

    move/from16 v0, v46

    if-ge v0, v4, :cond_5

    .line 291
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readWord()I

    move-result v4

    aput v4, v49, v46

    .line 290
    add-int/lit8 v46, v46, 0x1

    goto :goto_4

    .line 292
    :cond_5
    const/16 v45, 0x0

    .local v45, j:I
    :goto_5
    move-object/from16 v0, v49

    array-length v4, v0

    move/from16 v0, v45

    if-ge v0, v4, :cond_7

    .line 293
    aget v47, v49, v45

    .line 294
    .restart local v47       #len:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v57

    .line 295
    .restart local v57       #sx:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v58

    .line 296
    .restart local v58       #sy:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move/from16 v0, v57

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v11, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 297
    const/16 v46, 0x1

    :goto_6
    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_6

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v12

    .line 299
    .restart local v12       #x:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v13

    .line 300
    .restart local v13       #y:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v11, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 297
    add-int/lit8 v46, v46, 0x1

    goto :goto_6

    .line 302
    .end local v12           #x:I
    .end local v13           #y:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move/from16 v0, v57

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v4, v11, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 292
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_5

    .line 304
    .end local v47           #len:I
    .end local v57           #sx:I
    .end local v58           #sy:I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->strokeAndFill()V

    goto/16 :goto_1

    .line 309
    .end local v45           #j:I
    .end local v46           #k:I
    .end local v49           #lens:[I
    .end local v50           #numPoly:I
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->getLineNeutral()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->isNullStrokeFill(Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 311
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v6

    .line 312
    .local v6, b:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v7

    .line 313
    .local v7, r:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v8

    .line 314
    .local v8, t:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v5

    .line 315
    .local v5, l:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v11, v5}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v5

    .end local v5           #l:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v11, v6}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v6

    .end local v6           #b:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v11, v7}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v7

    .end local v7           #r:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v11, v8}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v8

    .end local v8           #t:I
    const/4 v9, 0x0

    const/high16 v10, 0x43b4

    invoke-virtual/range {v4 .. v10}, Lcom/itextpdf/text/pdf/PdfContentByte;->arc(FFFFFF)V

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->strokeAndFill()V

    goto/16 :goto_1

    .line 321
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->getLineNeutral()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->isNullStrokeFill(Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v68

    .line 324
    .local v68, yend:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v64

    .line 325
    .local v64, xend:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v69

    .line 326
    .local v69, ystart:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v65

    .line 327
    .local v65, xstart:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v6

    .line 328
    .local v6, b:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v7

    .line 329
    .local v7, r:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v8

    .line 330
    .local v8, t:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v5

    .line 331
    .local v5, l:F
    add-float v4, v7, v5

    const/high16 v11, 0x4000

    div-float v35, v4, v11

    .line 332
    .local v35, cx:F
    add-float v4, v8, v6

    const/high16 v11, 0x4000

    div-float v36, v4, v11

    .line 333
    .local v36, cy:F
    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v65

    move/from16 v3, v69

    invoke-static {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->getArc(FFFF)F

    move-result v9

    .line 334
    .local v9, arc1:F
    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v64

    move/from16 v3, v68

    invoke-static {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->getArc(FFFF)F

    move-result v10

    .line 335
    .local v10, arc2:F
    sub-float/2addr v10, v9

    .line 336
    const/4 v4, 0x0

    cmpg-float v4, v10, v4

    if-gtz v4, :cond_8

    .line 337
    const/high16 v4, 0x43b4

    add-float/2addr v10, v4

    .line 338
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual/range {v4 .. v10}, Lcom/itextpdf/text/pdf/PdfContentByte;->arc(FFFFFF)V

    .line 339
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->stroke()V

    goto/16 :goto_1

    .line 344
    .end local v5           #l:F
    .end local v6           #b:F
    .end local v7           #r:F
    .end local v8           #t:F
    .end local v9           #arc1:F
    .end local v10           #arc2:F
    .end local v35           #cx:F
    .end local v36           #cy:F
    .end local v64           #xend:F
    .end local v65           #xstart:F
    .end local v68           #yend:F
    .end local v69           #ystart:F
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->getLineNeutral()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->isNullStrokeFill(Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 346
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v68

    .line 347
    .restart local v68       #yend:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v64

    .line 348
    .restart local v64       #xend:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v69

    .line 349
    .restart local v69       #ystart:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v65

    .line 350
    .restart local v65       #xstart:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v6

    .line 351
    .restart local v6       #b:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v7

    .line 352
    .restart local v7       #r:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v8

    .line 353
    .restart local v8       #t:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v5

    .line 354
    .restart local v5       #l:F
    add-float v4, v7, v5

    const/high16 v11, 0x4000

    div-float v35, v4, v11

    .line 355
    .restart local v35       #cx:F
    add-float v4, v8, v6

    const/high16 v11, 0x4000

    div-float v36, v4, v11

    .line 356
    .restart local v36       #cy:F
    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v65

    move/from16 v3, v69

    invoke-static {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->getArc(FFFF)F

    move-result v9

    .line 357
    .restart local v9       #arc1:F
    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v64

    move/from16 v3, v68

    invoke-static {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->getArc(FFFF)F

    move-result v10

    .line 358
    .restart local v10       #arc2:F
    sub-float/2addr v10, v9

    .line 359
    const/4 v4, 0x0

    cmpg-float v4, v10, v4

    if-gtz v4, :cond_9

    .line 360
    const/high16 v4, 0x43b4

    add-float/2addr v10, v4

    .line 361
    :cond_9
    invoke-static/range {v5 .. v10}, Lcom/itextpdf/text/pdf/PdfContentByte;->bezierArc(FFFFFF)Ljava/util/ArrayList;

    move-result-object v29

    .line 362
    .local v29, ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[F>;"
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 364
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, [F

    .line 365
    .local v53, pt:[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v4, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 366
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v11, 0x0

    aget v11, v53, v11

    const/16 v20, 0x1

    aget v20, v53, v20

    move/from16 v0, v20

    invoke-virtual {v4, v11, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 367
    const/16 v46, 0x0

    .restart local v46       #k:I
    :goto_7
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v46

    if-ge v0, v4, :cond_a

    .line 368
    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    .end local v53           #pt:[F
    check-cast v53, [F

    .line 369
    .restart local v53       #pt:[F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v4, 0x2

    aget v12, v53, v4

    const/4 v4, 0x3

    aget v13, v53, v4

    const/4 v4, 0x4

    aget v14, v53, v4

    const/4 v4, 0x5

    aget v15, v53, v4

    const/4 v4, 0x6

    aget v16, v53, v4

    const/4 v4, 0x7

    aget v17, v53, v4

    invoke-virtual/range {v11 .. v17}, Lcom/itextpdf/text/pdf/PdfContentByte;->curveTo(FFFFFF)V

    .line 367
    add-int/lit8 v46, v46, 0x1

    goto :goto_7

    .line 371
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v4, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->strokeAndFill()V

    goto/16 :goto_1

    .line 377
    .end local v5           #l:F
    .end local v6           #b:F
    .end local v7           #r:F
    .end local v8           #t:F
    .end local v9           #arc1:F
    .end local v10           #arc2:F
    .end local v29           #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[F>;"
    .end local v35           #cx:F
    .end local v36           #cy:F
    .end local v46           #k:I
    .end local v53           #pt:[F
    .end local v64           #xend:F
    .end local v65           #xstart:F
    .end local v68           #yend:F
    .end local v69           #ystart:F
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->getLineNeutral()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->isNullStrokeFill(Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v68

    .line 380
    .restart local v68       #yend:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v64

    .line 381
    .restart local v64       #xend:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v69

    .line 382
    .restart local v69       #ystart:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v65

    .line 383
    .restart local v65       #xstart:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v6

    .line 384
    .restart local v6       #b:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v7

    .line 385
    .restart local v7       #r:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v8

    .line 386
    .restart local v8       #t:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v5

    .line 387
    .restart local v5       #l:F
    add-float v4, v7, v5

    const/high16 v11, 0x4000

    div-float v35, v4, v11

    .line 388
    .restart local v35       #cx:F
    add-float v4, v8, v6

    const/high16 v11, 0x4000

    div-float v36, v4, v11

    .line 389
    .restart local v36       #cy:F
    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v65

    move/from16 v3, v69

    invoke-static {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->getArc(FFFF)F

    move-result v9

    .line 390
    .restart local v9       #arc1:F
    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v64

    move/from16 v3, v68

    invoke-static {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->getArc(FFFF)F

    move-result v10

    .line 391
    .restart local v10       #arc2:F
    sub-float/2addr v10, v9

    .line 392
    const/4 v4, 0x0

    cmpg-float v4, v10, v4

    if-gtz v4, :cond_b

    .line 393
    const/high16 v4, 0x43b4

    add-float/2addr v10, v4

    .line 394
    :cond_b
    invoke-static/range {v5 .. v10}, Lcom/itextpdf/text/pdf/PdfContentByte;->bezierArc(FFFFFF)Ljava/util/ArrayList;

    move-result-object v29

    .line 395
    .restart local v29       #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[F>;"
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 397
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, [F

    .line 398
    .restart local v53       #pt:[F
    const/4 v4, 0x0

    aget v35, v53, v4

    .line 399
    const/4 v4, 0x1

    aget v36, v53, v4

    .line 400
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v4, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->moveTo(FF)V

    .line 401
    const/16 v46, 0x0

    .restart local v46       #k:I
    :goto_8
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v46

    if-ge v0, v4, :cond_c

    .line 402
    move-object/from16 v0, v29

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    .end local v53           #pt:[F
    check-cast v53, [F

    .line 403
    .restart local v53       #pt:[F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    const/4 v4, 0x2

    aget v12, v53, v4

    const/4 v4, 0x3

    aget v13, v53, v4

    const/4 v4, 0x4

    aget v14, v53, v4

    const/4 v4, 0x5

    aget v15, v53, v4

    const/4 v4, 0x6

    aget v16, v53, v4

    const/4 v4, 0x7

    aget v17, v53, v4

    invoke-virtual/range {v11 .. v17}, Lcom/itextpdf/text/pdf/PdfContentByte;->curveTo(FFFFFF)V

    .line 401
    add-int/lit8 v46, v46, 0x1

    goto :goto_8

    .line 405
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move/from16 v0, v35

    move/from16 v1, v36

    invoke-virtual {v4, v0, v1}, Lcom/itextpdf/text/pdf/PdfContentByte;->lineTo(FF)V

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->strokeAndFill()V

    goto/16 :goto_1

    .line 411
    .end local v5           #l:F
    .end local v6           #b:F
    .end local v7           #r:F
    .end local v8           #t:F
    .end local v9           #arc1:F
    .end local v10           #arc2:F
    .end local v29           #ar:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[F>;"
    .end local v35           #cx:F
    .end local v36           #cy:F
    .end local v46           #k:I
    .end local v53           #pt:[F
    .end local v64           #xend:F
    .end local v65           #xstart:F
    .end local v68           #yend:F
    .end local v69           #ystart:F
    :sswitch_14
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->isNullStrokeFill(Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 413
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v6

    .line 414
    .restart local v6       #b:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v7

    .line 415
    .restart local v7       #r:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v8

    .line 416
    .restart local v8       #t:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v5

    .line 417
    .restart local v5       #l:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    sub-float v11, v7, v5

    sub-float v20, v8, v6

    move/from16 v0, v20

    invoke-virtual {v4, v5, v6, v11, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->strokeAndFill()V

    goto/16 :goto_1

    .line 423
    .end local v5           #l:F
    .end local v6           #b:F
    .end local v7           #r:F
    .end local v8           #t:F
    :sswitch_15
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->isNullStrokeFill(Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 425
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v11

    sub-float v42, v4, v11

    .line 426
    .local v42, h:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v11

    sub-float v61, v4, v11

    .line 427
    .local v61, w:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v6

    .line 428
    .restart local v6       #b:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v7

    .line 429
    .restart local v7       #r:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v8

    .line 430
    .restart local v8       #t:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v5

    .line 431
    .restart local v5       #l:F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    sub-float v14, v7, v5

    sub-float v15, v8, v6

    add-float v4, v42, v61

    const/high16 v20, 0x4080

    div-float v16, v4, v20

    move v12, v5

    move v13, v6

    invoke-virtual/range {v11 .. v16}, Lcom/itextpdf/text/pdf/PdfContentByte;->roundRectangle(FFFFF)V

    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->strokeAndFill()V

    goto/16 :goto_1

    .line 437
    .end local v5           #l:F
    .end local v6           #b:F
    .end local v7           #r:F
    .end local v8           #t:F
    .end local v42           #h:F
    .end local v61           #w:F
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v6

    .line 438
    .restart local v6       #b:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v7

    .line 439
    .restart local v7       #r:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v8

    .line 440
    .restart local v8       #t:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v5

    .line 441
    .restart local v5       #l:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    sub-float v11, v7, v5

    sub-float v20, v8, v6

    move/from16 v0, v20

    invoke-virtual {v4, v5, v6, v11, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 442
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->eoClip()V

    .line 443
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->newPath()V

    goto/16 :goto_1

    .line 448
    .end local v5           #l:F
    .end local v6           #b:F
    .end local v7           #r:F
    .end local v8           #t:F
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v13

    .line 449
    .restart local v13       #y:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v12

    .line 450
    .restart local v12       #x:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readWord()I

    move-result v34

    .line 451
    .local v34, count:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readWord()I

    move-result v14

    .line 452
    .local v14, flag:I
    const/4 v15, 0x0

    .line 453
    .local v15, x1:I
    const/16 v16, 0x0

    .line 454
    .local v16, y1:I
    const/16 v17, 0x0

    .line 455
    .local v17, x2:I
    const/16 v18, 0x0

    .line 456
    .local v18, y2:I
    and-int/lit8 v4, v14, 0x6

    if-eqz v4, :cond_d

    .line 457
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v15

    .line 458
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v16

    .line 459
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v17

    .line 460
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v18

    .line 462
    :cond_d
    move/from16 v0, v34

    new-array v0, v0, [B

    move-object/from16 v59, v0

    .line 464
    .local v59, text:[B
    const/16 v46, 0x0

    .restart local v46       #k:I
    :goto_9
    move/from16 v0, v46

    move/from16 v1, v34

    if-ge v0, v1, :cond_e

    .line 465
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readByte()I

    move-result v4

    int-to-byte v0, v4

    move/from16 v32, v0

    .line 466
    .local v32, c:B
    if-nez v32, :cond_f

    .line 472
    .end local v32           #c:B
    :cond_e
    :try_start_0
    new-instance v19, Ljava/lang/String;

    const/4 v4, 0x0

    const-string v11, "Cp1252"

    move-object/from16 v0, v19

    move-object/from16 v1, v59

    move/from16 v2, v46

    invoke-direct {v0, v1, v4, v2, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .local v19, s:Ljava/lang/String;
    :goto_a
    move-object/from16 v11, p0

    .line 477
    invoke-virtual/range {v11 .. v19}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->outputText(IIIIIIILjava/lang/String;)V

    goto/16 :goto_1

    .line 468
    .end local v19           #s:Ljava/lang/String;
    .restart local v32       #c:B
    :cond_f
    aput-byte v32, v59, v46

    .line 464
    add-int/lit8 v46, v46, 0x1

    goto :goto_9

    .line 474
    .end local v32           #c:B
    :catch_0
    move-exception v39

    .line 475
    .local v39, e:Ljava/io/UnsupportedEncodingException;
    new-instance v19, Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v59

    move/from16 v2, v46

    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([BII)V

    .restart local v19       #s:Ljava/lang/String;
    goto :goto_a

    .line 482
    .end local v12           #x:I
    .end local v13           #y:I
    .end local v14           #flag:I
    .end local v15           #x1:I
    .end local v16           #y1:I
    .end local v17           #x2:I
    .end local v18           #y2:I
    .end local v19           #s:Ljava/lang/String;
    .end local v34           #count:I
    .end local v39           #e:Ljava/io/UnsupportedEncodingException;
    .end local v46           #k:I
    .end local v59           #text:[B
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readWord()I

    move-result v34

    .line 483
    .restart local v34       #count:I
    move/from16 v0, v34

    new-array v0, v0, [B

    move-object/from16 v59, v0

    .line 485
    .restart local v59       #text:[B
    const/16 v46, 0x0

    .restart local v46       #k:I
    :goto_b
    move/from16 v0, v46

    move/from16 v1, v34

    if-ge v0, v1, :cond_10

    .line 486
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readByte()I

    move-result v4

    int-to-byte v0, v4

    move/from16 v32, v0

    .line 487
    .restart local v32       #c:B
    if-nez v32, :cond_11

    .line 493
    .end local v32           #c:B
    :cond_10
    :try_start_1
    new-instance v19, Ljava/lang/String;

    const/4 v4, 0x0

    const-string v11, "Cp1252"

    move-object/from16 v0, v19

    move-object/from16 v1, v59

    move/from16 v2, v46

    invoke-direct {v0, v1, v4, v2, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 498
    .restart local v19       #s:Ljava/lang/String;
    :goto_c
    add-int/lit8 v4, v34, 0x1

    const v11, 0xfffe

    and-int v34, v4, v11

    .line 499
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    sub-int v11, v34, v46

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->skip(I)V

    .line 500
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v13

    .line 501
    .restart local v13       #y:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v12

    .line 502
    .restart local v12       #x:I
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v20, p0

    move/from16 v21, v12

    move/from16 v22, v13

    move-object/from16 v28, v19

    invoke-virtual/range {v20 .. v28}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->outputText(IIIIIIILjava/lang/String;)V

    goto/16 :goto_1

    .line 489
    .end local v12           #x:I
    .end local v13           #y:I
    .end local v19           #s:Ljava/lang/String;
    .restart local v32       #c:B
    :cond_11
    aput-byte v32, v59, v46

    .line 485
    add-int/lit8 v46, v46, 0x1

    goto :goto_b

    .line 495
    .end local v32           #c:B
    :catch_1
    move-exception v39

    .line 496
    .restart local v39       #e:Ljava/io/UnsupportedEncodingException;
    new-instance v19, Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v59

    move/from16 v2, v46

    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([BII)V

    .restart local v19       #s:Ljava/lang/String;
    goto :goto_c

    .line 506
    .end local v19           #s:Ljava/lang/String;
    .end local v34           #count:I
    .end local v39           #e:Ljava/io/UnsupportedEncodingException;
    .end local v46           #k:I
    .end local v59           #text:[B
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->setCurrentBackgroundColor(Lcom/itextpdf/text/BaseColor;)V

    goto/16 :goto_1

    .line 509
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->setCurrentTextColor(Lcom/itextpdf/text/BaseColor;)V

    goto/16 :goto_1

    .line 512
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readWord()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->setTextAlign(I)V

    goto/16 :goto_1

    .line 515
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readWord()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->setBackgroundMode(I)V

    goto/16 :goto_1

    .line 518
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readWord()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->setPolyFillMode(I)V

    goto/16 :goto_1

    .line 522
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v33

    .line 523
    .local v33, color:Lcom/itextpdf/text/BaseColor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v13

    .line 524
    .restart local v13       #y:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v12

    .line 525
    .restart local v12       #x:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 526
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 527
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v20

    const v21, 0x3e4ccccd

    const v22, 0x3e4ccccd

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v4, v11, v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 528
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    .line 529
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V

    goto/16 :goto_1

    .line 534
    .end local v12           #x:I
    .end local v13           #y:I
    .end local v33           #color:Lcom/itextpdf/text/BaseColor;
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readInt()I

    move-result v54

    .line 535
    .local v54, rop:I
    const/16 v4, 0xf43

    move/from16 v0, v41

    if-ne v0, v4, :cond_12

    .line 536
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readWord()I

    .line 538
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v55

    .line 539
    .local v55, srcHeight:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v56

    .line 540
    .local v56, srcWidth:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v67

    .line 541
    .local v67, ySrc:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v63

    .line 542
    .local v63, xSrc:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v11

    sub-float v37, v4, v11

    .line 543
    .local v37, destHeight:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v11

    sub-float v38, v4, v11

    .line 544
    .local v38, destWidth:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformY(I)F

    move-result v66

    .line 545
    .local v66, yDest:F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->transformX(I)F

    move-result v62

    .line 546
    .local v62, xDest:F
    mul-int/lit8 v4, v60, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->getLength()I

    move-result v11

    sub-int v11, v11, v48

    sub-int/2addr v4, v11

    new-array v6, v4, [B

    .line 547
    .local v6, b:[B
    const/16 v46, 0x0

    .restart local v46       #k:I
    :goto_d
    array-length v4, v6

    move/from16 v0, v46

    if-ge v0, v4, :cond_13

    .line 548
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readByte()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v6, v46

    .line 547
    add-int/lit8 v46, v46, 0x1

    goto :goto_d

    .line 550
    :cond_13
    :try_start_2
    new-instance v44, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v44

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 551
    .local v44, inb:Ljava/io/ByteArrayInputStream;
    const/4 v4, 0x1

    array-length v11, v6

    move-object/from16 v0, v44

    invoke-static {v0, v4, v11}, Lcom/itextpdf/text/pdf/codec/BmpImage;->getImage(Ljava/io/InputStream;ZI)Lcom/itextpdf/text/Image;

    move-result-object v30

    .line 552
    .local v30, bmp:Lcom/itextpdf/text/Image;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->saveState()V

    .line 553
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move/from16 v0, v62

    move/from16 v1, v66

    move/from16 v2, v38

    move/from16 v3, v37

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfContentByte;->rectangle(FFFF)V

    .line 554
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->clip()V

    .line 555
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->newPath()V

    .line 556
    invoke-virtual/range {v30 .. v30}, Lcom/itextpdf/text/Image;->getWidth()F

    move-result v4

    mul-float v4, v4, v38

    move/from16 v0, v56

    int-to-float v11, v0

    div-float/2addr v4, v11

    move/from16 v0, v37

    neg-float v11, v0

    invoke-virtual/range {v30 .. v30}, Lcom/itextpdf/text/Image;->getHeight()F

    move-result v20

    mul-float v11, v11, v20

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v11, v11, v20

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v11}, Lcom/itextpdf/text/Image;->scaleAbsolute(FF)V

    .line 557
    move/from16 v0, v63

    int-to-float v4, v0

    mul-float v4, v4, v38

    move/from16 v0, v56

    int-to-float v11, v0

    div-float/2addr v4, v11

    sub-float v4, v62, v4

    move/from16 v0, v67

    int-to-float v11, v0

    mul-float v11, v11, v37

    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v11, v11, v20

    add-float v11, v11, v66

    invoke-virtual/range {v30 .. v30}, Lcom/itextpdf/text/Image;->getScaledHeight()F

    move-result v20

    sub-float v11, v11, v20

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v11}, Lcom/itextpdf/text/Image;->setAbsolutePosition(FF)V

    .line 558
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->addImage(Lcom/itextpdf/text/Image;)V

    .line 559
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfContentByte;->restoreState()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 561
    .end local v30           #bmp:Lcom/itextpdf/text/Image;
    .end local v44           #inb:Ljava/io/ByteArrayInputStream;
    :catch_2
    move-exception v4

    goto/16 :goto_1

    .line 176
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1e -> :sswitch_7
        0xf7 -> :sswitch_1
        0x102 -> :sswitch_1c
        0x106 -> :sswitch_1d
        0x127 -> :sswitch_8
        0x12d -> :sswitch_5
        0x12e -> :sswitch_1b
        0x142 -> :sswitch_1
        0x1f0 -> :sswitch_6
        0x201 -> :sswitch_19
        0x209 -> :sswitch_1a
        0x20b -> :sswitch_9
        0x20c -> :sswitch_a
        0x213 -> :sswitch_c
        0x214 -> :sswitch_b
        0x2fa -> :sswitch_2
        0x2fb -> :sswitch_4
        0x2fc -> :sswitch_3
        0x324 -> :sswitch_e
        0x325 -> :sswitch_d
        0x416 -> :sswitch_16
        0x418 -> :sswitch_10
        0x41b -> :sswitch_14
        0x41f -> :sswitch_1e
        0x521 -> :sswitch_18
        0x538 -> :sswitch_f
        0x61c -> :sswitch_15
        0x6ff -> :sswitch_1
        0x817 -> :sswitch_11
        0x81a -> :sswitch_12
        0x830 -> :sswitch_13
        0xa32 -> :sswitch_17
        0xb41 -> :sswitch_1f
        0xf43 -> :sswitch_1f
    .end sparse-switch
.end method

.method public strokeAndFill()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    .line 641
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->getCurrentPen()Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;

    move-result-object v3

    .line 642
    .local v3, pen:Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->getCurrentBrush()Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;

    move-result-object v0

    .line 643
    .local v0, brush:Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/codec/wmf/MetaPen;->getStyle()I

    move-result v4

    .line 644
    .local v4, penStyle:I
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/codec/wmf/MetaBrush;->getStyle()I

    move-result v1

    .line 645
    .local v1, brushStyle:I
    const/4 v6, 0x5

    if-ne v4, v6, :cond_1

    .line 646
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfContentByte;->closePath()V

    .line 647
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->getPolyFillMode()I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 648
    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->eoFill()V

    .line 666
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->fill()V

    goto :goto_0

    .line 655
    :cond_1
    if-eqz v1, :cond_2

    if-ne v1, v7, :cond_3

    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->getBackgroundMode()I

    move-result v6

    if-ne v6, v7, :cond_3

    :cond_2
    move v2, v5

    .line 656
    .local v2, isBrush:Z
    :goto_1
    if-eqz v2, :cond_5

    .line 657
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->state:Lcom/itextpdf/text/pdf/codec/wmf/MetaState;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/codec/wmf/MetaState;->getPolyFillMode()I

    move-result v6

    if-ne v6, v5, :cond_4

    .line 658
    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->closePathEoFillStroke()V

    goto :goto_0

    .line 655
    .end local v2           #isBrush:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 660
    .restart local v2       #isBrush:Z
    :cond_4
    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->closePathFillStroke()V

    goto :goto_0

    .line 663
    :cond_5
    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->cb:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfContentByte;->closePathStroke()V

    goto :goto_0
.end method
