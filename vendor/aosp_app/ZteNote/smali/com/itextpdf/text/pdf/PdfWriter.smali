.class public Lcom/itextpdf/text/pdf/PdfWriter;
.super Lcom/itextpdf/text/DocWriter;
.source "PdfWriter.java"

# interfaces
.implements Lcom/itextpdf/text/pdf/interfaces/PdfViewerPreferences;
.implements Lcom/itextpdf/text/pdf/interfaces/PdfEncryptionSettings;
.implements Lcom/itextpdf/text/pdf/interfaces/PdfVersion;
.implements Lcom/itextpdf/text/pdf/interfaces/PdfDocumentActions;
.implements Lcom/itextpdf/text/pdf/interfaces/PdfPageActions;
.implements Lcom/itextpdf/text/pdf/interfaces/PdfXConformance;
.implements Lcom/itextpdf/text/pdf/interfaces/PdfRunDirection;
.implements Lcom/itextpdf/text/pdf/interfaces/PdfAnnotations;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PdfWriter$PdfTrailer;,
        Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;
    }
.end annotation


# static fields
.field public static final ALLOW_ASSEMBLY:I = 0x400

.field public static final ALLOW_COPY:I = 0x10

.field public static final ALLOW_DEGRADED_PRINTING:I = 0x4

.field public static final ALLOW_FILL_IN:I = 0x100

.field public static final ALLOW_MODIFY_ANNOTATIONS:I = 0x20

.field public static final ALLOW_MODIFY_CONTENTS:I = 0x8

.field public static final ALLOW_PRINTING:I = 0x804

.field public static final ALLOW_SCREENREADERS:I = 0x200

.field public static final AllowAssembly:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AllowCopy:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AllowDegradedPrinting:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AllowFillIn:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AllowModifyAnnotations:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AllowModifyContents:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AllowPrinting:I = 0x804
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AllowScreenReaders:I = 0x200
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CenterWindow:I = 0x10000

.field public static final DID_PRINT:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final DID_SAVE:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final DOCUMENT_CLOSE:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final DO_NOT_ENCRYPT_METADATA:I = 0x8

.field public static final DirectionL2R:I = 0x400000

.field public static final DirectionR2L:I = 0x800000

.field public static final DisplayDocTitle:I = 0x20000

.field public static final EMBEDDED_FILES_ONLY:I = 0x18

.field public static final ENCRYPTION_AES_128:I = 0x2

.field public static final ENCRYPTION_AES_256:I = 0x3

.field static final ENCRYPTION_MASK:I = 0x7

.field public static final FitWindow:I = 0x8000

.field public static final GENERATION_MAX:I = 0xffff

.field public static final HideMenubar:I = 0x2000

.field public static final HideToolbar:I = 0x1000

.field public static final HideWindowUI:I = 0x4000

.field public static final NO_SPACE_CHAR_RATIO:F = 1.0E7f

.field public static final NonFullScreenPageModeUseNone:I = 0x40000

.field public static final NonFullScreenPageModeUseOC:I = 0x200000

.field public static final NonFullScreenPageModeUseOutlines:I = 0x80000

.field public static final NonFullScreenPageModeUseThumbs:I = 0x100000

.field public static final PAGE_CLOSE:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final PAGE_OPEN:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final PDFA1A:I = 0x3

.field public static final PDFA1B:I = 0x4

.field public static final PDFX1A2001:I = 0x1

.field public static final PDFX32002:I = 0x2

.field public static final PDFXNONE:I = 0x0

.field public static final PDF_VERSION_1_2:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final PDF_VERSION_1_3:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final PDF_VERSION_1_4:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final PDF_VERSION_1_5:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final PDF_VERSION_1_6:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final PDF_VERSION_1_7:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final PageLayoutOneColumn:I = 0x2

.field public static final PageLayoutSinglePage:I = 0x1

.field public static final PageLayoutTwoColumnLeft:I = 0x4

.field public static final PageLayoutTwoColumnRight:I = 0x8

.field public static final PageLayoutTwoPageLeft:I = 0x10

.field public static final PageLayoutTwoPageRight:I = 0x20

.field public static final PageModeFullScreen:I = 0x200

.field public static final PageModeUseAttachments:I = 0x800

.field public static final PageModeUseNone:I = 0x40

.field public static final PageModeUseOC:I = 0x400

.field public static final PageModeUseOutlines:I = 0x80

.field public static final PageModeUseThumbs:I = 0x100

.field public static final PrintScalingNone:I = 0x1000000

.field public static final RUN_DIRECTION_DEFAULT:I = 0x0

.field public static final RUN_DIRECTION_LTR:I = 0x2

.field public static final RUN_DIRECTION_NO_BIDI:I = 0x1

.field public static final RUN_DIRECTION_RTL:I = 0x3

.field public static final SIGNATURE_APPEND_ONLY:I = 0x2

.field public static final SIGNATURE_EXISTS:I = 0x1

.field public static final SPACE_CHAR_RATIO_DEFAULT:F = 2.5f

.field public static final STANDARD_ENCRYPTION_128:I = 0x1

.field public static final STANDARD_ENCRYPTION_40:I = 0x0

.field public static final STRENGTH128BITS:Z = true
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STRENGTH40BITS:Z = false
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final VERSION_1_2:C = '2'

.field public static final VERSION_1_3:C = '3'

.field public static final VERSION_1_4:C = '4'

.field public static final VERSION_1_5:C = '5'

.field public static final VERSION_1_6:C = '6'

.field public static final VERSION_1_7:C = '7'

.field public static final WILL_PRINT:Lcom/itextpdf/text/pdf/PdfName;

.field public static final WILL_SAVE:Lcom/itextpdf/text/pdf/PdfName;


# instance fields
.field protected JBIG2Globals:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfStream;",
            "Lcom/itextpdf/text/pdf/PdfIndirectReference;",
            ">;"
        }
    .end annotation
.end field

.field protected OCGLocked:Lcom/itextpdf/text/pdf/PdfArray;

.field protected OCGRadioGroup:Lcom/itextpdf/text/pdf/PdfArray;

.field protected OCProperties:Lcom/itextpdf/text/pdf/PdfOCProperties;

.field protected body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

.field protected colorNumber:I

.field protected compressionLevel:I

.field protected crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

.field protected currentPageNumber:I

.field protected currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

.field protected defaultColorspace:Lcom/itextpdf/text/pdf/PdfDictionary;

.field protected directContent:Lcom/itextpdf/text/pdf/PdfContentByte;

.field protected directContentUnder:Lcom/itextpdf/text/pdf/PdfContentByte;

.field protected documentColors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfSpotColor;",
            "Lcom/itextpdf/text/pdf/ColorDetails;",
            ">;"
        }
    .end annotation
.end field

.field protected documentExtGState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            "[",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation
.end field

.field protected documentFonts:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/itextpdf/text/pdf/BaseFont;",
            "Lcom/itextpdf/text/pdf/FontDetails;",
            ">;"
        }
    .end annotation
.end field

.field protected documentOCG:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/itextpdf/text/pdf/PdfOCG;",
            ">;"
        }
    .end annotation
.end field

.field protected documentOCGorder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfOCG;",
            ">;"
        }
    .end annotation
.end field

.field protected documentPatterns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfPatternPainter;",
            "Lcom/itextpdf/text/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field protected documentProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            ">;"
        }
    .end annotation
.end field

.field protected documentShadingPatterns:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/itextpdf/text/pdf/PdfShadingPattern;",
            ">;"
        }
    .end annotation
.end field

.field protected documentShadings:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/itextpdf/text/pdf/PdfShading;",
            ">;"
        }
    .end annotation
.end field

.field protected documentSpotPatterns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/ColorDetails;",
            "Lcom/itextpdf/text/pdf/ColorDetails;",
            ">;"
        }
    .end annotation
.end field

.field protected extraCatalog:Lcom/itextpdf/text/pdf/PdfDictionary;

.field protected fontNumber:I

.field protected formXObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfIndirectReference;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected formXObjectsCounter:I

.field protected fullCompression:Z

.field protected group:Lcom/itextpdf/text/pdf/PdfDictionary;

.field protected imageDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

.field private final images:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/itextpdf/text/pdf/PdfName;",
            ">;"
        }
    .end annotation
.end field

.field protected newBookmarks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected pageDictEntries:Lcom/itextpdf/text/pdf/PdfDictionary;

.field private pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;

.field protected pageReferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfIndirectReference;",
            ">;"
        }
    .end annotation
.end field

.field protected patternColorspaceCMYK:Lcom/itextpdf/text/pdf/ColorDetails;

.field protected patternColorspaceGRAY:Lcom/itextpdf/text/pdf/ColorDetails;

.field protected patternColorspaceRGB:Lcom/itextpdf/text/pdf/ColorDetails;

.field protected patternNumber:I

.field protected pdf:Lcom/itextpdf/text/pdf/PdfDocument;

.field protected pdf_version:Lcom/itextpdf/text/pdf/internal/PdfVersionImp;

.field private final pdfxConformance:Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;

.field protected prevxref:J

.field protected readerInstances:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/itextpdf/text/pdf/PdfReader;",
            "Lcom/itextpdf/text/pdf/PdfReaderInstance;",
            ">;"
        }
    .end annotation
.end field

.field private rgbTransparencyBlending:Z

.field protected root:Lcom/itextpdf/text/pdf/PdfPages;

.field protected runDirection:I

.field private spaceCharRatio:F

.field protected structureTreeRoot:Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;

.field protected tabs:Lcom/itextpdf/text/pdf/PdfName;

.field protected tagged:Z

.field private userProperties:Z

.field protected xmpMetadata:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1398
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string v1, "1.2"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->PDF_VERSION_1_2:Lcom/itextpdf/text/pdf/PdfName;

    .line 1400
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string v1, "1.3"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->PDF_VERSION_1_3:Lcom/itextpdf/text/pdf/PdfName;

    .line 1402
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string v1, "1.4"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->PDF_VERSION_1_4:Lcom/itextpdf/text/pdf/PdfName;

    .line 1404
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string v1, "1.5"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->PDF_VERSION_1_5:Lcom/itextpdf/text/pdf/PdfName;

    .line 1406
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string v1, "1.6"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->PDF_VERSION_1_6:Lcom/itextpdf/text/pdf/PdfName;

    .line 1408
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    const-string v1, "1.7"

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->PDF_VERSION_1_7:Lcom/itextpdf/text/pdf/PdfName;

    .line 1663
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->WC:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->DOCUMENT_CLOSE:Lcom/itextpdf/text/pdf/PdfName;

    .line 1665
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->WS:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->WILL_SAVE:Lcom/itextpdf/text/pdf/PdfName;

    .line 1667
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->DS:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->DID_SAVE:Lcom/itextpdf/text/pdf/PdfName;

    .line 1669
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->WP:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->WILL_PRINT:Lcom/itextpdf/text/pdf/PdfName;

    .line 1671
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->DP:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->DID_PRINT:Lcom/itextpdf/text/pdf/PdfName;

    .line 2732
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->O:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->PAGE_OPEN:Lcom/itextpdf/text/pdf/PdfName;

    .line 2734
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->C:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->PAGE_CLOSE:Lcom/itextpdf/text/pdf/PdfName;

    return-void
.end method

