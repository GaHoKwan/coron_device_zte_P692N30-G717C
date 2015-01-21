.class public Lcom/itextpdf/text/pdf/PdfEncodings;
.super Ljava/lang/Object;
.source "PdfEncodings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PdfEncodings$1;,
        Lcom/itextpdf/text/pdf/PdfEncodings$SymbolTTConversion;,
        Lcom/itextpdf/text/pdf/PdfEncodings$SymbolConversion;,
        Lcom/itextpdf/text/pdf/PdfEncodings$Cp437Conversion;,
        Lcom/itextpdf/text/pdf/PdfEncodings$WingdingsConversion;
    }
.end annotation


# static fields
.field static extraEncodings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/ExtraEncoding;",
            ">;"
        }
    .end annotation
.end field

.field static final pdfEncoding:Lcom/itextpdf/text/pdf/IntHashtable;

.field static final pdfEncodingByteToChar:[C

.field static final winansi:Lcom/itextpdf/text/pdf/IntHashtable;

.field static final winansiByteToChar:[C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v6, 0xfffd

    const/16 v4, 0x100

    const/16 v3, 0xa1

    const/4 v5, 0x0

    .line 60
    new-array v2, v4, [C

    fill-array-data v2, :array_0

    sput-object v2, Lcom/itextpdf/text/pdf/PdfEncodings;->winansiByteToChar:[C

    .line 78
    new-array v2, v4, [C

    fill-array-data v2, :array_1

    sput-object v2, Lcom/itextpdf/text/pdf/PdfEncodings;->pdfEncodingByteToChar:[C

    .line 96
    new-instance v2, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    sput-object v2, Lcom/itextpdf/text/pdf/PdfEncodings;->winansi:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 98
    new-instance v2, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    sput-object v2, Lcom/itextpdf/text/pdf/PdfEncodings;->pdfEncoding:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 100
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/itextpdf/text/pdf/PdfEncodings;->extraEncodings:Ljava/util/HashMap;

    .line 103
    const/16 v1, 0x80

    .local v1, k:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 104
    sget-object v2, Lcom/itextpdf/text/pdf/PdfEncodings;->winansiByteToChar:[C

    aget-char v0, v2, v1

    .line 105
    .local v0, c:C
    if-eq v0, v6, :cond_0

    .line 106
    sget-object v2, Lcom/itextpdf/text/pdf/PdfEncodings;->winansi:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v2, v0, v1}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 103
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v0           #c:C
    :cond_1
    const/16 v1, 0x80

    :goto_1
    if-ge v1, v3, :cond_3

    .line 110
    sget-object v2, Lcom/itextpdf/text/pdf/PdfEncodings;->pdfEncodingByteToChar:[C

    aget-char v0, v2, v1

    .line 111
    .restart local v0       #c:C
    if-eq v0, v6, :cond_2

    .line 112
    sget-object v2, Lcom/itextpdf/text/pdf/PdfEncodings;->pdfEncoding:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v2, v0, v1}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 109
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 115
    .end local v0           #c:C
    :cond_3
    const-string v2, "Wingdings"

    new-instance v3, Lcom/itextpdf/text/pdf/PdfEncodings$WingdingsConversion;

    invoke-direct {v3, v5}, Lcom/itextpdf/text/pdf/PdfEncodings$WingdingsConversion;-><init>(Lcom/itextpdf/text/pdf/PdfEncodings$1;)V

    invoke-static {v2, v3}, Lcom/itextpdf/text/pdf/PdfEncodings;->addExtraEncoding(Ljava/lang/String;Lcom/itextpdf/text/pdf/ExtraEncoding;)V

    .line 116
    const-string v2, "Symbol"

    new-instance v3, Lcom/itextpdf/text/pdf/PdfEncodings$SymbolConversion;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfEncodings$SymbolConversion;-><init>(Z)V

    invoke-static {v2, v3}, Lcom/itextpdf/text/pdf/PdfEncodings;->addExtraEncoding(Ljava/lang/String;Lcom/itextpdf/text/pdf/ExtraEncoding;)V

    .line 117
    const-string v2, "ZapfDingbats"

    new-instance v3, Lcom/itextpdf/text/pdf/PdfEncodings$SymbolConversion;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfEncodings$SymbolConversion;-><init>(Z)V

    invoke-static {v2, v3}, Lcom/itextpdf/text/pdf/PdfEncodings;->addExtraEncoding(Ljava/lang/String;Lcom/itextpdf/text/pdf/ExtraEncoding;)V

    .line 118
    const-string v2, "SymbolTT"

    new-instance v3, Lcom/itextpdf/text/pdf/PdfEncodings$SymbolTTConversion;

    invoke-direct {v3, v5}, Lcom/itextpdf/text/pdf/PdfEncodings$SymbolTTConversion;-><init>(Lcom/itextpdf/text/pdf/PdfEncodings$1;)V

    invoke-static {v2, v3}, Lcom/itextpdf/text/pdf/PdfEncodings;->addExtraEncoding(Ljava/lang/String;Lcom/itextpdf/text/pdf/ExtraEncoding;)V

    .line 119
    const-string v2, "Cp437"

    new-instance v3, Lcom/itextpdf/text/pdf/PdfEncodings$Cp437Conversion;

    invoke-direct {v3, v5}, Lcom/itextpdf/text/pdf/PdfEncodings$Cp437Conversion;-><init>(Lcom/itextpdf/text/pdf/PdfEncodings$1;)V

    invoke-static {v2, v3}, Lcom/itextpdf/text/pdf/PdfEncodings;->addExtraEncoding(Ljava/lang/String;Lcom/itextpdf/text/pdf/ExtraEncoding;)V

    .line 120
    return-void

    .line 60
    :array_0
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0xat 0x0t
        0xbt 0x0t
        0xct 0x0t
        0xdt 0x0t
        0xet 0x0t
        0xft 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x13t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x19t 0x0t
        0x1at 0x0t
        0x1bt 0x0t
        0x1ct 0x0t
        0x1dt 0x0t
        0x1et 0x0t
        0x1ft 0x0t
        0x20t 0x0t
        0x21t 0x0t
        0x22t 0x0t
        0x23t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x26t 0x0t
        0x27t 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2ct 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x2ft 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x3ct 0x0t
        0x3dt 0x0t
        0x3et 0x0t
        0x3ft 0x0t
        0x40t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x5bt 0x0t
        0x5ct 0x0t
        0x5dt 0x0t
        0x5et 0x0t
        0x5ft 0x0t
        0x60t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x7bt 0x0t
        0x7ct 0x0t
        0x7dt 0x0t
        0x7et 0x0t
        0x7ft 0x0t
        0xact 0x20t
        0xfdt 0xfft
        0x1at 0x20t
        0x92t 0x1t
        0x1et 0x20t
        0x26t 0x20t
        0x20t 0x20t
        0x21t 0x20t
        0xc6t 0x2t
        0x30t 0x20t
        0x60t 0x1t
        0x39t 0x20t
        0x52t 0x1t
        0xfdt 0xfft
        0x7dt 0x1t
        0xfdt 0xfft
        0xfdt 0xfft
        0x18t 0x20t
        0x19t 0x20t
        0x1ct 0x20t
        0x1dt 0x20t
        0x22t 0x20t
        0x13t 0x20t
        0x14t 0x20t
        0xdct 0x2t
        0x22t 0x21t
        0x61t 0x1t
        0x3at 0x20t
        0x53t 0x1t
        0xfdt 0xfft
        0x7et 0x1t
        0x78t 0x1t
        0xa0t 0x0t
        0xa1t 0x0t
        0xa2t 0x0t
        0xa3t 0x0t
        0xa4t 0x0t
        0xa5t 0x0t
        0xa6t 0x0t
        0xa7t 0x0t
        0xa8t 0x0t
        0xa9t 0x0t
        0xaat 0x0t
        0xabt 0x0t
        0xact 0x0t
        0xadt 0x0t
        0xaet 0x0t
        0xaft 0x0t
        0xb0t 0x0t
        0xb1t 0x0t
        0xb2t 0x0t
        0xb3t 0x0t
        0xb4t 0x0t
        0xb5t 0x0t
        0xb6t 0x0t
        0xb7t 0x0t
        0xb8t 0x0t
        0xb9t 0x0t
        0xbat 0x0t
        0xbbt 0x0t
        0xbct 0x0t
        0xbdt 0x0t
        0xbet 0x0t
        0xbft 0x0t
        0xc0t 0x0t
        0xc1t 0x0t
        0xc2t 0x0t
        0xc3t 0x0t
        0xc4t 0x0t
        0xc5t 0x0t
        0xc6t 0x0t
        0xc7t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
        0xcat 0x0t
        0xcbt 0x0t
        0xcct 0x0t
        0xcdt 0x0t
        0xcet 0x0t
        0xcft 0x0t
        0xd0t 0x0t
        0xd1t 0x0t
        0xd2t 0x0t
        0xd3t 0x0t
        0xd4t 0x0t
        0xd5t 0x0t
        0xd6t 0x0t
        0xd7t 0x0t
        0xd8t 0x0t
        0xd9t 0x0t
        0xdat 0x0t
        0xdbt 0x0t
        0xdct 0x0t
        0xddt 0x0t
        0xdet 0x0t
        0xdft 0x0t
        0xe0t 0x0t
        0xe1t 0x0t
        0xe2t 0x0t
        0xe3t 0x0t
        0xe4t 0x0t
        0xe5t 0x0t
        0xe6t 0x0t
        0xe7t 0x0t
        0xe8t 0x0t
        0xe9t 0x0t
        0xeat 0x0t
        0xebt 0x0t
        0xect 0x0t
        0xedt 0x0t
        0xeet 0x0t
        0xeft 0x0t
        0xf0t 0x0t
        0xf1t 0x0t
        0xf2t 0x0t
        0xf3t 0x0t
        0xf4t 0x0t
        0xf5t 0x0t
        0xf6t 0x0t
        0xf7t 0x0t
        0xf8t 0x0t
        0xf9t 0x0t
        0xfat 0x0t
        0xfbt 0x0t
        0xfct 0x0t
        0xfdt 0x0t
        0xfet 0x0t
        0xfft 0x0t
    .end array-data

    .line 78
    :array_1
    .array-data 0x2
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0xat 0x0t
        0xbt 0x0t
        0xct 0x0t
        0xdt 0x0t
        0xet 0x0t
        0xft 0x0t
        0x10t 0x0t
        0x11t 0x0t
        0x12t 0x0t
        0x13t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x19t 0x0t
        0x1at 0x0t
        0x1bt 0x0t
        0x1ct 0x0t
        0x1dt 0x0t
        0x1et 0x0t
        0x1ft 0x0t
        0x20t 0x0t
        0x21t 0x0t
        0x22t 0x0t
        0x23t 0x0t
        0x24t 0x0t
        0x25t 0x0t
        0x26t 0x0t
        0x27t 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2ct 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x2ft 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x3at 0x0t
        0x3bt 0x0t
        0x3ct 0x0t
        0x3dt 0x0t
        0x3et 0x0t
        0x3ft 0x0t
        0x40t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4dt 0x0t
        0x4et 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x5bt 0x0t
        0x5ct 0x0t
        0x5dt 0x0t
        0x5et 0x0t
        0x5ft 0x0t
        0x60t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x7bt 0x0t
        0x7ct 0x0t
        0x7dt 0x0t
        0x7et 0x0t
        0x7ft 0x0t
        0x22t 0x20t
        0x20t 0x20t
        0x21t 0x20t
        0x26t 0x20t
        0x14t 0x20t
        0x13t 0x20t
        0x92t 0x1t
        0x44t 0x20t
        0x39t 0x20t
        0x3at 0x20t
        0x12t 0x22t
        0x30t 0x20t
        0x1et 0x20t
        0x1ct 0x20t
        0x1dt 0x20t
        0x18t 0x20t
        0x19t 0x20t
        0x1at 0x20t
        0x22t 0x21t
        0x1t 0xfbt
        0x2t 0xfbt
        0x41t 0x1t
        0x52t 0x1t
        0x60t 0x1t
        0x78t 0x1t
        0x7dt 0x1t
        0x31t 0x1t
        0x42t 0x1t
        0x53t 0x1t
        0x61t 0x1t
        0x7et 0x1t
        0xfdt 0xfft
        0xact 0x20t
        0xa1t 0x0t
        0xa2t 0x0t
        0xa3t 0x0t
        0xa4t 0x0t
        0xa5t 0x0t
        0xa6t 0x0t
        0xa7t 0x0t
        0xa8t 0x0t
        0xa9t 0x0t
        0xaat 0x0t
        0xabt 0x0t
        0xact 0x0t
        0xadt 0x0t
        0xaet 0x0t
        0xaft 0x0t
        0xb0t 0x0t
        0xb1t 0x0t
        0xb2t 0x0t
        0xb3t 0x0t
        0xb4t 0x0t
        0xb5t 0x0t
        0xb6t 0x0t
        0xb7t 0x0t
        0xb8t 0x0t
        0xb9t 0x0t
        0xbat 0x0t
        0xbbt 0x0t
        0xbct 0x0t
        0xbdt 0x0t
        0xbet 0x0t
        0xbft 0x0t
        0xc0t 0x0t
        0xc1t 0x0t
        0xc2t 0x0t
        0xc3t 0x0t
        0xc4t 0x0t
        0xc5t 0x0t
        0xc6t 0x0t
        0xc7t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
        0xcat 0x0t
        0xcbt 0x0t
        0xcct 0x0t
        0xcdt 0x0t
        0xcet 0x0t
        0xcft 0x0t
        0xd0t 0x0t
        0xd1t 0x0t
        0xd2t 0x0t
        0xd3t 0x0t
        0xd4t 0x0t
        0xd5t 0x0t
        0xd6t 0x0t
        0xd7t 0x0t
        0xd8t 0x0t
        0xd9t 0x0t
        0xdat 0x0t
        0xdbt 0x0t
        0xdct 0x0t
        0xddt 0x0t
        0xdet 0x0t
        0xdft 0x0t
        0xe0t 0x0t
        0xe1t 0x0t
        0xe2t 0x0t
        0xe3t 0x0t
        0xe4t 0x0t
        0xe5t 0x0t
        0xe6t 0x0t
        0xe7t 0x0t
        0xe8t 0x0t
        0xe9t 0x0t
        0xeat 0x0t
        0xebt 0x0t
        0xect 0x0t
        0xedt 0x0t
        0xeet 0x0t
        0xeft 0x0t
        0xf0t 0x0t
        0xf1t 0x0t
        0xf2t 0x0t
        0xf3t 0x0t
        0xf4t 0x0t
        0xf5t 0x0t
        0xf6t 0x0t
        0xf7t 0x0t
        0xf8t 0x0t
        0xf9t 0x0t
        0xfat 0x0t
        0xfbt 0x0t
        0xfct 0x0t
        0xfdt 0x0t
        0xfet 0x0t
        0xfft 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    return-void
.end method

.method public static addExtraEncoding(Ljava/lang/String;Lcom/itextpdf/text/pdf/ExtraEncoding;)V
    .locals 3
    .parameter "name"
    .parameter "enc"

    .prologue
    .line 325
    sget-object v2, Lcom/itextpdf/text/pdf/PdfEncodings;->extraEncodings:Ljava/util/HashMap;

    monitor-enter v2

    .line 326
    :try_start_0
    sget-object v1, Lcom/itextpdf/text/pdf/PdfEncodings;->extraEncodings:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 327
    .local v0, newEncodings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/ExtraEncoding;>;"
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sput-object v0, Lcom/itextpdf/text/pdf/PdfEncodings;->extraEncodings:Ljava/util/HashMap;

    .line 329
    monitor-exit v2

    .line 330
    return-void

    .line 329
    .end local v0           #newEncodings:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/ExtraEncoding;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static final convertToBytes(CLjava/lang/String;)[B
    .locals 13
    .parameter "char1"
    .parameter "encoding"

    .prologue
    .line 209
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_2

    .line 210
    :cond_0
    const/4 v11, 0x1

    new-array v0, v11, [B

    const/4 v11, 0x0

    int-to-byte v12, p0

    aput-byte v12, v0, v11

    .line 252
    :cond_1
    :goto_0
    return-object v0

    .line 211
    :cond_2
    sget-object v11, Lcom/itextpdf/text/pdf/PdfEncodings;->extraEncodings:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/ExtraEncoding;

    .line 212
    .local v8, extra:Lcom/itextpdf/text/pdf/ExtraEncoding;
    if-eqz v8, :cond_3

    .line 213
    invoke-interface {v8, p0, p1}, Lcom/itextpdf/text/pdf/ExtraEncoding;->charToByte(CLjava/lang/String;)[B

    move-result-object v0

    .line 214
    .local v0, b:[B
    if-nez v0, :cond_1

    .line 217
    .end local v0           #b:[B
    :cond_3
    const/4 v9, 0x0

    .line 218
    .local v9, hash:Lcom/itextpdf/text/pdf/IntHashtable;
    const-string v11, "Cp1252"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 219
    sget-object v9, Lcom/itextpdf/text/pdf/PdfEncodings;->winansi:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 222
    :cond_4
    :goto_1
    if-eqz v9, :cond_9

    .line 223
    const/4 v3, 0x0

    .line 224
    .local v3, c:I
    const/16 v11, 0x80

    if-lt p0, v11, :cond_5

    const/16 v11, 0xa0

    if-le p0, v11, :cond_7

    const/16 v11, 0xff

    if-gt p0, v11, :cond_7

    .line 225
    :cond_5
    move v3, p0

    .line 228
    :goto_2
    if-eqz v3, :cond_8

    .line 229
    const/4 v11, 0x1

    new-array v0, v11, [B

    const/4 v11, 0x0

    int-to-byte v12, v3

    aput-byte v12, v0, v11

    goto :goto_0

    .line 220
    .end local v3           #c:I
    :cond_6
    const-string v11, "PDF"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 221
    sget-object v9, Lcom/itextpdf/text/pdf/PdfEncodings;->pdfEncoding:Lcom/itextpdf/text/pdf/IntHashtable;

    goto :goto_1

    .line 227
    .restart local v3       #c:I
    :cond_7
    invoke-virtual {v9, p0}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v3

    goto :goto_2

    .line 231
    :cond_8
    const/4 v11, 0x0

    new-array v0, v11, [B

    goto :goto_0

    .line 233
    .end local v3           #c:I
    :cond_9
    const-string v11, "UnicodeBig"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 235
    const/4 v11, 0x4

    new-array v0, v11, [B

    .line 236
    .restart local v0       #b:[B
    const/4 v11, 0x0

    const/4 v12, -0x2

    aput-byte v12, v0, v11

    .line 237
    const/4 v11, 0x1

    const/4 v12, -0x1

    aput-byte v12, v0, v11

    .line 238
    const/4 v11, 0x2

    shr-int/lit8 v12, p0, 0x8

    int-to-byte v12, v12

    aput-byte v12, v0, v11

    .line 239
    const/4 v11, 0x3

    and-int/lit16 v12, p0, 0xff

    int-to-byte v12, v12

    aput-byte v12, v0, v11

    goto :goto_0

    .line 243
    .end local v0           #b:[B
    :cond_a
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    .line 244
    .local v5, cc:Ljava/nio/charset/Charset;
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v6

    .line 245
    .local v6, ce:Ljava/nio/charset/CharsetEncoder;
    sget-object v11, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v6, v11}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 246
    const/4 v11, 0x1

    new-array v11, v11, [C

    const/4 v12, 0x0

    aput-char p0, v11, v12

    invoke-static {v11}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v4

    .line 247
    .local v4, cb:Ljava/nio/CharBuffer;
    invoke-virtual {v6, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 248
    .local v1, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 249
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    .line 250
    .local v10, lim:I
    new-array v2, v10, [B

    .line 251
    .local v2, br:[B
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 252
    goto/16 :goto_0

    .line 254
    .end local v1           #bb:Ljava/nio/ByteBuffer;
    .end local v2           #br:[B
    .end local v4           #cb:Ljava/nio/CharBuffer;
    .end local v5           #cc:Ljava/nio/charset/Charset;
    .end local v6           #ce:Ljava/nio/charset/CharsetEncoder;
    .end local v10           #lim:I
    :catch_0
    move-exception v7

    .line 255
    .local v7, e:Ljava/io/IOException;
    new-instance v11, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v11, v7}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v11
.end method

.method public static final convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 24
    .parameter "text"
    .parameter "encoding"

    .prologue
    .line 129
    if-nez p0, :cond_1

    .line 130
    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v3, v0, [B

    .line 195
    :cond_0
    :goto_0
    return-object v3

    .line 131
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v22

    if-nez v22, :cond_3

    .line 132
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    .line 133
    .local v18, len:I
    move/from16 v0, v18

    new-array v3, v0, [B

    .line 134
    .local v3, b:[B
    const/16 v17, 0x0

    .local v17, k:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 135
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v22

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v3, v17

    .line 134
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 138
    .end local v3           #b:[B
    .end local v17           #k:I
    .end local v18           #len:I
    :cond_3
    sget-object v22, Lcom/itextpdf/text/pdf/PdfEncodings;->extraEncodings:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/itextpdf/text/pdf/ExtraEncoding;

    .line 139
    .local v15, extra:Lcom/itextpdf/text/pdf/ExtraEncoding;
    if-eqz v15, :cond_4

    .line 140
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v15, v0, v1}, Lcom/itextpdf/text/pdf/ExtraEncoding;->charToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 141
    .restart local v3       #b:[B
    if-nez v3, :cond_0

    .line 144
    .end local v3           #b:[B
    :cond_4
    const/16 v16, 0x0

    .line 145
    .local v16, hash:Lcom/itextpdf/text/pdf/IntHashtable;
    const-string v22, "Cp1252"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 146
    sget-object v16, Lcom/itextpdf/text/pdf/PdfEncodings;->winansi:Lcom/itextpdf/text/pdf/IntHashtable;

    .line 149
    :cond_5
    :goto_2
    if-eqz v16, :cond_a

    .line 150
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    .line 151
    .local v11, cc:[C
    array-length v0, v11

    move/from16 v18, v0

    .line 152
    .restart local v18       #len:I
    const/16 v20, 0x0

    .line 153
    .local v20, ptr:I
    move/from16 v0, v18

    new-array v3, v0, [B

    .line 154
    .restart local v3       #b:[B
    const/4 v9, 0x0

    .line 155
    .local v9, c:I
    const/16 v17, 0x0

    .restart local v17       #k:I
    move/from16 v21, v20

    .end local v20           #ptr:I
    .local v21, ptr:I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 156
    aget-char v13, v11, v17

    .line 157
    .local v13, char1:C
    const/16 v22, 0x80

    move/from16 v0, v22

    if-lt v13, v0, :cond_6

    const/16 v22, 0xa0

    move/from16 v0, v22

    if-le v13, v0, :cond_8

    const/16 v22, 0xff

    move/from16 v0, v22

    if-gt v13, v0, :cond_8

    .line 158
    :cond_6
    move v9, v13

    .line 161
    :goto_4
    if-eqz v9, :cond_c

    .line 162
    add-int/lit8 v20, v21, 0x1

    .end local v21           #ptr:I
    .restart local v20       #ptr:I
    int-to-byte v0, v9

    move/from16 v22, v0

    aput-byte v22, v3, v21

    .line 155
    :goto_5
    add-int/lit8 v17, v17, 0x1

    move/from16 v21, v20

    .end local v20           #ptr:I
    .restart local v21       #ptr:I
    goto :goto_3

    .line 147
    .end local v3           #b:[B
    .end local v9           #c:I
    .end local v11           #cc:[C
    .end local v13           #char1:C
    .end local v17           #k:I
    .end local v18           #len:I
    .end local v21           #ptr:I
    :cond_7
    const-string v22, "PDF"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 148
    sget-object v16, Lcom/itextpdf/text/pdf/PdfEncodings;->pdfEncoding:Lcom/itextpdf/text/pdf/IntHashtable;

    goto :goto_2

    .line 160
    .restart local v3       #b:[B
    .restart local v9       #c:I
    .restart local v11       #cc:[C
    .restart local v13       #char1:C
    .restart local v17       #k:I
    .restart local v18       #len:I
    .restart local v21       #ptr:I
    :cond_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v9

    goto :goto_4

    .line 164
    .end local v13           #char1:C
    :cond_9
    move/from16 v0, v21

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 166
    move/from16 v0, v21

    new-array v4, v0, [B

    .line 167
    .local v4, b2:[B
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-static {v3, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    .line 168
    goto/16 :goto_0

    .line 170
    .end local v3           #b:[B
    .end local v4           #b2:[B
    .end local v9           #c:I
    .end local v11           #cc:[C
    .end local v17           #k:I
    .end local v18           #len:I
    .end local v21           #ptr:I
    :cond_a
    const-string v22, "UnicodeBig"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 172
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    .line 173
    .restart local v11       #cc:[C
    array-length v0, v11

    move/from16 v18, v0

    .line 174
    .restart local v18       #len:I
    array-length v0, v11

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    new-array v3, v0, [B

    .line 175
    .restart local v3       #b:[B
    const/16 v22, 0x0

    const/16 v23, -0x2

    aput-byte v23, v3, v22

    .line 176
    const/16 v22, 0x1

    const/16 v23, -0x1

    aput-byte v23, v3, v22

    .line 177
    const/4 v6, 0x2

    .line 178
    .local v6, bptr:I
    const/16 v17, 0x0

    .restart local v17       #k:I
    move v7, v6

    .end local v6           #bptr:I
    .local v7, bptr:I
    :goto_6
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 179
    aget-char v9, v11, v17

    .line 180
    .local v9, c:C
    add-int/lit8 v6, v7, 0x1

    .end local v7           #bptr:I
    .restart local v6       #bptr:I
    shr-int/lit8 v22, v9, 0x8

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v3, v7

    .line 181
    add-int/lit8 v7, v6, 0x1

    .end local v6           #bptr:I
    .restart local v7       #bptr:I
    and-int/lit16 v0, v9, 0xff

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v3, v6

    .line 178
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 186
    .end local v3           #b:[B
    .end local v7           #bptr:I
    .end local v9           #c:C
    .end local v11           #cc:[C
    .end local v17           #k:I
    .end local v18           #len:I
    :cond_b
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    .line 187
    .local v11, cc:Ljava/nio/charset/Charset;
    invoke-virtual {v11}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v12

    .line 188
    .local v12, ce:Ljava/nio/charset/CharsetEncoder;
    sget-object v22, Ljava/nio/charset/CodingErrorAction;->IGNORE:Ljava/nio/charset/CodingErrorAction;

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 189
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v10

    .line 190
    .local v10, cb:Ljava/nio/CharBuffer;
    invoke-virtual {v12, v10}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 191
    .local v5, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 192
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v19

    .line 193
    .local v19, lim:I
    move/from16 v0, v19

    new-array v8, v0, [B

    .line 194
    .local v8, br:[B
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v8

    .line 195
    goto/16 :goto_0

    .line 197
    .end local v5           #bb:Ljava/nio/ByteBuffer;
    .end local v8           #br:[B
    .end local v10           #cb:Ljava/nio/CharBuffer;
    .end local v11           #cc:Ljava/nio/charset/Charset;
    .end local v12           #ce:Ljava/nio/charset/CharsetEncoder;
    .end local v19           #lim:I
    :catch_0
    move-exception v14

    .line 198
    .local v14, e:Ljava/io/IOException;
    new-instance v22, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v22

    invoke-direct {v0, v14}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v22

    .end local v14           #e:Ljava/io/IOException;
    .restart local v3       #b:[B
    .local v9, c:I
    .local v11, cc:[C
    .restart local v13       #char1:C
    .restart local v17       #k:I
    .restart local v18       #len:I
    .restart local v21       #ptr:I
    :cond_c
    move/from16 v20, v21

    .end local v21           #ptr:I
    .restart local v20       #ptr:I
    goto/16 :goto_5
.end method

.method public static final convertToString([BLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "bytes"
    .parameter "encoding"

    .prologue
    .line 266
    if-nez p0, :cond_1

    .line 267
    const-string v6, ""

    .line 294
    :cond_0
    :goto_0
    return-object v6

    .line 268
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    .line 269
    :cond_2
    array-length v7, p0

    new-array v0, v7, [C

    .line 270
    .local v0, c:[C
    const/4 v4, 0x0

    .local v4, k:I
    :goto_1
    array-length v7, p0

    if-ge v4, v7, :cond_3

    .line 271
    aget-byte v7, p0, v4

    and-int/lit16 v7, v7, 0xff

    int-to-char v7, v7

    aput-char v7, v0, v4

    .line 270
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 272
    :cond_3
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 274
    .end local v0           #c:[C
    .end local v4           #k:I
    :cond_4
    sget-object v7, Lcom/itextpdf/text/pdf/PdfEncodings;->extraEncodings:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/ExtraEncoding;

    .line 275
    .local v3, extra:Lcom/itextpdf/text/pdf/ExtraEncoding;
    if-eqz v3, :cond_5

    .line 276
    invoke-interface {v3, p0, p1}, Lcom/itextpdf/text/pdf/ExtraEncoding;->byteToChar([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 277
    .local v6, text:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 280
    .end local v6           #text:Ljava/lang/String;
    :cond_5
    const/4 v1, 0x0

    .line 281
    .local v1, ch:[C
    const-string v7, "Cp1252"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 282
    sget-object v1, Lcom/itextpdf/text/pdf/PdfEncodings;->winansiByteToChar:[C

    .line 285
    :cond_6
    :goto_2
    if-eqz v1, :cond_9

    .line 286
    array-length v5, p0

    .line 287
    .local v5, len:I
    new-array v0, v5, [C

    .line 288
    .restart local v0       #c:[C
    const/4 v4, 0x0

    .restart local v4       #k:I
    :goto_3
    if-ge v4, v5, :cond_8

    .line 289
    aget-byte v7, p0, v4

    and-int/lit16 v7, v7, 0xff

    aget-char v7, v1, v7

    aput-char v7, v0, v4

    .line 288
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 283
    .end local v0           #c:[C
    .end local v4           #k:I
    .end local v5           #len:I
    :cond_7
    const-string v7, "PDF"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 284
    sget-object v1, Lcom/itextpdf/text/pdf/PdfEncodings;->pdfEncodingByteToChar:[C

    goto :goto_2

    .line 291
    .restart local v0       #c:[C
    .restart local v4       #k:I
    .restart local v5       #len:I
    :cond_8
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 294
    .end local v0           #c:[C
    .end local v4           #k:I
    .end local v5           #len:I
    :cond_9
    :try_start_0
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    :catch_0
    move-exception v2

    .line 297
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v7, v2}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method public static isPdfDocEncoding(Ljava/lang/String;)Z
    .locals 5
    .parameter "text"

    .prologue
    const/4 v3, 0x1

    .line 306
    if-nez p0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return v3

    .line 308
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 309
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 310
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 311
    .local v0, char1:C
    const/16 v4, 0x80

    if-lt v0, v4, :cond_2

    const/16 v4, 0xa0

    if-le v0, v4, :cond_3

    const/16 v4, 0xff

    if-gt v0, v4, :cond_3

    .line 309
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 313
    :cond_3
    sget-object v4, Lcom/itextpdf/text/pdf/PdfEncodings;->pdfEncoding:Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/IntHashtable;->containsKey(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 314
    const/4 v3, 0x0

    goto :goto_0
.end method
