.class public final Lcom/itextpdf/text/pdf/parser/InlineImageUtils;
.super Ljava/lang/Object;
.source "InlineImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/parser/InlineImageUtils$InlineImageParseException;
    }
.end annotation


# static fields
.field private static final inlineImageColorSpaceAbbreviationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/itextpdf/text/pdf/PdfName;",
            "Lcom/itextpdf/text/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field private static final inlineImageEntryAbbreviationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/itextpdf/text/pdf/PdfName;",
            "Lcom/itextpdf/text/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field private static final inlineImageFilterAbbreviationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/itextpdf/text/pdf/PdfName;",
            "Lcom/itextpdf/text/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageEntryAbbreviationMap:Ljava/util/Map;

    .line 90
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageEntryAbbreviationMap:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->BITSPERCOMPONENT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->BITSPERCOMPONENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageEntryAbbreviationMap:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageEntryAbbreviationMap:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DECODE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageEntryAbbreviationMap:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DECODEPARMS:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DECODEPARMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageEntryAbbreviationMap:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageEntryAbbreviationMap:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->HEIGHT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->HEIGHT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageEntryAbbreviationMap:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->IMAGEMASK:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->IMAGEMASK:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageEntryAbbreviationMap:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->INTENT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->INTENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageEntryAbbreviationMap:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->INTERPOLATE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->INTERPOLATE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageEntryAbbreviationMap:Ljava/util/Map;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->WIDTH:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->WIDTH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageEntryAbbreviationMap:Ljava/util/Map;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "BPC"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->BITSPERCOMPONENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageEntryAbbreviationMap:Ljava/util/Map;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "CS"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageEntryAbbreviationMap:Ljava/util/Map;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "D"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageEntryAbbreviationMap:Ljava/util/Map;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "DP"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DECODEPARMS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageEntryAbbreviationMap:Ljava/util/Map;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "F"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageEntryAbbreviationMap:Ljava/util/Map;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "H"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->HEIGHT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageEntryAbbreviationMap:Ljava/util/Map;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "IM"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->IMAGEMASK:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageEntryAbbreviationMap:Ljava/util/Map;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "I"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->INTERPOLATE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageEntryAbbreviationMap:Ljava/util/Map;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "W"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->WIDTH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageColorSpaceAbbreviationMap:Ljava/util/Map;

    .line 120
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageColorSpaceAbbreviationMap:Ljava/util/Map;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "G"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DEVICEGRAY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageColorSpaceAbbreviationMap:Ljava/util/Map;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "RGB"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DEVICERGB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageColorSpaceAbbreviationMap:Ljava/util/Map;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "CMYK"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DEVICECMYK:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageColorSpaceAbbreviationMap:Ljava/util/Map;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "I"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->INDEXED:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageFilterAbbreviationMap:Ljava/util/Map;

    .line 133
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageFilterAbbreviationMap:Ljava/util/Map;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "AHx"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ASCIIHEXDECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageFilterAbbreviationMap:Ljava/util/Map;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "A85"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ASCII85DECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageFilterAbbreviationMap:Ljava/util/Map;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "LZW"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->LZWDECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageFilterAbbreviationMap:Ljava/util/Map;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "Fl"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FLATEDECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageFilterAbbreviationMap:Ljava/util/Map;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "RL"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->RUNLENGTHDECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageFilterAbbreviationMap:Ljava/util/Map;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "CCF"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CCITTFAXDECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageFilterAbbreviationMap:Ljava/util/Map;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "DCT"

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DCTDECODE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeBytesPerRow(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;)I
    .locals 7
    .parameter "imageDictionary"
    .parameter "colorSpaceDic"

    .prologue
    .line 249
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->WIDTH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v5

    .line 250
    .local v5, wObj:Lcom/itextpdf/text/pdf/PdfNumber;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->BITSPERCOMPONENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v1

    .line 251
    .local v1, bpcObj:Lcom/itextpdf/text/pdf/PdfNumber;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->getComponentsPerPixel(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;)I

    move-result v3

    .line 253
    .local v3, cpp:I
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v4

    .line 254
    .local v4, w:I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v0

    .line 257
    .local v0, bpc:I
    :goto_0
    mul-int v6, v4, v0

    mul-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x7

    div-int/lit8 v2, v6, 0x8

    .line 259
    .local v2, bytesPerRow:I
    return v2

    .line 254
    .end local v0           #bpc:I
    .end local v2           #bytesPerRow:I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getAlternateValue(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;
    .locals 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 192
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    if-ne p0, v5, :cond_3

    .line 193
    instance-of v5, p1, Lcom/itextpdf/text/pdf/PdfName;

    if-eqz v5, :cond_1

    .line 194
    sget-object v5, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageFilterAbbreviationMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfName;

    .line 195
    .local v1, altValue:Lcom/itextpdf/text/pdf/PdfName;
    if-eqz v1, :cond_4

    .line 212
    .end local v1           #altValue:Lcom/itextpdf/text/pdf/PdfName;
    :cond_0
    :goto_0
    return-object v1

    .line 197
    :cond_1
    instance-of v5, p1, Lcom/itextpdf/text/pdf/PdfArray;

    if-eqz v5, :cond_4

    move-object v2, p1

    .line 198
    check-cast v2, Lcom/itextpdf/text/pdf/PdfArray;

    .line 199
    .local v2, array:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 200
    .local v0, altArray:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v3

    .line 201
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_2

    .line 202
    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->getAlternateValue(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 201
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 204
    goto :goto_0

    .line 206
    .end local v0           #altArray:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #array:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v3           #count:I
    .end local v4           #i:I
    :cond_3
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    if-ne p0, v5, :cond_4

    .line 207
    sget-object v5, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageColorSpaceAbbreviationMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfName;

    .line 208
    .restart local v1       #altValue:Lcom/itextpdf/text/pdf/PdfName;
    if-nez v1, :cond_0

    .end local v1           #altValue:Lcom/itextpdf/text/pdf/PdfName;
    :cond_4
    move-object v1, p1

    .line 212
    goto :goto_0
.end method

.method private static getComponentsPerPixel(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfDictionary;)I
    .locals 4
    .parameter "colorSpaceName"
    .parameter "colorSpaceDic"

    .prologue
    const/4 v1, 0x1

    .line 220
    if-nez p0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return v1

    .line 222
    :cond_1
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DEVICEGRAY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DEVICERGB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 225
    const/4 v1, 0x3

    goto :goto_0

    .line 226
    :cond_2
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DEVICECMYK:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    const/4 v1, 0x4

    goto :goto_0

    .line 229
    :cond_3
    if-eqz p1, :cond_4

    .line 230
    invoke-virtual {p1, p0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v0

    .line 231
    .local v0, colorSpace:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v0, :cond_4

    .line 232
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->INDEXED:Lcom/itextpdf/text/pdf/PdfName;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 238
    .end local v0           #colorSpace:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected color space "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseInlineImage(Lcom/itextpdf/text/pdf/PdfContentParser;Lcom/itextpdf/text/pdf/PdfDictionary;)Lcom/itextpdf/text/pdf/parser/InlineImageInfo;
    .locals 3
    .parameter "ps"
    .parameter "colorSpaceDic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {p0}, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->parseInlineImageDictionary(Lcom/itextpdf/text/pdf/PdfContentParser;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 153
    .local v0, inlineImageDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-static {v0, p1, p0}, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->parseInlineImageSamples(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfContentParser;)[B

    move-result-object v1

    .line 154
    .local v1, samples:[B
    new-instance v2, Lcom/itextpdf/text/pdf/parser/InlineImageInfo;

    invoke-direct {v2, v1, v0}, Lcom/itextpdf/text/pdf/parser/InlineImageInfo;-><init>([BLcom/itextpdf/text/pdf/PdfDictionary;)V

    return-object v2
.end method

.method private static parseInlineImageDictionary(Lcom/itextpdf/text/pdf/PdfContentParser;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 8
    .parameter "ps"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 168
    .local v1, dictionary:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentParser;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .local v2, key:Lcom/itextpdf/text/pdf/PdfObject;
    :goto_0
    if-eqz v2, :cond_1

    const-string v5, "ID"

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentParser;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 171
    .local v4, value:Lcom/itextpdf/text/pdf/PdfObject;
    sget-object v5, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->inlineImageEntryAbbreviationMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfName;

    .line 172
    .local v3, resolvedKey:Lcom/itextpdf/text/pdf/PdfName;
    if-nez v3, :cond_0

    move-object v3, v2

    .line 173
    check-cast v3, Lcom/itextpdf/text/pdf/PdfName;

    .line 175
    :cond_0
    invoke-static {v3, v4}, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->getAlternateValue(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 168
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentParser;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    goto :goto_0

    .line 178
    .end local v3           #resolvedKey:Lcom/itextpdf/text/pdf/PdfName;
    .end local v4           #value:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfContentParser;->getTokeniser()Lcom/itextpdf/text/pdf/PRTokeniser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PRTokeniser;->read()I

    move-result v0

    .line 179
    .local v0, ch:I
    invoke-static {v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->isWhitespace(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 180
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected character "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " found after ID in inline image"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 182
    :cond_2
    return-object v1
.end method

.method private static parseInlineImageSamples(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfContentParser;)[B
    .locals 7
    .parameter "imageDictionary"
    .parameter "colorSpaceDic"
    .parameter "ps"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 319
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 320
    invoke-static {p0, p1, p2}, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->parseUnfilteredSamples(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfContentParser;)[B

    move-result-object v5

    .line 355
    :goto_0
    return-object v5

    .line 330
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 331
    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 333
    .local v0, accumulated:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 334
    .local v3, found:I
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfContentParser;->getTokeniser()Lcom/itextpdf/text/pdf/PRTokeniser;

    move-result-object v4

    .line 336
    .local v4, tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;
    :goto_1
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRTokeniser;->read()I

    move-result v2

    .local v2, ch:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_6

    .line 337
    if-nez v3, :cond_1

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->isWhitespace(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 338
    add-int/lit8 v3, v3, 0x1

    .line 339
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 340
    :cond_1
    if-ne v3, v6, :cond_2

    const/16 v5, 0x45

    if-ne v2, v5, :cond_2

    .line 341
    add-int/lit8 v3, v3, 0x1

    .line 342
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 343
    :cond_2
    if-ne v3, v6, :cond_3

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->isWhitespace(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 348
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 349
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 350
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 351
    :cond_3
    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    const/16 v5, 0x49

    if-ne v2, v5, :cond_4

    .line 352
    add-int/lit8 v3, v3, 0x1

    .line 353
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 354
    :cond_4
    const/4 v5, 0x3

    if-ne v3, v5, :cond_5

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PRTokeniser;->isWhitespace(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 355
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    goto :goto_0

    .line 357
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 358
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 360
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 361
    const/4 v3, 0x0

    goto :goto_1

    .line 364
    :cond_6
    new-instance v5, Lcom/itextpdf/text/pdf/parser/InlineImageUtils$InlineImageParseException;

    const-string v6, "Could not find image data or EI"

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/parser/InlineImageUtils$InlineImageParseException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static parseUnfilteredSamples(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfContentParser;)[B
    .locals 11
    .parameter "imageDictionary"
    .parameter "colorSpaceDic"
    .parameter "ps"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 276
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Dictionary contains filters"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 278
    :cond_0
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->HEIGHT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v4

    .line 280
    .local v4, h:Lcom/itextpdf/text/pdf/PdfNumber;
    invoke-static {p0, p1}, Lcom/itextpdf/text/pdf/parser/InlineImageUtils;->computeBytesPerRow(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;)I

    move-result v9

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v10

    mul-int v1, v9, v10

    .line 281
    .local v1, bytesToRead:I
    new-array v0, v1, [B

    .line 282
    .local v0, bytes:[B
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfContentParser;->getTokeniser()Lcom/itextpdf/text/pdf/PRTokeniser;

    move-result-object v8

    .line 284
    .local v8, tokeniser:Lcom/itextpdf/text/pdf/PRTokeniser;
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PRTokeniser;->read()I

    move-result v6

    .line 287
    .local v6, shouldBeWhiteSpace:I
    const/4 v7, 0x0

    .line 288
    .local v7, startIndex:I
    invoke-static {v6}, Lcom/itextpdf/text/pdf/PRTokeniser;->isWhitespace(I)Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez v6, :cond_2

    .line 289
    :cond_1
    const/4 v9, 0x0

    int-to-byte v10, v6

    aput-byte v10, v0, v9

    .line 290
    add-int/lit8 v7, v7, 0x1

    .line 292
    :cond_2
    move v5, v7

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_4

    .line 293
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PRTokeniser;->read()I

    move-result v2

    .line 294
    .local v2, ch:I
    const/4 v9, -0x1

    if-ne v2, v9, :cond_3

    .line 295
    new-instance v9, Lcom/itextpdf/text/pdf/parser/InlineImageUtils$InlineImageParseException;

    const-string v10, "End of content stream reached before end of image data"

    invoke-direct {v9, v10}, Lcom/itextpdf/text/pdf/parser/InlineImageUtils$InlineImageParseException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 297
    :cond_3
    int-to-byte v9, v2

    aput-byte v9, v0, v5

    .line 292
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 299
    .end local v2           #ch:I
    :cond_4
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfContentParser;->readPRObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 300
    .local v3, ei:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "EI"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 301
    new-instance v9, Lcom/itextpdf/text/pdf/parser/InlineImageUtils$InlineImageParseException;

    const-string v10, "EI not found after end of image data"

    invoke-direct {v9, v10}, Lcom/itextpdf/text/pdf/parser/InlineImageUtils$InlineImageParseException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 303
    :cond_5
    return-object v0
.end method
