.class public Lcom/itextpdf/text/pdf/AcroFields;
.super Ljava/lang/Object;
.source "AcroFields.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/AcroFields$1;,
        Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;,
        Lcom/itextpdf/text/pdf/AcroFields$SorterComparator;,
        Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;,
        Lcom/itextpdf/text/pdf/AcroFields$InstHit;,
        Lcom/itextpdf/text/pdf/AcroFields$Item;
    }
.end annotation


# static fields
.field public static final DA_COLOR:I = 0x2

.field public static final DA_FONT:I = 0x0

.field public static final DA_SIZE:I = 0x1

.field public static final FIELD_TYPE_CHECKBOX:I = 0x2

.field public static final FIELD_TYPE_COMBO:I = 0x6

.field public static final FIELD_TYPE_LIST:I = 0x5

.field public static final FIELD_TYPE_NONE:I = 0x0

.field public static final FIELD_TYPE_PUSHBUTTON:I = 0x1

.field public static final FIELD_TYPE_RADIOBUTTON:I = 0x3

.field public static final FIELD_TYPE_SIGNATURE:I = 0x7

.field public static final FIELD_TYPE_TEXT:I = 0x4

.field private static final buttonRemove:[Lcom/itextpdf/text/pdf/PdfName;

.field private static final stdFieldFontNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private append:Z

.field private extensionFonts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/text/pdf/BaseFont;",
            ">;"
        }
    .end annotation
.end field

.field private extraMarginLeft:F

.field private extraMarginTop:F

.field private fieldCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/TextField;",
            ">;"
        }
    .end annotation
.end field

.field fields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/AcroFields$Item;",
            ">;"
        }
    .end annotation
.end field

.field private generateAppearances:Z

.field private lastWasString:Z

.field private localFonts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/BaseFont;",
            ">;"
        }
    .end annotation
.end field

.field reader:Lcom/itextpdf/text/pdf/PdfReader;

.field private sigNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private substitutionFonts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/BaseFont;",
            ">;"
        }
    .end annotation
.end field

.field private topFirst:I

.field private totalRevisions:I

.field writer:Lcom/itextpdf/text/pdf/PdfWriter;

.field private xfa:Lcom/itextpdf/text/pdf/XfaForm;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2473
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    .line 2488
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "CoBO"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "Courier-BoldOblique"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2489
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "CoBo"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "Courier-Bold"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2490
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "CoOb"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "Courier-Oblique"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2491
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "Cour"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "Courier"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2492
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "HeBO"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "Helvetica-BoldOblique"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2493
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "HeBo"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "Helvetica-Bold"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2494
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "HeOb"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "Helvetica-Oblique"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2495
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "Helv"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "Helvetica"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2496
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "Symb"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "Symbol"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2497
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "TiBI"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "Times-BoldItalic"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2498
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "TiBo"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "Times-Bold"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2499
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "TiIt"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "Times-Italic"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2500
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "TiRo"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "Times-Roman"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2501
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "ZaDb"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "ZapfDingbats"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2502
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "HySm"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HYSMyeongJo-Medium"

    aput-object v3, v2, v4

    const-string v3, "UniKS-UCS2-H"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2503
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "HyGo"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HYGoThic-Medium"

    aput-object v3, v2, v4

    const-string v3, "UniKS-UCS2-H"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2504
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "KaGo"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HeiseiKakuGo-W5"

    aput-object v3, v2, v4

    const-string v3, "UniKS-UCS2-H"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2505
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "KaMi"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "HeiseiMin-W3"

    aput-object v3, v2, v4

    const-string v3, "UniJIS-UCS2-H"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2506
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "MHei"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MHei-Medium"

    aput-object v3, v2, v4

    const-string v3, "UniCNS-UCS2-H"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2507
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "MSun"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "MSung-Light"

    aput-object v3, v2, v4

    const-string v3, "UniCNS-UCS2-H"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2508
    sget-object v0, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const-string v1, "STSo"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "STSong-Light"

    aput-object v3, v2, v4

    const-string v3, "UniGB-UCS2-H"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2612
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->MK:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->Q:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->BS:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->BORDER:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/AcroFields;->buttonRemove:[Lcom/itextpdf/text/pdf/PdfName;

    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 2
    .parameter "reader"
    .parameter "writer"

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/AcroFields;->extensionFonts:Ljava/util/HashMap;

    .line 135
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/AcroFields;->generateAppearances:Z

    .line 137
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/AcroFields;->localFonts:Ljava/util/HashMap;

    .line 144
    iput-object p1, p0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 145
    iput-object p2, p0, Lcom/itextpdf/text/pdf/AcroFields;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 147
    :try_start_0
    new-instance v1, Lcom/itextpdf/text/pdf/XfaForm;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/XfaForm;-><init>(Lcom/itextpdf/text/pdf/PdfReader;)V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    instance-of v1, p2, Lcom/itextpdf/text/pdf/PdfStamperImp;

    if-eqz v1, :cond_0

    .line 153
    check-cast p2, Lcom/itextpdf/text/pdf/PdfStamperImp;

    .end local p2
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfStamperImp;->isAppend()Z

    move-result v1

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/AcroFields;->append:Z

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/AcroFields;->fill()V

    .line 156
    return-void

    .line 149
    .restart local p2
    :catch_0
    move-exception v0

    .line 150
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/itextpdf/text/pdf/AcroFields;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    return-void
.end method

.method private static clearSigDic(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 3
    .parameter "dic"

    .prologue
    .line 2121
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2122
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->AS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2123
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2124
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->DV:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2125
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->SV:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2126
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2127
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2128
    return-void
.end method

.method private getListOption(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 9
    .parameter "fieldName"
    .parameter "idx"

    .prologue
    const/4 v6, 0x0

    .line 305
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;

    move-result-object v3

    .line 306
    .local v3, fd:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v3, :cond_1

    .line 327
    :cond_0
    return-object v6

    .line 308
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->OPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v1

    .line 309
    .local v1, ar:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v7

    new-array v6, v7, [Ljava/lang/String;

    .line 312
    .local v6, ret:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_0

    .line 313
    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 315
    .local v5, obj:Lcom/itextpdf/text/pdf/PdfObject;
    :try_start_0
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 316
    move-object v0, v5

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    move-object v7, v0

    invoke-virtual {v7, p2}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    .line 318
    :cond_2
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 319
    move-object v0, v5

    check-cast v0, Lcom/itextpdf/text/pdf/PdfString;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 312
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 321
    :cond_3
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 323
    :catch_0
    move-exception v2

    .line 324
    .local v2, e:Ljava/lang/Exception;
    const-string v7, ""

    aput-object v7, v6, v4

    goto :goto_1
.end method

.method private markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "obj"

    .prologue
    .line 2361
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->append:Z

    if-nez v0, :cond_0

    .line 2364
    :goto_0
    return-void

    .line 2363
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    check-cast v0, Lcom/itextpdf/text/pdf/PdfStamperImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method private removeRefFromArray(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PdfObject;)I
    .locals 6
    .parameter "array"
    .parameter "refo"

    .prologue
    .line 1666
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1667
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v4

    .line 1676
    :goto_0
    return v4

    :cond_1
    move-object v3, p2

    .line 1668
    check-cast v3, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 1669
    .local v3, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    const/4 v0, 0x0

    .local v0, j:I
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 1670
    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 1671
    .local v2, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1669
    .end local v2           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1673
    .restart local v2       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_3
    check-cast v2, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .end local v2           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfIndirectReference;->getNumber()I

    move-result v4

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfIndirectReference;->getNumber()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 1674
    add-int/lit8 v1, v0, -0x1

    .end local v0           #j:I
    .local v1, j:I
    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfArray;->remove(I)Lcom/itextpdf/text/pdf/PdfObject;

    move v0, v1

    .end local v1           #j:I
    .restart local v0       #j:I
    goto :goto_2

    .line 1676
    :cond_4
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v4

    goto :goto_0
.end method

.method public static splitDAelements(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 17
    .parameter "da"

    .prologue
    .line 510
    :try_start_0
    new-instance v12, Lcom/itextpdf/text/pdf/PRTokeniser;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v14

    invoke-direct {v12, v14}, Lcom/itextpdf/text/pdf/PRTokeniser;-><init>([B)V

    .line 511
    .local v12, tk:Lcom/itextpdf/text/pdf/PRTokeniser;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v11, stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v14, 0x3

    new-array v10, v14, [Ljava/lang/Object;

    .line 513
    .local v10, ret:[Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->nextToken()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 514
    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v14

    sget-object v15, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->COMMENT:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-eq v14, v15, :cond_0

    .line 516
    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getTokenType()Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    move-result-object v14

    sget-object v15, Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;->OTHER:Lcom/itextpdf/text/pdf/PRTokeniser$TokenType;

    if-ne v14, v15, :cond_5

    .line 517
    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v8

    .line 518
    .local v8, operator:Ljava/lang/String;
    const-string v14, "Tf"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 519
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x2

    if-lt v14, v15, :cond_1

    .line 520
    const/4 v14, 0x0

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x2

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    aput-object v15, v10, v14

    .line 521
    const/4 v15, 0x1

    new-instance v16, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    aput-object v16, v10, v15

    .line 548
    :cond_1
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 555
    .end local v8           #operator:Ljava/lang/String;
    .end local v10           #ret:[Ljava/lang/Object;
    .end local v11           #stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12           #tk:Lcom/itextpdf/text/pdf/PRTokeniser;
    :catch_0
    move-exception v6

    .line 556
    .local v6, ioe:Ljava/io/IOException;
    new-instance v14, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v14, v6}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v14

    .line 524
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v8       #operator:Ljava/lang/String;
    .restart local v10       #ret:[Ljava/lang/Object;
    .restart local v11       #stack:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12       #tk:Lcom/itextpdf/text/pdf/PRTokeniser;
    :cond_2
    :try_start_1
    const-string v14, "g"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 525
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x1

    if-lt v14, v15, :cond_1

    .line 526
    new-instance v15, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v15, v14}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 527
    .local v4, gray:F
    const/4 v14, 0x0

    cmpl-float v14, v4, v14

    if-eqz v14, :cond_1

    .line 528
    const/4 v14, 0x2

    new-instance v15, Lcom/itextpdf/text/pdf/GrayColor;

    invoke-direct {v15, v4}, Lcom/itextpdf/text/pdf/GrayColor;-><init>(F)V

    aput-object v15, v10, v14

    goto :goto_1

    .line 531
    .end local v4           #gray:F
    :cond_3
    const-string v14, "rg"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 532
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x3

    if-lt v14, v15, :cond_1

    .line 533
    new-instance v15, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x3

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v15, v14}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 534
    .local v9, red:F
    new-instance v15, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v15, v14}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 535
    .local v5, green:F
    new-instance v15, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v15, v14}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 536
    .local v2, blue:F
    const/4 v14, 0x2

    new-instance v15, Lcom/itextpdf/text/BaseColor;

    invoke-direct {v15, v9, v5, v2}, Lcom/itextpdf/text/BaseColor;-><init>(FFF)V

    aput-object v15, v10, v14

    goto/16 :goto_1

    .line 539
    .end local v2           #blue:F
    .end local v5           #green:F
    .end local v9           #red:F
    :cond_4
    const-string v14, "k"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 540
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, 0x4

    if-lt v14, v15, :cond_1

    .line 541
    new-instance v15, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x4

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v15, v14}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 542
    .local v3, cyan:F
    new-instance v15, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x3

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v15, v14}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 543
    .local v7, magenta:F
    new-instance v15, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v15, v14}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v13

    .line 544
    .local v13, yellow:F
    new-instance v15, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-direct {v15, v14}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 545
    .local v1, black:F
    const/4 v14, 0x2

    new-instance v15, Lcom/itextpdf/text/pdf/CMYKColor;

    invoke-direct {v15, v3, v7, v13, v1}, Lcom/itextpdf/text/pdf/CMYKColor;-><init>(FFFF)V

    aput-object v15, v10, v14

    goto/16 :goto_1

    .line 551
    .end local v1           #black:F
    .end local v3           #cyan:F
    .end local v7           #magenta:F
    .end local v8           #operator:Ljava/lang/String;
    .end local v13           #yellow:F
    :cond_5
    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PRTokeniser;->getStringValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 553
    :cond_6
    return-object v10
.end method