.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 581
    invoke-direct {p0}, Lcom/itextpdf/text/DocWriter;-><init>()V

    .line 934
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPages;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfPages;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->root:Lcom/itextpdf/text/pdf/PdfPages;

    .line 936
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pageReferences:Ljava/util/ArrayList;

    .line 938
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfWriter;->currentPageNumber:I

    .line 943
    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfWriter;->tabs:Lcom/itextpdf/text/pdf/PdfName;

    .line 949
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pageDictEntries:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1163
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->prevxref:J

    .line 1411
    new-instance v0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf_version:Lcom/itextpdf/text/pdf/internal/PdfVersionImp;

    .line 1740
    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfWriter;->xmpMetadata:[B

    .line 1795
    new-instance v0, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdfxConformance:Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;

    .line 2121
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->fullCompression:Z

    .line 2147
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->compressionLevel:I

    .line 2173
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentFonts:Ljava/util/LinkedHashMap;

    .line 2176
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfWriter;->fontNumber:I

    .line 2211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->formXObjects:Ljava/util/HashMap;

    .line 2214
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfWriter;->formXObjectsCounter:I

    .line 2283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->readerInstances:Ljava/util/HashMap;

    .line 2362
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentColors:Ljava/util/HashMap;

    .line 2365
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfWriter;->colorNumber:I

    .line 2389
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentPatterns:Ljava/util/HashMap;

    .line 2392
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfWriter;->patternNumber:I

    .line 2410
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentShadingPatterns:Ljava/util/HashSet;

    .line 2423
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentShadings:Ljava/util/HashSet;

    .line 2434
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentExtGState:Ljava/util/HashMap;

    .line 2446
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentProperties:Ljava/util/HashMap;

    .line 2462
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->tagged:Z

    .line 2494
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentOCG:Ljava/util/HashSet;

    .line 2496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentOCGorder:Ljava/util/ArrayList;

    .line 2500
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->OCGRadioGroup:Lcom/itextpdf/text/pdf/PdfArray;

    .line 2505
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->OCGLocked:Lcom/itextpdf/text/pdf/PdfArray;

    .line 2801
    const/high16 v0, 0x4020

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->spaceCharRatio:F

    .line 2842
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfWriter;->runDirection:I

    .line 2883
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->defaultColorspace:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2911
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentSpotPatterns:Ljava/util/HashMap;

    .line 2996
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->imageDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2999
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->images:Ljava/util/HashMap;

    .line 3150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->JBIG2Globals:Ljava/util/HashMap;

    .line 582
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/text/pdf/PdfDocument;Ljava/io/OutputStream;)V
    .locals 5
    .parameter "document"
    .parameter "os"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 595
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/DocWriter;-><init>(Lcom/itextpdf/text/Document;Ljava/io/OutputStream;)V

    .line 934
    new-instance v0, Lcom/itextpdf/text/pdf/PdfPages;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfPages;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->root:Lcom/itextpdf/text/pdf/PdfPages;

    .line 936
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pageReferences:Ljava/util/ArrayList;

    .line 938
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfWriter;->currentPageNumber:I

    .line 943
    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfWriter;->tabs:Lcom/itextpdf/text/pdf/PdfName;

    .line 949
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pageDictEntries:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1163
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->prevxref:J

    .line 1411
    new-instance v0, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf_version:Lcom/itextpdf/text/pdf/internal/PdfVersionImp;

    .line 1740
    iput-object v4, p0, Lcom/itextpdf/text/pdf/PdfWriter;->xmpMetadata:[B

    .line 1795
    new-instance v0, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdfxConformance:Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;

    .line 2121
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->fullCompression:Z

    .line 2147
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->compressionLevel:I

    .line 2173
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentFonts:Ljava/util/LinkedHashMap;

    .line 2176
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfWriter;->fontNumber:I

    .line 2211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->formXObjects:Ljava/util/HashMap;

    .line 2214
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfWriter;->formXObjectsCounter:I

    .line 2283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->readerInstances:Ljava/util/HashMap;

    .line 2362
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentColors:Ljava/util/HashMap;

    .line 2365
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfWriter;->colorNumber:I

    .line 2389
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentPatterns:Ljava/util/HashMap;

    .line 2392
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfWriter;->patternNumber:I

    .line 2410
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentShadingPatterns:Ljava/util/HashSet;

    .line 2423
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentShadings:Ljava/util/HashSet;

    .line 2434
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentExtGState:Ljava/util/HashMap;

    .line 2446
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentProperties:Ljava/util/HashMap;

    .line 2462
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->tagged:Z

    .line 2494
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentOCG:Ljava/util/HashSet;

    .line 2496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentOCGorder:Ljava/util/ArrayList;

    .line 2500
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->OCGRadioGroup:Lcom/itextpdf/text/pdf/PdfArray;

    .line 2505
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->OCGLocked:Lcom/itextpdf/text/pdf/PdfArray;

    .line 2801
    const/high16 v0, 0x4020

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->spaceCharRatio:F

    .line 2842
    iput v2, p0, Lcom/itextpdf/text/pdf/PdfWriter;->runDirection:I

    .line 2883
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->defaultColorspace:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2911
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentSpotPatterns:Ljava/util/HashMap;

    .line 2996
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->imageDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2999
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->images:Ljava/util/HashMap;

    .line 3150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->JBIG2Globals:Ljava/util/HashMap;

    .line 596
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    .line 597
    new-instance v0, Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfContentByte;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->directContent:Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 598
    new-instance v0, Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfContentByte;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->directContentUnder:Lcom/itextpdf/text/pdf/PdfContentByte;

    .line 599
    return-void
.end method

.method private addASEvent(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 10
    .parameter "event"
    .parameter "category"

    .prologue
    .line 2570
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 2571
    .local v0, arr:Lcom/itextpdf/text/pdf/PdfArray;
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentOCG:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfOCG;

    .local v4, element:Lcom/itextpdf/text/pdf/PdfOCG;
    move-object v6, v4

    .line 2572
    check-cast v6, Lcom/itextpdf/text/pdf/PdfLayer;

    .line 2573
    .local v6, layer:Lcom/itextpdf/text/pdf/PdfLayer;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->USAGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v8}, Lcom/itextpdf/text/pdf/PdfLayer;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    .line 2574
    .local v7, usage:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v7, :cond_0

    invoke-virtual {v7, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 2575
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfLayer;->getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_0

    .line 2577
    .end local v4           #element:Lcom/itextpdf/text/pdf/PdfOCG;
    .end local v6           #layer:Lcom/itextpdf/text/pdf/PdfLayer;
    .end local v7           #usage:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 2590
    :goto_1
    return-void

    .line 2579
    :cond_2
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfWriter;->OCProperties:Lcom/itextpdf/text/pdf/PdfOCProperties;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/PdfOCProperties;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 2580
    .local v3, d:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->AS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v1

    .line 2581
    .local v1, arras:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v1, :cond_3

    .line 2582
    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    .end local v1           #arras:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 2583
    .restart local v1       #arras:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->AS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v8, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2585
    :cond_3
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 2586
    .local v2, as:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->EVENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v8, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2587
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->CATEGORY:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v9, p2}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    invoke-virtual {v2, v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2588
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->OCGS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v8, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2589
    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_1
.end method

.method private createXmpMetadataBytes()[B
    .locals 5

    .prologue
    .line 1771
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1773
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Lcom/itextpdf/text/xml/xmp/XmpWriter;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfDocument;->getInfo()Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdfxConformance:Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->getPDFXConformance()I

    move-result v4

    invoke-direct {v2, v0, v3, v4}, Lcom/itextpdf/text/xml/xmp/XmpWriter;-><init>(Ljava/io/OutputStream;Lcom/itextpdf/text/pdf/PdfDictionary;I)V

    .line 1774
    .local v2, xmp:Lcom/itextpdf/text/xml/xmp/XmpWriter;
    invoke-virtual {v2}, Lcom/itextpdf/text/xml/xmp/XmpWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1779
    .end local v2           #xmp:Lcom/itextpdf/text/xml/xmp/XmpWriter;
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 1776
    :catch_0
    move-exception v1

    .line 1777
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance(Lcom/itextpdf/text/Document;Ljava/io/OutputStream;)Lcom/itextpdf/text/pdf/PdfWriter;
    .locals 2
    .parameter "document"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 613
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDocument;-><init>()V

    .line 614
    .local v0, pdf:Lcom/itextpdf/text/pdf/PdfDocument;
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/Document;->addDocListener(Lcom/itextpdf/text/DocListener;)V

    .line 615
    new-instance v1, Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v1, v0, p1}, Lcom/itextpdf/text/pdf/PdfWriter;-><init>(Lcom/itextpdf/text/pdf/PdfDocument;Ljava/io/OutputStream;)V

    .line 616
    .local v1, writer:Lcom/itextpdf/text/pdf/PdfWriter;
    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDocument;->addWriter(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 617
    return-object v1
.end method

.method public static getInstance(Lcom/itextpdf/text/Document;Ljava/io/OutputStream;Lcom/itextpdf/text/DocListener;)Lcom/itextpdf/text/pdf/PdfWriter;
    .locals 2
    .parameter "document"
    .parameter "os"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 632
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDocument;-><init>()V

    .line 633
    .local v0, pdf:Lcom/itextpdf/text/pdf/PdfDocument;
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfDocument;->addDocListener(Lcom/itextpdf/text/DocListener;)V

    .line 634
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/Document;->addDocListener(Lcom/itextpdf/text/DocListener;)V

    .line 635
    new-instance v1, Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v1, v0, p1}, Lcom/itextpdf/text/pdf/PdfWriter;-><init>(Lcom/itextpdf/text/pdf/PdfDocument;Ljava/io/OutputStream;)V

    .line 636
    .local v1, writer:Lcom/itextpdf/text/pdf/PdfWriter;
    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDocument;->addWriter(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 637
    return-object v1
.end method

.method private static getNameString(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;)Ljava/lang/String;
    .locals 2
    .parameter "dic"
    .parameter "key"

    .prologue
    .line 1918
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    .line 1919
    .local v0, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1920
    :cond_0
    const/4 v1, 0x0

    .line 1921
    .end local v0           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :goto_0
    return-object v1

    .restart local v0       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_1
    check-cast v0, Lcom/itextpdf/text/pdf/PdfString;

    .end local v0           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getOCGOrder(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PdfLayer;)V
    .locals 6
    .parameter "order"
    .parameter "layer"

    .prologue
    .line 2552
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfLayer;->isOnPanel()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2567
    :cond_0
    :goto_0
    return-void

    .line 2554
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2555
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfLayer;->getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 2556
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfLayer;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    .line 2557
    .local v0, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfLayer;>;"
    if-eqz v0, :cond_0

    .line 2559
    new-instance v2, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 2560
    .local v2, kids:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2561
    new-instance v3, Lcom/itextpdf/text/pdf/PdfString;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UnicodeBig"

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 2562
    :cond_3
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 2563
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfLayer;

    invoke-static {v2, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->getOCGOrder(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PdfLayer;)V

    .line 2562
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2565
    :cond_4
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2566
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_0
.end method


# virtual methods
.method protected add(Lcom/itextpdf/text/pdf/PdfICCBased;)Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 3
    .parameter "icc"

    .prologue
    .line 3138
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3143
    .local v1, object:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    return-object v2

    .line 3140
    .end local v1           #object:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    :catch_0
    move-exception v0

    .line 3141
    .local v0, ioe:Ljava/io/IOException;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v2, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method add(Lcom/itextpdf/text/pdf/PdfImage;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 6
    .parameter "pdfImage"
    .parameter "fixedRef"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/PdfException;
        }
    .end annotation

    .prologue
    .line 3103
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfWriter;->imageDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfImage;->name()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3104
    const/4 v2, 0x5

    invoke-static {p0, v2, p1}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->checkPDFXConformance(Lcom/itextpdf/text/pdf/PdfWriter;ILjava/lang/Object;)V

    .line 3105
    instance-of v2, p2, Lcom/itextpdf/text/pdf/PRIndirectReference;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 3106
    check-cast v1, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 3107
    .local v1, r2:Lcom/itextpdf/text/pdf/PRIndirectReference;
    new-instance p2, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .end local p2
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v3

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v4

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getGeneration()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfWriter;->getNewObjectNumber(Lcom/itextpdf/text/pdf/PdfReader;II)I

    move-result v3

    invoke-direct {p2, v2, v3}, Lcom/itextpdf/text/pdf/PdfIndirectReference;-><init>(II)V

    .line 3110
    .end local v1           #r2:Lcom/itextpdf/text/pdf/PRIndirectReference;
    .restart local p2
    :cond_0
    if-nez p2, :cond_1

    .line 3111
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 3118
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfWriter;->imageDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfImage;->name()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    move-object v2, p2

    .line 3121
    :goto_1
    return-object v2

    .line 3113
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3115
    :catch_0
    move-exception v0

    .line 3116
    .local v0, ioe:Ljava/io/IOException;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v2, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 3121
    .end local v0           #ioe:Ljava/io/IOException;
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfWriter;->imageDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfImage;->name()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    goto :goto_1
.end method

.method add(Lcom/itextpdf/text/pdf/PdfPage;Lcom/itextpdf/text/pdf/PdfContents;)Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 6
    .parameter "page"
    .parameter "contents"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/PdfException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1092
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->open:Z

    if-nez v3, :cond_0

    .line 1093
    new-instance v3, Lcom/itextpdf/text/pdf/PdfException;

    const-string v4, "the.document.is.not.open"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1097
    :cond_0
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1102
    .local v1, object:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfPage;->add(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 1104
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->group:Lcom/itextpdf/text/pdf/PdfDictionary;

    if-eqz v3, :cond_2

    .line 1105
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->GROUP:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfWriter;->group:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {p1, v3, v4}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1106
    iput-object v5, p0, Lcom/itextpdf/text/pdf/PdfWriter;->group:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1115
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->root:Lcom/itextpdf/text/pdf/PdfPages;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/PdfPages;->addPage(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 1116
    iget v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->currentPageNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->currentPageNumber:I

    .line 1117
    return-object v5

    .line 1099
    .end local v1           #object:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    :catch_0
    move-exception v0

    .line 1100
    .local v0, ioe:Ljava/io/IOException;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 1108
    .end local v0           #ioe:Ljava/io/IOException;
    .restart local v1       #object:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    :cond_2
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->rgbTransparencyBlending:Z

    if-eqz v3, :cond_1

    .line 1109
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1110
    .local v2, pp:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->GROUP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1111
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->TRANSPARENCY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1112
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->CS:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->DEVICERGB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1113
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->GROUP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v3, v2}, Lcom/itextpdf/text/pdf/PdfPage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V
    .locals 1
    .parameter "annot"

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V

    .line 1721
    return-void
.end method

.method addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;I)V
    .locals 0
    .parameter "annot"
    .parameter "page"

    .prologue
    .line 1724
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V

    .line 1725
    return-void
.end method

.method public addCalculationOrder(Lcom/itextpdf/text/pdf/PdfFormField;)V
    .locals 1
    .parameter "annot"

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->addCalculationOrder(Lcom/itextpdf/text/pdf/PdfFormField;)V

    .line 1730
    return-void
.end method

.method public addDeveloperExtension(Lcom/itextpdf/text/pdf/PdfDeveloperExtension;)V
    .locals 1
    .parameter "de"

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf_version:Lcom/itextpdf/text/pdf/internal/PdfVersionImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->addDeveloperExtension(Lcom/itextpdf/text/pdf/PdfDeveloperExtension;)V

    .line 1434
    return-void
.end method

.method public addDirectImageSimple(Lcom/itextpdf/text/Image;)Lcom/itextpdf/text/pdf/PdfName;
    .locals 1
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/PdfException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 3012
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addDirectImageSimple(Lcom/itextpdf/text/Image;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method public addDirectImageSimple(Lcom/itextpdf/text/Image;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfName;
    .locals 20
    .parameter "image"
    .parameter "fixedRef"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/PdfException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 3029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter;->images:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getMySerialId()Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 3030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter;->images:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getMySerialId()Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/itextpdf/text/pdf/PdfName;

    .local v15, name:Lcom/itextpdf/text/pdf/PdfName;
    :goto_0
    move-object/from16 v16, v15

    .line 3090
    .end local v15           #name:Lcom/itextpdf/text/pdf/PdfName;
    :goto_1
    return-object v16

    .line 3034
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->isImgTemplate()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 3035
    new-instance v15, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "img"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter;->images:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 3036
    .restart local v15       #name:Lcom/itextpdf/text/pdf/PdfName;
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/itextpdf/text/ImgWMF;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 3038
    :try_start_0
    move-object/from16 v0, p1

    check-cast v0, Lcom/itextpdf/text/ImgWMF;

    move-object/from16 v17, v0

    .line 3039
    .local v17, wmf:Lcom/itextpdf/text/ImgWMF;
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfTemplate;->createTemplate(Lcom/itextpdf/text/pdf/PdfWriter;FF)Lcom/itextpdf/text/pdf/PdfTemplate;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/ImgWMF;->readWMF(Lcom/itextpdf/text/pdf/PdfTemplate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3088
    .end local v17           #wmf:Lcom/itextpdf/text/ImgWMF;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter;->images:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getMySerialId()Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3041
    :catch_0
    move-exception v6

    .line 3042
    .local v6, e:Ljava/lang/Exception;
    new-instance v18, Lcom/itextpdf/text/DocumentException;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/Exception;)V

    throw v18

    .line 3047
    .end local v6           #e:Ljava/lang/Exception;
    .end local v15           #name:Lcom/itextpdf/text/pdf/PdfName;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getDirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    .line 3048
    .local v5, dref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    if-eqz v5, :cond_3

    .line 3049
    new-instance v16, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "img"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter;->images:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    .line 3050
    .local v16, rname:Lcom/itextpdf/text/pdf/PdfName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter;->images:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getMySerialId()Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter;->imageDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_1

    .line 3054
    .end local v16           #rname:Lcom/itextpdf/text/pdf/PdfName;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getImageMask()Lcom/itextpdf/text/Image;

    move-result-object v12

    .line 3055
    .local v12, maskImage:Lcom/itextpdf/text/Image;
    const/4 v13, 0x0

    .line 3056
    .local v13, maskRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    if-eqz v12, :cond_4

    .line 3057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter;->images:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual {v12}, Lcom/itextpdf/text/Image;->getMySerialId()Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/text/pdf/PdfName;

    .line 3058
    .local v14, mname:Lcom/itextpdf/text/pdf/PdfName;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/itextpdf/text/pdf/PdfWriter;->getImageReference(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v13

    .line 3060
    .end local v14           #mname:Lcom/itextpdf/text/pdf/PdfName;
    :cond_4
    new-instance v8, Lcom/itextpdf/text/pdf/PdfImage;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "img"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter;->images:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1, v13}, Lcom/itextpdf/text/pdf/PdfImage;-><init>(Lcom/itextpdf/text/Image;Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 3061
    .local v8, i:Lcom/itextpdf/text/pdf/PdfImage;
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/itextpdf/text/ImgJBIG2;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v18, p1

    .line 3062
    check-cast v18, Lcom/itextpdf/text/ImgJBIG2;

    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/ImgJBIG2;->getGlobalBytes()[B

    move-result-object v7

    .line 3063
    .local v7, globals:[B
    if-eqz v7, :cond_5

    .line 3064
    new-instance v4, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 3065
    .local v4, decodeparms:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->JBIG2GLOBALS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/PdfWriter;->getReferenceJBIG2Globals([B)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3066
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->DECODEPARMS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v4}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 3069
    .end local v4           #decodeparms:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v7           #globals:[B
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->hasICCProfile()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 3070
    new-instance v9, Lcom/itextpdf/text/pdf/PdfICCBased;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getICCProfile()Lcom/itextpdf/text/pdf/ICC_Profile;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Image;->getCompressionLevel()I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v9, v0, v1}, Lcom/itextpdf/text/pdf/PdfICCBased;-><init>(Lcom/itextpdf/text/pdf/ICC_Profile;I)V

    .line 3071
    .local v9, icc:Lcom/itextpdf/text/pdf/PdfICCBased;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/itextpdf/text/pdf/PdfWriter;->add(Lcom/itextpdf/text/pdf/PdfICCBased;)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v11

    .line 3072
    .local v11, iccRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    new-instance v10, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v10}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 3073
    .local v10, iccArray:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->ICCBASED:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 3074
    invoke-virtual {v10, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 3075
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/itextpdf/text/pdf/PdfImage;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v3

    .line 3076
    .local v3, colorspace:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v3, :cond_8

    .line 3077
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_7

    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->INDEXED:Lcom/itextpdf/text/pdf/PdfName;

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 3078
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v3, v0, v10}, Lcom/itextpdf/text/pdf/PdfArray;->set(ILcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    .line 3085
    .end local v3           #colorspace:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v9           #icc:Lcom/itextpdf/text/pdf/PdfICCBased;
    .end local v10           #iccArray:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v11           #iccRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v8, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->add(Lcom/itextpdf/text/pdf/PdfImage;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 3086
    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfImage;->name()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v15

    .restart local v15       #name:Lcom/itextpdf/text/pdf/PdfName;
    goto/16 :goto_2

    .line 3080
    .end local v15           #name:Lcom/itextpdf/text/pdf/PdfName;
    .restart local v3       #colorspace:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v9       #icc:Lcom/itextpdf/text/pdf/PdfICCBased;
    .restart local v10       #iccArray:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v11       #iccRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_7
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v10}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_3

    .line 3083
    :cond_8
    sget-object v18, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v10}, Lcom/itextpdf/text/pdf/PdfImage;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_3
.end method

.method addDirectTemplateSimple(Lcom/itextpdf/text/pdf/PdfTemplate;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;
    .locals 11
    .parameter "template"
    .parameter "forcedName"

    .prologue
    const/4 v10, 0x2

    .line 2224
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v7

    .line 2225
    .local v7, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfWriter;->formXObjects:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    .line 2226
    .local v5, obj:[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 2228
    .local v3, name:Lcom/itextpdf/text/pdf/PdfName;
    if-nez v5, :cond_3

    .line 2229
    if-nez p2, :cond_2

    .line 2230
    :try_start_0
    new-instance v4, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Xf"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/itextpdf/text/pdf/PdfWriter;->formXObjectsCounter:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2231
    .end local v3           #name:Lcom/itextpdf/text/pdf/PdfName;
    .local v4, name:Lcom/itextpdf/text/pdf/PdfName;
    :try_start_1
    iget v8, p0, Lcom/itextpdf/text/pdf/PdfWriter;->formXObjectsCounter:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/itextpdf/text/pdf/PdfWriter;->formXObjectsCounter:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 2235
    .end local v4           #name:Lcom/itextpdf/text/pdf/PdfName;
    .restart local v3       #name:Lcom/itextpdf/text/pdf/PdfName;
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->getType()I

    move-result v8

    if-ne v8, v10, :cond_1

    .line 2237
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/text/pdf/PdfImportedPage;

    move-object v2, v0

    .line 2238
    .local v2, ip:Lcom/itextpdf/text/pdf/PdfImportedPage;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfImportedPage;->getPdfReaderInstance()Lcom/itextpdf/text/pdf/PdfReaderInstance;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->getReader()Lcom/itextpdf/text/pdf/PdfReader;

    move-result-object v6

    .line 2239
    .local v6, r:Lcom/itextpdf/text/pdf/PdfReader;
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfWriter;->readerInstances:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2240
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfWriter;->readerInstances:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfImportedPage;->getPdfReaderInstance()Lcom/itextpdf/text/pdf/PdfReaderInstance;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2242
    :cond_0
    const/4 p1, 0x0

    .line 2244
    .end local v2           #ip:Lcom/itextpdf/text/pdf/PdfImportedPage;
    .end local v6           #r:Lcom/itextpdf/text/pdf/PdfReader;
    :cond_1
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfWriter;->formXObjects:Ljava/util/HashMap;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-virtual {v8, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2252
    :goto_1
    return-object v3

    .line 2234
    :cond_2
    move-object v3, p2

    goto :goto_0

    .line 2247
    :cond_3
    const/4 v8, 0x0

    aget-object v8, v5, v8

    move-object v0, v8

    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    move-object v3, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 2249
    :catch_0
    move-exception v1

    .line 2250
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    new-instance v8, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v8, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 2249
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #name:Lcom/itextpdf/text/pdf/PdfName;
    .restart local v4       #name:Lcom/itextpdf/text/pdf/PdfName;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4           #name:Lcom/itextpdf/text/pdf/PdfName;
    .restart local v3       #name:Lcom/itextpdf/text/pdf/PdfName;
    goto :goto_2
.end method

.method public addFileAttachment(Lcom/itextpdf/text/pdf/PdfFileSpecification;)V
    .locals 1
    .parameter "fs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1657
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addFileAttachment(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFileSpecification;)V

    .line 1658
    return-void
.end method

.method public addFileAttachment(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFileSpecification;)V
    .locals 1
    .parameter "description"
    .parameter "fs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDocument;->addFileAttachment(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFileSpecification;)V

    .line 1649
    return-void
.end method

.method public addFileAttachment(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "description"
    .parameter "fileStore"
    .parameter "file"
    .parameter "fileDisplay"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1638
    invoke-static {p0, p3, p4, p2}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->fileEmbedded(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/lang/String;Ljava/lang/String;[B)Lcom/itextpdf/text/pdf/PdfFileSpecification;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addFileAttachment(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFileSpecification;)V

    .line 1639
    return-void
.end method

.method public addJavaScript(Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 1
    .parameter "js"

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->addJavaScript(Lcom/itextpdf/text/pdf/PdfAction;)V

    .line 1572
    return-void
.end method

.method public addJavaScript(Ljava/lang/String;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 1592
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addJavaScript(Ljava/lang/String;Z)V

    .line 1593
    return-void
.end method

.method public addJavaScript(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 1
    .parameter "name"
    .parameter "js"

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDocument;->addJavaScript(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfAction;)V

    .line 1602
    return-void
.end method

.method public addJavaScript(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "code"

    .prologue
    .line 1624
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addJavaScript(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1625
    return-void
.end method

.method public addJavaScript(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "name"
    .parameter "code"
    .parameter "unicode"

    .prologue
    .line 1614
    invoke-static {p2, p0, p3}, Lcom/itextpdf/text/pdf/PdfAction;->javaScript(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfWriter;Z)Lcom/itextpdf/text/pdf/PdfAction;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addJavaScript(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfAction;)V

    .line 1615
    return-void
.end method

.method public addJavaScript(Ljava/lang/String;Z)V
    .locals 1
    .parameter "code"
    .parameter "unicode"

    .prologue
    .line 1583
    invoke-static {p1, p0, p2}, Lcom/itextpdf/text/pdf/PdfAction;->javaScript(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfWriter;Z)Lcom/itextpdf/text/pdf/PdfAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addJavaScript(Lcom/itextpdf/text/pdf/PdfAction;)V

    .line 1584
    return-void
.end method

.method addLocalDestinations(Ljava/util/TreeMap;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfDocument$Destination;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 759
    .local p1, desto:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDocument$Destination;>;"
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 760
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDocument$Destination;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 761
    .local v4, name:Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDocument$Destination;

    .line 762
    .local v0, dest:Lcom/itextpdf/text/pdf/PdfDocument$Destination;
    iget-object v1, v0, Lcom/itextpdf/text/pdf/PdfDocument$Destination;->destination:Lcom/itextpdf/text/pdf/PdfDestination;

    .line 763
    .local v1, destination:Lcom/itextpdf/text/pdf/PdfDestination;
    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfDocument$Destination;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    if-nez v5, :cond_0

    .line 764
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    iput-object v5, v0, Lcom/itextpdf/text/pdf/PdfDocument$Destination;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 765
    :cond_0
    if-nez v1, :cond_1

    .line 766
    new-instance v5, Lcom/itextpdf/text/pdf/PdfString;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/itextpdf/text/pdf/PdfDocument$Destination;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-virtual {p0, v5, v6}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    goto :goto_0

    .line 768
    :cond_1
    iget-object v5, v0, Lcom/itextpdf/text/pdf/PdfDocument$Destination;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-virtual {p0, v1, v5}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    goto :goto_0

    .line 770
    .end local v0           #dest:Lcom/itextpdf/text/pdf/PdfDocument$Destination;
    .end local v1           #destination:Lcom/itextpdf/text/pdf/PdfDestination;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDocument$Destination;>;"
    .end local v4           #name:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public addNamedDestination(Ljava/lang/String;ILcom/itextpdf/text/pdf/PdfDestination;)V
    .locals 1
    .parameter "name"
    .parameter "page"
    .parameter "dest"

    .prologue
    .line 1561
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageReference(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/itextpdf/text/pdf/PdfDestination;->addPage(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Z

    .line 1562
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1, p3}, Lcom/itextpdf/text/pdf/PdfDocument;->localDestination(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfDestination;)Z

    .line 1563
    return-void
.end method

.method public addNamedDestinations(Ljava/util/Map;I)V
    .locals 7
    .parameter
    .parameter "page_offset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1545
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1546
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1547
    .local v0, dest:Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1548
    .local v4, page:I
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDestination;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/itextpdf/text/pdf/PdfDestination;-><init>(Ljava/lang/String;)V

    .line 1549
    .local v1, destination:Lcom/itextpdf/text/pdf/PdfDestination;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    add-int v6, v4, p2

    invoke-virtual {p0, v5, v6, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->addNamedDestination(Ljava/lang/String;ILcom/itextpdf/text/pdf/PdfDestination;)V

    goto :goto_0

    .line 1551
    .end local v0           #dest:Ljava/lang/String;
    .end local v1           #destination:Lcom/itextpdf/text/pdf/PdfDestination;
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #page:I
    :cond_0
    return-void
.end method

.method public addOCGRadioGroup(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfLayer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2528
    .local p1, group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfLayer;>;"
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 2529
    .local v0, ar:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2530
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfLayer;

    .line 2531
    .local v2, layer:Lcom/itextpdf/text/pdf/PdfLayer;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2532
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfLayer;->getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 2529
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2534
    .end local v2           #layer:Lcom/itextpdf/text/pdf/PdfLayer;
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 2537
    :goto_1
    return-void

    .line 2536
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->OCGRadioGroup:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_1
.end method

.method public addPageDictEntry(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "key"
    .parameter "object"

    .prologue
    .line 958
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pageDictEntries:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 959
    return-void
.end method

.method protected addSharedObjectsToBody()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter;->documentFonts:Ljava/util/LinkedHashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/FontDetails;

    .line 1292
    .local v4, details:Lcom/itextpdf/text/pdf/FontDetails;
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/FontDetails;->writeFont(Lcom/itextpdf/text/pdf/PdfWriter;)V

    goto :goto_0

    .line 1295
    .end local v4           #details:Lcom/itextpdf/text/pdf/FontDetails;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter;->formXObjects:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/Object;

    .line 1296
    .local v12, objs:[Ljava/lang/Object;
    const/16 v18, 0x1

    aget-object v17, v12, v18

    check-cast v17, Lcom/itextpdf/text/pdf/PdfTemplate;

    .line 1297
    .local v17, template:Lcom/itextpdf/text/pdf/PdfTemplate;
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfTemplate;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/itextpdf/text/pdf/PRIndirectReference;

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 1299
    :cond_2
    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfTemplate;->getType()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 1300
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfWriter;->compressionLevel:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/itextpdf/text/pdf/PdfTemplate;->getFormXObject(I)Lcom/itextpdf/text/pdf/PdfStream;

    move-result-object v18

    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfTemplate;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    goto :goto_1

    .line 1304
    .end local v12           #objs:[Ljava/lang/Object;
    .end local v17           #template:Lcom/itextpdf/text/pdf/PdfTemplate;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter;->readerInstances:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfReaderInstance;

    .line 1305
    .local v5, element:Lcom/itextpdf/text/pdf/PdfReaderInstance;
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/itextpdf/text/pdf/PdfWriter;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->writeAllPages()V

    goto :goto_2

    .line 1308
    .end local v5           #element:Lcom/itextpdf/text/pdf/PdfReaderInstance;
    :cond_4
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/PdfWriter;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter;->documentColors:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/ColorDetails;

    .line 1311
    .local v3, color:Lcom/itextpdf/text/pdf/ColorDetails;
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/ColorDetails;->getSpotColor(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/ColorDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    goto :goto_3

    .line 1314
    .end local v3           #color:Lcom/itextpdf/text/pdf/ColorDetails;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter;->documentPatterns:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/text/pdf/PdfPatternPainter;

    .line 1315
    .local v13, pat:Lcom/itextpdf/text/pdf/PdfPatternPainter;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/PdfWriter;->compressionLevel:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->getPattern(I)Lcom/itextpdf/text/pdf/PdfPattern;

    move-result-object v18

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfPatternPainter;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    goto :goto_4

    .line 1318
    .end local v13           #pat:Lcom/itextpdf/text/pdf/PdfPatternPainter;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter;->documentShadingPatterns:Ljava/util/HashSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/itextpdf/text/pdf/PdfShadingPattern;

    .line 1319
    .local v16, shadingPattern:Lcom/itextpdf/text/pdf/PdfShadingPattern;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/PdfShadingPattern;->addToBody()V

    goto :goto_5

    .line 1322
    .end local v16           #shadingPattern:Lcom/itextpdf/text/pdf/PdfShadingPattern;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter;->documentShadings:Ljava/util/HashSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/itextpdf/text/pdf/PdfShading;

    .line 1323
    .local v15, shading:Lcom/itextpdf/text/pdf/PdfShading;
    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/PdfShading;->addToBody()V

    goto :goto_6

    .line 1326
    .end local v15           #shading:Lcom/itextpdf/text/pdf/PdfShading;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter;->documentExtGState:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1327
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/itextpdf/text/pdf/PdfDictionary;[Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1328
    .local v8, gstate:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/itextpdf/text/pdf/PdfObject;

    .line 1329
    .local v11, obj:[Lcom/itextpdf/text/pdf/PdfObject;
    const/16 v18, 0x1

    aget-object v18, v11, v18

    check-cast v18, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    goto :goto_7

    .line 1332
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/itextpdf/text/pdf/PdfDictionary;[Lcom/itextpdf/text/pdf/PdfObject;>;"
    .end local v8           #gstate:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v11           #obj:[Lcom/itextpdf/text/pdf/PdfObject;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfWriter;->documentProperties:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1333
    .local v7, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;[Lcom/itextpdf/text/pdf/PdfObject;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    .line 1334
    .local v14, prop:Ljava/lang/Object;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/itextpdf/text/pdf/PdfObject;

    .line 1335
    .restart local v11       #obj:[Lcom/itextpdf/text/pdf/PdfObject;
    instance-of v0, v14, Lcom/itextpdf/text/pdf/PdfLayerMembership;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    move-object v10, v14

    .line 1336
    check-cast v10, Lcom/itextpdf/text/pdf/PdfLayerMembership;

    .line 1337
    .local v10, layer:Lcom/itextpdf/text/pdf/PdfLayerMembership;
    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfLayerMembership;->getPdfObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    invoke-virtual {v10}, Lcom/itextpdf/text/pdf/PdfLayerMembership;->getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    goto :goto_8

    .line 1339
    .end local v10           #layer:Lcom/itextpdf/text/pdf/PdfLayerMembership;
    :cond_b
    instance-of v0, v14, Lcom/itextpdf/text/pdf/PdfDictionary;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    instance-of v0, v14, Lcom/itextpdf/text/pdf/PdfLayer;

    move/from16 v18, v0

    if-nez v18, :cond_a

    .line 1340
    check-cast v14, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v14           #prop:Ljava/lang/Object;
    const/16 v18, 0x1

    aget-object v18, v11, v18

    check-cast v18, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    goto :goto_8

    .line 1343
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;[Lcom/itextpdf/text/pdf/PdfObject;>;"
    .end local v11           #obj:[Lcom/itextpdf/text/pdf/PdfObject;
    :cond_c
    return-void
.end method

.method addSimple(Lcom/itextpdf/text/pdf/PdfSpotColor;)Lcom/itextpdf/text/pdf/ColorDetails;
    .locals 3
    .parameter "spc"

    .prologue
    .line 2378
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentColors:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/ColorDetails;

    .line 2379
    .local v0, ret:Lcom/itextpdf/text/pdf/ColorDetails;
    if-nez v0, :cond_0

    .line 2380
    new-instance v0, Lcom/itextpdf/text/pdf/ColorDetails;

    .end local v0           #ret:Lcom/itextpdf/text/pdf/ColorDetails;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfWriter;->getColorspaceName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/itextpdf/text/pdf/ColorDetails;-><init>(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfSpotColor;)V

    .line 2381
    .restart local v0       #ret:Lcom/itextpdf/text/pdf/ColorDetails;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentColors:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2383
    :cond_0
    return-object v0
.end method

.method addSimple(Lcom/itextpdf/text/pdf/BaseFont;)Lcom/itextpdf/text/pdf/FontDetails;
    .locals 5
    .parameter "bf"

    .prologue
    const/4 v2, 0x4

    .line 2187
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontType()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 2188
    new-instance v0, Lcom/itextpdf/text/pdf/FontDetails;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "F"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->fontNumber:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfWriter;->fontNumber:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/text/pdf/DocumentFont;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/DocumentFont;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-direct {v0, v2, v1, p1}, Lcom/itextpdf/text/pdf/FontDetails;-><init>(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/BaseFont;)V

    .line 2196
    :cond_0
    :goto_0
    return-object v0

    .line 2190
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentFonts:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/FontDetails;

    .line 2191
    .local v0, ret:Lcom/itextpdf/text/pdf/FontDetails;
    if-nez v0, :cond_0

    .line 2192
    invoke-static {p0, v2, p1}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->checkPDFXConformance(Lcom/itextpdf/text/pdf/PdfWriter;ILjava/lang/Object;)V

    .line 2193
    new-instance v0, Lcom/itextpdf/text/pdf/FontDetails;

    .end local v0           #ret:Lcom/itextpdf/text/pdf/FontDetails;
    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "F"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->fontNumber:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/itextpdf/text/pdf/PdfWriter;->fontNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/itextpdf/text/pdf/FontDetails;-><init>(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/BaseFont;)V

    .line 2194
    .restart local v0       #ret:Lcom/itextpdf/text/pdf/FontDetails;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentFonts:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method addSimpleExtGState(Lcom/itextpdf/text/pdf/PdfDictionary;)[Lcom/itextpdf/text/pdf/PdfObject;
    .locals 6
    .parameter "gstate"

    .prologue
    .line 2437
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentExtGState:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2438
    const/4 v0, 0x6

    invoke-static {p0, v0, p1}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->checkPDFXConformance(Lcom/itextpdf/text/pdf/PdfWriter;ILjava/lang/Object;)V

    .line 2439
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentExtGState:Ljava/util/HashMap;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/itextpdf/text/pdf/PdfObject;

    const/4 v2, 0x0

    new-instance v3, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentExtGState:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2441
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentExtGState:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/text/pdf/PdfObject;

    return-object v0
.end method

.method addSimplePattern(Lcom/itextpdf/text/pdf/PdfPatternPainter;)Lcom/itextpdf/text/pdf/PdfName;
    .locals 5
    .parameter "painter"

    .prologue
    .line 2395
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentPatterns:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfName;

    .line 2397
    .local v1, name:Lcom/itextpdf/text/pdf/PdfName;
    if-nez v1, :cond_0

    .line 2398
    :try_start_0
    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "P"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/itextpdf/text/pdf/PdfWriter;->patternNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2399
    .end local v1           #name:Lcom/itextpdf/text/pdf/PdfName;
    .local v2, name:Lcom/itextpdf/text/pdf/PdfName;
    :try_start_1
    iget v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->patternNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->patternNumber:I

    .line 2400
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentPatterns:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 2405
    .end local v2           #name:Lcom/itextpdf/text/pdf/PdfName;
    .restart local v1       #name:Lcom/itextpdf/text/pdf/PdfName;
    :cond_0
    return-object v1

    .line 2402
    :catch_0
    move-exception v0

    .line 2403
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 2402
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #name:Lcom/itextpdf/text/pdf/PdfName;
    .restart local v2       #name:Lcom/itextpdf/text/pdf/PdfName;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #name:Lcom/itextpdf/text/pdf/PdfName;
    .restart local v1       #name:Lcom/itextpdf/text/pdf/PdfName;
    goto :goto_0
.end method

.method addSimplePatternColorspace(Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/pdf/ColorDetails;
    .locals 9
    .parameter "color"

    .prologue
    const/4 v7, 0x0

    .line 2917
    invoke-static {p1}, Lcom/itextpdf/text/pdf/ExtendedColor;->getType(Lcom/itextpdf/text/BaseColor;)I

    move-result v4

    .line 2918
    .local v4, type:I
    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 2919
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "an.uncolored.tile.pattern.can.not.have.another.pattern.or.shading.as.color"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2921
    :cond_1
    packed-switch v4, :pswitch_data_0

    .line 2959
    :try_start_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "invalid.color.type"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2962
    .end local p1
    :catch_0
    move-exception v2

    .line 2963
    .local v2, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2923
    .end local v2           #e:Ljava/lang/Exception;
    .restart local p1
    :pswitch_0
    :try_start_1
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfWriter;->patternColorspaceRGB:Lcom/itextpdf/text/pdf/ColorDetails;

    if-nez v5, :cond_2

    .line 2924
    new-instance v5, Lcom/itextpdf/text/pdf/ColorDetails;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfWriter;->getColorspaceName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v6

    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/itextpdf/text/pdf/ColorDetails;-><init>(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfSpotColor;)V

    iput-object v5, p0, Lcom/itextpdf/text/pdf/PdfWriter;->patternColorspaceRGB:Lcom/itextpdf/text/pdf/ColorDetails;

    .line 2925
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->PATTERN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2926
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->DEVICERGB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 2927
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfWriter;->patternColorspaceRGB:Lcom/itextpdf/text/pdf/ColorDetails;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/ColorDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 2929
    .end local v0           #array:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->patternColorspaceRGB:Lcom/itextpdf/text/pdf/ColorDetails;

    .line 2956
    .end local p1
    :cond_3
    :goto_0
    return-object v3

    .line 2931
    .restart local p1
    :pswitch_1
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfWriter;->patternColorspaceCMYK:Lcom/itextpdf/text/pdf/ColorDetails;

    if-nez v5, :cond_4

    .line 2932
    new-instance v5, Lcom/itextpdf/text/pdf/ColorDetails;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfWriter;->getColorspaceName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v6

    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/itextpdf/text/pdf/ColorDetails;-><init>(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfSpotColor;)V

    iput-object v5, p0, Lcom/itextpdf/text/pdf/PdfWriter;->patternColorspaceCMYK:Lcom/itextpdf/text/pdf/ColorDetails;

    .line 2933
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->PATTERN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2934
    .restart local v0       #array:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->DEVICECMYK:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 2935
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfWriter;->patternColorspaceCMYK:Lcom/itextpdf/text/pdf/ColorDetails;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/ColorDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 2937
    .end local v0           #array:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_4
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->patternColorspaceCMYK:Lcom/itextpdf/text/pdf/ColorDetails;

    goto :goto_0

    .line 2939
    :pswitch_2
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfWriter;->patternColorspaceGRAY:Lcom/itextpdf/text/pdf/ColorDetails;

    if-nez v5, :cond_5

    .line 2940
    new-instance v5, Lcom/itextpdf/text/pdf/ColorDetails;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfWriter;->getColorspaceName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v6

    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/itextpdf/text/pdf/ColorDetails;-><init>(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfSpotColor;)V

    iput-object v5, p0, Lcom/itextpdf/text/pdf/PdfWriter;->patternColorspaceGRAY:Lcom/itextpdf/text/pdf/ColorDetails;

    .line 2941
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->PATTERN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2942
    .restart local v0       #array:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->DEVICEGRAY:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 2943
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfWriter;->patternColorspaceGRAY:Lcom/itextpdf/text/pdf/ColorDetails;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/ColorDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 2945
    .end local v0           #array:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_5
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->patternColorspaceGRAY:Lcom/itextpdf/text/pdf/ColorDetails;

    goto :goto_0

    .line 2947
    :pswitch_3
    check-cast p1, Lcom/itextpdf/text/pdf/SpotColor;

    .end local p1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/SpotColor;->getPdfSpotColor()Lcom/itextpdf/text/pdf/PdfSpotColor;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimple(Lcom/itextpdf/text/pdf/PdfSpotColor;)Lcom/itextpdf/text/pdf/ColorDetails;

    move-result-object v1

    .line 2948
    .local v1, details:Lcom/itextpdf/text/pdf/ColorDetails;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentSpotPatterns:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/ColorDetails;

    .line 2949
    .local v3, patternDetails:Lcom/itextpdf/text/pdf/ColorDetails;
    if-nez v3, :cond_3

    .line 2950
    new-instance v3, Lcom/itextpdf/text/pdf/ColorDetails;

    .end local v3           #patternDetails:Lcom/itextpdf/text/pdf/ColorDetails;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfWriter;->getColorspaceName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v5

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v5, v6, v7}, Lcom/itextpdf/text/pdf/ColorDetails;-><init>(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfSpotColor;)V

    .line 2951
    .restart local v3       #patternDetails:Lcom/itextpdf/text/pdf/ColorDetails;
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->PATTERN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2952
    .restart local v0       #array:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/ColorDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 2953
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/ColorDetails;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 2954
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentSpotPatterns:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2921
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method addSimpleProperty(Ljava/lang/Object;Lcom/itextpdf/text/pdf/PdfIndirectReference;)[Lcom/itextpdf/text/pdf/PdfObject;
    .locals 6
    .parameter "prop"
    .parameter "refi"

    .prologue
    .line 2448
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2449
    instance-of v0, p1, Lcom/itextpdf/text/pdf/PdfOCG;

    if-eqz v0, :cond_0

    .line 2450
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->checkPDFXConformance(Lcom/itextpdf/text/pdf/PdfWriter;ILjava/lang/Object;)V

    .line 2451
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentProperties:Ljava/util/HashMap;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/itextpdf/text/pdf/PdfObject;

    const/4 v2, 0x0

    new-instance v3, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pr"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentProperties:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2453
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/text/pdf/PdfObject;

    return-object v0
.end method

.method addSimpleShading(Lcom/itextpdf/text/pdf/PdfShading;)V
    .locals 1
    .parameter "shading"

    .prologue
    .line 2426
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentShadings:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2427
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentShadings:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2428
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentShadings:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfShading;->setName(I)V

    .line 2430
    :cond_0
    return-void
.end method

.method addSimpleShadingPattern(Lcom/itextpdf/text/pdf/PdfShadingPattern;)V
    .locals 1
    .parameter "shading"

    .prologue
    .line 2413
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentShadingPatterns:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2414
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->patternNumber:I

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfShadingPattern;->setName(I)V

    .line 2415
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->patternNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->patternNumber:I

    .line 2416
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentShadingPatterns:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2417
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfShadingPattern;->getShading()Lcom/itextpdf/text/pdf/PdfShading;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addSimpleShading(Lcom/itextpdf/text/pdf/PdfShading;)V

    .line 2419
    :cond_0
    return-void
.end method

.method public addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;
    .locals 2
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 780
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->add(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v0

    .line 781
    .local v0, iobj:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    return-object v0
.end method

.method public addToBody(Lcom/itextpdf/text/pdf/PdfObject;I)Lcom/itextpdf/text/pdf/PdfIndirectObject;
    .locals 2
    .parameter "object"
    .parameter "refNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 833
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v1, p1, p2}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->add(Lcom/itextpdf/text/pdf/PdfObject;I)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v0

    .line 834
    .local v0, iobj:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    return-object v0
.end method

.method public addToBody(Lcom/itextpdf/text/pdf/PdfObject;IZ)Lcom/itextpdf/text/pdf/PdfIndirectObject;
    .locals 2
    .parameter "object"
    .parameter "refNumber"
    .parameter "inObjStm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 847
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v1, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->add(Lcom/itextpdf/text/pdf/PdfObject;IZ)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v0

    .line 848
    .local v0, iobj:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    return-object v0
.end method

.method public addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;
    .locals 2
    .parameter "object"
    .parameter "ref"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 806
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v1, p1, p2}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->add(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v0

    .line 807
    .local v0, iobj:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    return-object v0
.end method

.method public addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;
    .locals 2
    .parameter "object"
    .parameter "ref"
    .parameter "inObjStm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 820
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v1, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->add(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v0

    .line 821
    .local v0, iobj:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    return-object v0
.end method

.method public addToBody(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;
    .locals 2
    .parameter "object"
    .parameter "inObjStm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 793
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v1, p1, p2}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->add(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v0

    .line 794
    .local v0, iobj:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    return-object v0
.end method

.method public addViewerPreference(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1515
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDocument;->addViewerPreference(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1516
    return-void
.end method

.method public clearTextWrap()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 2992
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDocument;->clearTextWrap()V

    .line 2993
    return-void
.end method

.method public close()V
    .locals 28

    .prologue
    .line 1206
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->open:Z

    if-eqz v2, :cond_6

    .line 1207
    move-object/from16 v0, p0

    iget v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->currentPageNumber:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfWriter;->pageReferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1208
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The page "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfWriter;->pageReferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was requested but the document has only "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/itextpdf/text/pdf/PdfWriter;->currentPageNumber:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pages."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1210
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfDocument;->close()V

    .line 1212
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfWriter;->addSharedObjectsToBody()V

    .line 1213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->documentOCG:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/itextpdf/text/pdf/PdfOCG;

    .line 1214
    .local v25, layer:Lcom/itextpdf/text/pdf/PdfOCG;
    invoke-interface/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfOCG;->getPdfObject()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    invoke-interface/range {v25 .. v25}, Lcom/itextpdf/text/pdf/PdfOCG;->getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1283
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v25           #layer:Lcom/itextpdf/text/pdf/PdfOCG;
    :catch_0
    move-exception v24

    .line 1284
    .local v24, ioe:Ljava/io/IOException;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 1217
    .end local v24           #ioe:Ljava/io/IOException;
    .restart local v21       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->root:Lcom/itextpdf/text/pdf/PdfPages;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfPages;->writePageTree()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v26

    .line 1219
    .local v26, rootRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->getCatalog(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v19

    .line 1221
    .local v19, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->xmpMetadata:[B

    if-eqz v2, :cond_3

    .line 1222
    new-instance v27, Lcom/itextpdf/text/pdf/PdfStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->xmpMetadata:[B

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 1223
    .local v27, xmp:Lcom/itextpdf/text/pdf/PdfStream;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->METADATA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1224
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->XML:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfEncryption;->isMetadataEncrypted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1226
    new-instance v18, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 1227
    .local v18, ar:Lcom/itextpdf/text/pdf/PdfArray;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CRYPT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 1228
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FILTER:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/text/pdf/PdfStream;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1230
    .end local v18           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_2
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->METADATA:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->add(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1233
    .end local v27           #xmp:Lcom/itextpdf/text/pdf/PdfStream;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfWriter;->isPdfX()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->pdfxConformance:Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfWriter;->getInfo()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->completeInfoDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 1235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->pdfxConformance:Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfWriter;->getExtraCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->completeExtraCatalog(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 1238
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->extraCatalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    if-eqz v2, :cond_5

    .line 1239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->extraCatalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->mergeDifferent(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 1242
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->writeOutlines(Lcom/itextpdf/text/pdf/PdfDictionary;Z)V

    .line 1245
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v22

    .line 1247
    .local v22, indirectCatalog:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfWriter;->getInfo()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v23

    .line 1250
    .local v23, infoObj:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    const/4 v6, 0x0

    .line 1251
    .local v6, encryption:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    const/4 v7, 0x0

    .line 1252
    .local v7, fileID:Lcom/itextpdf/text/pdf/PdfObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    #calls: Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->flushObjStm()V
    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->access$000(Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;)V

    .line 1253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    if-eqz v2, :cond_7

    .line 1254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfEncryption;->getEncryptionDictionary()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Z)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v20

    .line 1255
    .local v20, encryptionObject:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v6

    .line 1256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfEncryption;->getFileID()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 1262
    .end local v20           #encryptionObject:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/itextpdf/text/pdf/PdfWriter;->prevxref:J

    invoke-virtual/range {v2 .. v9}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->writeCrossReferenceTable(Ljava/io/OutputStream;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfObject;J)V

    .line 1267
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->fullCompression:Z

    if-eqz v2, :cond_8

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    const-string v3, "startxref\n"

    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write([B)V

    .line 1269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->offset()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write([B)V

    .line 1270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    const-string v3, "\n%%EOF\n"

    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write([B)V

    .line 1281
    :goto_2
    invoke-super/range {p0 .. p0}, Lcom/itextpdf/text/DocWriter;->close()V

    .line 1287
    .end local v6           #encryption:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v7           #fileID:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v19           #catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v22           #indirectCatalog:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    .end local v23           #infoObj:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    .end local v26           #rootRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_6
    return-void

    .line 1259
    .restart local v6       #encryption:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .restart local v7       #fileID:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v19       #catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v21       #i$:Ljava/util/Iterator;
    .restart local v22       #indirectCatalog:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    .restart local v23       #infoObj:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    .restart local v26       #rootRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_7
    invoke-static {}, Lcom/itextpdf/text/pdf/PdfEncryption;->createDocumentId()[B

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/text/pdf/PdfEncryption;->createInfoId([B)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    goto :goto_1

    .line 1273
    :cond_8
    new-instance v8, Lcom/itextpdf/text/pdf/PdfWriter$PdfTrailer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->size()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->offset()J

    move-result-wide v10

    invoke-virtual/range {v22 .. v22}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v12

    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/itextpdf/text/pdf/PdfWriter;->prevxref:J

    move-wide/from16 v16, v0

    move-object v14, v6

    move-object v15, v7

    invoke-direct/range {v8 .. v17}, Lcom/itextpdf/text/pdf/PdfWriter$PdfTrailer;-><init>(IJLcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfIndirectReference;Lcom/itextpdf/text/pdf/PdfObject;J)V

    .line 1279
    .local v8, trailer:Lcom/itextpdf/text/pdf/PdfWriter$PdfTrailer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/itextpdf/text/pdf/PdfWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v2}, Lcom/itextpdf/text/pdf/PdfWriter$PdfTrailer;->toPdf(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public createXmpMetadata()V
    .locals 1

    .prologue
    .line 1764
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfWriter;->createXmpMetadataBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->setXmpMetadata([B)V

    .line 1765
    return-void
.end method

.method eliminateFontSubset(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 4
    .parameter "fonts"

    .prologue
    .line 2200
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentFonts:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/FontDetails;

    .local v0, element:Lcom/itextpdf/text/pdf/FontDetails;
    move-object v1, v0

    .line 2201
    check-cast v1, Lcom/itextpdf/text/pdf/FontDetails;

    .line 2202
    .local v1, ft:Lcom/itextpdf/text/pdf/FontDetails;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/FontDetails;->getFontName()Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2203
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/FontDetails;->setSubset(Z)V

    goto :goto_0

    .line 2205
    .end local v0           #element:Lcom/itextpdf/text/pdf/FontDetails;
    .end local v1           #ft:Lcom/itextpdf/text/pdf/FontDetails;
    :cond_1
    return-void
.end method

.method protected fillOCProperties(Z)V
    .locals 10
    .parameter "erase"

    .prologue
    .line 2597
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfWriter;->OCProperties:Lcom/itextpdf/text/pdf/PdfOCProperties;

    if-nez v8, :cond_0

    .line 2598
    new-instance v8, Lcom/itextpdf/text/pdf/PdfOCProperties;

    invoke-direct {v8}, Lcom/itextpdf/text/pdf/PdfOCProperties;-><init>()V

    iput-object v8, p0, Lcom/itextpdf/text/pdf/PdfWriter;->OCProperties:Lcom/itextpdf/text/pdf/PdfOCProperties;

    .line 2599
    :cond_0
    if-eqz p1, :cond_1

    .line 2600
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfWriter;->OCProperties:Lcom/itextpdf/text/pdf/PdfOCProperties;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->OCGS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/PdfOCProperties;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2601
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfWriter;->OCProperties:Lcom/itextpdf/text/pdf/PdfOCProperties;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/PdfOCProperties;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2603
    :cond_1
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfWriter;->OCProperties:Lcom/itextpdf/text/pdf/PdfOCProperties;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->OCGS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/PdfOCProperties;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    if-nez v8, :cond_3

    .line 2604
    new-instance v3, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 2605
    .local v3, gr:Lcom/itextpdf/text/pdf/PdfArray;
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentOCG:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfOCG;

    .local v2, element:Lcom/itextpdf/text/pdf/PdfOCG;
    move-object v6, v2

    .line 2606
    check-cast v6, Lcom/itextpdf/text/pdf/PdfLayer;

    .line 2607
    .local v6, layer:Lcom/itextpdf/text/pdf/PdfLayer;
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfLayer;->getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_0

    .line 2609
    .end local v2           #element:Lcom/itextpdf/text/pdf/PdfOCG;
    .end local v6           #layer:Lcom/itextpdf/text/pdf/PdfLayer;
    :cond_2
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfWriter;->OCProperties:Lcom/itextpdf/text/pdf/PdfOCProperties;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->OCGS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v3}, Lcom/itextpdf/text/pdf/PdfOCProperties;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2611
    .end local v3           #gr:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfWriter;->OCProperties:Lcom/itextpdf/text/pdf/PdfOCProperties;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9}, Lcom/itextpdf/text/pdf/PdfOCProperties;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 2644
    :goto_1
    return-void

    .line 2613
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentOCGorder:Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2614
    .local v1, docOrder:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfOCG;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/PdfOCG;>;"
    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2615
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfLayer;

    .line 2616
    .restart local v6       #layer:Lcom/itextpdf/text/pdf/PdfLayer;
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfLayer;->getParent()Lcom/itextpdf/text/pdf/PdfLayer;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 2617
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 2619
    .end local v6           #layer:Lcom/itextpdf/text/pdf/PdfLayer;
    :cond_6
    new-instance v7, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v7}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 2620
    .local v7, order:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfOCG;

    .restart local v2       #element:Lcom/itextpdf/text/pdf/PdfOCG;
    move-object v6, v2

    .line 2621
    check-cast v6, Lcom/itextpdf/text/pdf/PdfLayer;

    .line 2622
    .restart local v6       #layer:Lcom/itextpdf/text/pdf/PdfLayer;
    invoke-static {v7, v6}, Lcom/itextpdf/text/pdf/PdfWriter;->getOCGOrder(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/PdfLayer;)V

    goto :goto_3

    .line 2624
    .end local v2           #element:Lcom/itextpdf/text/pdf/PdfOCG;
    .end local v6           #layer:Lcom/itextpdf/text/pdf/PdfLayer;
    :cond_7
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 2625
    .local v0, d:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfWriter;->OCProperties:Lcom/itextpdf/text/pdf/PdfOCProperties;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9, v0}, Lcom/itextpdf/text/pdf/PdfOCProperties;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2626
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->ORDER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v8, v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2627
    new-instance v3, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 2628
    .restart local v3       #gr:Lcom/itextpdf/text/pdf/PdfArray;
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentOCG:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfOCG;

    .restart local v2       #element:Lcom/itextpdf/text/pdf/PdfOCG;
    move-object v6, v2

    .line 2629
    check-cast v6, Lcom/itextpdf/text/pdf/PdfLayer;

    .line 2630
    .restart local v6       #layer:Lcom/itextpdf/text/pdf/PdfLayer;
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfLayer;->isOn()Z

    move-result v8

    if-nez v8, :cond_8

    .line 2631
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfLayer;->getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_4

    .line 2633
    .end local v2           #element:Lcom/itextpdf/text/pdf/PdfOCG;
    .end local v6           #layer:Lcom/itextpdf/text/pdf/PdfLayer;
    :cond_9
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v8

    if-lez v8, :cond_a

    .line 2634
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->OFF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v8, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2635
    :cond_a
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfWriter;->OCGRadioGroup:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v8

    if-lez v8, :cond_b

    .line 2636
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->RBGROUPS:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfWriter;->OCGRadioGroup:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v0, v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2637
    :cond_b
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfWriter;->OCGLocked:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v8

    if-lez v8, :cond_c

    .line 2638
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->LOCKED:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v9, p0, Lcom/itextpdf/text/pdf/PdfWriter;->OCGLocked:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v0, v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2639
    :cond_c
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->VIEW:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->ZOOM:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v8, v9}, Lcom/itextpdf/text/pdf/PdfWriter;->addASEvent(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2640
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->VIEW:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->VIEW:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v8, v9}, Lcom/itextpdf/text/pdf/PdfWriter;->addASEvent(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2641
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->PRINT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->PRINT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v8, v9}, Lcom/itextpdf/text/pdf/PdfWriter;->addASEvent(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2642
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->EXPORT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->EXPORT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {p0, v8, v9}, Lcom/itextpdf/text/pdf/PdfWriter;->addASEvent(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2643
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->LISTMODE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->VISIBLEPAGES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_1
.end method

.method public freeReader(Lcom/itextpdf/text/pdf/PdfReader;)V
    .locals 1
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2325
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->readerInstances:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfReaderInstance;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    .line 2326
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    if-nez v0, :cond_0

    .line 2331
    :goto_0
    return-void

    .line 2328
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->writeAllPages()V

    .line 2329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    .line 2330
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->readerInstances:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getAcroForm()Lcom/itextpdf/text/pdf/PdfAcroForm;
    .locals 1

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDocument;->getAcroForm()Lcom/itextpdf/text/pdf/PdfAcroForm;

    move-result-object v0

    return-object v0
.end method

.method public getBoxSize(Ljava/lang/String;)Lcom/itextpdf/text/Rectangle;
    .locals 1
    .parameter "boxName"

    .prologue
    .line 2702
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->getBoxSize(Ljava/lang/String;)Lcom/itextpdf/text/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method protected getCatalog(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 5
    .parameter "rootObj"

    .prologue
    .line 887
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->getCatalog(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfDocument$PdfCatalog;

    move-result-object v0

    .line 889
    .local v0, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->tagged:Z

    if-eqz v3, :cond_1

    .line 891
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfWriter;->getStructureTreeRoot()Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->buildTree()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->STRUCTTREEROOT:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfWriter;->structureTreeRoot:Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;->getReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 897
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 898
    .local v2, mi:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->MARKED:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 899
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->userProperties:Z

    if-eqz v3, :cond_0

    .line 900
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->USERPROPERTIES:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 901
    :cond_0
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->MARKINFO:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v3, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 904
    .end local v2           #mi:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentOCG:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 905
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->fillOCProperties(Z)V

    .line 906
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->OCPROPERTIES:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfWriter;->OCProperties:Lcom/itextpdf/text/pdf/PdfOCProperties;

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 908
    :cond_2
    return-object v0

    .line 893
    :catch_0
    move-exception v1

    .line 894
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method getColorspaceName()Lcom/itextpdf/text/pdf/PdfName;
    .locals 4

    .prologue
    .line 2368
    new-instance v0, Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/text/pdf/PdfWriter;->colorNumber:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->colorNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCompressionLevel()I
    .locals 1

    .prologue
    .line 2155
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->compressionLevel:I

    return v0
.end method

.method public getCurrentDocumentSize()J
    .locals 4

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->offset()J

    move-result-wide v0

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x14

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x48

    add-long/2addr v0, v2

    return-wide v0
.end method

.method getCurrentPage()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1

    .prologue
    .line 1043
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->currentPageNumber:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageReference(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPageNumber()I
    .locals 1

    .prologue
    .line 1047
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->currentPageNumber:I

    return v0
.end method

.method public getDefaultColorspace()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1

    .prologue
    .line 2889
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->defaultColorspace:Lcom/itextpdf/text/pdf/PdfDictionary;

    return-object v0
.end method

.method public getDirectContent()Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 3

    .prologue
    .line 712
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->open:Z

    if-nez v0, :cond_0

    .line 713
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "the.document.is.not.open"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->directContent:Lcom/itextpdf/text/pdf/PdfContentByte;

    return-object v0
.end method

.method public getDirectContentUnder()Lcom/itextpdf/text/pdf/PdfContentByte;
    .locals 3

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->open:Z

    if-nez v0, :cond_0

    .line 726
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "the.document.is.not.open"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->directContentUnder:Lcom/itextpdf/text/pdf/PdfContentByte;

    return-object v0
.end method

.method getEncryption()Lcom/itextpdf/text/pdf/PdfEncryption;
    .locals 1

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    return-object v0
.end method

.method public getExtraCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->extraCatalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    if-nez v0, :cond_0

    .line 920
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->extraCatalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->extraCatalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    return-object v0
.end method

.method public getGroup()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1

    .prologue
    .line 2779
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->group:Lcom/itextpdf/text/pdf/PdfDictionary;

    return-object v0
.end method

.method getImageReference(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1
    .parameter "name"

    .prologue
    .line 3132
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->imageDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    return-object v0
.end method

.method public getImportedPage(Lcom/itextpdf/text/pdf/PdfReader;I)Lcom/itextpdf/text/pdf/PdfImportedPage;
    .locals 1
    .parameter "reader"
    .parameter "pageNumber"

    .prologue
    .line 2295
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfReaderInstance(Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfReaderInstance;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->getImportedPage(I)Lcom/itextpdf/text/pdf/PdfImportedPage;

    move-result-object v0

    return-object v0
.end method

.method getIndirectReferenceNumber()I
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->getIndirectReferenceNumber()I

    move-result v0

    return v0
.end method

.method public getInfo()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDocument;->getInfo()Lcom/itextpdf/text/pdf/PdfDocument$PdfInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getNewObjectNumber(Lcom/itextpdf/text/pdf/PdfReader;II)I
    .locals 1
    .parameter "reader"
    .parameter "number"
    .parameter "generation"

    .prologue
    .line 2349
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    if-nez v0, :cond_0

    .line 2350
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfReaderInstance(Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfReaderInstance;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    .line 2352
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    invoke-virtual {v0, p2, p3}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->getNewObjectNumber(II)I

    move-result v0

    return v0
.end method

.method public getOCProperties()Lcom/itextpdf/text/pdf/PdfOCProperties;
    .locals 1

    .prologue
    .line 2515
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->fillOCProperties(Z)V

    .line 2516
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->OCProperties:Lcom/itextpdf/text/pdf/PdfOCProperties;

    return-object v0
.end method

.method getOs()Lcom/itextpdf/text/pdf/OutputStreamCounter;
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    return-object v0
.end method

.method public getPDFXConformance()I
    .locals 1

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdfxConformance:Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->getPDFXConformance()I

    move-result v0

    return v0
.end method

.method public getPageDictEntries()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pageDictEntries:Lcom/itextpdf/text/pdf/PdfDictionary;

    return-object v0
.end method

.method public getPageEvent()Lcom/itextpdf/text/pdf/PdfPageEvent;
    .locals 1

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;

    return-object v0
.end method

.method public getPageNumber()I
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDocument;->getPageNumber()I

    move-result v0

    return v0
.end method

.method public getPageReference(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 6
    .parameter "page"

    .prologue
    .line 1010
    add-int/lit8 p1, p1, -0x1

    .line 1011
    if-gez p1, :cond_0

    .line 1012
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string v4, "the.page.number.must.be.gt.eq.1"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1014
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pageReferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 1015
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pageReferences:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 1016
    .local v2, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    if-nez v2, :cond_1

    .line 1017
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    .line 1018
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pageReferences:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1028
    :cond_1
    :goto_0
    return-object v2

    .line 1022
    .end local v2           #ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pageReferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int v0, p1, v3

    .line 1023
    .local v0, empty:I
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1024
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pageReferences:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1023
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1025
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    .line 1026
    .restart local v2       #ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pageReferences:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getPageSize()Lcom/itextpdf/text/Rectangle;
    .locals 1

    .prologue
    .line 2673
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDocument;->getPageSize()Lcom/itextpdf/text/Rectangle;

    move-result-object v0

    return-object v0
.end method

.method getPdfDocument()Lcom/itextpdf/text/pdf/PdfDocument;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    return-object v0
.end method

.method public getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    return-object v0
.end method

.method protected getPdfReaderInstance(Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/PdfReaderInstance;
    .locals 2
    .parameter "reader"

    .prologue
    .line 2307
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->readerInstances:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfReaderInstance;

    .line 2308
    .local v0, inst:Lcom/itextpdf/text/pdf/PdfReaderInstance;
    if-nez v0, :cond_0

    .line 2309
    invoke-virtual {p1, p0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfReaderInstance(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfReaderInstance;

    move-result-object v0

    .line 2310
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->readerInstances:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2312
    :cond_0
    return-object v0
.end method

.method getPdfVersion()Lcom/itextpdf/text/pdf/internal/PdfVersionImp;
    .locals 1

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf_version:Lcom/itextpdf/text/pdf/internal/PdfVersionImp;

    return-object v0
.end method

.method getReaderFile(Lcom/itextpdf/text/pdf/PdfReader;)Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .locals 1
    .parameter "reader"

    .prologue
    .line 2356
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->currentPdfReaderInstance:Lcom/itextpdf/text/pdf/PdfReaderInstance;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfReaderInstance;->getReaderFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v0

    return-object v0
.end method

.method protected getReferenceJBIG2Globals([B)Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 6
    .parameter "content"

    .prologue
    const/4 v4, 0x0

    .line 3159
    if-nez p1, :cond_0

    .line 3173
    :goto_0
    return-object v4

    .line 3160
    :cond_0
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfWriter;->JBIG2Globals:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfStream;

    .line 3161
    .local v3, stream:Lcom/itextpdf/text/pdf/PdfStream;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfStream;->getBytes()[B

    move-result-object v5

    invoke-static {p1, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3162
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfWriter;->JBIG2Globals:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    goto :goto_0

    .line 3165
    .end local v3           #stream:Lcom/itextpdf/text/pdf/PdfStream;
    :cond_2
    new-instance v3, Lcom/itextpdf/text/pdf/PdfStream;

    invoke-direct {v3, p1}, Lcom/itextpdf/text/pdf/PdfStream;-><init>([B)V

    .line 3168
    .restart local v3       #stream:Lcom/itextpdf/text/pdf/PdfStream;
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3172
    .local v2, ref:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfWriter;->JBIG2Globals:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3173
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    goto :goto_0

    .line 3169
    .end local v2           #ref:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    :catch_0
    move-exception v0

    .line 3170
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public getRootOutline()Lcom/itextpdf/text/pdf/PdfOutline;
    .locals 1

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->directContent:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->getRootOutline()Lcom/itextpdf/text/pdf/PdfOutline;

    move-result-object v0

    return-object v0
.end method

.method public getRunDirection()I
    .locals 1

    .prologue
    .line 2860
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->runDirection:I

    return v0
.end method

.method public getSpaceCharRatio()F
    .locals 1

    .prologue
    .line 2809
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->spaceCharRatio:F

    return v0
.end method

.method public getStructureTreeRoot()Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;
    .locals 1

    .prologue
    .line 2487
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->tagged:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->structureTreeRoot:Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;

    if-nez v0, :cond_0

    .line 2488
    new-instance v0, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->structureTreeRoot:Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;

    .line 2489
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->structureTreeRoot:Lcom/itextpdf/text/pdf/PdfStructureTreeRoot;

    return-object v0
.end method

.method public getTabs()Lcom/itextpdf/text/pdf/PdfName;
    .locals 1

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->tabs:Lcom/itextpdf/text/pdf/PdfName;

    return-object v0
.end method

.method public getVerticalPosition(Z)F
    .locals 1
    .parameter "ensureNewLine"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->getVerticalPosition(Z)F

    move-result v0

    return v0
.end method

.method public isFullCompression()Z
    .locals 1

    .prologue
    .line 2128
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->fullCompression:Z

    return v0
.end method

.method public isPageEmpty()Z
    .locals 1

    .prologue
    .line 2726
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDocument;->isPageEmpty()Z

    move-result v0

    return v0
.end method

.method public isPdfX()Z
    .locals 1

    .prologue
    .line 1819
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdfxConformance:Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->isPdfX()Z

    move-result v0

    return v0
.end method

.method public isRgbTransparencyBlending()Z
    .locals 1

    .prologue
    .line 3210
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->rgbTransparencyBlending:Z

    return v0
.end method

.method public isStrictImageSequence()Z
    .locals 1

    .prologue
    .line 2974
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDocument;->isStrictImageSequence()Z

    move-result v0

    return v0
.end method

.method public isTagged()Z
    .locals 1

    .prologue
    .line 2479
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->tagged:Z

    return v0
.end method

.method public isUserProperties()Z
    .locals 1

    .prologue
    .line 3187
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->userProperties:Z

    return v0
.end method

.method public lockLayer(Lcom/itextpdf/text/pdf/PdfLayer;)V
    .locals 2
    .parameter "layer"

    .prologue
    .line 2548
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->OCGLocked:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfLayer;->getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 2549
    return-void
.end method

.method public open()V
    .locals 6

    .prologue
    .line 1175
    invoke-super {p0}, Lcom/itextpdf/text/DocWriter;->open()V

    .line 1177
    :try_start_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf_version:Lcom/itextpdf/text/pdf/internal/PdfVersionImp;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->writeHeader(Lcom/itextpdf/text/pdf/OutputStreamCounter;)V

    .line 1178
    new-instance v3, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    invoke-direct {v3, p0}, Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->body:Lcom/itextpdf/text/pdf/PdfWriter$PdfBody;

    .line 1179
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdfxConformance:Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->isPdfX32002()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1180
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1181
    .local v2, sec:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->GAMMA:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfArray;

    const/4 v5, 0x3

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1182
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->MATRIX:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfArray;

    const/16 v5, 0x9

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1183
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->WHITEPOINT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfArray;

    const/4 v5, 0x3

    new-array v5, v5, [F

    fill-array-data v5, :array_2

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfArray;-><init>([F)V

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1184
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->CALRGB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1185
    .local v0, arr:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 1186
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->DEFAULTRGB:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/text/pdf/PdfWriter;->setDefaultColorspace(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    .end local v0           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #sec:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_0
    return-void

    .line 1189
    :catch_0
    move-exception v1

    .line 1190
    .local v1, ioe:Ljava/io/IOException;
    new-instance v3, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v3, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 1181
    :array_0
    .array-data 0x4
        0xcdt 0xcct 0xct 0x40t
        0xcdt 0xcct 0xct 0x40t
        0xcdt 0xcct 0xct 0x40t
    .end array-data

    .line 1182
    :array_1
    .array-data 0x4
        0x18t 0x26t 0xd3t 0x3et
        0xd0t 0xb3t 0x59t 0x3et
        0x9t 0x1bt 0x9et 0x3ct
        0x59t 0x17t 0xb7t 0x3et
        0x59t 0x17t 0x37t 0x3ft
        0x21t 0x1ft 0xf4t 0x3dt
        0xfet 0xd4t 0x38t 0x3et
        0x98t 0xddt 0x93t 0x3dt
        0xf8t 0x53t 0x73t 0x3ft
    .end array-data

    .line 1183
    :array_2
    .array-data 0x4
        0xf8t 0x53t 0x73t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x5at 0x64t 0x8bt 0x3ft
    .end array-data
.end method

.method propertyExists(Ljava/lang/Object;)Z
    .locals 1
    .parameter "prop"

    .prologue
    .line 2457
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method registerLayer(Lcom/itextpdf/text/pdf/PdfOCG;)V
    .locals 4
    .parameter "layer"

    .prologue
    .line 2647
    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->checkPDFXConformance(Lcom/itextpdf/text/pdf/PdfWriter;ILjava/lang/Object;)V

    .line 2648
    instance-of v1, p1, Lcom/itextpdf/text/pdf/PdfLayer;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 2649
    check-cast v0, Lcom/itextpdf/text/pdf/PdfLayer;

    .line 2650
    .local v0, la:Lcom/itextpdf/text/pdf/PdfLayer;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfLayer;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2651
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentOCG:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2652
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentOCG:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2653
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentOCGorder:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2662
    :cond_0
    :goto_0
    return-void

    .line 2657
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->documentOCGorder:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2661
    .end local v0           #la:Lcom/itextpdf/text/pdf/PdfLayer;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "only.pdflayer.is.accepted"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public releaseTemplate(Lcom/itextpdf/text/pdf/PdfTemplate;)V
    .locals 6
    .parameter "tp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 2264
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    .line 2265
    .local v1, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->formXObjects:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 2266
    .local v0, objs:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    aget-object v3, v0, v5

    if-nez v3, :cond_1

    .line 2275
    :cond_0
    :goto_0
    return-void

    .line 2268
    :cond_1
    aget-object v2, v0, v5

    check-cast v2, Lcom/itextpdf/text/pdf/PdfTemplate;

    .line 2269
    .local v2, template:Lcom/itextpdf/text/pdf/PdfTemplate;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfTemplate;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v3

    instance-of v3, v3, Lcom/itextpdf/text/pdf/PRIndirectReference;

    if-nez v3, :cond_0

    .line 2271
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfTemplate;->getType()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 2272
    iget v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->compressionLevel:I

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfTemplate;->getFormXObject(I)Lcom/itextpdf/text/pdf/PdfStream;

    move-result-object v3

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfTemplate;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 2273
    const/4 v3, 0x0

    aput-object v3, v0, v5

    goto :goto_0
.end method

.method public reorderPages([I)I
    .locals 1
    .parameter "order"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 997
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->root:Lcom/itextpdf/text/pdf/PdfPages;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfPages;->reorderPages([I)I

    move-result v0

    return v0
.end method

.method resetContent()V
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->directContent:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->reset()V

    .line 736
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->directContentUnder:Lcom/itextpdf/text/pdf/PdfContentByte;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfContentByte;->reset()V

    .line 737
    return-void
.end method

.method public resetPageDictEntries()V
    .locals 1

    .prologue
    .line 975
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pageDictEntries:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 976
    return-void
.end method

.method public setAdditionalAction(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 5
    .parameter "actionType"
    .parameter "action"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 1685
    sget-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->DOCUMENT_CLOSE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->WILL_SAVE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->DID_SAVE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->WILL_PRINT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->DID_PRINT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1690
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string v1, "invalid.additional.action.type.1"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1692
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDocument;->addAdditionalAction(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfAction;)V

    .line 1693
    return-void
.end method

.method public setAtLeastPdfVersion(C)V
    .locals 1
    .parameter "version"

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf_version:Lcom/itextpdf/text/pdf/internal/PdfVersionImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->setAtLeastPdfVersion(C)V

    .line 1421
    return-void
.end method

.method public setBoxSize(Ljava/lang/String;Lcom/itextpdf/text/Rectangle;)V
    .locals 1
    .parameter "boxName"
    .parameter "size"

    .prologue
    .line 2693
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDocument;->setBoxSize(Ljava/lang/String;Lcom/itextpdf/text/Rectangle;)V

    .line 2694
    return-void
.end method

.method public setCollection(Lcom/itextpdf/text/pdf/collection/PdfCollection;)V
    .locals 1
    .parameter "collection"

    .prologue
    .line 1702
    const/16 v0, 0x37

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->setAtLeastPdfVersion(C)V

    .line 1703
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->setCollection(Lcom/itextpdf/text/pdf/collection/PdfCollection;)V

    .line 1704
    return-void
.end method

.method public setCompressionLevel(I)V
    .locals 1
    .parameter "compressionLevel"

    .prologue
    .line 2164
    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 2165
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->compressionLevel:I

    .line 2168
    :goto_0
    return-void

    .line 2167
    :cond_1
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->compressionLevel:I

    goto :goto_0
.end method

.method public setCropBoxSize(Lcom/itextpdf/text/Rectangle;)V
    .locals 1
    .parameter "crop"

    .prologue
    .line 2683
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->setCropBoxSize(Lcom/itextpdf/text/Rectangle;)V

    .line 2684
    return-void
.end method

.method public setDefaultColorspace(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "key"
    .parameter "cs"

    .prologue
    .line 2904
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfObject;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2905
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->defaultColorspace:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 2906
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->defaultColorspace:Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2907
    return-void
.end method

.method public setDuration(I)V
    .locals 1
    .parameter "seconds"

    .prologue
    .line 2745
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->setDuration(I)V

    .line 2746
    return-void
.end method

.method public setEncryption(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "encryptionType"
    .parameter "userPassword"
    .parameter "ownerPassword"
    .parameter "permissions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2115
    invoke-static {p2}, Lcom/itextpdf/text/pdf/PdfWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p3}, Lcom/itextpdf/text/pdf/PdfWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, p4, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->setEncryption([B[BII)V

    .line 2116
    return-void
.end method

.method public setEncryption(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "strength"
    .parameter "userPassword"
    .parameter "ownerPassword"
    .parameter "permissions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2095
    invoke-static {p2}, Lcom/itextpdf/text/pdf/PdfWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p3}, Lcom/itextpdf/text/pdf/PdfWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, p4, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->setEncryption([B[BII)V

    .line 2096
    return-void

    .line 2095
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEncryption([B[BII)V
    .locals 3
    .parameter "userPassword"
    .parameter "ownerPassword"
    .parameter "permissions"
    .parameter "encryptionType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2039
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDocument;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2040
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string v1, "encryption.can.only.be.added.before.opening.the.document"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2041
    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfEncryption;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    .line 2042
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-virtual {v0, p4, v2}, Lcom/itextpdf/text/pdf/PdfEncryption;->setCryptoMode(II)V

    .line 2043
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-virtual {v0, p1, p2, p3}, Lcom/itextpdf/text/pdf/PdfEncryption;->setupAllKeys([B[BI)V

    .line 2044
    return-void
.end method

.method public setEncryption([B[BIZ)V
    .locals 1
    .parameter "userPassword"
    .parameter "ownerPassword"
    .parameter "permissions"
    .parameter "strength128Bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2076
    if-eqz p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->setEncryption([B[BII)V

    .line 2077
    return-void

    .line 2076
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEncryption([Ljava/security/cert/Certificate;[II)V
    .locals 5
    .parameter "certs"
    .parameter "permissions"
    .parameter "encryptionType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2048
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfDocument;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2049
    new-instance v1, Lcom/itextpdf/text/DocumentException;

    const-string v2, "encryption.can.only.be.added.before.opening.the.document"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2050
    :cond_0
    new-instance v1, Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfEncryption;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    .line 2051
    if-eqz p1, :cond_1

    .line 2052
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 2053
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    aget-object v2, p1, v0

    aget v3, p2, v0

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfEncryption;->addRecipient(Ljava/security/cert/Certificate;I)V

    .line 2052
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2056
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-virtual {v1, p3, v4}, Lcom/itextpdf/text/pdf/PdfEncryption;->setCryptoMode(II)V

    .line 2057
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfEncryption;->getEncryptionDictionary()Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2058
    return-void
.end method

.method public setFullCompression()V
    .locals 1

    .prologue
    .line 2139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->fullCompression:Z

    .line 2140
    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->setAtLeastPdfVersion(C)V

    .line 2141
    return-void
.end method

.method public setGroup(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 0
    .parameter "group"

    .prologue
    .line 2787
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->group:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 2788
    return-void
.end method

.method public setInitialLeading(F)V
    .locals 3
    .parameter "leading"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->open:Z

    if-eqz v0, :cond_0

    .line 683
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string v1, "you.can.t.set.the.initial.leading.if.the.document.is.already.open"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->setLeading(F)V

    .line 685
    return-void
.end method

.method public setLinearPageMode()V
    .locals 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->root:Lcom/itextpdf/text/pdf/PdfPages;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfPages;->setLinearMode(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 985
    return-void
.end method

.method public setOpenAction(Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->setOpenAction(Lcom/itextpdf/text/pdf/PdfAction;)V

    .line 1681
    return-void
.end method

.method public setOpenAction(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->setOpenAction(Ljava/lang/String;)V

    .line 1676
    return-void
.end method

.method public setOutlines(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1367
    .local p1, outlines:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->newBookmarks:Ljava/util/List;

    .line 1368
    return-void
.end method

.method public setOutputIntents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/text/pdf/ICC_Profile;)V
    .locals 6
    .parameter "outputConditionIdentifier"
    .parameter "outputCondition"
    .parameter "registryName"
    .parameter "info"
    .parameter "colorProfile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1836
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfWriter;->getExtraCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 1837
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->OUTPUTINTENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v1, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1838
    .local v1, out:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz p2, :cond_0

    .line 1839
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->OUTPUTCONDITION:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfString;

    const-string v5, "UnicodeBig"

    invoke-direct {v4, p2, v5}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1840
    :cond_0
    if-eqz p1, :cond_1

    .line 1841
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->OUTPUTCONDITIONIDENTIFIER:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfString;

    const-string v5, "UnicodeBig"

    invoke-direct {v4, p1, v5}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1842
    :cond_1
    if-eqz p3, :cond_2

    .line 1843
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->REGISTRYNAME:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfString;

    const-string v5, "UnicodeBig"

    invoke-direct {v4, p3, v5}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1844
    :cond_2
    if-eqz p4, :cond_3

    .line 1845
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->INFO:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfString;

    const-string v5, "UnicodeBig"

    invoke-direct {v4, p4, v5}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1846
    :cond_3
    if-eqz p5, :cond_4

    .line 1847
    new-instance v2, Lcom/itextpdf/text/pdf/PdfICCBased;

    iget v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->compressionLevel:I

    invoke-direct {v2, p5, v3}, Lcom/itextpdf/text/pdf/PdfICCBased;-><init>(Lcom/itextpdf/text/pdf/ICC_Profile;I)V

    .line 1848
    .local v2, stream:Lcom/itextpdf/text/pdf/PdfStream;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->DESTOUTPUTPROFILE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1852
    .end local v2           #stream:Lcom/itextpdf/text/pdf/PdfStream;
    :cond_4
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdfxConformance:Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->isPdfA1()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "PDFA/1"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1853
    :cond_5
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->GTS_PDFA1:Lcom/itextpdf/text/pdf/PdfName;

    .line 1859
    .local v0, intentSubtype:Lcom/itextpdf/text/pdf/PdfName;
    :goto_0
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v3, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1861
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->extraCatalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->OUTPUTINTENTS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v5, v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1862
    return-void

    .line 1856
    .end local v0           #intentSubtype:Lcom/itextpdf/text/pdf/PdfName;
    :cond_6
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->GTS_PDFX:Lcom/itextpdf/text/pdf/PdfName;

    .restart local v0       #intentSubtype:Lcom/itextpdf/text/pdf/PdfName;
    goto :goto_0
.end method

.method public setOutputIntents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 6
    .parameter "outputConditionIdentifier"
    .parameter "outputCondition"
    .parameter "registryName"
    .parameter "info"
    .parameter "destOutputProfile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1879
    if-nez p5, :cond_0

    const/4 v5, 0x0

    .local v5, colorProfile:Lcom/itextpdf/text/pdf/ICC_Profile;
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1880
    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfWriter;->setOutputIntents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/text/pdf/ICC_Profile;)V

    .line 1881
    return-void

    .line 1879
    .end local v5           #colorProfile:Lcom/itextpdf/text/pdf/ICC_Profile;
    :cond_0
    invoke-static {p5}, Lcom/itextpdf/text/pdf/ICC_Profile;->getInstance([B)Lcom/itextpdf/text/pdf/ICC_Profile;

    move-result-object v5

    goto :goto_0
.end method

.method public setOutputIntents(Lcom/itextpdf/text/pdf/PdfReader;Z)Z
    .locals 12
    .parameter "reader"
    .parameter "checkExistence"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v0, 0x0

    .line 1895
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v6

    .line 1896
    .local v6, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->OUTPUTINTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v9

    .line 1897
    .local v9, outs:Lcom/itextpdf/text/pdf/PdfArray;
    if-nez v9, :cond_1

    .line 1914
    :cond_0
    :goto_0
    return v0

    .line 1899
    :cond_1
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1901
    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getAsDict(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v8

    .line 1902
    .local v8, out:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 1903
    .local v7, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v7, :cond_0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->GTS_PDFX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v7}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1905
    if-eqz p2, :cond_2

    move v0, v11

    .line 1906
    goto :goto_0

    .line 1907
    :cond_2
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->DESTOUTPUTPROFILE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/text/pdf/PRStream;

    .line 1908
    .local v10, stream:Lcom/itextpdf/text/pdf/PRStream;
    const/4 v5, 0x0

    .line 1909
    .local v5, destProfile:[B
    if-eqz v10, :cond_3

    .line 1910
    invoke-static {v10}, Lcom/itextpdf/text/pdf/PdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v5

    .line 1912
    :cond_3
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->OUTPUTCONDITIONIDENTIFIER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {v8, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getNameString(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->OUTPUTCONDITION:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {v8, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getNameString(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->REGISTRYNAME:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {v8, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getNameString(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->INFO:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {v8, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getNameString(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfName;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfWriter;->setOutputIntents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    move v0, v11

    .line 1914
    goto :goto_0
.end method

.method public setPDFXConformance(I)V
    .locals 3
    .parameter "pdfx"

    .prologue
    const/4 v2, 0x0

    .line 1799
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdfxConformance:Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->getPDFXConformance()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1810
    :goto_0
    return-void

    .line 1801
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfDocument;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1802
    new-instance v0, Lcom/itextpdf/text/pdf/PdfXConformanceException;

    const-string v1, "pdfx.conformance.can.only.be.set.before.opening.the.document"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfXConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1803
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->crypto:Lcom/itextpdf/text/pdf/PdfEncryption;

    if-eqz v0, :cond_2

    .line 1804
    new-instance v0, Lcom/itextpdf/text/pdf/PdfXConformanceException;

    const-string v1, "a.pdfx.conforming.document.cannot.be.encrypted"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfXConformanceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1805
    :cond_2
    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 1806
    :cond_3
    const/16 v0, 0x34

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->setPdfVersion(C)V

    .line 1809
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdfxConformance:Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/internal/PdfXConformanceImp;->setPDFXConformance(I)V

    goto :goto_0

    .line 1807
    :cond_5
    if-eqz p1, :cond_4

    .line 1808
    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->setPdfVersion(C)V

    goto :goto_1
.end method

.method public setPageAction(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 5
    .parameter "actionType"
    .parameter "action"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 2738
    sget-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->PAGE_OPEN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/itextpdf/text/pdf/PdfWriter;->PAGE_CLOSE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2739
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string v1, "invalid.page.additional.action.type.1"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2740
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDocument;->setPageAction(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfAction;)V

    .line 2741
    return-void
.end method

.method public setPageEmpty(Z)V
    .locals 1
    .parameter "pageEmpty"

    .prologue
    .line 2715
    if-eqz p1, :cond_0

    .line 2718
    :goto_0
    return-void

    .line 2717
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->setPageEmpty(Z)V

    goto :goto_0
.end method

.method public setPageEvent(Lcom/itextpdf/text/pdf/PdfPageEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1138
    if-nez p1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;

    .line 1147
    :goto_0
    return-void

    .line 1139
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;

    if-nez v1, :cond_1

    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;

    goto :goto_0

    .line 1140
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;

    instance-of v1, v1, Lcom/itextpdf/text/pdf/events/PdfPageEventForwarder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;

    check-cast v1, Lcom/itextpdf/text/pdf/events/PdfPageEventForwarder;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/events/PdfPageEventForwarder;->addPageEvent(Lcom/itextpdf/text/pdf/PdfPageEvent;)V

    goto :goto_0

    .line 1142
    :cond_2
    new-instance v0, Lcom/itextpdf/text/pdf/events/PdfPageEventForwarder;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/events/PdfPageEventForwarder;-><init>()V

    .line 1143
    .local v0, forward:Lcom/itextpdf/text/pdf/events/PdfPageEventForwarder;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/events/PdfPageEventForwarder;->addPageEvent(Lcom/itextpdf/text/pdf/PdfPageEvent;)V

    .line 1144
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/events/PdfPageEventForwarder;->addPageEvent(Lcom/itextpdf/text/pdf/PdfPageEvent;)V

    .line 1145
    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pageEvent:Lcom/itextpdf/text/pdf/PdfPageEvent;

    goto :goto_0
.end method

.method public setPageLabels(Lcom/itextpdf/text/pdf/PdfPageLabels;)V
    .locals 1
    .parameter "pageLabels"

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->setPageLabels(Lcom/itextpdf/text/pdf/PdfPageLabels;)V

    .line 1526
    return-void
.end method

.method public setPageViewport(Lcom/itextpdf/text/pdf/PdfArray;)V
    .locals 1
    .parameter "vp"

    .prologue
    .line 1056
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->VP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addPageDictEntry(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1057
    return-void
.end method

.method public setPageXmpMetadata([B)V
    .locals 1
    .parameter "xmpMetadata"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->setXmpMetadata([B)V

    .line 1757
    return-void
.end method

.method public setPdfVersion(C)V
    .locals 1
    .parameter "version"

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf_version:Lcom/itextpdf/text/pdf/internal/PdfVersionImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->setPdfVersion(C)V

    .line 1416
    return-void
.end method

.method public setPdfVersion(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 1
    .parameter "version"

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf_version:Lcom/itextpdf/text/pdf/internal/PdfVersionImp;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/internal/PdfVersionImp;->setPdfVersion(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 1426
    return-void
.end method

.method public setRgbTransparencyBlending(Z)V
    .locals 0
    .parameter "rgbTransparencyBlending"

    .prologue
    .line 3224
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->rgbTransparencyBlending:Z

    .line 3225
    return-void
.end method

.method public setRunDirection(I)V
    .locals 2
    .parameter "runDirection"

    .prologue
    .line 2850
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 2851
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid.run.direction.1"

    invoke-static {v1, p1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2852
    :cond_1
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->runDirection:I

    .line 2853
    return-void
.end method

.method public setSigFlags(I)V
    .locals 1
    .parameter "f"

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->setSigFlags(I)V

    .line 1735
    return-void
.end method

.method public setSpaceCharRatio(F)V
    .locals 2
    .parameter "spaceCharRatio"

    .prologue
    const v1, 0x3a83126f

    .line 2821
    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    .line 2822
    iput v1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->spaceCharRatio:F

    .line 2825
    :goto_0
    return-void

    .line 2824
    :cond_0
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->spaceCharRatio:F

    goto :goto_0
.end method

.method public setStrictImageSequence(Z)V
    .locals 1
    .parameter "strictImageSequence"

    .prologue
    .line 2984
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->setStrictImageSequence(Z)V

    .line 2985
    return-void
.end method

.method public setTabs(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 0
    .parameter "tabs"

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->tabs:Lcom/itextpdf/text/pdf/PdfName;

    .line 1068
    return-void
.end method

.method public setTagged()V
    .locals 3

    .prologue
    .line 2469
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->open:Z

    if-eqz v0, :cond_0

    .line 2470
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tagging.must.be.set.before.opening.the.document"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2471
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->tagged:Z

    .line 2472
    return-void
.end method

.method public setThumbnail(Lcom/itextpdf/text/Image;)V
    .locals 1
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/pdf/PdfException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 2762
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->setThumbnail(Lcom/itextpdf/text/Image;)V

    .line 2763
    return-void
.end method

.method public setTransition(Lcom/itextpdf/text/pdf/PdfTransition;)V
    .locals 1
    .parameter "transition"

    .prologue
    .line 2750
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->setTransition(Lcom/itextpdf/text/pdf/PdfTransition;)V

    .line 2751
    return-void
.end method

.method public setUserProperties(Z)V
    .locals 0
    .parameter "userProperties"

    .prologue
    .line 3195
    iput-boolean p1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->userProperties:Z

    .line 3196
    return-void
.end method

.method public setUserunit(F)V
    .locals 3
    .parameter "userunit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 2874
    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x47927c00

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/itextpdf/text/DocumentException;

    const-string v1, "userunit.should.be.a.value.between.1.and.75000"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2875
    :cond_1
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->USERUNIT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->addPageDictEntry(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 2876
    const/16 v0, 0x36

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfWriter;->setAtLeastPdfVersion(C)V

    .line 2877
    return-void
.end method

.method public setViewerPreferences(I)V
    .locals 1
    .parameter "preferences"

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfWriter;->pdf:Lcom/itextpdf/text/pdf/PdfDocument;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDocument;->setViewerPreferences(I)V

    .line 1511
    return-void
.end method

.method public setXmpMetadata([B)V
    .locals 0
    .parameter "xmpMetadata"

    .prologue
    .line 1747
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfWriter;->xmpMetadata:[B

    .line 1748
    return-void
.end method

.method protected writeOutlines(Lcom/itextpdf/text/pdf/PdfDictionary;Z)V
    .locals 6
    .parameter "catalog"
    .parameter "namedAsNames"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1371
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->newBookmarks:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->newBookmarks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1381
    :cond_0
    :goto_0
    return-void

    .line 1373
    :cond_1
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 1374
    .local v1, top:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    .line 1375
    .local v2, topRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfWriter;->newBookmarks:Ljava/util/List;

    invoke-static {p0, v2, v3, p2}, Lcom/itextpdf/text/pdf/SimpleBookmark;->iterateOutlines(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/pdf/PdfIndirectReference;Ljava/util/List;Z)[Ljava/lang/Object;

    move-result-object v0

    .line 1376
    .local v0, kids:[Ljava/lang/Object;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->FIRST:Lcom/itextpdf/text/pdf/PdfName;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-virtual {v1, v4, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1377
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->LAST:Lcom/itextpdf/text/pdf/PdfName;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    invoke-virtual {v1, v4, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1378
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->COUNT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v5, v3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 1379
    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 1380
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->OUTLINES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v3, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method
