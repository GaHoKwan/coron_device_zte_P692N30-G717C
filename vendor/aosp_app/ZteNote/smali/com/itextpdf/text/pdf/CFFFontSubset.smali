.class public Lcom/itextpdf/text/pdf/CFFFontSubset;
.super Lcom/itextpdf/text/pdf/CFFFont;
.source "CFFFontSubset.java"


# static fields
.field static final ENDCHAR_OP:B = 0xet

.field static final RETURN_OP:B = 0xbt

.field static final SubrsEscapeFuncs:[Ljava/lang/String;

.field static final SubrsFunctions:[Ljava/lang/String;


# instance fields
.field FDArrayUsed:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field GBias:I

.field GlyphsUsed:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field NewCharStringsIndex:[B

.field NewGSubrsIndex:[B

.field NewLSubrsIndex:[[B

.field NewSubrsIndexNonCID:[B

.field NumOfHints:I

.field OutputList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/itextpdf/text/pdf/CFFFont$Item;",
            ">;"
        }
    .end annotation
.end field

.field glyphsInList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field hGSubrsUsed:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field hSubrsUsed:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field hSubrsUsedNonCID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field lGSubrsUsed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field lSubrsUsed:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field lSubrsUsedNonCID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "RESERVED_0"

    aput-object v1, v0, v3

    const-string v1, "hstem"

    aput-object v1, v0, v4

    const-string v1, "RESERVED_2"

    aput-object v1, v0, v5

    const-string v1, "vstem"

    aput-object v1, v0, v6

    const-string v1, "vmoveto"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "rlineto"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hlineto"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "vlineto"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rrcurveto"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "RESERVED_9"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "callsubr"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "return"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "escape"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "RESERVED_13"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "endchar"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "RESERVED_15"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "RESERVED_16"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "RESERVED_17"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "hstemhm"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "hintmask"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "cntrmask"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "rmoveto"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "hmoveto"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "vstemhm"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "rcurveline"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "rlinecurve"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "vvcurveto"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "hhcurveto"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "shortint"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "callgsubr"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "vhcurveto"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "hvcurveto"

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->SubrsFunctions:[Ljava/lang/String;

    .line 78
    const/16 v0, 0x27

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "RESERVED_0"

    aput-object v1, v0, v3

    const-string v1, "RESERVED_1"

    aput-object v1, v0, v4

    const-string v1, "RESERVED_2"

    aput-object v1, v0, v5

    const-string v1, "and"

    aput-object v1, v0, v6

    const-string v1, "or"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "not"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "RESERVED_6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "RESERVED_7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "RESERVED_8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "abs"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "add"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "div"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "RESERVED_13"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "neg"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "eq"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "RESERVED_16"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "RESERVED_17"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "drop"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "RESERVED_19"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "put"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "get"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "ifelse"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "random"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "mul"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "RESERVED_25"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "sqrt"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "dup"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "exch"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "index"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "roll"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "RESERVED_31"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "RESERVED_32"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "RESERVED_33"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "hflex"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "flex"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "hflex1"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "flex1"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "RESERVED_REST"

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->SubrsEscapeFuncs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;Ljava/util/HashMap;)V
    .locals 4
    .parameter "rf"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;)V"
        }
    .end annotation

    .prologue
    .local p2, GlyphsUsed:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    const/4 v2, 0x0

    .line 169
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/CFFFont;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V

    .line 104
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->FDArrayUsed:Ljava/util/HashSet;

    .line 116
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->hGSubrsUsed:Ljava/util/HashMap;

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->lGSubrsUsed:Ljava/util/ArrayList;

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->hSubrsUsedNonCID:Ljava/util/HashMap;

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/ArrayList;

    .line 149
    iput v2, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->GBias:I

    .line 159
    iput v2, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NumOfHints:I

    .line 170
    iput-object p2, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->GlyphsUsed:Ljava/util/HashMap;

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->glyphsInList:Ljava/util/ArrayList;

    .line 175
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 178
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/itextpdf/text/pdf/CFFFont$Font;->charstringsOffset:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->seek(I)V

    .line 179
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard16()C

    move-result v2

    iput v2, v1, Lcom/itextpdf/text/pdf/CFFFont$Font;->nglyphs:I

    .line 182
    iget v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->stringIndexOffset:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->seek(I)V

    .line 183
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard16()C

    move-result v2

    sget-object v3, Lcom/itextpdf/text/pdf/CFFFontSubset;->standardStrings:[Ljava/lang/String;

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/itextpdf/text/pdf/CFFFont$Font;->nstrings:I

    .line 186
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/itextpdf/text/pdf/CFFFont$Font;->charstringsOffset:I

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getIndex(I)[I

    move-result-object v2

    iput-object v2, v1, Lcom/itextpdf/text/pdf/CFFFont$Font;->charstringsOffsets:[I

    .line 189
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdselectOffset:I

    if-ltz v1, :cond_0

    .line 192
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->readFDSelect(I)V

    .line 194
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->BuildFDArrayUsed(I)V

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/itextpdf/text/pdf/CFFFont$Font;->isCID:Z

    if-eqz v1, :cond_1

    .line 198
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->ReadFDArray(I)V

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/itextpdf/text/pdf/CFFFont$Font;->charsetOffset:I

    iget-object v3, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/itextpdf/text/pdf/CFFFont$Font;->nglyphs:I

    invoke-virtual {p0, v2, v3}, Lcom/itextpdf/text/pdf/CFFFontSubset;->CountCharset(II)I

    move-result v2

    iput v2, v1, Lcom/itextpdf/text/pdf/CFFFont$Font;->CharsetLength:I

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_2
    return-void
.end method


# virtual methods
.method protected AssembleIndex([I[B)[B
    .locals 15
    .parameter "NewOffsets"
    .parameter "NewObjects"

    .prologue
    .line 989
    move-object/from16 v0, p1

    array-length v13, v0

    add-int/lit8 v13, v13, -0x1

    int-to-char v1, v13

    .line 991
    .local v1, Count:C
    move-object/from16 v0, p1

    array-length v13, v0

    add-int/lit8 v13, v13, -0x1

    aget v7, p1, v13

    .line 994
    .local v7, Size:I
    const/16 v13, 0xff

    if-gt v7, v13, :cond_0

    const/4 v4, 0x1

    .line 1000
    .local v4, Offsize:B
    :goto_0
    add-int/lit8 v13, v1, 0x1

    mul-int/2addr v13, v4

    add-int/lit8 v13, v13, 0x3

    move-object/from16 v0, p2

    array-length v14, v0

    add-int/2addr v13, v14

    new-array v2, v13, [B

    .line 1002
    .local v2, NewIndex:[B
    const/4 v5, 0x0

    .line 1004
    .local v5, Place:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #Place:I
    .local v6, Place:I
    ushr-int/lit8 v13, v1, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v2, v5

    .line 1005
    add-int/lit8 v5, v6, 0x1

    .end local v6           #Place:I
    .restart local v5       #Place:I
    ushr-int/lit8 v13, v1, 0x0

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v2, v6

    .line 1007
    add-int/lit8 v6, v5, 0x1

    .end local v5           #Place:I
    .restart local v6       #Place:I
    aput-byte v4, v2, v5

    .line 1009
    move-object/from16 v8, p1

    .local v8, arr$:[I
    array-length v10, v8

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v10, :cond_3

    aget v12, v8, v9

    .line 1011
    .local v12, newOffset:I
    const/4 v13, 0x0

    aget v13, p1, v13

    sub-int v13, v12, v13

    add-int/lit8 v3, v13, 0x1

    .line 1013
    .local v3, Num:I
    packed-switch v4, :pswitch_data_0

    :goto_2
    move v5, v6

    .line 1009
    .end local v6           #Place:I
    .restart local v5       #Place:I
    add-int/lit8 v9, v9, 0x1

    move v6, v5

    .end local v5           #Place:I
    .restart local v6       #Place:I
    goto :goto_1

    .line 995
    .end local v2           #NewIndex:[B
    .end local v3           #Num:I
    .end local v4           #Offsize:B
    .end local v6           #Place:I
    .end local v8           #arr$:[I
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v12           #newOffset:I
    :cond_0
    const v13, 0xffff

    if-gt v7, v13, :cond_1

    const/4 v4, 0x2

    .restart local v4       #Offsize:B
    goto :goto_0

    .line 996
    .end local v4           #Offsize:B
    :cond_1
    const v13, 0xffffff

    if-gt v7, v13, :cond_2

    const/4 v4, 0x3

    .restart local v4       #Offsize:B
    goto :goto_0

    .line 997
    .end local v4           #Offsize:B
    :cond_2
    const/4 v4, 0x4

    .restart local v4       #Offsize:B
    goto :goto_0

    .line 1015
    .restart local v2       #NewIndex:[B
    .restart local v3       #Num:I
    .restart local v6       #Place:I
    .restart local v8       #arr$:[I
    .restart local v9       #i$:I
    .restart local v10       #len$:I
    .restart local v12       #newOffset:I
    :pswitch_0
    add-int/lit8 v5, v6, 0x1

    .end local v6           #Place:I
    .restart local v5       #Place:I
    ushr-int/lit8 v13, v3, 0x18

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v2, v6

    .line 1017
    :goto_3
    add-int/lit8 v6, v5, 0x1

    .end local v5           #Place:I
    .restart local v6       #Place:I
    ushr-int/lit8 v13, v3, 0x10

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v2, v5

    :pswitch_1
    move v5, v6

    .line 1019
    .end local v6           #Place:I
    .restart local v5       #Place:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #Place:I
    .restart local v6       #Place:I
    ushr-int/lit8 v13, v3, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v2, v5

    :pswitch_2
    move v5, v6

    .line 1021
    .end local v6           #Place:I
    .restart local v5       #Place:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #Place:I
    .restart local v6       #Place:I
    ushr-int/lit8 v13, v3, 0x0

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v2, v5

    goto :goto_2

    .line 1025
    .end local v3           #Num:I
    .end local v12           #newOffset:I
    :cond_3
    move-object/from16 v8, p2

    .local v8, arr$:[B
    array-length v10, v8

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v10, :cond_4

    aget-byte v11, v8, v9

    .line 1026
    .local v11, newObject:B
    add-int/lit8 v5, v6, 0x1

    .end local v6           #Place:I
    .restart local v5       #Place:I
    aput-byte v11, v2, v6

    .line 1025
    add-int/lit8 v9, v9, 0x1

    move v6, v5

    .end local v5           #Place:I
    .restart local v6       #Place:I
    goto :goto_4

    .line 1029
    .end local v11           #newObject:B
    :cond_4
    return-object v2

    .restart local v3       #Num:I
    .local v8, arr$:[I
    .restart local v12       #newOffset:I
    :pswitch_3
    move v5, v6

    .end local v6           #Place:I
    .restart local v5       #Place:I
    goto :goto_3

    .line 1013
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method protected BuildFDArrayUsed(I)V
    .locals 6
    .parameter "Font"

    .prologue
    .line 321
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v4, v4, p1

    iget-object v1, v4, Lcom/itextpdf/text/pdf/CFFFont$Font;->FDSelect:[I

    .line 323
    .local v1, FDSelect:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->glyphsInList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 326
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->glyphsInList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 328
    .local v2, glyph:I
    aget v0, v1, v2

    .line 330
    .local v0, FD:I
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->FDArrayUsed:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 332
    .end local v0           #FD:I
    .end local v2           #glyph:I
    :cond_0
    return-void
.end method

.method protected BuildFDSubrsOffsets(II)V
    .locals 3
    .parameter "Font"
    .parameter "FD"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->PrivateSubrsOffset:[I

    const/4 v1, -0x1

    aput v1, v0, p2

    .line 501
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdprivateOffsets:[I

    aget v0, v0, p2

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->seek(I)V

    .line 503
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdprivateOffsets:[I

    aget v1, v1, p2

    iget-object v2, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdprivateLengths:[I

    aget v2, v2, p2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 505
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getDictItem()V

    .line 507
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "Subrs"

    if-ne v0, v1, :cond_0

    .line 508
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v1, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->PrivateSubrsOffset:[I

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdprivateOffsets:[I

    aget v2, v2, p2

    add-int/2addr v0, v2

    aput v0, v1, p2

    goto :goto_0

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->PrivateSubrsOffset:[I

    aget v0, v0, p2

    if-ltz v0, :cond_2

    .line 512
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->PrivateSubrsOffsetsArray:[[I

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/text/pdf/CFFFont$Font;->PrivateSubrsOffset:[I

    aget v1, v1, p2

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getIndex(I)[I

    move-result-object v1

    aput-object v1, v0, p2

    .line 513
    :cond_2
    return-void
.end method

.method protected BuildGSubrsUsed(I)V
    .locals 19
    .parameter "Font"

    .prologue
    .line 579
    const/4 v13, 0x0

    .line 580
    .local v13, LBias:I
    const/4 v15, 0x0

    .line 581
    .local v15, SizeOfNonCIDSubrsUsed:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateSubrs:I

    if-ltz v2, :cond_0

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateSubrs:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->CalcBias(II)I

    move-result v13

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 588
    :cond_0
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->lGSubrsUsed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_5

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->lGSubrsUsed:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 592
    .local v16, Subr:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->gsubrOffsets:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v16

    if-ge v0, v2, :cond_1

    if-ltz v16, :cond_1

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->gsubrOffsets:[I

    aget v3, v2, v16

    .line 596
    .local v3, Start:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->gsubrOffsets:[I

    add-int/lit8 v5, v16, 0x1

    aget v4, v2, v5

    .line 598
    .local v4, End:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v2, v2, p1

    iget-boolean v2, v2, Lcom/itextpdf/text/pdf/CFFFont$Font;->isCID:Z

    if-eqz v2, :cond_2

    .line 599
    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->GBias:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->hGSubrsUsed:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->lGSubrsUsed:Ljava/util/ArrayList;

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/itextpdf/text/pdf/CFFFontSubset;->ReadASubr(IIIILjava/util/HashMap;Ljava/util/ArrayList;[I)V

    .line 588
    .end local v3           #Start:I
    .end local v4           #End:I
    :cond_1
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 602
    .restart local v3       #Start:I
    .restart local v4       #End:I
    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->GBias:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->hSubrsUsedNonCID:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v9, v2, Lcom/itextpdf/text/pdf/CFFFont$Font;->SubrsOffsets:[I

    move-object/from16 v2, p0

    move v6, v13

    invoke-virtual/range {v2 .. v9}, Lcom/itextpdf/text/pdf/CFFFontSubset;->ReadASubr(IIIILjava/util/HashMap;Ljava/util/ArrayList;[I)V

    .line 603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_1

    .line 605
    move/from16 v18, v15

    .local v18, j:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_4

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 609
    .local v14, LSubr:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/itextpdf/text/pdf/CFFFont$Font;->SubrsOffsets:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v14, v2, :cond_3

    if-ltz v14, :cond_3

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/itextpdf/text/pdf/CFFFont$Font;->SubrsOffsets:[I

    aget v6, v2, v14

    .line 613
    .local v6, LStart:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/itextpdf/text/pdf/CFFFont$Font;->SubrsOffsets:[I

    add-int/lit8 v5, v14, 0x1

    aget v7, v2, v5

    .line 614
    .local v7, LEnd:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->GBias:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->hSubrsUsedNonCID:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v2, v2, p1

    iget-object v12, v2, Lcom/itextpdf/text/pdf/CFFFont$Font;->SubrsOffsets:[I

    move-object/from16 v5, p0

    move v9, v13

    invoke-virtual/range {v5 .. v12}, Lcom/itextpdf/text/pdf/CFFFontSubset;->ReadASubr(IIIILjava/util/HashMap;Ljava/util/ArrayList;[I)V

    .line 605
    .end local v6           #LStart:I
    .end local v7           #LEnd:I
    :cond_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 617
    .end local v14           #LSubr:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    goto/16 :goto_1

    .line 622
    .end local v3           #Start:I
    .end local v4           #End:I
    .end local v16           #Subr:I
    .end local v18           #j:I
    :cond_5
    return-void
.end method

.method protected BuildIndexHeader(III)V
    .locals 3
    .parameter "Count"
    .parameter "Offsize"
    .parameter "First"

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;

    int-to-char v2, p1

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1240
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    int-to-char v2, p2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1242
    packed-switch p2, :pswitch_data_0

    .line 1258
    :goto_0
    return-void

    .line 1244
    :pswitch_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    int-to-char v2, p3

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 1247
    :pswitch_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;

    int-to-char v2, p3

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 1250
    :pswitch_2
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/text/pdf/CFFFont$UInt24Item;

    int-to-char v2, p3

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/CFFFont$UInt24Item;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 1253
    :pswitch_3
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/text/pdf/CFFFont$UInt32Item;

    int-to-char v2, p3

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/CFFFont$UInt32Item;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 1242
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected BuildNewCharString(I)V
    .locals 3
    .parameter "FontIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->charstringsOffsets:[I

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->GlyphsUsed:Ljava/util/HashMap;

    const/16 v2, 0xe

    invoke-virtual {p0, v0, v1, v2}, Lcom/itextpdf/text/pdf/CFFFontSubset;->BuildNewIndex([ILjava/util/HashMap;B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NewCharStringsIndex:[B

    .line 422
    return-void
.end method

.method protected BuildNewFile(I)[B
    .locals 25
    .parameter "Font"

    .prologue
    .line 1040
    new-instance v20, Ljava/util/LinkedList;

    invoke-direct/range {v20 .. v20}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    .line 1043
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->CopyHeader()V

    .line 1046
    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/CFFFontSubset;->BuildIndexHeader(III)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v22, v0

    aget-object v22, v22, p1

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    int-to-char v0, v0

    move/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/itextpdf/text/pdf/CFFFont$StringItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v22, v0

    aget-object v22, v22, p1

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/itextpdf/text/pdf/CFFFont$StringItem;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1051
    const/16 v20, 0x1

    const/16 v21, 0x2

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/CFFFontSubset;->BuildIndexHeader(III)V

    .line 1052
    new-instance v19, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;

    const/16 v20, 0x2

    invoke-direct/range {v19 .. v20}, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;-><init>(I)V

    .line 1053
    .local v19, topdictIndex1Ref:Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1054
    new-instance v18, Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;

    invoke-direct/range {v18 .. v18}, Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;-><init>()V

    .line 1055
    .local v18, topdictBase:Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1058
    new-instance v7, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;

    invoke-direct {v7}, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;-><init>()V

    .line 1059
    .local v7, charsetRef:Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;
    new-instance v8, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;

    invoke-direct {v8}, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;-><init>()V

    .line 1060
    .local v8, charstringsRef:Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;
    new-instance v10, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;

    invoke-direct {v10}, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;-><init>()V

    .line 1061
    .local v10, fdarrayRef:Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;
    new-instance v11, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;

    invoke-direct {v11}, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;-><init>()V

    .line 1062
    .local v11, fdselectRef:Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;
    new-instance v16, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;

    invoke-direct/range {v16 .. v16}, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;-><init>()V

    .line 1065
    .local v16, privateRef:Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v20, v0

    aget-object v20, v20, p1

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->isCID:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v22, v0

    aget-object v22, v22, p1

    move-object/from16 v0, v22

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->nstrings:I

    move/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v22, v0

    aget-object v22, v22, p1

    move-object/from16 v0, v22

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->nstrings:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    invoke-direct/range {v21 .. v22}, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;

    const/16 v22, 0x0

    invoke-direct/range {v21 .. v22}, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v22, 0xc

    invoke-direct/range {v21 .. v22}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v22, 0x1e

    invoke-direct/range {v21 .. v22}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v22, v0

    aget-object v22, v22, p1

    move-object/from16 v0, v22

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->nglyphs:I

    move/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v22, 0xc

    invoke-direct/range {v21 .. v22}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v22, 0x22

    invoke-direct/range {v21 .. v22}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1081
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->topdictOffsets:[I

    move-object/from16 v20, v0

    aget v20, v20, p1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->seek(I)V

    .line 1083
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getPosition()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->topdictOffsets:[I

    move-object/from16 v21, v0

    add-int/lit8 v22, p1, 0x1

    aget v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 1084
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getPosition()I

    move-result v14

    .line 1085
    .local v14, p1:I
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getDictItem()V

    .line 1086
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getPosition()I

    move-result v15

    .line 1088
    .local v15, p2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "Encoding"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "Private"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "FDSelect"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "FDArray"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "charset"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "CharStrings"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v22, v0

    sub-int v23, v15, v14

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v14, v2}, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;II)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1102
    .end local v14           #p1:I
    .end local v15           #p2:I
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v7, v8}, Lcom/itextpdf/text/pdf/CFFFontSubset;->CreateKeys(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/itextpdf/text/pdf/CFFFont$IndexMarkerItem;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/CFFFont$IndexMarkerItem;-><init>(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v20, v0

    aget-object v20, v20, p1

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->isCID:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->stringIndexOffset:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getEntireIndexRange(I)Lcom/itextpdf/text/pdf/CFFFont$RangeItem;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1118
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;

    new-instance v22, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NewGSubrsIndex:[B

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>([B)V

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NewGSubrsIndex:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    invoke-direct/range {v21 .. v24}, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;II)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v20, v0

    aget-object v20, v20, p1

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->isCID:Z

    move/from16 v20, v0

    if-eqz v20, :cond_7

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;

    move-object/from16 v0, v21

    invoke-direct {v0, v11}, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v20, v0

    aget-object v20, v20, p1

    move-object/from16 v0, v20

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdselectOffset:I

    move/from16 v20, v0

    if-ltz v20, :cond_5

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v23, v0

    aget-object v23, v23, p1

    move-object/from16 v0, v23

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdselectOffset:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v24, v0

    aget-object v24, v24, p1

    move-object/from16 v0, v24

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->FDSelectLength:I

    move/from16 v24, v0

    invoke-direct/range {v21 .. v24}, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;II)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1137
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v23, v0

    aget-object v23, v23, p1

    move-object/from16 v0, v23

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->charsetOffset:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v24, v0

    aget-object v24, v24, p1

    move-object/from16 v0, v24

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->CharsetLength:I

    move/from16 v24, v0

    invoke-direct/range {v21 .. v24}, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;II)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v20, v0

    aget-object v20, v20, p1

    move-object/from16 v0, v20

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdarrayOffset:I

    move/from16 v20, v0

    if-ltz v20, :cond_6

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1147
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->Reconstruct(I)V

    .line 1166
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v20, v0

    aget-object v20, v20, p1

    move-object/from16 v0, v20

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateOffset:I

    move/from16 v20, v0

    if-ltz v20, :cond_3

    .line 1169
    new-instance v4, Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;-><init>()V

    .line 1170
    .local v4, PrivateBase:Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1173
    new-instance v5, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;-><init>()V

    .line 1175
    .local v5, Subr:Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/itextpdf/text/pdf/CFFFontSubset;->CreateNonCIDPrivate(ILcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V

    .line 1177
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5}, Lcom/itextpdf/text/pdf/CFFFontSubset;->CreateNonCIDSubrs(ILcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V

    .line 1181
    .end local v4           #PrivateBase:Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;
    .end local v5           #Subr:Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;

    move-object/from16 v0, v21

    invoke-direct {v0, v8}, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    new-instance v21, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;

    new-instance v22, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NewCharStringsIndex:[B

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>([B)V

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NewCharStringsIndex:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    invoke-direct/range {v21 .. v24}, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;II)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1187
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v9, v0, [I

    .line 1188
    .local v9, currentOffset:[I
    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v9, v20

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1191
    .local v13, listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/CFFFont$Item;>;"
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1192
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/text/pdf/CFFFont$Item;

    .line 1193
    .local v12, item:Lcom/itextpdf/text/pdf/CFFFont$Item;
    invoke-virtual {v12, v9}, Lcom/itextpdf/text/pdf/CFFFont$Item;->increment([I)V

    goto :goto_4

    .line 1115
    .end local v9           #currentOffset:[I
    .end local v12           #item:Lcom/itextpdf/text/pdf/CFFFont$Item;
    .end local v13           #listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/CFFFont$Item;>;"
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->CreateNewStringIndex(I)V

    goto/16 :goto_1

    .line 1133
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v20, v0

    aget-object v20, v20, p1

    move-object/from16 v0, v20

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->nglyphs:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->CreateFDSelect(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;I)V

    goto/16 :goto_2

    .line 1151
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-virtual {v0, v10, v1, v2}, Lcom/itextpdf/text/pdf/CFFFontSubset;->CreateFDArray(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;I)V

    goto/16 :goto_3

    .line 1158
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v20, v0

    aget-object v20, v20, p1

    move-object/from16 v0, v20

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->nglyphs:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->CreateFDSelect(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;I)V

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v20, v0

    aget-object v20, v20, p1

    move-object/from16 v0, v20

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->nglyphs:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->CreateCharset(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;I)V

    .line 1162
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-virtual {v0, v10, v1, v2}, Lcom/itextpdf/text/pdf/CFFFontSubset;->CreateFDArray(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;I)V

    goto/16 :goto_3

    .line 1196
    .restart local v9       #currentOffset:[I
    .restart local v13       #listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/CFFFont$Item;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1197
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1198
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/text/pdf/CFFFont$Item;

    .line 1199
    .restart local v12       #item:Lcom/itextpdf/text/pdf/CFFFont$Item;
    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/CFFFont$Item;->xref()V

    goto :goto_5

    .line 1202
    .end local v12           #item:Lcom/itextpdf/text/pdf/CFFFont$Item;
    :cond_9
    const/16 v20, 0x0

    aget v17, v9, v20

    .line 1203
    .local v17, size:I
    move/from16 v0, v17

    new-array v6, v0, [B

    .line 1206
    .local v6, b:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1207
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 1208
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/text/pdf/CFFFont$Item;

    .line 1209
    .restart local v12       #item:Lcom/itextpdf/text/pdf/CFFFont$Item;
    invoke-virtual {v12, v6}, Lcom/itextpdf/text/pdf/CFFFont$Item;->emit([B)V

    goto :goto_6

    .line 1212
    .end local v12           #item:Lcom/itextpdf/text/pdf/CFFFont$Item;
    :cond_a
    return-object v6
.end method

.method protected BuildNewIndex([ILjava/util/HashMap;B)[B
    .locals 11
    .parameter "Offsets"
    .parameter
    .parameter "OperatorForUnusedEntries"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 935
    .local p2, Used:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    const/4 v6, 0x0

    .line 936
    .local v6, unusedCount:I
    const/4 v2, 0x0

    .line 937
    .local v2, Offset:I
    array-length v8, p1

    new-array v1, v8, [I

    .line 939
    .local v1, NewOffsets:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, p1

    if-ge v4, v8, :cond_1

    .line 941
    aput v2, v1, v4

    .line 944
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 945
    add-int/lit8 v8, v4, 0x1

    aget v8, p1, v8

    aget v9, p1, v4

    sub-int/2addr v8, v9

    add-int/2addr v2, v8

    .line 939
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 948
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 952
    :cond_1
    add-int v8, v2, v6

    new-array v0, v8, [B

    .line 954
    .local v0, NewObjects:[B
    const/4 v7, 0x0

    .line 955
    .local v7, unusedOffset:I
    const/4 v4, 0x0

    :goto_2
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_3

    .line 957
    aget v5, v1, v4

    .line 958
    .local v5, start:I
    add-int/lit8 v8, v4, 0x1

    aget v3, v1, v8

    .line 959
    .local v3, end:I
    add-int v8, v5, v7

    aput v8, v1, v4

    .line 962
    if-eq v5, v3, :cond_2

    .line 966
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    aget v9, p1, v4

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 968
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    add-int v9, v5, v7

    sub-int v10, v3, v5

    invoke-virtual {v8, v0, v9, v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([BII)V

    .line 955
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 970
    :cond_2
    add-int v8, v5, v7

    aput-byte p3, v0, v8

    .line 971
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 974
    .end local v3           #end:I
    .end local v5           #start:I
    :cond_3
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    aget v9, v1, v8

    add-int/2addr v9, v7

    aput v9, v1, v8

    .line 976
    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->AssembleIndex([I[B)[B

    move-result-object v8

    return-object v8
.end method

.method protected BuildNewLGSubrs(I)V
    .locals 13
    .parameter "Font"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0xb

    .line 435
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->isCID:Z

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdprivateOffsets:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->hSubrsUsed:[Ljava/util/HashMap;

    .line 440
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdprivateOffsets:[I

    array-length v0, v0

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->lSubrsUsed:[Ljava/util/ArrayList;

    .line 442
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdprivateOffsets:[I

    array-length v0, v0

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NewLSubrsIndex:[[B

    .line 444
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdprivateOffsets:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->PrivateSubrsOffset:[I

    .line 446
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdprivateOffsets:[I

    array-length v1, v1

    new-array v1, v1, [[I

    iput-object v1, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->PrivateSubrsOffsetsArray:[[I

    .line 449
    new-instance v10, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->FDArrayUsed:Ljava/util/HashSet;

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 451
    .local v10, FDInList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .local v11, j:I
    :goto_0
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v11, v0, :cond_2

    .line 454
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 455
    .local v2, FD:I
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->hSubrsUsed:[Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    aput-object v1, v0, v2

    .line 456
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->lSubrsUsed:[Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, v2

    .line 459
    invoke-virtual {p0, p1, v2}, Lcom/itextpdf/text/pdf/CFFFontSubset;->BuildFDSubrsOffsets(II)V

    .line 461
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->PrivateSubrsOffset:[I

    aget v0, v0, v2

    if-ltz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->PrivateSubrsOffset:[I

    aget v3, v0, v2

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->PrivateSubrsOffsetsArray:[[I

    aget-object v4, v0, v2

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->hSubrsUsed:[Ljava/util/HashMap;

    aget-object v5, v0, v2

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->lSubrsUsed:[Ljava/util/ArrayList;

    aget-object v6, v0, v2

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/CFFFontSubset;->BuildSubrUsed(III[ILjava/util/HashMap;Ljava/util/ArrayList;)V

    .line 467
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NewLSubrsIndex:[[B

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/text/pdf/CFFFont$Font;->PrivateSubrsOffsetsArray:[[I

    aget-object v1, v1, v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->hSubrsUsed:[Ljava/util/HashMap;

    aget-object v3, v3, v2

    invoke-virtual {p0, v1, v3, v12}, Lcom/itextpdf/text/pdf/CFFFontSubset;->BuildNewIndex([ILjava/util/HashMap;B)[B

    move-result-object v1

    aput-object v1, v0, v2

    .line 451
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 472
    .end local v2           #FD:I
    .end local v10           #FDInList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11           #j:I
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateSubrs:I

    if-ltz v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateSubrs:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getIndex(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->SubrsOffsets:[I

    .line 478
    const/4 v5, -0x1

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget v6, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateSubrs:I

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v7, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->SubrsOffsets:[I

    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->hSubrsUsedNonCID:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->lSubrsUsedNonCID:Ljava/util/ArrayList;

    move-object v3, p0

    move v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/itextpdf/text/pdf/CFFFontSubset;->BuildSubrUsed(III[ILjava/util/HashMap;Ljava/util/ArrayList;)V

    .line 482
    :cond_2
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->BuildGSubrsUsed(I)V

    .line 483
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateSubrs:I

    if-ltz v0, :cond_3

    .line 485
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->SubrsOffsets:[I

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->hSubrsUsedNonCID:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1, v12}, Lcom/itextpdf/text/pdf/CFFFontSubset;->BuildNewIndex([ILjava/util/HashMap;B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NewSubrsIndexNonCID:[B

    .line 487
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->gsubrOffsets:[I

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->hGSubrsUsed:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v1, v12}, Lcom/itextpdf/text/pdf/CFFFontSubset;->BuildNewIndex([ILjava/util/HashMap;B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NewGSubrsIndex:[B

    .line 488
    return-void
.end method

.method protected BuildSubrUsed(III[ILjava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 13
    .parameter "Font"
    .parameter "FD"
    .parameter "SubrOffset"
    .parameter "SubrsOffsets"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III[I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 530
    .local p5, hSubr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    .local p6, lSubr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move/from16 v0, p3

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->CalcBias(II)I

    move-result v5

    .line 533
    .local v5, LBias:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->glyphsInList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_2

    .line 535
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->glyphsInList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 536
    .local v11, glyph:I
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/text/pdf/CFFFont$Font;->charstringsOffsets:[I

    aget v2, v1, v11

    .line 537
    .local v2, Start:I
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/text/pdf/CFFFont$Font;->charstringsOffsets:[I

    add-int/lit8 v4, v11, 0x1

    aget v3, v1, v4

    .line 540
    .local v3, End:I
    if-ltz p2, :cond_1

    .line 542
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->EmptyStack()V

    .line 543
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NumOfHints:I

    .line 545
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/text/pdf/CFFFont$Font;->FDSelect:[I

    aget v9, v1, v11

    .line 547
    .local v9, GlyphFD:I
    if-ne v9, p2, :cond_0

    .line 549
    iget v4, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->GBias:I

    move-object v1, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/itextpdf/text/pdf/CFFFontSubset;->ReadASubr(IIIILjava/util/HashMap;Ljava/util/ArrayList;[I)V

    .line 533
    .end local v9           #GlyphFD:I
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 554
    :cond_1
    iget v4, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->GBias:I

    move-object v1, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/itextpdf/text/pdf/CFFFontSubset;->ReadASubr(IIIILjava/util/HashMap;Ljava/util/ArrayList;[I)V

    goto :goto_1

    .line 557
    .end local v2           #Start:I
    .end local v3           #End:I
    .end local v11           #glyph:I
    :cond_2
    const/4 v12, 0x0

    :goto_2
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_4

    .line 560
    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 562
    .local v10, Subr:I
    move-object/from16 v0, p4

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v10, v1, :cond_3

    if-ltz v10, :cond_3

    .line 565
    aget v2, p4, v10

    .line 566
    .restart local v2       #Start:I
    add-int/lit8 v1, v10, 0x1

    aget v3, p4, v1

    .line 567
    .restart local v3       #End:I
    iget v4, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->GBias:I

    move-object v1, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/itextpdf/text/pdf/CFFFontSubset;->ReadASubr(IIIILjava/util/HashMap;Ljava/util/ArrayList;[I)V

    .line 557
    .end local v2           #Start:I
    .end local v3           #End:I
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 570
    .end local v10           #Subr:I
    :cond_4
    return-void
.end method

.method protected CalcBias(II)I
    .locals 3
    .parameter "Offset"
    .parameter "Font"

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->seek(I)V

    .line 401
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard16()C

    move-result v0

    .line 403
    .local v0, nSubrs:I
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v1, v1, p2

    iget v1, v1, Lcom/itextpdf/text/pdf/CFFFont$Font;->CharstringType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 404
    const/4 v1, 0x0

    .line 411
    :goto_0
    return v1

    .line 406
    :cond_0
    const/16 v1, 0x4d8

    if-ge v0, v1, :cond_1

    .line 407
    const/16 v1, 0x6b

    goto :goto_0

    .line 408
    :cond_1
    const v1, 0x846c

    if-ge v0, v1, :cond_2

    .line 409
    const/16 v1, 0x46b

    goto :goto_0

    .line 411
    :cond_2
    const v1, 0x8000

    goto :goto_0
.end method

.method protected CalcHints(IIII[I)I
    .locals 12
    .parameter "begin"
    .parameter "end"
    .parameter "LBias"
    .parameter "GBias"
    .parameter "LSubrsOffsets"

    .prologue
    .line 872
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->seek(I)V

    .line 873
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getPosition()I

    move-result v0

    if-ge v0, p2, :cond_9

    .line 876
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->ReadCommand()V

    .line 877
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getPosition()I

    move-result v11

    .line 878
    .local v11, pos:I
    const/4 v9, 0x0

    .line 879
    .local v9, TopElement:Ljava/lang/Object;
    iget v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    if-lez v0, :cond_1

    .line 880
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->args:[Ljava/lang/Object;

    iget v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    add-int/lit8 v1, v1, -0x1

    aget-object v9, v0, v1

    .line 881
    .end local v9           #TopElement:Ljava/lang/Object;
    :cond_1
    iget v6, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    .line 883
    .local v6, NumOfArgs:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->HandelStack()V

    .line 885
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "callsubr"

    if-ne v0, v1, :cond_2

    .line 887
    if-lez v6, :cond_0

    .line 889
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v8, v0, p3

    .line 890
    .local v8, Subr:I
    aget v1, p5, v8

    add-int/lit8 v0, v8, 0x1

    aget v2, p5, v0

    move-object v0, p0

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/CFFFontSubset;->CalcHints(IIII[I)I

    .line 891
    invoke-virtual {p0, v11}, Lcom/itextpdf/text/pdf/CFFFontSubset;->seek(I)V

    goto :goto_0

    .line 895
    .end local v8           #Subr:I
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "callgsubr"

    if-ne v0, v1, :cond_3

    .line 897
    if-lez v6, :cond_0

    .line 899
    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int v8, v0, p4

    .line 900
    .restart local v8       #Subr:I
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->gsubrOffsets:[I

    aget v1, v0, v8

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->gsubrOffsets:[I

    add-int/lit8 v2, v8, 0x1

    aget v2, v0, v2

    move-object v0, p0

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/CFFFontSubset;->CalcHints(IIII[I)I

    .line 901
    invoke-virtual {p0, v11}, Lcom/itextpdf/text/pdf/CFFFontSubset;->seek(I)V

    goto :goto_0

    .line 905
    .end local v8           #Subr:I
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "hstem"

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "vstem"

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "hstemhm"

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "vstemhm"

    if-ne v0, v1, :cond_5

    .line 907
    :cond_4
    iget v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NumOfHints:I

    div-int/lit8 v1, v6, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NumOfHints:I

    goto/16 :goto_0

    .line 909
    :cond_5
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "hintmask"

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "cntrmask"

    if-ne v0, v1, :cond_0

    .line 912
    :cond_6
    iget v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NumOfHints:I

    div-int/lit8 v7, v0, 0x8

    .line 913
    .local v7, SizeOfMask:I
    iget v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NumOfHints:I

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_7

    if-nez v7, :cond_8

    .line 914
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 916
    :cond_8
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v7, :cond_0

    .line 917
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard8()C

    .line 916
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 920
    .end local v6           #NumOfArgs:I
    .end local v7           #SizeOfMask:I
    .end local v10           #i:I
    .end local v11           #pos:I
    :cond_9
    iget v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NumOfHints:I

    return v0
.end method

.method CalcSubrOffsetSize(II)I
    .locals 5
    .parameter "Offset"
    .parameter "Size"

    .prologue
    .line 1549
    const/4 v0, 0x0

    .line 1551
    .local v0, OffsetSize:I
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->seek(I)V

    .line 1553
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getPosition()I

    move-result v3

    add-int v4, p1, p2

    if-ge v3, v4, :cond_1

    .line 1555
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getPosition()I

    move-result v1

    .line 1556
    .local v1, p1:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getDictItem()V

    .line 1557
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getPosition()I

    move-result v2

    .line 1559
    .local v2, p2:I
    iget-object v3, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v4, "Subrs"

    if-ne v3, v4, :cond_0

    .line 1561
    sub-int v3, v2, v1

    add-int/lit8 v0, v3, -0x1

    goto :goto_0

    .line 1566
    .end local v1           #p1:I
    .end local v2           #p2:I
    :cond_1
    return v0
.end method

.method protected CopyHeader()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1220
    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/CFFFontSubset;->seek(I)V

    .line 1221
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard8()C

    move-result v1

    .line 1222
    .local v1, major:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard8()C

    move-result v2

    .line 1223
    .local v2, minor:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard8()C

    move-result v0

    .line 1224
    .local v0, hdrSize:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard8()C

    move-result v3

    .line 1225
    .local v3, offSize:I
    iput v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->nextIndexOffset:I

    .line 1226
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v5, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-direct {v5, v6, v7, v0}, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;II)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1227
    return-void
.end method

.method CountCharset(II)I
    .locals 3
    .parameter "Offset"
    .parameter "NumofGlyphs"

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, Length:I
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->seek(I)V

    .line 215
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard8()C

    move-result v1

    .line 217
    .local v1, format:I
    packed-switch v1, :pswitch_data_0

    .line 230
    :goto_0
    return v0

    .line 219
    :pswitch_0
    mul-int/lit8 v2, p2, 0x2

    add-int/lit8 v0, v2, 0x1

    .line 220
    goto :goto_0

    .line 222
    :pswitch_1
    const/4 v2, 0x1

    invoke-virtual {p0, p2, v2}, Lcom/itextpdf/text/pdf/CFFFontSubset;->CountRange(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v0, v2, 0x1

    .line 223
    goto :goto_0

    .line 225
    :pswitch_2
    const/4 v2, 0x2

    invoke-virtual {p0, p2, v2}, Lcom/itextpdf/text/pdf/CFFFontSubset;->CountRange(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    add-int/lit8 v0, v2, 0x1

    .line 226
    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method CountRange(II)I
    .locals 5
    .parameter "NumofGlyphs"
    .parameter "Type"

    .prologue
    .line 240
    const/4 v3, 0x0

    .line 242
    .local v3, num:I
    const/4 v1, 0x1

    .line 243
    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 244
    add-int/lit8 v3, v3, 0x1

    .line 245
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard16()C

    move-result v0

    .line 246
    .local v0, Sid:C
    const/4 v4, 0x1

    if-ne p2, v4, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard8()C

    move-result v2

    .line 250
    .local v2, nLeft:I
    :goto_1
    add-int/lit8 v4, v2, 0x1

    add-int/2addr v1, v4

    goto :goto_0

    .line 249
    .end local v2           #nLeft:I
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard16()C

    move-result v2

    .restart local v2       #nLeft:I
    goto :goto_1

    .line 252
    .end local v0           #Sid:C
    .end local v2           #nLeft:I
    :cond_1
    return v3
.end method

.method protected CreateCharset(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;I)V
    .locals 3
    .parameter "charsetRef"
    .parameter "nglyphs"

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1353
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1354
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1355
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;

    add-int/lit8 v2, p2, -0x1

    int-to-char v2, v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1356
    return-void
.end method

.method protected CreateFDArray(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;I)V
    .locals 7
    .parameter "fdarrayRef"
    .parameter "privateRef"
    .parameter "Font"

    .prologue
    const/4 v6, 0x1

    .line 1368
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v5, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;

    invoke-direct {v5, p1}, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1370
    invoke-virtual {p0, v6, v6, v6}, Lcom/itextpdf/text/pdf/CFFFontSubset;->BuildIndexHeader(III)V

    .line 1373
    new-instance v3, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;

    invoke-direct {v3, v6}, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;-><init>(I)V

    .line 1374
    .local v3, privateIndex1Ref:Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1375
    new-instance v2, Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;-><init>()V

    .line 1377
    .local v2, privateBase:Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1380
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v4, v4, p3

    iget v0, v4, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateLength:I

    .line 1382
    .local v0, NewSize:I
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v4, v4, p3

    iget v4, v4, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateOffset:I

    iget-object v5, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v5, v5, p3

    iget v5, v5, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateLength:I

    invoke-virtual {p0, v4, v5}, Lcom/itextpdf/text/pdf/CFFFontSubset;->CalcSubrOffsetSize(II)I

    move-result v1

    .line 1384
    .local v1, OrgSubrsOffsetSize:I
    if-eqz v1, :cond_0

    .line 1385
    rsub-int/lit8 v4, v1, 0x5

    add-int/2addr v0, v4

    .line 1386
    :cond_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v5, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;

    invoke-direct {v5, v0}, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1387
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v4, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1388
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v5, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v6, 0x12

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1390
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v5, Lcom/itextpdf/text/pdf/CFFFont$IndexMarkerItem;

    invoke-direct {v5, v3, v2}, Lcom/itextpdf/text/pdf/CFFFont$IndexMarkerItem;-><init>(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1391
    return-void
.end method

.method protected CreateFDSelect(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;I)V
    .locals 4
    .parameter "fdselectRef"
    .parameter "nglyphs"

    .prologue
    const/4 v3, 0x0

    .line 1334
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1335
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1336
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1338
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;

    invoke-direct {v1, v3}, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1339
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    invoke-direct {v1, v3}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1341
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;

    int-to-char v2, p2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1342
    return-void
.end method

.method protected CreateKeys(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V
    .locals 4
    .parameter "fdarrayRef"
    .parameter "fdselectRef"
    .parameter "charsetRef"
    .parameter "charstringsRef"

    .prologue
    const/16 v3, 0xc

    .line 1270
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1271
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    invoke-direct {v1, v3}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1272
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1274
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1275
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    invoke-direct {v1, v3}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1276
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1278
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1279
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1281
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v0, p4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1282
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1283
    return-void
.end method

.method protected CreateNewStringIndex(I)V
    .locals 15
    .parameter "Font"

    .prologue
    .line 1292
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v11, v11, p1

    iget-object v11, v11, Lcom/itextpdf/text/pdf/CFFFont$Font;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-OneRange"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1293
    .local v3, fdFontName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x7f

    if-le v10, v11, :cond_0

    .line 1294
    const/4 v10, 0x0

    const/16 v11, 0x7f

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1295
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AdobeIdentity"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1297
    .local v2, extraStrings:Ljava/lang/String;
    iget-object v10, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->stringOffsets:[I

    iget-object v11, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->stringOffsets:[I

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    iget-object v11, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->stringOffsets:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    sub-int v6, v10, v11

    .line 1299
    .local v6, origStringsLen:I
    iget-object v10, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->stringOffsets:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    add-int/lit8 v8, v10, -0x1

    .line 1302
    .local v8, stringsBaseOffset:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v6

    const/16 v11, 0xff

    if-gt v10, v11, :cond_1

    const/4 v9, 0x1

    .line 1307
    .local v9, stringsIndexOffSize:B
    :goto_0
    iget-object v10, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v11, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;

    iget-object v12, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->stringOffsets:[I

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v12, v12, 0x3

    int-to-char v12, v12

    invoke-direct {v11, v12}, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1308
    iget-object v10, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v11, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    int-to-char v12, v9

    invoke-direct {v11, v12}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1309
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->stringOffsets:[I

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_4

    aget v7, v0, v4

    .line 1310
    .local v7, stringOffset:I
    iget-object v10, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v11, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;

    sub-int v12, v7, v8

    invoke-direct {v11, v9, v12}, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1309
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1303
    .end local v0           #arr$:[I
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #stringOffset:I
    .end local v9           #stringsIndexOffSize:B
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v6

    const v11, 0xffff

    if-gt v10, v11, :cond_2

    const/4 v9, 0x2

    .restart local v9       #stringsIndexOffSize:B
    goto :goto_0

    .line 1304
    .end local v9           #stringsIndexOffSize:B
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v6

    const v11, 0xffffff

    if-gt v10, v11, :cond_3

    const/4 v9, 0x3

    .restart local v9       #stringsIndexOffSize:B
    goto :goto_0

    .line 1305
    .end local v9           #stringsIndexOffSize:B
    :cond_3
    const/4 v9, 0x4

    .restart local v9       #stringsIndexOffSize:B
    goto :goto_0

    .line 1312
    .restart local v0       #arr$:[I
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_4
    iget-object v10, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->stringOffsets:[I

    iget-object v11, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->stringOffsets:[I

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    sub-int v1, v10, v8

    .line 1315
    .local v1, currentStringsOffset:I
    const-string v10, "Adobe"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v1, v10

    .line 1316
    iget-object v10, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v11, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;

    invoke-direct {v11, v9, v1}, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1317
    const-string v10, "Identity"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v1, v10

    .line 1318
    iget-object v10, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v11, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;

    invoke-direct {v11, v9, v1}, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1319
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v1, v10

    .line 1320
    iget-object v10, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v11, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;

    invoke-direct {v11, v9, v1}, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1322
    iget-object v10, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v11, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;

    iget-object v12, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    iget-object v13, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->stringOffsets:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    invoke-direct {v11, v12, v13, v6}, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;II)V

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1323
    iget-object v10, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v11, Lcom/itextpdf/text/pdf/CFFFont$StringItem;

    invoke-direct {v11, v2}, Lcom/itextpdf/text/pdf/CFFFont$StringItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1324
    return-void
.end method

.method CreateNonCIDPrivate(ILcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V
    .locals 6
    .parameter "Font"
    .parameter "Subr"

    .prologue
    .line 1605
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateOffset:I

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/CFFFontSubset;->seek(I)V

    .line 1606
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getPosition()I

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateOffset:I

    iget-object v4, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateLength:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    .line 1608
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getPosition()I

    move-result v0

    .line 1609
    .local v0, p1:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getDictItem()V

    .line 1610
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getPosition()I

    move-result v1

    .line 1613
    .local v1, p2:I
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v3, "Subrs"

    if-ne v2, v3, :cond_0

    .line 1614
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v2, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1615
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v3, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v4, 0x13

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 1619
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v3, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    sub-int v5, v1, v0

    invoke-direct {v3, v4, v0, v5}, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;II)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 1621
    .end local v0           #p1:I
    .end local v1           #p2:I
    :cond_1
    return-void
.end method

.method CreateNonCIDSubrs(ILcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V
    .locals 5
    .parameter "Font"
    .parameter "PrivateBase"
    .parameter "Subrs"

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/text/pdf/CFFFont$SubrMarkerItem;

    invoke-direct {v1, p3, p2}, Lcom/itextpdf/text/pdf/CFFFont$SubrMarkerItem;-><init>(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1635
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NewSubrsIndexNonCID:[B

    if-eqz v0, :cond_0

    .line 1636
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v1, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;

    new-instance v2, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NewSubrsIndexNonCID:[B

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>([B)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NewSubrsIndexNonCID:[B

    array-length v4, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;II)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1638
    :cond_0
    return-void
.end method

.method protected EmptyStack()V
    .locals 3

    .prologue
    .line 764
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 765
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    .line 766
    return-void
.end method

.method protected HandelStack()V
    .locals 3

    .prologue
    .line 714
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->StackOpp()I

    move-result v0

    .line 715
    .local v0, StackHandel:I
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 718
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 719
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->PushStack()V

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    mul-int/lit8 v0, v0, -0x1

    .line 725
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 726
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->PopStack()V

    .line 725
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 732
    .end local v1           #i:I
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->EmptyStack()V

    goto :goto_0
.end method

.method protected PopStack()V
    .locals 3

    .prologue
    .line 774
    iget v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    if-lez v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->args:[Ljava/lang/Object;

    iget v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 777
    iget v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    .line 779
    :cond_0
    return-void
.end method

.method public Process(Ljava/lang/String;)[B
    .locals 4
    .parameter "fontName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    :try_start_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 365
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 366
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/itextpdf/text/pdf/CFFFont$Font;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 367
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v2, :cond_2

    const/4 v0, 0x0

    .line 383
    :try_start_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 387
    :goto_1
    return-object v0

    .line 365
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    :cond_2
    :try_start_2
    iget v2, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->gsubrIndexOffset:I

    if-ltz v2, :cond_3

    .line 371
    iget v2, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->gsubrIndexOffset:I

    invoke-virtual {p0, v2, v1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->CalcBias(II)I

    move-result v2

    iput v2, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->GBias:I

    .line 374
    :cond_3
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->BuildNewCharString(I)V

    .line 376
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->BuildNewLGSubrs(I)V

    .line 378
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->BuildNewFile(I)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 383
    .local v0, Ret:[B
    :try_start_3
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 385
    :catch_0
    move-exception v2

    goto :goto_1

    .line 382
    .end local v0           #Ret:[B
    .end local v1           #j:I
    :catchall_0
    move-exception v2

    .line 383
    :try_start_4
    iget-object v3, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 387
    :goto_2
    throw v2

    .line 385
    :catch_1
    move-exception v3

    goto :goto_2

    .restart local v1       #j:I
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method protected PushStack()V
    .locals 1

    .prologue
    .line 787
    iget v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    .line 788
    return-void
.end method

.method protected ReadASubr(IIIILjava/util/HashMap;Ljava/util/ArrayList;[I)V
    .locals 13
    .parameter "begin"
    .parameter "end"
    .parameter "GBias"
    .parameter "LBias"
    .parameter
    .parameter
    .parameter "LSubrsOffsets"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 638
    .local p5, hSubr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;[I>;"
    .local p6, lSubr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->EmptyStack()V

    .line 639
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NumOfHints:I

    .line 641
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->seek(I)V

    .line 642
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getPosition()I

    move-result v1

    if-ge v1, p2, :cond_b

    .line 645
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->ReadCommand()V

    .line 646
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getPosition()I

    move-result v12

    .line 647
    .local v12, pos:I
    const/4 v10, 0x0

    .line 648
    .local v10, TopElement:Ljava/lang/Object;
    iget v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    if-lez v1, :cond_1

    .line 649
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->args:[Ljava/lang/Object;

    iget v2, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    add-int/lit8 v2, v2, -0x1

    aget-object v10, v1, v2

    .line 650
    .end local v10           #TopElement:Ljava/lang/Object;
    :cond_1
    iget v7, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    .line 652
    .local v7, NumOfArgs:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->HandelStack()V

    .line 654
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v2, "callsubr"

    if-ne v1, v2, :cond_3

    .line 657
    if-lez v7, :cond_0

    .line 660
    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int v9, v1, p4

    .line 662
    .local v9, Subr:I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 664
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_2
    aget v2, p7, v9

    add-int/lit8 v1, v9, 0x1

    aget v3, p7, v1

    move-object v1, p0

    move/from16 v4, p4

    move/from16 v5, p3

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/text/pdf/CFFFontSubset;->CalcHints(IIII[I)I

    .line 668
    invoke-virtual {p0, v12}, Lcom/itextpdf/text/pdf/CFFFontSubset;->seek(I)V

    goto :goto_0

    .line 672
    .end local v9           #Subr:I
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v2, "callgsubr"

    if-ne v1, v2, :cond_5

    .line 675
    if-lez v7, :cond_0

    .line 678
    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int v9, v1, p3

    .line 680
    .restart local v9       #Subr:I
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->hGSubrsUsed:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 682
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->hGSubrsUsed:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->lGSubrsUsed:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_4
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->gsubrOffsets:[I

    aget v2, v1, v9

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->gsubrOffsets:[I

    add-int/lit8 v3, v9, 0x1

    aget v3, v1, v3

    move-object v1, p0

    move/from16 v4, p4

    move/from16 v5, p3

    move-object/from16 v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/text/pdf/CFFFontSubset;->CalcHints(IIII[I)I

    .line 686
    invoke-virtual {p0, v12}, Lcom/itextpdf/text/pdf/CFFFontSubset;->seek(I)V

    goto/16 :goto_0

    .line 690
    .end local v9           #Subr:I
    :cond_5
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v2, "hstem"

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v2, "vstem"

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v2, "hstemhm"

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v2, "vstemhm"

    if-ne v1, v2, :cond_7

    .line 692
    :cond_6
    iget v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NumOfHints:I

    div-int/lit8 v2, v7, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NumOfHints:I

    goto/16 :goto_0

    .line 694
    :cond_7
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v2, "hintmask"

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v2, "cntrmask"

    if-ne v1, v2, :cond_0

    .line 697
    :cond_8
    iget v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NumOfHints:I

    div-int/lit8 v8, v1, 0x8

    .line 698
    .local v8, SizeOfMask:I
    iget v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NumOfHints:I

    rem-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_9

    if-nez v8, :cond_a

    .line 699
    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 701
    :cond_a
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v8, :cond_0

    .line 702
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard8()C

    .line 701
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 705
    .end local v7           #NumOfArgs:I
    .end local v8           #SizeOfMask:I
    .end local v11           #i:I
    .end local v12           #pos:I
    :cond_b
    return-void
.end method

.method protected ReadCommand()V
    .locals 13

    .prologue
    const/16 v12, 0x1c

    .line 795
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    .line 796
    const/4 v4, 0x0

    .line 798
    .local v4, gotKey:Z
    :cond_0
    :goto_0
    if-nez v4, :cond_8

    .line 800
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard8()C

    move-result v0

    .line 802
    .local v0, b0:C
    if-ne v0, v12, :cond_1

    .line 804
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard8()C

    move-result v2

    .line 805
    .local v2, first:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard8()C

    move-result v5

    .line 806
    .local v5, second:I
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->args:[Ljava/lang/Object;

    iget v9, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    shl-int/lit8 v10, v2, 0x8

    or-int/2addr v10, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 807
    iget v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    goto :goto_0

    .line 810
    .end local v2           #first:I
    .end local v5           #second:I
    :cond_1
    const/16 v8, 0x20

    if-lt v0, v8, :cond_2

    const/16 v8, 0xf6

    if-gt v0, v8, :cond_2

    .line 812
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->args:[Ljava/lang/Object;

    iget v9, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    add-int/lit16 v10, v0, -0x8b

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 813
    iget v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    goto :goto_0

    .line 816
    :cond_2
    const/16 v8, 0xf7

    if-lt v0, v8, :cond_3

    const/16 v8, 0xfa

    if-gt v0, v8, :cond_3

    .line 818
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard8()C

    move-result v7

    .line 819
    .local v7, w:I
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->args:[Ljava/lang/Object;

    iget v9, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    add-int/lit16 v10, v0, -0xf7

    mul-int/lit16 v10, v10, 0x100

    add-int/2addr v10, v7

    add-int/lit8 v10, v10, 0x6c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 820
    iget v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    goto :goto_0

    .line 823
    .end local v7           #w:I
    :cond_3
    const/16 v8, 0xfb

    if-lt v0, v8, :cond_4

    const/16 v8, 0xfe

    if-gt v0, v8, :cond_4

    .line 825
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard8()C

    move-result v7

    .line 826
    .restart local v7       #w:I
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->args:[Ljava/lang/Object;

    iget v9, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    add-int/lit16 v10, v0, -0xfb

    neg-int v10, v10

    mul-int/lit16 v10, v10, 0x100

    sub-int/2addr v10, v7

    add-int/lit8 v10, v10, -0x6c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 827
    iget v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    goto/16 :goto_0

    .line 830
    .end local v7           #w:I
    :cond_4
    const/16 v8, 0xff

    if-ne v0, v8, :cond_5

    .line 832
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard8()C

    move-result v2

    .line 833
    .restart local v2       #first:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard8()C

    move-result v5

    .line 834
    .restart local v5       #second:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard8()C

    move-result v6

    .line 835
    .local v6, third:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard8()C

    move-result v3

    .line 836
    .local v3, fourth:I
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->args:[Ljava/lang/Object;

    iget v9, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    shl-int/lit8 v10, v2, 0x18

    shl-int/lit8 v11, v5, 0x10

    or-int/2addr v10, v11

    shl-int/lit8 v11, v6, 0x8

    or-int/2addr v10, v11

    or-int/2addr v10, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 837
    iget v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->arg_count:I

    goto/16 :goto_0

    .line 840
    .end local v2           #first:I
    .end local v3           #fourth:I
    .end local v5           #second:I
    .end local v6           #third:I
    :cond_5
    const/16 v8, 0x1f

    if-gt v0, v8, :cond_0

    if-eq v0, v12, :cond_0

    .line 842
    const/4 v4, 0x1

    .line 845
    const/16 v8, 0xc

    if-ne v0, v8, :cond_7

    .line 847
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard8()C

    move-result v1

    .line 848
    .local v1, b1:I
    sget-object v8, Lcom/itextpdf/text/pdf/CFFFontSubset;->SubrsEscapeFuncs:[Ljava/lang/String;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-le v1, v8, :cond_6

    .line 849
    sget-object v8, Lcom/itextpdf/text/pdf/CFFFontSubset;->SubrsEscapeFuncs:[Ljava/lang/String;

    array-length v8, v8

    add-int/lit8 v1, v8, -0x1

    .line 850
    :cond_6
    sget-object v8, Lcom/itextpdf/text/pdf/CFFFontSubset;->SubrsEscapeFuncs:[Ljava/lang/String;

    aget-object v8, v8, v1

    iput-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    goto/16 :goto_0

    .line 853
    .end local v1           #b1:I
    :cond_7
    sget-object v8, Lcom/itextpdf/text/pdf/CFFFontSubset;->SubrsFunctions:[Ljava/lang/String;

    aget-object v8, v8, v0

    iput-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    goto/16 :goto_0

    .line 857
    .end local v0           #b0:C
    :cond_8
    return-void
.end method

.method protected ReadFDArray(I)V
    .locals 2
    .parameter "Font"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdarrayOffset:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->seek(I)V

    .line 341
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard16()C

    move-result v1

    iput v1, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->FDArrayCount:I

    .line 342
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard8()C

    move-result v1

    iput v1, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->FDArrayOffsize:I

    .line 345
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->FDArrayOffsize:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget v1, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->FDArrayOffsize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->FDArrayOffsize:I

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdarrayOffset:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getIndex(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->FDArrayOffsets:[I

    .line 348
    return-void
.end method

.method Reconstruct(I)V
    .locals 4
    .parameter "Font"

    .prologue
    .line 1400
    iget-object v3, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/itextpdf/text/pdf/CFFFont$Font;->FDArrayOffsets:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    new-array v0, v3, [Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;

    .line 1401
    .local v0, fdPrivate:[Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdprivateOffsets:[I

    array-length v3, v3

    new-array v1, v3, [Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;

    .line 1402
    .local v1, fdPrivateBase:[Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdprivateOffsets:[I

    array-length v3, v3

    new-array v2, v3, [Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;

    .line 1404
    .local v2, fdSubrs:[Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->ReconstructFDArray(I[Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V

    .line 1405
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/itextpdf/text/pdf/CFFFontSubset;->ReconstructPrivateDict(I[Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;[Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;[Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V

    .line 1406
    invoke-virtual {p0, p1, v1, v2}, Lcom/itextpdf/text/pdf/CFFFontSubset;->ReconstructPrivateSubrs(I[Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;[Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V

    .line 1407
    return-void
.end method

.method ReconstructFDArray(I[Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V
    .locals 12
    .parameter "Font"
    .parameter "fdPrivate"

    .prologue
    .line 1417
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v8, v8, p1

    iget v8, v8, Lcom/itextpdf/text/pdf/CFFFont$Font;->FDArrayCount:I

    iget-object v9, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v9, v9, p1

    iget v9, v9, Lcom/itextpdf/text/pdf/CFFFont$Font;->FDArrayOffsize:I

    const/4 v10, 0x1

    invoke-virtual {p0, v8, v9, v10}, Lcom/itextpdf/text/pdf/CFFFontSubset;->BuildIndexHeader(III)V

    .line 1420
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v8, v8, p1

    iget-object v8, v8, Lcom/itextpdf/text/pdf/CFFFont$Font;->FDArrayOffsets:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    new-array v3, v8, [Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;

    .line 1421
    .local v3, fdOffsets:[Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v8, v8, p1

    iget-object v8, v8, Lcom/itextpdf/text/pdf/CFFFont$Font;->FDArrayOffsets:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_0

    .line 1423
    new-instance v8, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;

    iget-object v9, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v9, v9, p1

    iget v9, v9, Lcom/itextpdf/text/pdf/CFFFont$Font;->FDArrayOffsize:I

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;-><init>(I)V

    aput-object v8, v3, v4

    .line 1424
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    aget-object v9, v3, v4

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1421
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1428
    :cond_0
    new-instance v2, Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;-><init>()V

    .line 1429
    .local v2, fdArrayBase:Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1435
    const/4 v5, 0x0

    .local v5, k:I
    :goto_1
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v8, v8, p1

    iget-object v8, v8, Lcom/itextpdf/text/pdf/CFFFont$Font;->FDArrayOffsets:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    if-ge v5, v8, :cond_4

    .line 1439
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v8, v8, p1

    iget-object v8, v8, Lcom/itextpdf/text/pdf/CFFFont$Font;->FDArrayOffsets:[I

    aget v8, v8, v5

    invoke-virtual {p0, v8}, Lcom/itextpdf/text/pdf/CFFFontSubset;->seek(I)V

    .line 1440
    :goto_2
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getPosition()I

    move-result v8

    iget-object v9, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v9, v9, p1

    iget-object v9, v9, Lcom/itextpdf/text/pdf/CFFFont$Font;->FDArrayOffsets:[I

    add-int/lit8 v10, v5, 0x1

    aget v9, v9, v10

    if-ge v8, v9, :cond_3

    .line 1442
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getPosition()I

    move-result v6

    .line 1443
    .local v6, p1:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getDictItem()V

    .line 1444
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getPosition()I

    move-result v7

    .line 1447
    .local v7, p2:I
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v9, "Private"

    if-ne v8, v9, :cond_2

    .line 1449
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->args:[Ljava/lang/Object;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1451
    .local v0, NewSize:I
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v8, v8, p1

    iget-object v8, v8, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdprivateOffsets:[I

    aget v8, v8, v5

    iget-object v9, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v9, v9, p1

    iget-object v9, v9, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdprivateLengths:[I

    aget v9, v9, v5

    invoke-virtual {p0, v8, v9}, Lcom/itextpdf/text/pdf/CFFFontSubset;->CalcSubrOffsetSize(II)I

    move-result v1

    .line 1453
    .local v1, OrgSubrsOffsetSize:I
    if-eqz v1, :cond_1

    .line 1454
    rsub-int/lit8 v8, v1, 0x5

    add-int/2addr v0, v8

    .line 1456
    :cond_1
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v9, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;

    invoke-direct {v9, v0}, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1457
    new-instance v8, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;

    invoke-direct {v8}, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;-><init>()V

    aput-object v8, p2, v5

    .line 1458
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    aget-object v9, p2, v5

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1459
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v9, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v10, 0x12

    invoke-direct {v9, v10}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1461
    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/CFFFontSubset;->seek(I)V

    goto :goto_2

    .line 1465
    .end local v0           #NewSize:I
    .end local v1           #OrgSubrsOffsetSize:I
    :cond_2
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v9, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;

    iget-object v10, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    sub-int v11, v7, v6

    invoke-direct {v9, v10, v6, v11}, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;II)V

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    .line 1469
    .end local v6           #p1:I
    .end local v7           #p2:I
    :cond_3
    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v9, Lcom/itextpdf/text/pdf/CFFFont$IndexMarkerItem;

    aget-object v10, v3, v5

    invoke-direct {v9, v10, v2}, Lcom/itextpdf/text/pdf/CFFFont$IndexMarkerItem;-><init>(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;)V

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1435
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1471
    :cond_4
    return-void
.end method

.method ReconstructPrivateDict(I[Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;[Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;[Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V
    .locals 7
    .parameter "Font"
    .parameter "fdPrivate"
    .parameter "fdPrivateBase"
    .parameter "fdSubrs"

    .prologue
    .line 1486
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdprivateOffsets:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1491
    iget-object v3, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v4, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;

    aget-object v5, p2, v0

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1492
    new-instance v3, Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;-><init>()V

    aput-object v3, p3, v0

    .line 1493
    iget-object v3, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    aget-object v4, p3, v0

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1495
    iget-object v3, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdprivateOffsets:[I

    aget v3, v3, v0

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/CFFFontSubset;->seek(I)V

    .line 1496
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getPosition()I

    move-result v3

    iget-object v4, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdprivateOffsets:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdprivateLengths:[I

    aget v5, v5, v0

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    .line 1498
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getPosition()I

    move-result v1

    .line 1499
    .local v1, p1:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getDictItem()V

    .line 1500
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getPosition()I

    move-result v2

    .line 1503
    .local v2, p2:I
    iget-object v3, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v4, "Subrs"

    if-ne v3, v4, :cond_0

    .line 1504
    new-instance v3, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;-><init>()V

    aput-object v3, p4, v0

    .line 1505
    iget-object v3, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    aget-object v4, p4, v0

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1506
    iget-object v3, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v4, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v5, 0x13

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 1510
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v4, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    sub-int v6, v2, v1

    invoke-direct {v4, v5, v1, v6}, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;II)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 1486
    .end local v1           #p1:I
    .end local v2           #p2:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1514
    :cond_2
    return-void
.end method

.method ReconstructPrivateSubrs(I[Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;[Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V
    .locals 6
    .parameter "Font"
    .parameter "fdPrivateBase"
    .parameter "fdSubrs"

    .prologue
    .line 1527
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdprivateLengths:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1531
    aget-object v1, p3, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/itextpdf/text/pdf/CFFFont$Font;->PrivateSubrsOffset:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    .line 1533
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v2, Lcom/itextpdf/text/pdf/CFFFont$SubrMarkerItem;

    aget-object v3, p3, v0

    aget-object v4, p2, v0

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/text/pdf/CFFFont$SubrMarkerItem;-><init>(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1534
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->OutputList:Ljava/util/LinkedList;

    new-instance v2, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;

    new-instance v3, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NewLSubrsIndex:[[B

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>([B)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->NewLSubrsIndex:[[B

    aget-object v5, v5, v0

    array-length v5, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;II)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1527
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1537
    :cond_1
    return-void
.end method

.method protected StackOpp()I
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "ifelse"

    if-ne v0, v1, :cond_0

    .line 742
    const/4 v0, -0x3

    .line 754
    :goto_0
    return v0

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "roll"

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "put"

    if-ne v0, v1, :cond_2

    .line 744
    :cond_1
    const/4 v0, -0x2

    goto :goto_0

    .line 745
    :cond_2
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "callsubr"

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "callgsubr"

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "add"

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "sub"

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "div"

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "mul"

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "drop"

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "and"

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "or"

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "eq"

    if-ne v0, v1, :cond_4

    .line 748
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 749
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "abs"

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "neg"

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "sqrt"

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "exch"

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "index"

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "get"

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "not"

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "return"

    if-ne v0, v1, :cond_6

    .line 751
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 752
    :cond_6
    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "random"

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->key:Ljava/lang/String;

    const-string v1, "dup"

    if-ne v0, v1, :cond_8

    .line 753
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 754
    :cond_8
    const/4 v0, 0x2

    goto/16 :goto_0
.end method

.method protected countEntireIndexRange(I)I
    .locals 5
    .parameter "indexOffset"

    .prologue
    .line 1577
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->seek(I)V

    .line 1579
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard16()C

    move-result v0

    .line 1581
    .local v0, count:I
    if-nez v0, :cond_0

    .line 1582
    const/4 v3, 0x2

    .line 1592
    :goto_0
    return v3

    .line 1586
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard8()C

    move-result v1

    .line 1588
    .local v1, indexOffSize:I
    add-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int v4, v0, v1

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/CFFFontSubset;->seek(I)V

    .line 1590
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getOffset(I)I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 1592
    .local v2, size:I
    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v2

    goto :goto_0
.end method

.method protected readFDSelect(I)V
    .locals 12
    .parameter "Font"

    .prologue
    .line 263
    iget-object v10, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v10, v10, p1

    iget v1, v10, Lcom/itextpdf/text/pdf/CFFFont$Font;->nglyphs:I

    .line 264
    .local v1, NumOfGlyphs:I
    new-array v0, v1, [I

    .line 266
    .local v0, FDSelect:[I
    iget-object v10, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v10, v10, p1

    iget v10, v10, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdselectOffset:I

    invoke-virtual {p0, v10}, Lcom/itextpdf/text/pdf/CFFFontSubset;->seek(I)V

    .line 268
    iget-object v10, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v10, v10, p1

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard8()C

    move-result v11

    iput v11, v10, Lcom/itextpdf/text/pdf/CFFFont$Font;->FDSelectFormat:I

    .line 270
    iget-object v10, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v10, v10, p1

    iget v10, v10, Lcom/itextpdf/text/pdf/CFFFont$Font;->FDSelectFormat:I

    packed-switch v10, :pswitch_data_0

    .line 312
    :goto_0
    :pswitch_0
    iget-object v10, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v10, v10, p1

    iput-object v0, v10, Lcom/itextpdf/text/pdf/CFFFont$Font;->FDSelect:[I

    .line 313
    return-void

    .line 274
    :pswitch_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard8()C

    move-result v10

    aput v10, v0, v4

    .line 274
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 280
    :cond_0
    iget-object v10, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v10, v10, p1

    iget-object v11, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v11, v11, p1

    iget v11, v11, Lcom/itextpdf/text/pdf/CFFFont$Font;->nglyphs:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lcom/itextpdf/text/pdf/CFFFont$Font;->FDSelectLength:I

    goto :goto_0

    .line 285
    .end local v4           #i:I
    :pswitch_2
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard16()C

    move-result v8

    .line 286
    .local v8, nRanges:I
    const/4 v6, 0x0

    .line 288
    .local v6, l:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard16()C

    move-result v3

    .line 289
    .local v3, first:I
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    if-ge v4, v8, :cond_2

    .line 292
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard8()C

    move-result v2

    .line 294
    .local v2, fd:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFontSubset;->getCard16()C

    move-result v7

    .line 296
    .local v7, last:I
    sub-int v9, v7, v3

    .line 297
    .local v9, steps:I
    const/4 v5, 0x0

    .local v5, k:I
    :goto_3
    if-ge v5, v9, :cond_1

    .line 299
    aput v2, v0, v6

    .line 300
    add-int/lit8 v6, v6, 0x1

    .line 297
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 303
    :cond_1
    move v3, v7

    .line 289
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 306
    .end local v2           #fd:I
    .end local v5           #k:I
    .end local v7           #last:I
    .end local v9           #steps:I
    :cond_2
    iget-object v10, p0, Lcom/itextpdf/text/pdf/CFFFontSubset;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v10, v10, p1

    mul-int/lit8 v11, v8, 0x3

    add-int/lit8 v11, v11, 0x3

    add-int/lit8 v11, v11, 0x2

    iput v11, v10, Lcom/itextpdf/text/pdf/CFFFont$Font;->FDSelectLength:I

    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