.method private updateByteRange(Lcom/itextpdf/text/pdf/security/PdfPKCS7;Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 10
    .parameter "pkcs7"
    .parameter "v"

    .prologue
    .line 2334
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->BYTERANGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p2, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v0

    .line 2335
    .local v0, b:Lcom/itextpdf/text/pdf/PdfArray;
    iget-object v8, p0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v6

    .line 2337
    .local v6, rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :try_start_0
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 2338
    const/16 v8, 0x2000

    new-array v1, v8, [B

    .line 2339
    .local v1, buf:[B
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v8

    if-ge v3, v8, :cond_2

    .line 2340
    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v7

    .line 2341
    .local v7, start:I
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v4

    .line 2342
    .local v4, length:I
    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 2343
    :goto_1
    if-lez v4, :cond_0

    .line 2344
    const/4 v8, 0x0

    array-length v9, v1

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v6, v1, v8, v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read([BII)I

    move-result v5

    .line 2345
    .local v5, rd:I
    if-gtz v5, :cond_1

    .line 2339
    .end local v5           #rd:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2347
    .restart local v5       #rd:I
    :cond_1
    sub-int/2addr v4, v5

    .line 2348
    const/4 v8, 0x0

    invoke-virtual {p1, v1, v8, v5}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->update([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2352
    .end local v1           #buf:[B
    .end local v3           #k:I
    .end local v4           #length:I
    .end local v5           #rd:I
    .end local v7           #start:I
    :catch_0
    move-exception v2

    .line 2353
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    new-instance v8, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v8, v2}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2356
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :try_start_2
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    throw v8

    .restart local v1       #buf:[B
    .restart local v3       #k:I
    :cond_2
    :try_start_3
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2358
    :goto_3
    return-void

    .line 2356
    :catch_1
    move-exception v8

    goto :goto_3

    .end local v1           #buf:[B
    .end local v3           #k:I
    :catch_2
    move-exception v9

    goto :goto_2
.end method


# virtual methods
.method public addSubstitutionFont(Lcom/itextpdf/text/pdf/BaseFont;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 2468
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->substitutionFonts:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->substitutionFonts:Ljava/util/ArrayList;

    .line 2470
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->substitutionFonts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2471
    return-void
.end method

.method public clearSignatureField(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    .line 2105
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    .line 2106
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/AcroFields;->getSignatureNames()Ljava/util/ArrayList;

    .line 2107
    iget-object v3, p0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2108
    const/4 v3, 0x0

    .line 2117
    :goto_0
    return v3

    .line 2109
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 2110
    .local v2, sig:Lcom/itextpdf/text/pdf/AcroFields$Item;
    const/4 v3, 0x6

    invoke-virtual {v2, p0, v3}, Lcom/itextpdf/text/pdf/AcroFields$Item;->markUsed(Lcom/itextpdf/text/pdf/AcroFields;I)V

    .line 2111
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v1

    .line 2112
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, k:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 2113
    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/text/pdf/AcroFields;->clearSigDic(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 2114
    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/text/pdf/AcroFields;->clearSigDic(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 2115
    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/text/pdf/AcroFields;->clearSigDic(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 2112
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2117
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public decodeGenericDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/BaseField;)V
    .locals 34
    .parameter "merged"
    .parameter "tx"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 561
    const/16 v18, 0x0

    .line 563
    .local v18, flags:I
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v14

    .line 564
    .local v14, da:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v14, :cond_4

    .line 565
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/AcroFields;->splitDAelements(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v15

    .line 566
    .local v15, dab:[Ljava/lang/Object;
    const/4 v2, 0x1

    aget-object v2, v15, v2

    if-eqz v2, :cond_0

    .line 567
    const/4 v2, 0x1

    aget-object v2, v15, v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setFontSize(F)V

    .line 568
    :cond_0
    const/4 v2, 0x2

    aget-object v2, v15, v2

    if-eqz v2, :cond_1

    .line 569
    const/4 v2, 0x2

    aget-object v2, v15, v2

    check-cast v2, Lcom/itextpdf/text/BaseColor;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setTextColor(Lcom/itextpdf/text/BaseColor;)V

    .line 570
    :cond_1
    const/4 v2, 0x0

    aget-object v2, v15, v2

    if-eqz v2, :cond_4

    .line 571
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DR:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v21

    .line 572
    .local v21, font:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v21, :cond_4

    .line 573
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v21

    .line 574
    if-eqz v21, :cond_4

    .line 575
    new-instance v3, Lcom/itextpdf/text/pdf/PdfName;

    const/4 v2, 0x0

    aget-object v2, v15, v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v26

    .line 576
    .local v26, po:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v26, :cond_f

    invoke-virtual/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfObject;->type()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_f

    move-object/from16 v27, v26

    .line 577
    check-cast v27, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 578
    .local v27, por:Lcom/itextpdf/text/pdf/PRIndirectReference;
    new-instance v12, Lcom/itextpdf/text/pdf/DocumentFont;

    move-object/from16 v2, v26

    check-cast v2, Lcom/itextpdf/text/pdf/PRIndirectReference;

    invoke-direct {v12, v2}, Lcom/itextpdf/text/pdf/DocumentFont;-><init>(Lcom/itextpdf/text/pdf/PRIndirectReference;)V

    .line 579
    .local v12, bp:Lcom/itextpdf/text/pdf/BaseFont;
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/itextpdf/text/pdf/BaseField;->setFont(Lcom/itextpdf/text/pdf/BaseFont;)V

    .line 580
    invoke-virtual/range {v27 .. v27}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .line 581
    .local v29, porkey:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/AcroFields;->extensionFonts:Ljava/util/HashMap;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/itextpdf/text/pdf/BaseFont;

    .line 582
    .local v28, porf:Lcom/itextpdf/text/pdf/BaseFont;
    if-nez v28, :cond_3

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/AcroFields;->extensionFonts:Ljava/util/HashMap;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 584
    invoke-static/range {v26 .. v26}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    check-cast v20, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 585
    .local v20, fo:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONTDESCRIPTOR:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v17

    .line 586
    .local v17, fd:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v17, :cond_3

    .line 587
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONTFILE2:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v30

    check-cast v30, Lcom/itextpdf/text/pdf/PRStream;

    .line 588
    .local v30, prs:Lcom/itextpdf/text/pdf/PRStream;
    if-nez v30, :cond_2

    .line 589
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONTFILE3:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v30

    .end local v30           #prs:Lcom/itextpdf/text/pdf/PRStream;
    check-cast v30, Lcom/itextpdf/text/pdf/PRStream;

    .line 590
    .restart local v30       #prs:Lcom/itextpdf/text/pdf/PRStream;
    :cond_2
    if-nez v30, :cond_e

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/AcroFields;->extensionFonts:Ljava/util/HashMap;

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    .end local v17           #fd:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v20           #fo:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v30           #prs:Lcom/itextpdf/text/pdf/PRStream;
    :cond_3
    :goto_0
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/itextpdf/text/pdf/TextField;

    if-eqz v2, :cond_4

    move-object/from16 v2, p2

    .line 605
    check-cast v2, Lcom/itextpdf/text/pdf/TextField;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/TextField;->setExtensionFont(Lcom/itextpdf/text/pdf/BaseFont;)V

    .line 632
    .end local v12           #bp:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v15           #dab:[Ljava/lang/Object;
    .end local v21           #font:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v26           #po:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v27           #por:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .end local v28           #porf:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v29           #porkey:Ljava/lang/Integer;
    :cond_4
    :goto_1
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->MK:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    .line 633
    .local v24, mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v24, :cond_6

    .line 634
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->BC:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v8

    .line 635
    .local v8, ar:Lcom/itextpdf/text/pdf/PdfArray;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/AcroFields;->getMKColor(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/BaseColor;

    move-result-object v11

    .line 636
    .local v11, border:Lcom/itextpdf/text/BaseColor;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/BaseField;->setBorderColor(Lcom/itextpdf/text/BaseColor;)V

    .line 637
    if-eqz v11, :cond_5

    .line 638
    const/high16 v2, 0x3f80

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setBorderWidth(F)V

    .line 639
    :cond_5
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->BG:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v8

    .line 640
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/AcroFields;->getMKColor(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/BaseColor;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setBackgroundColor(Lcom/itextpdf/text/BaseColor;)V

    .line 641
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->R:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v31

    .line 642
    .local v31, rotation:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v31, :cond_6

    .line 643
    invoke-virtual/range {v31 .. v31}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setRotation(I)V

    .line 646
    .end local v8           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v11           #border:Lcom/itextpdf/text/BaseColor;
    .end local v31           #rotation:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_6
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v25

    .line 647
    .local v25, nfl:Lcom/itextpdf/text/pdf/PdfNumber;
    const/16 v18, 0x0

    .line 648
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setVisibility(I)V

    .line 649
    if-eqz v25, :cond_7

    .line 650
    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v18

    .line 651
    and-int/lit8 v2, v18, 0x4

    if-eqz v2, :cond_12

    and-int/lit8 v2, v18, 0x2

    if-eqz v2, :cond_12

    .line 652
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setVisibility(I)V

    .line 659
    :cond_7
    :goto_2
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v25

    .line 660
    const/16 v18, 0x0

    .line 661
    if-eqz v25, :cond_8

    .line 662
    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v18

    .line 663
    :cond_8
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/BaseField;->setOptions(I)V

    .line 664
    const/high16 v2, 0x100

    and-int v2, v2, v18

    if-eqz v2, :cond_a

    .line 665
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->MAXLEN:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v23

    .line 666
    .local v23, maxLen:Lcom/itextpdf/text/pdf/PdfNumber;
    const/16 v22, 0x0

    .line 667
    .local v22, len:I
    if-eqz v23, :cond_9

    .line 668
    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v22

    .line 669
    :cond_9
    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/BaseField;->setMaxCharacterLength(I)V

    .line 672
    .end local v22           #len:I
    .end local v23           #maxLen:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_a
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->Q:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v25

    .line 673
    if-eqz v25, :cond_b

    .line 674
    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    .line 675
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setAlignment(I)V

    .line 680
    :cond_b
    :goto_3
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->BS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v13

    .line 681
    .local v13, bs:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v13, :cond_18

    .line 682
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->W:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v13, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v33

    .line 683
    .local v33, w:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v33, :cond_c

    .line 684
    invoke-virtual/range {v33 .. v33}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setBorderWidth(F)V

    .line 685
    :cond_c
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v13, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v32

    .line 686
    .local v32, s:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 687
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setBorderStyle(I)V

    .line 704
    .end local v32           #s:Lcom/itextpdf/text/pdf/PdfName;
    .end local v33           #w:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_d
    :goto_4
    return-void

    .line 595
    .end local v13           #bs:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v24           #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v25           #nfl:Lcom/itextpdf/text/pdf/PdfNumber;
    .restart local v12       #bp:Lcom/itextpdf/text/pdf/BaseFont;
    .restart local v15       #dab:[Ljava/lang/Object;
    .restart local v17       #fd:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v20       #fo:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v21       #font:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v26       #po:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v27       #por:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .restart local v28       #porf:Lcom/itextpdf/text/pdf/BaseFont;
    .restart local v29       #porkey:Ljava/lang/Integer;
    .restart local v30       #prs:Lcom/itextpdf/text/pdf/PRStream;
    :cond_e
    :try_start_0
    const-string v2, "font.ttf"

    const-string v3, "Identity-H"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v30 .. v30}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;ZZ[B[B)Lcom/itextpdf/text/pdf/BaseFont;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v28

    .line 599
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/AcroFields;->extensionFonts:Ljava/util/HashMap;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 608
    .end local v12           #bp:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v17           #fd:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v20           #fo:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v27           #por:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .end local v28           #porf:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v29           #porkey:Ljava/lang/Integer;
    .end local v30           #prs:Lcom/itextpdf/text/pdf/PRStream;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/AcroFields;->localFonts:Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v3, v15, v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/text/pdf/BaseFont;

    .line 609
    .local v10, bf:Lcom/itextpdf/text/pdf/BaseFont;
    if-nez v10, :cond_11

    .line 610
    sget-object v2, Lcom/itextpdf/text/pdf/AcroFields;->stdFieldFontNames:Ljava/util/HashMap;

    const/4 v3, 0x0

    aget-object v3, v15, v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    .line 611
    .local v19, fn:[Ljava/lang/String;
    if-eqz v19, :cond_4

    .line 613
    :try_start_1
    const-string v16, "winansi"

    .line 614
    .local v16, enc:Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_10

    .line 615
    const/4 v2, 0x1

    aget-object v16, v19, v2

    .line 616
    :cond_10
    const/4 v2, 0x0

    aget-object v2, v19, v2

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-static {v2, v0, v3}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v10

    .line 617
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/itextpdf/text/pdf/BaseField;->setFont(Lcom/itextpdf/text/pdf/BaseFont;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 619
    .end local v16           #enc:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 625
    .end local v19           #fn:[Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/itextpdf/text/pdf/BaseField;->setFont(Lcom/itextpdf/text/pdf/BaseFont;)V

    goto/16 :goto_1

    .line 653
    .end local v10           #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v15           #dab:[Ljava/lang/Object;
    .end local v21           #font:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v26           #po:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v24       #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v25       #nfl:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_12
    and-int/lit8 v2, v18, 0x4

    if-eqz v2, :cond_13

    and-int/lit8 v2, v18, 0x20

    if-eqz v2, :cond_13

    .line 654
    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setVisibility(I)V

    goto/16 :goto_2

    .line 655
    :cond_13
    and-int/lit8 v2, v18, 0x4

    if-eqz v2, :cond_7

    .line 656
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setVisibility(I)V

    goto/16 :goto_2

    .line 676
    :cond_14
    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 677
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setAlignment(I)V

    goto/16 :goto_3

    .line 688
    .restart local v13       #bs:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v32       #s:Lcom/itextpdf/text/pdf/PdfName;
    .restart local v33       #w:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_15
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->B:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 689
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setBorderStyle(I)V

    goto/16 :goto_4

    .line 690
    :cond_16
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->I:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 691
    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setBorderStyle(I)V

    goto/16 :goto_4

    .line 692
    :cond_17
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->U:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 693
    const/4 v2, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setBorderStyle(I)V

    goto/16 :goto_4

    .line 696
    .end local v32           #s:Lcom/itextpdf/text/pdf/PdfName;
    .end local v33           #w:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_18
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->BORDER:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v9

    .line 697
    .local v9, bd:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v9, :cond_d

    .line 698
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_19

    .line 699
    const/4 v2, 0x2

    invoke-virtual {v9, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setBorderWidth(F)V

    .line 700
    :cond_19
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_d

    .line 701
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/BaseField;->setBorderStyle(I)V

    goto/16 :goto_4

    .line 597
    .end local v9           #bd:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v13           #bs:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v24           #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v25           #nfl:Lcom/itextpdf/text/pdf/PdfNumber;
    .restart local v12       #bp:Lcom/itextpdf/text/pdf/BaseFont;
    .restart local v15       #dab:[Ljava/lang/Object;
    .restart local v17       #fd:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v20       #fo:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v21       #font:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v26       #po:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v27       #por:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .restart local v28       #porf:Lcom/itextpdf/text/pdf/BaseFont;
    .restart local v29       #porkey:Ljava/lang/Integer;
    .restart local v30       #prs:Lcom/itextpdf/text/pdf/PRStream;
    :catch_1
    move-exception v2

    goto/16 :goto_5
.end method

.method public exportAsFdf(Lcom/itextpdf/text/pdf/FdfWriter;)V
    .locals 8
    .parameter "writer"

    .prologue
    .line 461
    iget-object v6, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 462
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 463
    .local v2, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 464
    .local v3, name:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v6

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    .line 465
    .local v4, v:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v4, :cond_0

    .line 467
    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/AcroFields;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 468
    .local v5, value:Ljava/lang/String;
    iget-boolean v6, p0, Lcom/itextpdf/text/pdf/AcroFields;->lastWasString:Z

    if-eqz v6, :cond_1

    .line 469
    invoke-virtual {p1, v3, v5}, Lcom/itextpdf/text/pdf/FdfWriter;->setFieldAsString(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 471
    :cond_1
    invoke-virtual {p1, v3, v5}, Lcom/itextpdf/text/pdf/FdfWriter;->setFieldAsName(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 473
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    .end local v2           #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #v:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v5           #value:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public extractRevision(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .parameter "field"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2399
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/AcroFields;->getSignatureNames()Ljava/util/ArrayList;

    .line 2400
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getTranslatedFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2401
    iget-object v2, p0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v3

    .line 2407
    :goto_0
    return-object v2

    .line 2403
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v4, 0x0

    aget v0, v2, v4

    .line 2404
    .local v0, length:I
    iget-object v2, p0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v1

    .line 2405
    .local v1, raf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 2406
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 2407
    new-instance v2, Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;

    invoke-direct {v2, v1, v0, v3}, Lcom/itextpdf/text/pdf/AcroFields$RevisionStream;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;ILcom/itextpdf/text/pdf/AcroFields$1;)V

    goto :goto_0
.end method

.method fill()V
    .locals 20

    .prologue
    .line 159
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v18

    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v18 .. v19}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v15

    check-cast v15, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 161
    .local v15, top:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v15, :cond_1

    .line 256
    :cond_0
    return-void

    .line 163
    :cond_1
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->FIELDS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfArray;

    .line 164
    .local v4, arrfds:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v18

    if-eqz v18, :cond_0

    .line 166
    const/4 v8, 0x1

    .local v8, k:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v18

    move/from16 v0, v18

    if-gt v8, v0, :cond_e

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPageNRelease(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v12

    .line 168
    .local v12, page:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfArray;

    .line 169
    .local v3, annots:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v3, :cond_3

    .line 166
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 171
    :cond_3
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_2

    .line 172
    invoke-virtual {v3, v7}, Lcom/itextpdf/text/pdf/PdfArray;->getAsDict(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    .line 173
    .local v2, annot:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v2, :cond_4

    .line 174
    invoke-virtual {v3, v7}, Lcom/itextpdf/text/pdf/PdfArray;->getAsIndirectObject(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 171
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 177
    :cond_4
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->WIDGET:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 178
    invoke-virtual {v3, v7}, Lcom/itextpdf/text/pdf/PdfArray;->getAsIndirectObject(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_2

    .line 181
    :cond_5
    move-object/from16 v17, v2

    .line 182
    .local v17, widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v5, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 183
    .local v5, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v5, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->putAll(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 184
    const-string v11, ""

    .line 185
    .local v11, name:Ljava/lang/String;
    const/16 v16, 0x0

    .line 186
    .local v16, value:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/4 v10, 0x0

    .line 187
    .local v10, lastV:Lcom/itextpdf/text/pdf/PdfObject;
    :goto_3
    if-eqz v2, :cond_9

    .line 188
    invoke-virtual {v5, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->mergeDifferent(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 189
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v14

    .line 190
    .local v14, t:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v14, :cond_6

    .line 191
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 192
    :cond_6
    if-nez v10, :cond_7

    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    if-eqz v18, :cond_7

    .line 193
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v10

    .line 194
    :cond_7
    if-nez v16, :cond_8

    if-eqz v14, :cond_8

    .line 195
    move-object/from16 v16, v2

    .line 196
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    if-nez v18, :cond_8

    if-eqz v10, :cond_8

    .line 197
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 199
    :cond_8
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    .line 200
    goto :goto_3

    .line 201
    .end local v14           #t:Lcom/itextpdf/text/pdf/PdfString;
    :cond_9
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_a

    .line 202
    const/16 v18, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 203
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 204
    .local v6, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v6, :cond_b

    .line 205
    new-instance v6, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .end local v6           #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    invoke-direct {v6}, Lcom/itextpdf/text/pdf/AcroFields$Item;-><init>()V

    .line 206
    .restart local v6       #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_b
    if-nez v16, :cond_d

    .line 209
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addValue(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 212
    :goto_4
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addWidget(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 213
    invoke-virtual {v3, v7}, Lcom/itextpdf/text/pdf/PdfArray;->getAsIndirectObject(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addWidgetRef(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 214
    if-eqz v15, :cond_c

    .line 215
    invoke-virtual {v5, v15}, Lcom/itextpdf/text/pdf/PdfDictionary;->mergeDifferent(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 216
    :cond_c
    invoke-virtual {v6, v5}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addMerged(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 217
    invoke-virtual {v6, v8}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addPage(I)V

    .line 218
    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addTabOrder(I)V

    goto/16 :goto_2

    .line 211
    :cond_d
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addValue(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    goto :goto_4

    .line 223
    .end local v2           #annot:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v3           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v5           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v6           #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    .end local v7           #j:I
    .end local v10           #lastV:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #page:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v16           #value:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v17           #widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_e
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->SIGFLAGS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v13

    .line 224
    .local v13, sigFlags:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v18

    and-int/lit8 v18, v18, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 226
    const/4 v7, 0x0

    .restart local v7       #j:I
    :goto_5
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_0

    .line 227
    invoke-virtual {v4, v7}, Lcom/itextpdf/text/pdf/PdfArray;->getAsDict(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    .line 228
    .restart local v2       #annot:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v2, :cond_10

    .line 229
    invoke-virtual {v4, v7}, Lcom/itextpdf/text/pdf/PdfArray;->getAsIndirectObject(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 226
    :cond_f
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 232
    :cond_10
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->WIDGET:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_11

    .line 233
    invoke-virtual {v4, v7}, Lcom/itextpdf/text/pdf/PdfArray;->getAsIndirectObject(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->releaseLastXrefPartial(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_6

    .line 236
    :cond_11
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfArray;

    .line 237
    .local v9, kids:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v9, :cond_f

    .line 239
    new-instance v5, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 240
    .restart local v5       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v5, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->putAll(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 241
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v14

    .line 242
    .restart local v14       #t:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v14, :cond_f

    .line 244
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v11

    .line 245
    .restart local v11       #name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_f

    .line 247
    new-instance v6, Lcom/itextpdf/text/pdf/AcroFields$Item;

    invoke-direct {v6}, Lcom/itextpdf/text/pdf/AcroFields$Item;-><init>()V

    .line 248
    .restart local v6       #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-virtual {v6, v5}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addValue(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 250
    invoke-virtual {v6, v5}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addWidget(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 251
    invoke-virtual {v4, v7}, Lcom/itextpdf/text/pdf/PdfArray;->getAsIndirectObject(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addWidgetRef(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 252
    invoke-virtual {v6, v5}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addMerged(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 253
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addPage(I)V

    .line 254
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->addTabOrder(I)V

    goto :goto_6
.end method

.method getAppearance(Lcom/itextpdf/text/pdf/PdfDictionary;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfAppearance;
    .locals 2
    .parameter "merged"
    .parameter "text"
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 792
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 793
    .local v0, valueArr:[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 794
    invoke-virtual {p0, p1, v0, p3}, Lcom/itextpdf/text/pdf/AcroFields;->getAppearance(Lcom/itextpdf/text/pdf/PdfDictionary;[Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v1

    return-object v1
.end method

.method getAppearance(Lcom/itextpdf/text/pdf/PdfDictionary;[Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfAppearance;
    .locals 24
    .parameter "merged"
    .parameter "values"
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 707
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/AcroFields;->topFirst:I

    .line 708
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_5

    const/16 v21, 0x0

    aget-object v18, p2, v21

    .line 710
    .local v18, text:Ljava/lang/String;
    :goto_0
    const/16 v19, 0x0

    .line 711
    .local v19, tx:Lcom/itextpdf/text/pdf/TextField;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->fieldCache:Ljava/util/Map;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->fieldCache:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 712
    :cond_0
    new-instance v19, Lcom/itextpdf/text/pdf/TextField;

    .end local v19           #tx:Lcom/itextpdf/text/pdf/TextField;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/TextField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;)V

    .line 713
    .restart local v19       #tx:Lcom/itextpdf/text/pdf/TextField;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->extraMarginLeft:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->extraMarginTop:F

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/TextField;->setExtraMargin(FF)V

    .line 714
    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/TextField;->setBorderWidth(F)V

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->substitutionFonts:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/TextField;->setSubstitutionFonts(Ljava/util/ArrayList;)V

    .line 716
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/AcroFields;->decodeGenericDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/BaseField;)V

    .line 718
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v17

    .line 719
    .local v17, rect:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-static/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfReader;->getNormalizedRectangle(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/Rectangle;

    move-result-object v6

    .line 720
    .local v6, box:Lcom/itextpdf/text/Rectangle;
    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/TextField;->getRotation()I

    move-result v21

    const/16 v22, 0x5a

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/TextField;->getRotation()I

    move-result v21

    const/16 v22, 0x10e

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    .line 721
    :cond_1
    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->rotate()Lcom/itextpdf/text/Rectangle;

    move-result-object v6

    .line 722
    :cond_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/TextField;->setBox(Lcom/itextpdf/text/Rectangle;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->fieldCache:Ljava/util/Map;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->fieldCache:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    .end local v6           #box:Lcom/itextpdf/text/Rectangle;
    .end local v17           #rect:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_3
    :goto_1
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v9

    .line 731
    .local v9, fieldType:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->TX:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 732
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_4

    const/16 v21, 0x0

    aget-object v21, p2, v21

    if-eqz v21, :cond_4

    .line 733
    const/16 v21, 0x0

    aget-object v21, p2, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/TextField;->setText(Ljava/lang/String;)V

    .line 735
    :cond_4
    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/TextField;->getAppearance()Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v5

    .line 788
    :goto_2
    return-object v5

    .line 708
    .end local v9           #fieldType:Lcom/itextpdf/text/pdf/PdfName;
    .end local v18           #text:Ljava/lang/String;
    .end local v19           #tx:Lcom/itextpdf/text/pdf/TextField;
    :cond_5
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 727
    .restart local v18       #text:Ljava/lang/String;
    .restart local v19       #tx:Lcom/itextpdf/text/pdf/TextField;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->fieldCache:Ljava/util/Map;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .end local v19           #tx:Lcom/itextpdf/text/pdf/TextField;
    check-cast v19, Lcom/itextpdf/text/pdf/TextField;

    .line 728
    .restart local v19       #tx:Lcom/itextpdf/text/pdf/TextField;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/TextField;->setWriter(Lcom/itextpdf/text/pdf/PdfWriter;)V

    goto :goto_1

    .line 737
    .restart local v9       #fieldType:Lcom/itextpdf/text/pdf/PdfName;
    :cond_7
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->CH:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 738
    new-instance v21, Lcom/itextpdf/text/DocumentException;

    const-string v22, "an.appearance.was.requested.without.a.variable.text.field"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 739
    :cond_8
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->OPT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v16

    .line 740
    .local v16, opt:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v10, 0x0

    .line 741
    .local v10, flags:I
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v14

    .line 742
    .local v14, nfl:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v14, :cond_9

    .line 743
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v10

    .line 744
    :cond_9
    const/high16 v21, 0x2

    and-int v21, v21, v10

    if-eqz v21, :cond_a

    if-nez v16, :cond_a

    .line 745
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/TextField;->setText(Ljava/lang/String;)V

    .line 746
    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/TextField;->getAppearance()Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v5

    goto :goto_2

    .line 748
    :cond_a
    if-eqz v16, :cond_13

    .line 749
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v7, v0, [Ljava/lang/String;

    .line 750
    .local v7, choices:[Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v8, v0, [Ljava/lang/String;

    .line 751
    .local v8, choicesExp:[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, k:I
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_c

    .line 752
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v15

    .line 753
    .local v15, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 754
    check-cast v15, Lcom/itextpdf/text/pdf/PdfString;

    .end local v15           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v8, v13

    aput-object v21, v7, v13

    .line 751
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .restart local v15       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_b
    move-object v4, v15

    .line 757
    check-cast v4, Lcom/itextpdf/text/pdf/PdfArray;

    .line 758
    .local v4, a:Lcom/itextpdf/text/pdf/PdfArray;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v8, v13

    .line 759
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v7, v13

    goto :goto_4

    .line 762
    .end local v4           #a:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v15           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_c
    const/high16 v21, 0x2

    and-int v21, v21, v10

    if-eqz v21, :cond_f

    .line 763
    const/4 v13, 0x0

    :goto_5
    array-length v0, v7

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_d

    .line 764
    aget-object v21, v8, v13

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 765
    aget-object v18, v7, v13

    .line 769
    :cond_d
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/TextField;->setText(Ljava/lang/String;)V

    .line 770
    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/TextField;->getAppearance()Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v5

    goto/16 :goto_2

    .line 763
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 772
    :cond_f
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 773
    .local v11, indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    :goto_6
    array-length v0, v8

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v13, v0, :cond_12

    .line 774
    const/4 v12, 0x0

    .local v12, j:I
    :goto_7
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v12, v0, :cond_10

    .line 775
    aget-object v20, p2, v12

    .line 776
    .local v20, val:Ljava/lang/String;
    if-eqz v20, :cond_11

    aget-object v21, v8, v13

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 777
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    .end local v20           #val:Ljava/lang/String;
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 774
    .restart local v20       #val:Ljava/lang/String;
    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 782
    .end local v12           #j:I
    .end local v20           #val:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/TextField;->setChoices([Ljava/lang/String;)V

    .line 783
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/TextField;->setChoiceExports([Ljava/lang/String;)V

    .line 784
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/TextField;->setChoiceSelections(Ljava/util/ArrayList;)V

    .line 786
    .end local v7           #choices:[Ljava/lang/String;
    .end local v8           #choicesExp:[Ljava/lang/String;
    .end local v11           #indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v13           #k:I
    :cond_13
    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/TextField;->getListAppearance()Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v5

    .line 787
    .local v5, app:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/TextField;->getTopFirst()I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/AcroFields;->topFirst:I

    goto/16 :goto_2
.end method

.method public getAppearanceStates(Ljava/lang/String;)[Ljava/lang/String;
    .locals 13
    .parameter "fieldName"

    .prologue
    .line 268
    iget-object v12, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    invoke-interface {v12, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 269
    .local v3, fd:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v3, :cond_0

    .line 270
    const/4 v12, 0x0

    .line 301
    :goto_0
    return-object v12

    .line 271
    :cond_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 272
    .local v7, names:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v11

    .line 273
    .local v11, vals:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->OPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v9

    .line 274
    .local v9, stringOpt:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v9, :cond_3

    .line 275
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_1
    const/4 v5, 0x0

    .local v5, k:I
    :goto_1
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v12

    if-ge v5, v12, :cond_6

    .line 288
    invoke-virtual {v3, v5}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 289
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 290
    if-nez v1, :cond_5

    .line 287
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 278
    .end local v1           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v5           #k:I
    :cond_3
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->OPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v0

    .line 279
    .local v0, arrayOpt:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v0, :cond_1

    .line 280
    const/4 v5, 0x0

    .restart local v5       #k:I
    :goto_2
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v12

    if-ge v5, v12, :cond_1

    .line 281
    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v10

    .line 282
    .local v10, valStr:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v10, :cond_4

    .line 283
    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 292
    .end local v0           #arrayOpt:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v10           #valStr:Lcom/itextpdf/text/pdf/PdfString;
    .restart local v1       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_5
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 293
    if-eqz v1, :cond_2

    .line 295
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfName;

    .line 296
    .local v2, element:Lcom/itextpdf/text/pdf/PdfName;
    check-cast v2, Lcom/itextpdf/text/pdf/PdfName;

    .end local v2           #element:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 297
    .local v6, name:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 300
    .end local v1           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #name:Ljava/lang/String;
    :cond_6
    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v12

    new-array v8, v12, [Ljava/lang/String;

    .line 301
    .local v8, out:[Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public getBlankSignatureNames()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2183
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/AcroFields;->getSignatureNames()Ljava/util/ArrayList;

    .line 2184
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2185
    .local v4, sigs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2186
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 2187
    .local v2, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 2188
    .local v3, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->SIG:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2190
    iget-object v5, p0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2192
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2194
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    .end local v2           #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    .end local v3           #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_1
    return-object v4
.end method

.method public getField(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "name"

    .prologue
    .line 845
    iget-object v12, p0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/XfaForm;->isXfaPresent()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 846
    iget-object v12, p0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    invoke-virtual {v12, p1, p0}, Lcom/itextpdf/text/pdf/XfaForm;->findFieldName(Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields;)Ljava/lang/String;

    move-result-object p1

    .line 847
    if-nez p1, :cond_1

    .line 848
    const/4 v11, 0x0

    .line 907
    :cond_0
    :goto_0
    return-object v11

    .line 849
    :cond_1
    invoke-static {p1}, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 850
    iget-object v12, p0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    invoke-virtual {v12, p1}, Lcom/itextpdf/text/pdf/XfaForm;->findDatasetsNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-static {v12}, Lcom/itextpdf/text/pdf/XfaForm;->getNodeText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 852
    :cond_2
    iget-object v12, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    invoke-interface {v12, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 853
    .local v4, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v4, :cond_3

    .line 854
    const/4 v11, 0x0

    goto :goto_0

    .line 855
    :cond_3
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/itextpdf/text/pdf/AcroFields;->lastWasString:Z

    .line 856
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v5

    .line 861
    .local v5, mergedDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v12

    invoke-static {v12}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    .line 862
    .local v9, v:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v9, :cond_4

    .line 863
    const-string v11, ""

    goto :goto_0

    .line 864
    :cond_4
    instance-of v12, v9, Lcom/itextpdf/text/pdf/PRStream;

    if-eqz v12, :cond_5

    .line 867
    :try_start_0
    check-cast v9, Lcom/itextpdf/text/pdf/PRStream;

    .end local v9           #v:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v10

    .line 868
    .local v10, valBytes:[B
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 869
    .end local v10           #valBytes:[B
    :catch_0
    move-exception v0

    .line 870
    .local v0, e:Ljava/io/IOException;
    new-instance v12, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v12, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v12

    .line 874
    .end local v0           #e:Ljava/io/IOException;
    .restart local v9       #v:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_5
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v8

    .line 875
    .local v8, type:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->BTN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v12, v8}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 876
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v1

    .line 877
    .local v1, ff:Lcom/itextpdf/text/pdf/PdfNumber;
    const/4 v2, 0x0

    .line 878
    .local v2, flags:I
    if-eqz v1, :cond_6

    .line 879
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v2

    .line 880
    :cond_6
    const/high16 v12, 0x1

    and-int/2addr v12, v2

    if-eqz v12, :cond_7

    .line 881
    const-string v11, ""

    goto :goto_0

    .line 882
    :cond_7
    const-string v11, ""

    .line 883
    .local v11, value:Ljava/lang/String;
    instance-of v12, v9, Lcom/itextpdf/text/pdf/PdfName;

    if-eqz v12, :cond_9

    .line 884
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 887
    .end local v9           #v:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_8
    :goto_1
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v12

    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->OPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v12, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v6

    .line 888
    .local v6, opts:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v6, :cond_0

    .line 889
    const/4 v3, 0x0

    .line 891
    .local v3, idx:I
    :try_start_1
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 892
    invoke-virtual {v6, v3}, Lcom/itextpdf/text/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v7

    .line 893
    .local v7, ps:Lcom/itextpdf/text/pdf/PdfString;
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v11

    .line 894
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/itextpdf/text/pdf/AcroFields;->lastWasString:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 896
    .end local v7           #ps:Lcom/itextpdf/text/pdf/PdfString;
    :catch_1
    move-exception v12

    goto/16 :goto_0

    .line 885
    .end local v3           #idx:I
    .end local v6           #opts:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v9       #v:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_9
    instance-of v12, v9, Lcom/itextpdf/text/pdf/PdfString;

    if-eqz v12, :cond_8

    .line 886
    check-cast v9, Lcom/itextpdf/text/pdf/PdfString;

    .end local v9           #v:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    .line 901
    .end local v1           #ff:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v2           #flags:I
    .end local v11           #value:Ljava/lang/String;
    .restart local v9       #v:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_a
    instance-of v12, v9, Lcom/itextpdf/text/pdf/PdfString;

    if-eqz v12, :cond_b

    .line 902
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/itextpdf/text/pdf/AcroFields;->lastWasString:Z

    .line 903
    check-cast v9, Lcom/itextpdf/text/pdf/PdfString;

    .end local v9           #v:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 904
    .restart local v9       #v:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_b
    instance-of v12, v9, Lcom/itextpdf/text/pdf/PdfName;

    if-eqz v12, :cond_c

    .line 905
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 907
    :cond_c
    const-string v11, ""

    goto/16 :goto_0
.end method

.method public getFieldCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/TextField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2417
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->fieldCache:Ljava/util/Map;

    return-object v0
.end method

.method public getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;
    .locals 1
    .parameter "name"

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/XfaForm;->isXfaPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    invoke-virtual {v0, p1, p0}, Lcom/itextpdf/text/pdf/XfaForm;->findFieldName(Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields;)Ljava/lang/String;

    move-result-object p1

    .line 1583
    if-nez p1, :cond_0

    .line 1584
    const/4 v0, 0x0

    .line 1586
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/AcroFields$Item;

    goto :goto_0
.end method

.method public getFieldPositions(Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1613
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;

    move-result-object v2

    .line 1614
    .local v2, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v2, :cond_1

    .line 1615
    const/4 v9, 0x0

    .line 1662
    :cond_0
    return-object v9

    .line 1616
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1617
    .local v9, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;>;"
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v12

    if-ge v3, v12, :cond_0

    .line 1619
    :try_start_0
    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v11

    .line 1620
    .local v11, wd:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v8

    .line 1621
    .local v8, rect:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v8, :cond_2

    .line 1617
    .end local v8           #rect:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v11           #wd:Lcom/itextpdf/text/pdf/PdfDictionary;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1623
    .restart local v8       #rect:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v11       #wd:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_2
    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getNormalizedRectangle(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/Rectangle;

    move-result-object v6

    .line 1624
    .local v6, r:Lcom/itextpdf/text/Rectangle;
    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getPage(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1625
    .local v4, page:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v12, v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPageRotation(I)I

    move-result v10

    .line 1626
    .local v10, rotation:I
    new-instance v1, Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;-><init>()V

    .line 1627
    .local v1, fp:Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;
    iput v4, v1, Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;->page:I

    .line 1628
    if-eqz v10, :cond_3

    .line 1629
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v12, v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPageSize(I)Lcom/itextpdf/text/Rectangle;

    move-result-object v5

    .line 1630
    .local v5, pageSize:Lcom/itextpdf/text/Rectangle;
    sparse-switch v10, :sswitch_data_0

    .line 1653
    :goto_2
    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->normalize()V

    .line 1655
    .end local v5           #pageSize:Lcom/itextpdf/text/Rectangle;
    :cond_3
    iput-object v6, v1, Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;->position:Lcom/itextpdf/text/Rectangle;

    .line 1656
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1658
    .end local v1           #fp:Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;
    .end local v4           #page:I
    .end local v6           #r:Lcom/itextpdf/text/Rectangle;
    .end local v8           #rect:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v10           #rotation:I
    .end local v11           #wd:Lcom/itextpdf/text/pdf/PdfDictionary;
    :catch_0
    move-exception v12

    goto :goto_1

    .line 1632
    .restart local v1       #fp:Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;
    .restart local v4       #page:I
    .restart local v5       #pageSize:Lcom/itextpdf/text/Rectangle;
    .restart local v6       #r:Lcom/itextpdf/text/Rectangle;
    .restart local v8       #rect:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v10       #rotation:I
    .restart local v11       #wd:Lcom/itextpdf/text/pdf/PdfDictionary;
    :sswitch_0
    new-instance v7, Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v5}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v12

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v13

    sub-float/2addr v12, v13

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v13

    invoke-virtual {v5}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v14

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v15

    sub-float/2addr v14, v15

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v15

    invoke-direct {v7, v12, v13, v14, v15}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .end local v6           #r:Lcom/itextpdf/text/Rectangle;
    .local v7, r:Lcom/itextpdf/text/Rectangle;
    move-object v6, v7

    .line 1637
    .end local v7           #r:Lcom/itextpdf/text/Rectangle;
    .restart local v6       #r:Lcom/itextpdf/text/Rectangle;
    goto :goto_2

    .line 1639
    :sswitch_1
    new-instance v7, Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v5}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v12

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v13

    sub-float/2addr v12, v13

    invoke-virtual {v5}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v13

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-virtual {v5}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v14

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v15

    sub-float/2addr v14, v15

    invoke-virtual {v5}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v15

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v16

    sub-float v15, v15, v16

    invoke-direct {v7, v12, v13, v14, v15}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    .end local v6           #r:Lcom/itextpdf/text/Rectangle;
    .restart local v7       #r:Lcom/itextpdf/text/Rectangle;
    move-object v6, v7

    .line 1644
    .end local v7           #r:Lcom/itextpdf/text/Rectangle;
    .restart local v6       #r:Lcom/itextpdf/text/Rectangle;
    goto :goto_2

    .line 1646
    :sswitch_2
    new-instance v7, Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v12

    invoke-virtual {v5}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v13

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v14

    invoke-virtual {v5}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v15

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v16

    sub-float v15, v15, v16

    invoke-direct {v7, v12, v13, v14, v15}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #r:Lcom/itextpdf/text/Rectangle;
    .restart local v7       #r:Lcom/itextpdf/text/Rectangle;
    move-object v6, v7

    .end local v7           #r:Lcom/itextpdf/text/Rectangle;
    .restart local v6       #r:Lcom/itextpdf/text/Rectangle;
    goto :goto_2

    .line 1630
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method public getFieldRichValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 819
    iget-object v4, p0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/XfaForm;->isXfaPresent()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 836
    :cond_0
    :goto_0
    return-object v1

    .line 823
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 824
    .local v0, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-eqz v0, :cond_0

    .line 828
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    .line 829
    .local v2, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->RV:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v3

    .line 831
    .local v3, rich:Lcom/itextpdf/text/pdf/PdfString;
    const/4 v1, 0x0

    .line 832
    .local v1, markup:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 833
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfString;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFieldType(Ljava/lang/String;)I
    .locals 7
    .parameter "fieldName"

    .prologue
    const/4 v5, 0x0

    .line 420
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;

    move-result-object v0

    .line 421
    .local v0, fd:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v0, :cond_1

    .line 452
    :cond_0
    :goto_0
    return v5

    .line 423
    :cond_1
    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 424
    .local v3, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v4

    .line 425
    .local v4, type:Lcom/itextpdf/text/pdf/PdfName;
    if-eqz v4, :cond_0

    .line 427
    const/4 v1, 0x0

    .line 428
    .local v1, ff:I
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v2

    .line 429
    .local v2, ffo:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v2, :cond_2

    .line 430
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v1

    .line 432
    :cond_2
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->BTN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 433
    const/high16 v5, 0x1

    and-int/2addr v5, v1

    if-eqz v5, :cond_3

    .line 434
    const/4 v5, 0x1

    goto :goto_0

    .line 435
    :cond_3
    const v5, 0x8000

    and-int/2addr v5, v1

    if-eqz v5, :cond_4

    .line 436
    const/4 v5, 0x3

    goto :goto_0

    .line 438
    :cond_4
    const/4 v5, 0x2

    goto :goto_0

    .line 440
    :cond_5
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->TX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 441
    const/4 v5, 0x4

    goto :goto_0

    .line 443
    :cond_6
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->CH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 444
    const/high16 v5, 0x2

    and-int/2addr v5, v1

    if-eqz v5, :cond_7

    .line 445
    const/4 v5, 0x6

    goto :goto_0

    .line 447
    :cond_7
    const/4 v5, 0x5

    goto :goto_0

    .line 449
    :cond_8
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->SIG:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v4}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 450
    const/4 v5, 0x7

    goto :goto_0
.end method

.method public getFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/AcroFields$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    return-object v0
.end method

.method public getListOptionDisplay(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "fieldName"

    .prologue
    .line 351
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/AcroFields;->getListOption(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListOptionExport(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "fieldName"

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/AcroFields;->getListOption(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListSelection(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter "name"

    .prologue
    const/4 v11, 0x0

    .line 919
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 920
    .local v8, s:Ljava/lang/String;
    if-nez v8, :cond_0

    .line 921
    new-array v6, v11, [Ljava/lang/String;

    .line 926
    .local v6, ret:[Ljava/lang/String;
    :goto_0
    iget-object v10, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    invoke-interface {v10, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 927
    .local v3, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v3, :cond_1

    move-object v7, v6

    .line 944
    .end local v6           #ret:[Ljava/lang/String;
    .local v7, ret:[Ljava/lang/String;
    :goto_1
    return-object v7

    .line 924
    .end local v3           #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    .end local v7           #ret:[Ljava/lang/String;
    :cond_0
    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    aput-object v8, v6, v11

    .restart local v6       #ret:[Ljava/lang/String;
    goto :goto_0

    .line 933
    .restart local v3       #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    :cond_1
    invoke-virtual {v3, v11}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v10

    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->I:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v9

    .line 934
    .local v9, values:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v9, :cond_2

    move-object v7, v6

    .line 935
    .end local v6           #ret:[Ljava/lang/String;
    .restart local v7       #ret:[Ljava/lang/String;
    goto :goto_1

    .line 936
    .end local v7           #ret:[Ljava/lang/String;
    .restart local v6       #ret:[Ljava/lang/String;
    :cond_2
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v10

    new-array v6, v10, [Ljava/lang/String;

    .line 937
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getListOptionExport(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 939
    .local v5, options:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 940
    .local v1, idx:I
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfArray;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfObject;>;"
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 941
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 942
    .local v4, n:Lcom/itextpdf/text/pdf/PdfNumber;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #idx:I
    .local v2, idx:I
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v10

    aget-object v10, v5, v10

    aput-object v10, v6, v1

    move v1, v2

    .end local v2           #idx:I
    .restart local v1       #idx:I
    goto :goto_2

    .end local v4           #n:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_3
    move-object v7, v6

    .line 944
    .end local v6           #ret:[Ljava/lang/String;
    .restart local v7       #ret:[Ljava/lang/String;
    goto :goto_1
.end method

.method getMKColor(Lcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/BaseColor;
    .locals 5
    .parameter "ar"

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 798
    if-nez p1, :cond_0

    .line 808
    :goto_0
    return-object v0

    .line 800
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 802
    :pswitch_1
    new-instance v0, Lcom/itextpdf/text/pdf/GrayColor;

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/GrayColor;-><init>(F)V

    goto :goto_0

    .line 804
    :pswitch_2
    new-instance v0, Lcom/itextpdf/text/BaseColor;

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v1

    invoke-static {v1}, Lcom/itextpdf/text/pdf/ExtendedColor;->normalize(F)F

    move-result v1

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/ExtendedColor;->normalize(F)F

    move-result v2

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v3

    invoke-static {v3}, Lcom/itextpdf/text/pdf/ExtendedColor;->normalize(F)F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/BaseColor;-><init>(FFF)V

    goto :goto_0

    .line 806
    :pswitch_3
    new-instance v0, Lcom/itextpdf/text/pdf/CMYKColor;

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v1

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v2

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/CMYKColor;-><init>(FFFF)V

    goto :goto_0

    .line 800
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getNewPushbuttonFromField(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PushbuttonField;
    .locals 1
    .parameter "field"

    .prologue
    .line 2624
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/AcroFields;->getNewPushbuttonFromField(Ljava/lang/String;I)Lcom/itextpdf/text/pdf/PushbuttonField;

    move-result-object v0

    return-object v0
.end method

.method public getNewPushbuttonFromField(Ljava/lang/String;I)Lcom/itextpdf/text/pdf/PushbuttonField;
    .locals 21
    .parameter "field"
    .parameter "order"

    .prologue
    .line 2640
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldType(Ljava/lang/String;)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 2641
    const/4 v13, 0x0

    .line 2691
    :cond_0
    :goto_0
    return-object v13

    .line 2642
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;

    move-result-object v10

    .line 2643
    .local v10, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v19

    move/from16 v0, p2

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 2644
    const/4 v13, 0x0

    goto :goto_0

    .line 2645
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldPositions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 2646
    .local v14, pos:Ljava/util/List;,"Ljava/util/List<Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;>;"
    move/from16 v0, p2

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;->position:Lcom/itextpdf/text/Rectangle;

    .line 2647
    .local v4, box:Lcom/itextpdf/text/Rectangle;
    new-instance v13, Lcom/itextpdf/text/pdf/PushbuttonField;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v13, v0, v4, v1}, Lcom/itextpdf/text/pdf/PushbuttonField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;)V

    .line 2648
    .local v13, newButton:Lcom/itextpdf/text/pdf/PushbuttonField;
    move/from16 v0, p2

    invoke-virtual {v10, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v5

    .line 2649
    .local v5, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Lcom/itextpdf/text/pdf/AcroFields;->decodeGenericDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/BaseField;)V

    .line 2650
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->MK:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v12

    .line 2651
    .local v12, mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v12, :cond_0

    .line 2652
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->CA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v17

    .line 2653
    .local v17, text:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v17, :cond_3

    .line 2654
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/itextpdf/text/pdf/PushbuttonField;->setText(Ljava/lang/String;)V

    .line 2655
    :cond_3
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->TP:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v18

    .line 2656
    .local v18, tp:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v18, :cond_4

    .line 2657
    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/itextpdf/text/pdf/PushbuttonField;->setLayout(I)V

    .line 2658
    :cond_4
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->IF:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v9

    .line 2659
    .local v9, ifit:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v9, :cond_9

    .line 2660
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->SW:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v16

    .line 2661
    .local v16, sw:Lcom/itextpdf/text/pdf/PdfName;
    if-eqz v16, :cond_6

    .line 2662
    const/4 v15, 0x1

    .line 2663
    .local v15, scale:I
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->B:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 2664
    const/4 v15, 0x3

    .line 2669
    :cond_5
    :goto_1
    invoke-virtual {v13, v15}, Lcom/itextpdf/text/pdf/PushbuttonField;->setScaleIcon(I)V

    .line 2671
    .end local v15           #scale:I
    :cond_6
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v16

    .line 2672
    if-eqz v16, :cond_7

    .line 2673
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 2674
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/itextpdf/text/pdf/PushbuttonField;->setProportionalIcon(Z)V

    .line 2676
    :cond_7
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v2

    .line 2677
    .local v2, aj:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 2678
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v11

    .line 2679
    .local v11, left:F
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v3

    .line 2680
    .local v3, bottom:F
    invoke-virtual {v13, v11}, Lcom/itextpdf/text/pdf/PushbuttonField;->setIconHorizontalAdjustment(F)V

    .line 2681
    invoke-virtual {v13, v3}, Lcom/itextpdf/text/pdf/PushbuttonField;->setIconVerticalAdjustment(F)V

    .line 2683
    .end local v3           #bottom:F
    .end local v11           #left:F
    :cond_8
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->FB:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsBoolean(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfBoolean;

    move-result-object v7

    .line 2684
    .local v7, fb:Lcom/itextpdf/text/pdf/PdfBoolean;
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfBoolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 2685
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Lcom/itextpdf/text/pdf/PushbuttonField;->setIconFitToBounds(Z)V

    .line 2687
    .end local v2           #aj:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v7           #fb:Lcom/itextpdf/text/pdf/PdfBoolean;
    .end local v16           #sw:Lcom/itextpdf/text/pdf/PdfName;
    :cond_9
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->I:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    .line 2688
    .local v8, i:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfObject;->isIndirect()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 2689
    check-cast v8, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .end local v8           #i:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v13, v8}, Lcom/itextpdf/text/pdf/PushbuttonField;->setIconReference(Lcom/itextpdf/text/pdf/PRIndirectReference;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2693
    .end local v4           #box:Lcom/itextpdf/text/Rectangle;
    .end local v5           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v9           #ifit:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v10           #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    .end local v12           #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v13           #newButton:Lcom/itextpdf/text/pdf/PushbuttonField;
    .end local v14           #pos:Ljava/util/List;,"Ljava/util/List<Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;>;"
    .end local v17           #text:Lcom/itextpdf/text/pdf/PdfString;
    .end local v18           #tp:Lcom/itextpdf/text/pdf/PdfNumber;
    :catch_0
    move-exception v6

    .line 2694
    .local v6, e:Ljava/lang/Exception;
    new-instance v19, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v19

    .line 2665
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v4       #box:Lcom/itextpdf/text/Rectangle;
    .restart local v5       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v9       #ifit:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v10       #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    .restart local v12       #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v13       #newButton:Lcom/itextpdf/text/pdf/PushbuttonField;
    .restart local v14       #pos:Ljava/util/List;,"Ljava/util/List<Lcom/itextpdf/text/pdf/AcroFields$FieldPosition;>;"
    .restart local v15       #scale:I
    .restart local v16       #sw:Lcom/itextpdf/text/pdf/PdfName;
    .restart local v17       #text:Lcom/itextpdf/text/pdf/PdfString;
    .restart local v18       #tp:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_a
    :try_start_1
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 2666
    const/4 v15, 0x4

    goto/16 :goto_1

    .line 2667
    :cond_b
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v19

    if-eqz v19, :cond_5

    .line 2668
    const/4 v15, 0x2

    goto/16 :goto_1
.end method

.method public getRevision(Ljava/lang/String;)I
    .locals 2
    .parameter "field"

    .prologue
    .line 2383
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/AcroFields;->getSignatureNames()Ljava/util/ArrayList;

    .line 2384
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getTranslatedFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2385
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2386
    const/4 v0, 0x0

    .line 2387
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getSignatureDictionary(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 3
    .parameter "name"

    .prologue
    .line 2205
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/AcroFields;->getSignatureNames()Ljava/util/ArrayList;

    .line 2206
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getTranslatedFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2207
    iget-object v2, p0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2208
    const/4 v2, 0x0

    .line 2211
    :goto_0
    return-object v2

    .line 2209
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 2210
    .local v0, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 2211
    .local v1, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    goto :goto_0
.end method

.method public getSignatureNames()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2136
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    if-eqz v15, :cond_0

    .line 2137
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2174
    :goto_0
    return-object v15

    .line 2138
    :cond_0
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    .line 2139
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 2140
    .local v13, sorter:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2141
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 2142
    .local v4, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    .line 2143
    .local v7, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v15, Lcom/itextpdf/text/pdf/PdfName;->SIG:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v16, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2145
    sget-object v15, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v15}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v14

    .line 2146
    .local v14, v:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v14, :cond_1

    .line 2148
    sget-object v15, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v14, v15}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v1

    .line 2149
    .local v1, contents:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v1, :cond_1

    .line 2151
    sget-object v15, Lcom/itextpdf/text/pdf/PdfName;->BYTERANGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v14, v15}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v12

    .line 2152
    .local v12, ro:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v12, :cond_1

    .line 2154
    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v11

    .line 2155
    .local v11, rangeSize:I
    const/4 v15, 0x2

    if-lt v11, v15, :cond_1

    .line 2157
    add-int/lit8 v15, v11, -0x1

    invoke-virtual {v12, v15}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v15

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v15

    add-int/lit8 v16, v11, -0x2

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v16

    add-int v6, v15, v16

    .line 2158
    .local v6, length:I
    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v6, v17, v18

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    aput-object v17, v15, v16

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2160
    .end local v1           #contents:Lcom/itextpdf/text/pdf/PdfString;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields$Item;>;"
    .end local v4           #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    .end local v6           #length:I
    .end local v7           #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v11           #rangeSize:I
    .end local v12           #ro:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v14           #v:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_2
    new-instance v15, Lcom/itextpdf/text/pdf/AcroFields$SorterComparator;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Lcom/itextpdf/text/pdf/AcroFields$SorterComparator;-><init>(Lcom/itextpdf/text/pdf/AcroFields$1;)V

    invoke-static {v13, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2161
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_4

    .line 2162
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/Object;

    const/16 v16, 0x1

    aget-object v15, v15, v16

    check-cast v15, [I

    check-cast v15, [I

    const/16 v16, 0x0

    aget v15, v15, v16

    int-to-long v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfReader;->getFileLength()J

    move-result-wide v17

    cmp-long v15, v15, v17

    if-nez v15, :cond_3

    .line 2163
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/itextpdf/text/pdf/AcroFields;->totalRevisions:I

    .line 2166
    :goto_2
    const/4 v5, 0x0

    .local v5, k:I
    :goto_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v5, v15, :cond_4

    .line 2167
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    .line 2168
    .local v9, objs:[Ljava/lang/Object;
    const/4 v15, 0x0

    aget-object v8, v9, v15

    check-cast v8, Ljava/lang/String;

    .line 2169
    .local v8, name:Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v15, v9, v15

    check-cast v15, [I

    move-object v10, v15

    check-cast v10, [I

    .line 2170
    .local v10, p:[I
    const/4 v15, 0x1

    add-int/lit8 v16, v5, 0x1

    aput v16, v10, v15

    .line 2171
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    invoke-virtual {v15, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2166
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2165
    .end local v5           #k:I
    .end local v8           #name:Ljava/lang/String;
    .end local v9           #objs:[Ljava/lang/Object;
    .end local v10           #p:[I
    :cond_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/itextpdf/text/pdf/AcroFields;->totalRevisions:I

    goto :goto_2

    .line 2174
    :cond_4
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_0
.end method

.method public getSubstitutionFonts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/BaseFont;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2575
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->substitutionFonts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotalRevisions()I
    .locals 1

    .prologue
    .line 2372
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/AcroFields;->getSignatureNames()Ljava/util/ArrayList;

    .line 2373
    iget v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->totalRevisions:I

    return v0
.end method

.method public getTranslatedFieldName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 1596
    iget-object v1, p0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/XfaForm;->isXfaPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1597
    iget-object v1, p0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    invoke-virtual {v1, p1, p0}, Lcom/itextpdf/text/pdf/XfaForm;->findFieldName(Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields;)Ljava/lang/String;

    move-result-object v0

    .line 1598
    .local v0, namex:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1599
    move-object p1, v0

    .line 1601
    .end local v0           #namex:Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public getXfa()Lcom/itextpdf/text/pdf/XfaForm;
    .locals 1

    .prologue
    .line 2594
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    return-object v0
.end method

.method public isGenerateAppearances()Z
    .locals 1

    .prologue
    .line 1774
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->generateAppearances:Z

    return v0
.end method

.method isInAP(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;)Z
    .locals 4
    .parameter "dic"
    .parameter "check"

    .prologue
    const/4 v2, 0x0

    .line 1556
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    .line 1557
    .local v1, appDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v1, :cond_1

    .line 1560
    :cond_0
    :goto_0
    return v2

    .line 1559
    :cond_1
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1560
    .local v0, NDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public mergeXfaData(Lorg/w3c/dom/Node;)V
    .locals 6
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1245
    new-instance v0, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;-><init>(Lorg/w3c/dom/Node;)V

    .line 1246
    .local v0, data:Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->getOrder()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1247
    .local v3, string:Ljava/lang/String;
    move-object v2, v3

    .line 1248
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->getName2Node()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Node;

    invoke-static {v5}, Lcom/itextpdf/text/pdf/XfaForm;->getNodeText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    .line 1249
    .local v4, text:Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Lcom/itextpdf/text/pdf/AcroFields;->setField(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1251
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #string:Ljava/lang/String;
    .end local v4           #text:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public regenerateField(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1302
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1303
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p0, p1, v0, v0}, Lcom/itextpdf/text/pdf/AcroFields;->setField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public removeField(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 1765
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/AcroFields;->removeField(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public removeField(Ljava/lang/String;I)Z
    .locals 13
    .parameter "name"
    .parameter "page"

    .prologue
    .line 1708
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;

    move-result-object v3

    .line 1709
    .local v3, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v3, :cond_0

    .line 1710
    const/4 v11, 0x0

    .line 1755
    :goto_0
    return v11

    .line 1711
    :cond_0
    iget-object v11, p0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v11

    sget-object v12, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v11

    iget-object v12, p0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v12}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1713
    .local v0, acroForm:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_1

    .line 1714
    const/4 v11, 0x0

    goto :goto_0

    .line 1715
    :cond_1
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->FIELDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v2

    .line 1716
    .local v2, arrayf:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v2, :cond_2

    .line 1717
    const/4 v11, 0x0

    goto :goto_0

    .line 1718
    :cond_2
    const/4 v4, 0x0

    .local v4, k:I
    :goto_1
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v11

    if-ge v4, v11, :cond_a

    .line 1719
    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getPage(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1720
    .local v8, pageV:I
    const/4 v11, -0x1

    if-eq p2, v11, :cond_4

    if-eq p2, v8, :cond_4

    .line 1718
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1722
    :cond_4
    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidgetRef(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v9

    .line 1723
    .local v9, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v10

    .line 1724
    .local v10, wd:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v11, p0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v11, v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    .line 1725
    .local v7, pageDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v1

    .line 1726
    .local v1, annots:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v1, :cond_5

    .line 1727
    invoke-direct {p0, v1, v9}, Lcom/itextpdf/text/pdf/AcroFields;->removeRefFromArray(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PdfObject;)I

    move-result v11

    if-nez v11, :cond_8

    .line 1728
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->ANNOTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1729
    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1734
    :cond_5
    :goto_3
    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 1735
    move-object v5, v9

    .line 1736
    .local v5, kid:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :goto_4
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsIndirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 1737
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v10

    .line 1738
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v6

    .line 1739
    .local v6, kids:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {p0, v6, v5}, Lcom/itextpdf/text/pdf/AcroFields;->removeRefFromArray(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PdfObject;)I

    move-result v11

    if-eqz v11, :cond_9

    .line 1744
    .end local v6           #kids:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_6
    if-nez v9, :cond_7

    .line 1745
    invoke-direct {p0, v2, v5}, Lcom/itextpdf/text/pdf/AcroFields;->removeRefFromArray(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PdfObject;)I

    .line 1746
    invoke-direct {p0, v2}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1748
    :cond_7
    const/4 v11, -0x1

    if-eq p2, v11, :cond_3

    .line 1749
    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/AcroFields$Item;->remove(I)V

    .line 1750
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1732
    .end local v5           #kid:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_8
    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_3

    .line 1741
    .restart local v5       #kid:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .restart local v6       #kids:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_9
    move-object v5, v9

    .line 1742
    invoke-static {v9}, Lcom/itextpdf/text/pdf/PdfReader;->killIndirect(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    goto :goto_4

    .line 1753
    .end local v1           #annots:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v5           #kid:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v6           #kids:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v7           #pageDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v8           #pageV:I
    .end local v9           #ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v10           #wd:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_a
    const/4 v11, -0x1

    if-eq p2, v11, :cond_b

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v11

    if-nez v11, :cond_c

    .line 1754
    :cond_b
    iget-object v11, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    invoke-interface {v11, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1755
    :cond_c
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method public removeFieldsFromPage(I)Z
    .locals 7
    .parameter "page"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1686
    if-ge p1, v5, :cond_0

    .line 1695
    :goto_0
    return v4

    .line 1688
    :cond_0
    iget-object v6, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    new-array v3, v6, [Ljava/lang/String;

    .line 1689
    .local v3, names:[Ljava/lang/String;
    iget-object v6, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1690
    const/4 v0, 0x0

    .line 1691
    .local v0, found:Z
    const/4 v2, 0x0

    .local v2, k:I
    :goto_1
    array-length v6, v3

    if-ge v2, v6, :cond_3

    .line 1692
    aget-object v6, v3, v2

    invoke-virtual {p0, v6, p1}, Lcom/itextpdf/text/pdf/AcroFields;->removeField(Ljava/lang/String;I)Z

    move-result v1

    .line 1693
    .local v1, fr:Z
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v0, v5

    .line 1691
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v4

    .line 1693
    goto :goto_2

    .end local v1           #fr:Z
    :cond_3
    move v4, v0

    .line 1695
    goto :goto_0
.end method

.method public removeXfa()V
    .locals 5

    .prologue
    .line 2601
    iget-object v3, p0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    .line 2602
    .local v2, root:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 2603
    .local v0, acroform:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->XFA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2605
    :try_start_0
    new-instance v3, Lcom/itextpdf/text/pdf/XfaForm;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/XfaForm;-><init>(Lcom/itextpdf/text/pdf/PdfReader;)V

    iput-object v3, p0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2610
    return-void

    .line 2607
    :catch_0
    move-exception v1

    .line 2608
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public renameField(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "oldName"
    .parameter "newName"

    .prologue
    const/16 v6, 0x2e

    const/4 v4, 0x0

    .line 485
    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    .line 486
    .local v0, idx1:I
    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 487
    .local v1, idx2:I
    if-eq v0, v1, :cond_1

    .line 505
    :cond_0
    :goto_0
    return v4

    .line 489
    :cond_1
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 491
    iget-object v5, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 493
    iget-object v5, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 494
    .local v2, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-eqz v2, :cond_0

    .line 496
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 497
    new-instance v3, Lcom/itextpdf/text/pdf/PdfString;

    const-string v4, "UnicodeBig"

    invoke-direct {v3, p2, v4}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    .local v3, ss:Lcom/itextpdf/text/pdf/PdfString;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    const/4 v5, 0x5

    invoke-virtual {v2, v4, v3, v5}, Lcom/itextpdf/text/pdf/AcroFields$Item;->writeToAll(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;I)V

    .line 500
    const/4 v4, 0x4

    invoke-virtual {v2, p0, v4}, Lcom/itextpdf/text/pdf/AcroFields$Item;->markUsed(Lcom/itextpdf/text/pdf/AcroFields;I)V

    .line 502
    iget-object v4, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    iget-object v4, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    invoke-interface {v4, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public replacePushbuttonField(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFormField;)Z
    .locals 1
    .parameter "field"
    .parameter "button"

    .prologue
    .line 2709
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/AcroFields;->replacePushbuttonField(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFormField;I)Z

    move-result v0

    return v0
.end method

.method public replacePushbuttonField(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFormField;I)Z
    .locals 11
    .parameter "field"
    .parameter "button"
    .parameter "order"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2726
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldType(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v9, :cond_1

    .line 2749
    :cond_0
    :goto_0
    return v8

    .line 2728
    :cond_1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;

    move-result-object v2

    .line 2729
    .local v2, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v10

    if-ge p3, v10, :cond_0

    .line 2731
    invoke-virtual {v2, p3}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v5

    .line 2732
    .local v5, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v2, p3}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v6

    .line 2733
    .local v6, values:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v2, p3}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    .line 2734
    .local v7, widgets:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/4 v3, 0x0

    .local v3, k:I
    :goto_1
    sget-object v8, Lcom/itextpdf/text/pdf/AcroFields;->buttonRemove:[Lcom/itextpdf/text/pdf/PdfName;

    array-length v8, v8

    if-ge v3, v8, :cond_2

    .line 2735
    sget-object v8, Lcom/itextpdf/text/pdf/AcroFields;->buttonRemove:[Lcom/itextpdf/text/pdf/PdfName;

    aget-object v8, v8, v3

    invoke-virtual {v5, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2736
    sget-object v8, Lcom/itextpdf/text/pdf/AcroFields;->buttonRemove:[Lcom/itextpdf/text/pdf/PdfName;

    aget-object v8, v8, v3

    invoke-virtual {v6, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2737
    sget-object v8, Lcom/itextpdf/text/pdf/AcroFields;->buttonRemove:[Lcom/itextpdf/text/pdf/PdfName;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2734
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2739
    :cond_2
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfFormField;->getKeys()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    .local v0, element:Lcom/itextpdf/text/pdf/PdfName;
    move-object v4, v0

    .line 2740
    check-cast v4, Lcom/itextpdf/text/pdf/PdfName;

    .line 2741
    .local v4, key:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v8}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v8}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 2743
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v8}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2744
    invoke-virtual {p2, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-virtual {v6, v4, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2747
    :goto_3
    invoke-virtual {p2, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_2

    .line 2746
    :cond_4
    invoke-virtual {p2, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_3

    .end local v0           #element:Lcom/itextpdf/text/pdf/PdfName;
    .end local v4           #key:Lcom/itextpdf/text/pdf/PdfName;
    :cond_5
    move v8, v9

    .line 2749
    goto :goto_0
.end method

.method public setExtraMargin(FF)V
    .locals 0
    .parameter "extraMarginLeft"
    .parameter "extraMarginTop"

    .prologue
    .line 2457
    iput p1, p0, Lcom/itextpdf/text/pdf/AcroFields;->extraMarginLeft:F

    .line 2458
    iput p2, p0, Lcom/itextpdf/text/pdf/AcroFields;->extraMarginTop:F

    .line 2459
    return-void
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1317
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/AcroFields;->setField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 32
    .parameter "name"
    .parameter "value"
    .parameter "display"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v29, v0

    if-nez v29, :cond_0

    .line 1386
    new-instance v29, Lcom/itextpdf/text/DocumentException;

    const-string v30, "this.acrofields.instance.is.read.only"

    const/16 v31, 0x0

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v29

    .line 1387
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/pdf/XfaForm;->isXfaPresent()Z

    move-result v29

    if-eqz v29, :cond_3

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/XfaForm;->findFieldName(Ljava/lang/String;Lcom/itextpdf/text/pdf/AcroFields;)Ljava/lang/String;

    move-result-object p1

    .line 1389
    if-nez p1, :cond_1

    .line 1390
    const/16 v29, 0x0

    .line 1504
    :goto_0
    return v29

    .line 1391
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/itextpdf/text/pdf/XfaForm$Xml2Som;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1392
    .local v19, shortName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/XfaForm;->findDatasetsNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v28

    .line 1393
    .local v28, xn:Lorg/w3c/dom/Node;
    if-nez v28, :cond_2

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/itextpdf/text/pdf/XfaForm;->getDatasetsSom()Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/itextpdf/text/pdf/XfaForm;->getDatasetsNode()Lorg/w3c/dom/Node;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/XfaForm$Xml2SomDatasets;->insertNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v28

    .line 1396
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->xfa:Lcom/itextpdf/text/pdf/XfaForm;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/XfaForm;->setNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    .line 1398
    .end local v19           #shortName:Ljava/lang/String;
    .end local v28           #xn:Lorg/w3c/dom/Node;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 1399
    .local v10, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v10, :cond_4

    .line 1400
    const/16 v29, 0x0

    goto :goto_0

    .line 1401
    :cond_4
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v15

    .line 1402
    .local v15, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v20

    .line 1403
    .local v20, type:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->TX:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 1404
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->MAXLEN:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v14

    .line 1405
    .local v14, maxLen:Lcom/itextpdf/text/pdf/PdfNumber;
    const/4 v12, 0x0

    .line 1406
    .local v12, len:I
    if-eqz v14, :cond_5

    .line 1407
    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v12

    .line 1408
    :cond_5
    if-lez v12, :cond_6

    .line 1409
    const/16 v29, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v30

    move/from16 v0, v30

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v30

    move-object/from16 v0, p2

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1411
    .end local v12           #len:I
    .end local v14           #maxLen:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_6
    if-nez p3, :cond_7

    .line 1412
    move-object/from16 p3, p2

    .line 1413
    :cond_7
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->TX:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_8

    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->CH:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 1414
    :cond_8
    new-instance v21, Lcom/itextpdf/text/pdf/PdfString;

    const-string v29, "UnicodeBig"

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    .local v21, v:Lcom/itextpdf/text/pdf/PdfString;
    const/4 v8, 0x0

    .local v8, idx:I
    :goto_1
    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_c

    .line 1416
    invoke-virtual {v10, v8}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    .line 1417
    .local v24, valueDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1418
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->I:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1419
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1420
    invoke-virtual {v10, v8}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v15

    .line 1421
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->I:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1422
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1423
    invoke-virtual {v10, v8}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v27

    .line 1424
    .local v27, widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->generateAppearances:Z

    move/from16 v29, v0

    if-eqz v29, :cond_b

    .line 1425
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-virtual {v0, v15, v1, v2}, Lcom/itextpdf/text/pdf/AcroFields;->getAppearance(Lcom/itextpdf/text/pdf/PdfDictionary;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v3

    .line 1426
    .local v3, app:Lcom/itextpdf/text/pdf/PdfAppearance;
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->CH:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 1427
    new-instance v16, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->topFirst:I

    move/from16 v29, v0

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    .line 1428
    .local v16, n:Lcom/itextpdf/text/pdf/PdfNumber;
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->TI:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1429
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->TI:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1431
    .end local v16           #n:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_9
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    .line 1432
    .local v4, appDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v4, :cond_a

    .line 1433
    new-instance v4, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v4           #appDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v4}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1434
    .restart local v4       #appDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1435
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    invoke-virtual {v15, v0, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1437
    :cond_a
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfAppearance;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v4, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->releaseTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 1444
    .end local v3           #app:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v4           #appDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1415
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 1441
    :cond_b
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1442
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    invoke-virtual {v15, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    goto :goto_2

    .line 1446
    .end local v24           #valueDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v27           #widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_c
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1448
    .end local v8           #idx:I
    .end local v21           #v:Lcom/itextpdf/text/pdf/PdfString;
    :cond_d
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->BTN:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_15

    .line 1449
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v29

    sget-object v30, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v29 .. v30}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v6

    .line 1450
    .local v6, ff:Lcom/itextpdf/text/pdf/PdfNumber;
    const/4 v7, 0x0

    .line 1451
    .local v7, flags:I
    if-eqz v6, :cond_e

    .line 1452
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v7

    .line 1453
    :cond_e
    const/high16 v29, 0x1

    and-int v29, v29, v7

    if-eqz v29, :cond_f

    .line 1457
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/itextpdf/text/pdf/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/itextpdf/text/Image;->getInstance([B)Lcom/itextpdf/text/Image;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1462
    .local v9, img:Lcom/itextpdf/text/Image;
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/pdf/AcroFields;->getNewPushbuttonFromField(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PushbuttonField;

    move-result-object v18

    .line 1463
    .local v18, pb:Lcom/itextpdf/text/pdf/PushbuttonField;
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PushbuttonField;->setImage(Lcom/itextpdf/text/Image;)V

    .line 1464
    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PushbuttonField;->getField()Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/AcroFields;->replacePushbuttonField(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFormField;)Z

    .line 1465
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1459
    .end local v9           #img:Lcom/itextpdf/text/Image;
    .end local v18           #pb:Lcom/itextpdf/text/pdf/PushbuttonField;
    :catch_0
    move-exception v5

    .line 1460
    .local v5, e:Ljava/lang/Exception;
    const/16 v29, 0x0

    goto/16 :goto_0

    .line 1467
    .end local v5           #e:Ljava/lang/Exception;
    :cond_f
    new-instance v21, Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 1468
    .local v21, v:Lcom/itextpdf/text/pdf/PdfName;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1469
    .local v13, lopt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v29

    sget-object v30, Lcom/itextpdf/text/pdf/PdfName;->OPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v29 .. v30}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v17

    .line 1470
    .local v17, opts:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v17, :cond_11

    .line 1471
    const/4 v11, 0x0

    .local v11, k:I
    :goto_3
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v11, v0, :cond_11

    .line 1472
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v23

    .line 1473
    .local v23, valStr:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v23, :cond_10

    .line 1474
    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1471
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1476
    :cond_10
    const/16 v29, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1479
    .end local v11           #k:I
    .end local v23           #valStr:Lcom/itextpdf/text/pdf/PdfString;
    :cond_11
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v25

    .line 1481
    .local v25, vidx:I
    if-ltz v25, :cond_12

    .line 1482
    new-instance v26, Lcom/itextpdf/text/pdf/PdfName;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 1485
    .local v26, vt:Lcom/itextpdf/text/pdf/PdfName;
    :goto_5
    const/4 v8, 0x0

    .restart local v8       #idx:I
    :goto_6
    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v8, v0, :cond_14

    .line 1486
    invoke-virtual {v10, v8}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v15

    .line 1487
    invoke-virtual {v10, v8}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v27

    .line 1488
    .restart local v27       #widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v10, v8}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v22

    .line 1489
    .local v22, valDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v10, v8}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1490
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1491
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1492
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1493
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/AcroFields;->isInAP(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v29

    if-eqz v29, :cond_13

    .line 1494
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->AS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1495
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->AS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1485
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1484
    .end local v8           #idx:I
    .end local v22           #valDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v26           #vt:Lcom/itextpdf/text/pdf/PdfName;
    .end local v27           #widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_12
    move-object/from16 v26, v21

    .restart local v26       #vt:Lcom/itextpdf/text/pdf/PdfName;
    goto :goto_5

    .line 1498
    .restart local v8       #idx:I
    .restart local v22       #valDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v27       #widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_13
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->AS:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v30, Lcom/itextpdf/text/pdf/PdfName;->Off:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v15, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1499
    sget-object v29, Lcom/itextpdf/text/pdf/PdfName;->AS:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v30, Lcom/itextpdf/text/pdf/PdfName;->Off:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_7

    .line 1502
    .end local v22           #valDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v27           #widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_14
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 1504
    .end local v6           #ff:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v7           #flags:I
    .end local v8           #idx:I
    .end local v13           #lopt:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #opts:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v21           #v:Lcom/itextpdf/text/pdf/PdfName;
    .end local v25           #vidx:I
    .end local v26           #vt:Lcom/itextpdf/text/pdf/PdfName;
    :cond_15
    const/16 v29, 0x0

    goto/16 :goto_0
.end method

.method public setFieldCache(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/TextField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2447
    .local p1, fieldCache:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/itextpdf/text/pdf/TextField;>;"
    iput-object p1, p0, Lcom/itextpdf/text/pdf/AcroFields;->fieldCache:Ljava/util/Map;

    .line 2448
    return-void
.end method

.method public setFieldProperty(Ljava/lang/String;Ljava/lang/String;I[I)Z
    .locals 10
    .parameter "field"
    .parameter "name"
    .parameter "value"
    .parameter "inst"

    .prologue
    const/4 v7, 0x0

    .line 1147
    iget-object v8, p0, Lcom/itextpdf/text/pdf/AcroFields;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-nez v8, :cond_0

    .line 1148
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "this.acrofields.instance.is.read.only"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v9, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1149
    :cond_0
    iget-object v8, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 1150
    .local v1, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v1, :cond_2

    .line 1234
    :cond_1
    :goto_0
    return v7

    .line 1152
    :cond_2
    new-instance v0, Lcom/itextpdf/text/pdf/AcroFields$InstHit;

    invoke-direct {v0, p4}, Lcom/itextpdf/text/pdf/AcroFields$InstHit;-><init>([I)V

    .line 1153
    .local v0, hit:Lcom/itextpdf/text/pdf/AcroFields$InstHit;
    const-string v8, "flags"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1154
    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v3, p3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    .line 1155
    .local v3, num:Lcom/itextpdf/text/pdf/PdfNumber;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_1
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v7

    if-ge v2, v7, :cond_12

    .line 1156
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/AcroFields$InstHit;->isHit(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1157
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1158
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1159
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1155
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1163
    .end local v2           #k:I
    .end local v3           #num:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_4
    const-string v8, "setflags"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1164
    const/4 v2, 0x0

    .restart local v2       #k:I
    :goto_2
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v7

    if-ge v2, v7, :cond_12

    .line 1165
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/AcroFields$InstHit;->isHit(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1166
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v3

    .line 1167
    .restart local v3       #num:Lcom/itextpdf/text/pdf/PdfNumber;
    const/4 v4, 0x0

    .line 1168
    .local v4, val:I
    if-eqz v3, :cond_5

    .line 1169
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v4

    .line 1170
    :cond_5
    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v3           #num:Lcom/itextpdf/text/pdf/PdfNumber;
    or-int v7, v4, p3

    invoke-direct {v3, v7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    .line 1171
    .restart local v3       #num:Lcom/itextpdf/text/pdf/PdfNumber;
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1172
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1173
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1164
    .end local v3           #num:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v4           #val:I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1177
    .end local v2           #k:I
    :cond_7
    const-string v8, "clrflags"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1178
    const/4 v2, 0x0

    .restart local v2       #k:I
    :goto_3
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v7

    if-ge v2, v7, :cond_12

    .line 1179
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/AcroFields$InstHit;->isHit(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1180
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v6

    .line 1181
    .local v6, widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v3

    .line 1182
    .restart local v3       #num:Lcom/itextpdf/text/pdf/PdfNumber;
    const/4 v4, 0x0

    .line 1183
    .restart local v4       #val:I
    if-eqz v3, :cond_8

    .line 1184
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v4

    .line 1185
    :cond_8
    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v3           #num:Lcom/itextpdf/text/pdf/PdfNumber;
    xor-int/lit8 v7, p3, -0x1

    and-int/2addr v7, v4

    invoke-direct {v3, v7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    .line 1186
    .restart local v3       #num:Lcom/itextpdf/text/pdf/PdfNumber;
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1187
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v7, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1188
    invoke-direct {p0, v6}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1178
    .end local v3           #num:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v4           #val:I
    .end local v6           #widget:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1192
    .end local v2           #k:I
    :cond_a
    const-string v8, "fflags"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1193
    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v3, p3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    .line 1194
    .restart local v3       #num:Lcom/itextpdf/text/pdf/PdfNumber;
    const/4 v2, 0x0

    .restart local v2       #k:I
    :goto_4
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v7

    if-ge v2, v7, :cond_12

    .line 1195
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/AcroFields$InstHit;->isHit(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1196
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1197
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1198
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1194
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1202
    .end local v2           #k:I
    .end local v3           #num:Lcom/itextpdf/text/pdf/PdfNumber;
    :cond_c
    const-string v8, "setfflags"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1203
    const/4 v2, 0x0

    .restart local v2       #k:I
    :goto_5
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v7

    if-ge v2, v7, :cond_12

    .line 1204
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/AcroFields$InstHit;->isHit(I)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1205
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v5

    .line 1206
    .local v5, valDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v3

    .line 1207
    .restart local v3       #num:Lcom/itextpdf/text/pdf/PdfNumber;
    const/4 v4, 0x0

    .line 1208
    .restart local v4       #val:I
    if-eqz v3, :cond_d

    .line 1209
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v4

    .line 1210
    :cond_d
    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v3           #num:Lcom/itextpdf/text/pdf/PdfNumber;
    or-int v7, v4, p3

    invoke-direct {v3, v7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    .line 1211
    .restart local v3       #num:Lcom/itextpdf/text/pdf/PdfNumber;
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1212
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v7, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1213
    invoke-direct {p0, v5}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1203
    .end local v3           #num:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v4           #val:I
    .end local v5           #valDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1217
    .end local v2           #k:I
    :cond_f
    const-string v8, "clrfflags"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1218
    const/4 v2, 0x0

    .restart local v2       #k:I
    :goto_6
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v7

    if-ge v2, v7, :cond_12

    .line 1219
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/AcroFields$InstHit;->isHit(I)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1220
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getValue(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v5

    .line 1221
    .restart local v5       #valDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v3

    .line 1222
    .restart local v3       #num:Lcom/itextpdf/text/pdf/PdfNumber;
    const/4 v4, 0x0

    .line 1223
    .restart local v4       #val:I
    if-eqz v3, :cond_10

    .line 1224
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v4

    .line 1225
    :cond_10
    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v3           #num:Lcom/itextpdf/text/pdf/PdfNumber;
    xor-int/lit8 v7, p3, -0x1

    and-int/2addr v7, v4

    invoke-direct {v3, v7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    .line 1226
    .restart local v3       #num:Lcom/itextpdf/text/pdf/PdfNumber;
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1227
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v7, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1228
    invoke-direct {p0, v5}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1218
    .end local v3           #num:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v4           #val:I
    .end local v5           #valDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1234
    :cond_12
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public setFieldProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[I)Z
    .locals 27
    .parameter "field"
    .parameter "name"
    .parameter "value"
    .parameter "inst"

    .prologue
    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v24, v0

    if-nez v24, :cond_0

    .line 970
    new-instance v24, Ljava/lang/RuntimeException;

    const-string v25, "this.acrofields.instance.is.read.only"

    const/16 v26, 0x0

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 972
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 973
    .local v17, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v17, :cond_1

    .line 974
    const/16 v24, 0x0

    .line 1112
    :goto_0
    return v24

    .line 975
    :cond_1
    new-instance v16, Lcom/itextpdf/text/pdf/AcroFields$InstHit;

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields$InstHit;-><init>([I)V

    .line 978
    .local v16, hit:Lcom/itextpdf/text/pdf/AcroFields$InstHit;
    const-string v24, "textfont"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 979
    const/16 v18, 0x0

    .local v18, k:I
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v24

    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_18

    .line 980
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields$InstHit;->isHit(I)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 981
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v19

    .line 982
    .local v19, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v24, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v6

    .line 983
    .local v6, da:Lcom/itextpdf/text/pdf/PdfString;
    sget-object v24, Lcom/itextpdf/text/pdf/PdfName;->DR:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v9

    .line 984
    .local v9, dr:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v6, :cond_8

    if-eqz v9, :cond_8

    .line 985
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/itextpdf/text/pdf/AcroFields;->splitDAelements(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v7

    .line 986
    .local v7, dao:[Ljava/lang/Object;
    new-instance v5, Lcom/itextpdf/text/pdf/PdfAppearance;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;-><init>()V

    .line 987
    .local v5, cb:Lcom/itextpdf/text/pdf/PdfAppearance;
    const/16 v24, 0x0

    aget-object v24, v7, v24

    if-eqz v24, :cond_8

    .line 988
    move-object/from16 v0, p3

    check-cast v0, Lcom/itextpdf/text/pdf/BaseFont;

    move-object v3, v0

    .line 989
    .local v3, bf:Lcom/itextpdf/text/pdf/BaseFont;
    sget-object v24, Lcom/itextpdf/text/pdf/PdfAppearance;->stdFieldFontNames:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/BaseFont;->getPostscriptFontName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/itextpdf/text/pdf/PdfName;

    .line 990
    .local v21, psn:Lcom/itextpdf/text/pdf/PdfName;
    if-nez v21, :cond_2

    .line 991
    new-instance v21, Lcom/itextpdf/text/pdf/PdfName;

    .end local v21           #psn:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/BaseFont;->getPostscriptFontName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 993
    .restart local v21       #psn:Lcom/itextpdf/text/pdf/PdfName;
    :cond_2
    sget-object v24, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v12

    .line 994
    .local v12, fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v12, :cond_3

    .line 995
    new-instance v12, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v12           #fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v12}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 996
    .restart local v12       #fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v24, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    invoke-virtual {v9, v0, v12}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 998
    :cond_3
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 999
    .local v14, fref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    sget-object v25, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v24 .. v25}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v23

    .line 1000
    .local v23, top:Lcom/itextpdf/text/pdf/PdfDictionary;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1001
    sget-object v24, Lcom/itextpdf/text/pdf/PdfName;->DR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual/range {v23 .. v24}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v9

    .line 1002
    if-nez v9, :cond_4

    .line 1003
    new-instance v9, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v9           #dr:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v9}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1004
    .restart local v9       #dr:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v24, Lcom/itextpdf/text/pdf/PdfName;->DR:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1006
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1007
    sget-object v24, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v13

    .line 1008
    .local v13, fontsTop:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v13, :cond_5

    .line 1009
    new-instance v13, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v13           #fontsTop:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v13}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1010
    .restart local v13       #fontsTop:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v24, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    invoke-virtual {v9, v0, v13}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1012
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1013
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v15

    check-cast v15, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 1014
    .local v15, frefTop:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    if-eqz v15, :cond_9

    .line 1015
    if-nez v14, :cond_6

    .line 1016
    move-object/from16 v0, v21

    invoke-virtual {v12, v0, v15}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1031
    :cond_6
    :goto_2
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    .line 1032
    .local v4, buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v24

    const/16 v25, 0x20

    invoke-virtual/range {v24 .. v25}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v25

    const/16 v24, 0x1

    aget-object v24, v7, v24

    check-cast v24, Ljava/lang/Float;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v24

    const-string v25, " Tf "

    invoke-virtual/range {v24 .. v25}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1033
    const/16 v24, 0x2

    aget-object v24, v7, v24

    if-eqz v24, :cond_7

    .line 1034
    const/16 v24, 0x2

    aget-object v24, v7, v24

    check-cast v24, Lcom/itextpdf/text/BaseColor;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 1035
    :cond_7
    new-instance v22, Lcom/itextpdf/text/pdf/PdfString;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    .line 1036
    .local v22, s:Lcom/itextpdf/text/pdf/PdfString;
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    sget-object v25, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1037
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    sget-object v25, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1038
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 979
    .end local v3           #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v4           #buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    .end local v5           #cb:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v6           #da:Lcom/itextpdf/text/pdf/PdfString;
    .end local v7           #dao:[Ljava/lang/Object;
    .end local v9           #dr:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v12           #fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v13           #fontsTop:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v14           #fref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v15           #frefTop:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v19           #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v21           #psn:Lcom/itextpdf/text/pdf/PdfName;
    .end local v22           #s:Lcom/itextpdf/text/pdf/PdfString;
    .end local v23           #top:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_8
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 1018
    .restart local v3       #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .restart local v5       #cb:Lcom/itextpdf/text/pdf/PdfAppearance;
    .restart local v6       #da:Lcom/itextpdf/text/pdf/PdfString;
    .restart local v7       #dao:[Ljava/lang/Object;
    .restart local v9       #dr:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v12       #fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v13       #fontsTop:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v14       #fref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .restart local v15       #frefTop:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .restart local v19       #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v21       #psn:Lcom/itextpdf/text/pdf/PdfName;
    .restart local v23       #top:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_9
    if-nez v14, :cond_6

    .line 1020
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/BaseFont;->getFontType()I

    move-result v24

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 1021
    new-instance v11, Lcom/itextpdf/text/pdf/FontDetails;

    const/16 v25, 0x0

    move-object v0, v3

    check-cast v0, Lcom/itextpdf/text/pdf/DocumentFont;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/DocumentFont;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v11, v0, v1, v3}, Lcom/itextpdf/text/pdf/FontDetails;-><init>(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/BaseFont;)V

    .line 1028
    .local v11, fd:Lcom/itextpdf/text/pdf/FontDetails;
    :goto_3
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/FontDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1029
    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/FontDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1114
    .end local v3           #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v5           #cb:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v6           #da:Lcom/itextpdf/text/pdf/PdfString;
    .end local v7           #dao:[Ljava/lang/Object;
    .end local v9           #dr:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v11           #fd:Lcom/itextpdf/text/pdf/FontDetails;
    .end local v12           #fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v13           #fontsTop:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v14           #fref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v15           #frefTop:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v16           #hit:Lcom/itextpdf/text/pdf/AcroFields$InstHit;
    .end local v17           #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    .end local v18           #k:I
    .end local v19           #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v21           #psn:Lcom/itextpdf/text/pdf/PdfName;
    .end local v23           #top:Lcom/itextpdf/text/pdf/PdfDictionary;
    :catch_0
    move-exception v10

    .line 1115
    .local v10, e:Ljava/lang/Exception;
    new-instance v24, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v24

    invoke-direct {v0, v10}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v24

    .line 1024
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v3       #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .restart local v5       #cb:Lcom/itextpdf/text/pdf/PdfAppearance;
    .restart local v6       #da:Lcom/itextpdf/text/pdf/PdfString;
    .restart local v7       #dao:[Ljava/lang/Object;
    .restart local v9       #dr:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v12       #fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v13       #fontsTop:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v14       #fref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .restart local v15       #frefTop:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .restart local v16       #hit:Lcom/itextpdf/text/pdf/AcroFields$InstHit;
    .restart local v17       #item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    .restart local v18       #k:I
    .restart local v19       #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v21       #psn:Lcom/itextpdf/text/pdf/PdfName;
    .restart local v23       #top:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_a
    const/16 v24, 0x0

    :try_start_1
    move/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/BaseFont;->setSubset(Z)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimple(Lcom/itextpdf/text/pdf/BaseFont;)Lcom/itextpdf/text/pdf/FontDetails;

    move-result-object v11

    .line 1026
    .restart local v11       #fd:Lcom/itextpdf/text/pdf/FontDetails;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->localFonts:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v21}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1044
    .end local v3           #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v5           #cb:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v6           #da:Lcom/itextpdf/text/pdf/PdfString;
    .end local v7           #dao:[Ljava/lang/Object;
    .end local v9           #dr:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v11           #fd:Lcom/itextpdf/text/pdf/FontDetails;
    .end local v12           #fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v13           #fontsTop:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v14           #fref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v15           #frefTop:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v18           #k:I
    .end local v19           #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v21           #psn:Lcom/itextpdf/text/pdf/PdfName;
    .end local v23           #top:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_b
    const-string v24, "textcolor"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 1045
    const/16 v18, 0x0

    .restart local v18       #k:I
    :goto_4
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v24

    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_18

    .line 1046
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields$InstHit;->isHit(I)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 1047
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v19

    .line 1048
    .restart local v19       #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v24, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v6

    .line 1049
    .restart local v6       #da:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v6, :cond_c

    .line 1050
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/itextpdf/text/pdf/AcroFields;->splitDAelements(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v7

    .line 1051
    .restart local v7       #dao:[Ljava/lang/Object;
    new-instance v5, Lcom/itextpdf/text/pdf/PdfAppearance;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;-><init>()V

    .line 1052
    .restart local v5       #cb:Lcom/itextpdf/text/pdf/PdfAppearance;
    const/16 v24, 0x0

    aget-object v24, v7, v24

    if-eqz v24, :cond_c

    .line 1053
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    .line 1054
    .restart local v4       #buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    new-instance v25, Lcom/itextpdf/text/pdf/PdfName;

    const/16 v24, 0x0

    aget-object v24, v7, v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v24

    const/16 v25, 0x20

    invoke-virtual/range {v24 .. v25}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v25

    const/16 v24, 0x1

    aget-object v24, v7, v24

    check-cast v24, Ljava/lang/Float;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v24

    const-string v25, " Tf "

    invoke-virtual/range {v24 .. v25}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1055
    move-object/from16 v0, p3

    check-cast v0, Lcom/itextpdf/text/BaseColor;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 1056
    new-instance v22, Lcom/itextpdf/text/pdf/PdfString;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    .line 1057
    .restart local v22       #s:Lcom/itextpdf/text/pdf/PdfString;
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    sget-object v25, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1058
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    sget-object v25, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1059
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1045
    .end local v4           #buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    .end local v5           #cb:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v6           #da:Lcom/itextpdf/text/pdf/PdfString;
    .end local v7           #dao:[Ljava/lang/Object;
    .end local v19           #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v22           #s:Lcom/itextpdf/text/pdf/PdfString;
    :cond_c
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    .line 1065
    .end local v18           #k:I
    :cond_d
    const-string v24, "textsize"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_10

    .line 1066
    const/16 v18, 0x0

    .restart local v18       #k:I
    :goto_5
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v24

    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_18

    .line 1067
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields$InstHit;->isHit(I)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 1068
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v19

    .line 1069
    .restart local v19       #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v24, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v6

    .line 1070
    .restart local v6       #da:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v6, :cond_f

    .line 1071
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/itextpdf/text/pdf/AcroFields;->splitDAelements(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v7

    .line 1072
    .restart local v7       #dao:[Ljava/lang/Object;
    new-instance v5, Lcom/itextpdf/text/pdf/PdfAppearance;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;-><init>()V

    .line 1073
    .restart local v5       #cb:Lcom/itextpdf/text/pdf/PdfAppearance;
    const/16 v24, 0x0

    aget-object v24, v7, v24

    if-eqz v24, :cond_f

    .line 1074
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v4

    .line 1075
    .restart local v4       #buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    new-instance v25, Lcom/itextpdf/text/pdf/PdfName;

    const/16 v24, 0x0

    aget-object v24, v7, v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfName;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append([B)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v24

    const/16 v25, 0x20

    invoke-virtual/range {v24 .. v25}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v25

    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Float;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->floatValue()F

    move-result v24

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v24

    const-string v25, " Tf "

    invoke-virtual/range {v24 .. v25}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 1076
    const/16 v24, 0x2

    aget-object v24, v7, v24

    if-eqz v24, :cond_e

    .line 1077
    const/16 v24, 0x2

    aget-object v24, v7, v24

    check-cast v24, Lcom/itextpdf/text/BaseColor;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 1078
    :cond_e
    new-instance v22, Lcom/itextpdf/text/pdf/PdfString;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    .line 1079
    .restart local v22       #s:Lcom/itextpdf/text/pdf/PdfString;
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    sget-object v25, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1080
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    sget-object v25, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1081
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1066
    .end local v4           #buf:Lcom/itextpdf/text/pdf/ByteBuffer;
    .end local v5           #cb:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v6           #da:Lcom/itextpdf/text/pdf/PdfString;
    .end local v7           #dao:[Ljava/lang/Object;
    .end local v19           #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v22           #s:Lcom/itextpdf/text/pdf/PdfString;
    :cond_f
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_5

    .line 1087
    .end local v18           #k:I
    :cond_10
    const-string v24, "bgcolor"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_11

    const-string v24, "bordercolor"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_17

    .line 1088
    :cond_11
    const-string v24, "bgcolor"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_12

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->BG:Lcom/itextpdf/text/pdf/PdfName;

    .line 1089
    .local v8, dname:Lcom/itextpdf/text/pdf/PdfName;
    :goto_6
    const/16 v18, 0x0

    .restart local v18       #k:I
    :goto_7
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/AcroFields$Item;->size()I

    move-result v24

    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_18

    .line 1090
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields$InstHit;->isHit(I)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 1091
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v19

    .line 1092
    .restart local v19       #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v24, Lcom/itextpdf/text/pdf/PdfName;->MK:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v20

    .line 1093
    .local v20, mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v20, :cond_15

    .line 1094
    if-nez p3, :cond_13

    .line 1095
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 1088
    .end local v8           #dname:Lcom/itextpdf/text/pdf/PdfName;
    .end local v18           #k:I
    .end local v19           #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v20           #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_12
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->BC:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_6

    .line 1096
    .restart local v8       #dname:Lcom/itextpdf/text/pdf/PdfName;
    .restart local v18       #k:I
    .restart local v19       #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v20       #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_13
    new-instance v20, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v20           #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1097
    .restart local v20       #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    sget-object v25, Lcom/itextpdf/text/pdf/PdfName;->MK:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1098
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    sget-object v25, Lcom/itextpdf/text/pdf/PdfName;->MK:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1099
    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getWidget(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1103
    :goto_8
    if-nez p3, :cond_16

    .line 1104
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1089
    .end local v19           #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v20           #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_14
    :goto_9
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 1101
    .restart local v19       #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v20       #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/AcroFields;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_8

    .line 1106
    :cond_16
    move-object/from16 v0, p3

    check-cast v0, Lcom/itextpdf/text/BaseColor;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/itextpdf/text/pdf/PdfFormField;->getMKColor(Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v8, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    .line 1111
    .end local v8           #dname:Lcom/itextpdf/text/pdf/PdfName;
    .end local v18           #k:I
    .end local v19           #merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v20           #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_17
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1112
    .restart local v18       #k:I
    :cond_18
    const/16 v24, 0x1

    goto/16 :goto_0
.end method

.method public setFieldRichValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "name"
    .parameter "richValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x5

    const/4 v7, 0x0

    .line 1333
    iget-object v8, p0, Lcom/itextpdf/text/pdf/AcroFields;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    if-nez v8, :cond_0

    .line 1335
    new-instance v8, Lcom/itextpdf/text/DocumentException;

    const-string v9, "this.acrofields.instance.is.read.only"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v9, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1338
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;

    move-result-object v3

    .line 1339
    .local v3, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v3, :cond_2

    .line 1366
    :cond_1
    :goto_0
    return v7

    .line 1344
    :cond_2
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldType(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    .line 1349
    invoke-virtual {v3, v7}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    .line 1350
    .local v4, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v0

    .line 1351
    .local v0, ffNum:Lcom/itextpdf/text/pdf/PdfNumber;
    const/4 v1, 0x0

    .line 1352
    .local v1, flagVal:I
    if-eqz v0, :cond_3

    .line 1353
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v1

    .line 1355
    :cond_3
    const/high16 v8, 0x400

    or-int/2addr v8, v1

    if-eqz v8, :cond_1

    .line 1360
    new-instance v5, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v5, p2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    .line 1361
    .local v5, richString:Lcom/itextpdf/text/pdf/PdfString;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->RV:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v7, v5, v10}, Lcom/itextpdf/text/pdf/AcroFields$Item;->writeToAll(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;I)V

    .line 1363
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1364
    .local v2, is:Ljava/io/InputStream;
    new-instance v6, Lcom/itextpdf/text/pdf/PdfString;

    invoke-static {v2}, Lcom/itextpdf/text/xml/XmlToTxt;->parse(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    .line 1365
    .local v6, valueString:Lcom/itextpdf/text/pdf/PdfString;
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v7, v6, v10}, Lcom/itextpdf/text/pdf/AcroFields$Item;->writeToAll(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;I)V

    .line 1366
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public setFields(Lcom/itextpdf/text/pdf/FdfReader;)V
    .locals 5
    .parameter "fdf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1261
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/FdfReader;->getFields()Ljava/util/HashMap;

    move-result-object v1

    .line 1262
    .local v1, fd:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDictionary;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1263
    .local v0, f:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/FdfReader;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1264
    .local v3, v:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1265
    invoke-virtual {p0, v0, v3}, Lcom/itextpdf/text/pdf/AcroFields;->setField(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 1267
    .end local v0           #f:Ljava/lang/String;
    .end local v3           #v:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setFields(Lcom/itextpdf/text/pdf/XfdfReader;)V
    .locals 6
    .parameter "xfdf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1277
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/XfdfReader;->getFields()Ljava/util/HashMap;

    move-result-object v1

    .line 1278
    .local v1, fd:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1279
    .local v0, f:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/XfdfReader;->getFieldValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1280
    .local v4, v:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1281
    invoke-virtual {p0, v0, v4}, Lcom/itextpdf/text/pdf/AcroFields;->setField(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1282
    :cond_1
    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/XfdfReader;->getListValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1283
    .local v3, l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 1284
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/itextpdf/text/pdf/AcroFields;->setListSelection(Ljava/lang/String;[Ljava/lang/String;)Z

    goto :goto_0

    .line 1286
    .end local v0           #f:Ljava/lang/String;
    .end local v3           #l:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v4           #v:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public setGenerateAppearances(Z)V
    .locals 3
    .parameter "generateAppearances"

    .prologue
    .line 1786
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/AcroFields;->generateAppearances:Z

    .line 1787
    iget-object v1, p0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ACROFORM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 1788
    .local v0, top:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz p1, :cond_0

    .line 1789
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->NEEDAPPEARANCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1792
    :goto_0
    return-void

    .line 1791
    :cond_0
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->NEEDAPPEARANCES:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public setListOption(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 10
    .parameter "fieldName"
    .parameter "exportValues"
    .parameter "displayValues"

    .prologue
    const/4 v9, 0x5

    const/4 v6, 0x0

    .line 377
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 404
    :cond_0
    :goto_0
    return v6

    .line 379
    :cond_1
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    array-length v7, p2

    array-length v8, p3

    if-eq v7, v8, :cond_2

    .line 380
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "the.export.and.the.display.array.must.have.the.same.size"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 381
    :cond_2
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldType(Ljava/lang/String;)I

    move-result v2

    .line 382
    .local v2, ftype:I
    const/4 v7, 0x6

    if-eq v2, v7, :cond_3

    if-ne v2, v9, :cond_0

    .line 384
    :cond_3
    iget-object v6, p0, Lcom/itextpdf/text/pdf/AcroFields;->fields:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/AcroFields$Item;

    .line 385
    .local v1, fd:Lcom/itextpdf/text/pdf/AcroFields$Item;
    const/4 v5, 0x0

    .line 386
    .local v5, sing:[Ljava/lang/String;
    if-nez p2, :cond_5

    if-eqz p3, :cond_5

    .line 387
    move-object v5, p3

    .line 390
    :cond_4
    :goto_1
    new-instance v4, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 391
    .local v4, opt:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v5, :cond_6

    .line 392
    const/4 v3, 0x0

    .local v3, k:I
    :goto_2
    array-length v6, v5

    if-ge v3, v6, :cond_7

    .line 393
    new-instance v6, Lcom/itextpdf/text/pdf/PdfString;

    aget-object v7, v5, v3

    const-string v8, "UnicodeBig"

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 392
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 388
    .end local v3           #k:I
    .end local v4           #opt:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_5
    if-eqz p2, :cond_4

    if-nez p3, :cond_4

    .line 389
    move-object v5, p2

    goto :goto_1

    .line 396
    .restart local v4       #opt:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_6
    const/4 v3, 0x0

    .restart local v3       #k:I
    :goto_3
    array-length v6, p2

    if-ge v3, v6, :cond_7

    .line 397
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 398
    .local v0, a:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v6, Lcom/itextpdf/text/pdf/PdfString;

    aget-object v7, p2, v3

    const-string v8, "UnicodeBig"

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 399
    new-instance v6, Lcom/itextpdf/text/pdf/PdfString;

    aget-object v7, p3, v3

    const-string v8, "UnicodeBig"

    invoke-direct {v6, v7, v8}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 400
    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 396
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 403
    .end local v0           #a:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_7
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->OPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v6, v4, v9}, Lcom/itextpdf/text/pdf/AcroFields$Item;->writeToAll(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;I)V

    .line 404
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public setListSelection(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 19
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1517
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/pdf/AcroFields;->getFieldItem(Ljava/lang/String;)Lcom/itextpdf/text/pdf/AcroFields$Item;

    move-result-object v10

    .line 1518
    .local v10, item:Lcom/itextpdf/text/pdf/AcroFields$Item;
    if-nez v10, :cond_0

    .line 1519
    const/16 v17, 0x0

    .line 1552
    :goto_0
    return v17

    .line 1520
    :cond_0
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/itextpdf/text/pdf/AcroFields$Item;->getMerged(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v13

    .line 1521
    .local v13, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v17, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v15

    .line 1522
    .local v15, type:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v17, Lcom/itextpdf/text/pdf/PdfName;->CH:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 1523
    const/16 v17, 0x0

    goto :goto_0

    .line 1525
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/itextpdf/text/pdf/AcroFields;->getListOptionExport(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1526
    .local v14, options:[Ljava/lang/String;
    new-instance v6, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v6}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 1527
    .local v6, array:Lcom/itextpdf/text/pdf/PdfArray;
    move-object/from16 v5, p2

    .local v5, arr$:[Ljava/lang/String;
    array-length v12, v5

    .local v12, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v12, :cond_4

    aget-object v7, v5, v9

    .line 1528
    .local v7, element:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, j:I
    :goto_2
    array-length v0, v14

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_2

    .line 1529
    aget-object v17, v14, v11

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1530
    new-instance v17, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 1527
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1528
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1535
    .end local v7           #element:Ljava/lang/String;
    .end local v11           #j:I
    :cond_4
    sget-object v17, Lcom/itextpdf/text/pdf/PdfName;->I:Lcom/itextpdf/text/pdf/PdfName;

    const/16 v18, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v6, v1}, Lcom/itextpdf/text/pdf/AcroFields$Item;->writeToAll(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;I)V

    .line 1537
    new-instance v16, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 1538
    .local v16, vals:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_5

    .line 1539
    new-instance v17, Lcom/itextpdf/text/pdf/PdfString;

    aget-object v18, p2, v8

    invoke-direct/range {v17 .. v18}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v17}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 1538
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1541
    :cond_5
    sget-object v17, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    const/16 v18, 0x5

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v10, v0, v1, v2}, Lcom/itextpdf/text/pdf/AcroFields$Item;->writeToAll(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;I)V

    .line 1543
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual {v0, v13, v1, v2}, Lcom/itextpdf/text/pdf/AcroFields;->getAppearance(Lcom/itextpdf/text/pdf/PdfDictionary;[Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v4

    .line 1545
    .local v4, app:Lcom/itextpdf/text/pdf/PdfAppearance;
    new-instance v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1546
    .local v3, apDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v17, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfAppearance;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1547
    sget-object v17, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    const/16 v18, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v3, v1}, Lcom/itextpdf/text/pdf/AcroFields$Item;->writeToAll(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;I)V

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/AcroFields;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfWriter;->releaseTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 1551
    const/16 v17, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v10, v0, v1}, Lcom/itextpdf/text/pdf/AcroFields$Item;->markUsed(Lcom/itextpdf/text/pdf/AcroFields;I)V

    .line 1552
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method public setSubstitutionFonts(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/BaseFont;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2585
    .local p1, substitutionFonts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/BaseFont;>;"
    iput-object p1, p0, Lcom/itextpdf/text/pdf/AcroFields;->substitutionFonts:Ljava/util/ArrayList;

    .line 2586
    return-void
.end method

.method public signatureCoversWholeDocument(Ljava/lang/String;)Z
    .locals 6
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 2222
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/AcroFields;->getSignatureNames()Ljava/util/ArrayList;

    .line 2223
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getTranslatedFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2224
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2226
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->sigNames:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v0, v0, v1

    int-to-long v2, v0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/AcroFields;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfReader;->getFileLength()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public verifySignature(Ljava/lang/String;)Lcom/itextpdf/text/pdf/security/PdfPKCS7;
    .locals 1
    .parameter "name"

    .prologue
    .line 2258
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/AcroFields;->verifySignature(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/security/PdfPKCS7;

    move-result-object v0

    return-object v0
.end method

.method public verifySignature(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/security/PdfPKCS7;
    .locals 10
    .parameter "name"
    .parameter "provider"

    .prologue
    .line 2291
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/AcroFields;->getSignatureDictionary(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    .line 2292
    .local v7, v:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v7, :cond_1

    .line 2293
    const/4 v4, 0x0

    .line 2326
    :cond_0
    :goto_0
    return-object v4

    .line 2295
    :cond_1
    :try_start_0
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->SUBFILTER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v6

    .line 2296
    .local v6, sub:Lcom/itextpdf/text/pdf/PdfName;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v1

    .line 2297
    .local v1, contents:Lcom/itextpdf/text/pdf/PdfString;
    const/4 v4, 0x0

    .line 2298
    .local v4, pk:Lcom/itextpdf/text/pdf/security/PdfPKCS7;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->ADBE_X509_RSA_SHA1:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v8}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2299
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->CERT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v0

    .line 2300
    .local v0, cert:Lcom/itextpdf/text/pdf/PdfString;
    if-nez v0, :cond_2

    .line 2301
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->CERT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v0

    .line 2302
    :cond_2
    new-instance v4, Lcom/itextpdf/text/pdf/security/PdfPKCS7;

    .end local v4           #pk:Lcom/itextpdf/text/pdf/security/PdfPKCS7;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfString;->getOriginalBytes()[B

    move-result-object v8

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfString;->getBytes()[B

    move-result-object v9

    invoke-direct {v4, v8, v9, p2}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;-><init>([B[BLjava/lang/String;)V

    .line 2309
    .end local v0           #cert:Lcom/itextpdf/text/pdf/PdfString;
    .restart local v4       #pk:Lcom/itextpdf/text/pdf/security/PdfPKCS7;
    :goto_1
    invoke-direct {p0, v4, v7}, Lcom/itextpdf/text/pdf/AcroFields;->updateByteRange(Lcom/itextpdf/text/pdf/security/PdfPKCS7;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 2310
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->M:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v5

    .line 2311
    .local v5, str:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v5, :cond_3

    .line 2312
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfDate;->decode(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->setSignDate(Ljava/util/Calendar;)V

    .line 2313
    :cond_3
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->NAME:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .line 2314
    .local v3, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v3, :cond_4

    .line 2315
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2316
    check-cast v3, Lcom/itextpdf/text/pdf/PdfString;

    .end local v3           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->setSignName(Ljava/lang/String;)V

    .line 2320
    :cond_4
    :goto_2
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->REASON:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v5

    .line 2321
    if-eqz v5, :cond_5

    .line 2322
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->setReason(Ljava/lang/String;)V

    .line 2323
    :cond_5
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->LOCATION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v5

    .line 2324
    if-eqz v5, :cond_0

    .line 2325
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->setLocation(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2328
    .end local v1           #contents:Lcom/itextpdf/text/pdf/PdfString;
    .end local v4           #pk:Lcom/itextpdf/text/pdf/security/PdfPKCS7;
    .end local v5           #str:Lcom/itextpdf/text/pdf/PdfString;
    .end local v6           #sub:Lcom/itextpdf/text/pdf/PdfName;
    :catch_0
    move-exception v2

    .line 2329
    .local v2, e:Ljava/lang/Exception;
    new-instance v8, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v8, v2}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 2304
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #contents:Lcom/itextpdf/text/pdf/PdfString;
    .restart local v4       #pk:Lcom/itextpdf/text/pdf/security/PdfPKCS7;
    .restart local v6       #sub:Lcom/itextpdf/text/pdf/PdfName;
    :cond_6
    :try_start_1
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->ETSI_RFC3161:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v8}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 2305
    new-instance v4, Lcom/itextpdf/text/pdf/security/PdfPKCS7;

    .end local v4           #pk:Lcom/itextpdf/text/pdf/security/PdfPKCS7;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfString;->getOriginalBytes()[B

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v4, v8, v9, p2}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;-><init>([BZLjava/lang/String;)V

    .restart local v4       #pk:Lcom/itextpdf/text/pdf/security/PdfPKCS7;
    goto :goto_1

    .line 2308
    :cond_7
    new-instance v4, Lcom/itextpdf/text/pdf/security/PdfPKCS7;

    .end local v4           #pk:Lcom/itextpdf/text/pdf/security/PdfPKCS7;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfString;->getOriginalBytes()[B

    move-result-object v8

    invoke-direct {v4, v8, p2}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;-><init>([BLjava/lang/String;)V

    .restart local v4       #pk:Lcom/itextpdf/text/pdf/security/PdfPKCS7;
    goto :goto_1

    .line 2317
    .restart local v3       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v5       #str:Lcom/itextpdf/text/pdf/PdfString;
    :cond_8
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2318
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/itextpdf/text/pdf/security/PdfPKCS7;->setSignName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
