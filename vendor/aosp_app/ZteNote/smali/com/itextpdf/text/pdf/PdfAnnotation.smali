.class public Lcom/itextpdf/text/pdf/PdfAnnotation;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfAnnotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/PdfAnnotation$PdfImportedLink;
    }
.end annotation


# static fields
.field public static final AA_BLUR:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final AA_DOWN:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final AA_ENTER:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final AA_EXIT:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final AA_FOCUS:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final AA_JS_CHANGE:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final AA_JS_FORMAT:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final AA_JS_KEY:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final AA_JS_OTHER_CHANGE:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final AA_UP:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final APPEARANCE_DOWN:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final APPEARANCE_NORMAL:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final APPEARANCE_ROLLOVER:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final FLAGS_HIDDEN:I = 0x2

.field public static final FLAGS_INVISIBLE:I = 0x1

.field public static final FLAGS_LOCKED:I = 0x80

.field public static final FLAGS_NOROTATE:I = 0x10

.field public static final FLAGS_NOVIEW:I = 0x20

.field public static final FLAGS_NOZOOM:I = 0x8

.field public static final FLAGS_PRINT:I = 0x4

.field public static final FLAGS_READONLY:I = 0x40

.field public static final FLAGS_TOGGLENOVIEW:I = 0x100

.field public static final HIGHLIGHT_INVERT:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final HIGHLIGHT_NONE:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final HIGHLIGHT_OUTLINE:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final HIGHLIGHT_PUSH:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final HIGHLIGHT_TOGGLE:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final MARKUP_HIGHLIGHT:I = 0x0

.field public static final MARKUP_SQUIGGLY:I = 0x3

.field public static final MARKUP_STRIKEOUT:I = 0x2

.field public static final MARKUP_UNDERLINE:I = 0x1


# instance fields
.field protected annotation:Z

.field protected form:Z

.field private placeInPage:I

.field protected reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

.field protected templates:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/itextpdf/text/pdf/PdfTemplate;",
            ">;"
        }
    .end annotation
.end field

.field protected used:Z

.field protected writer:Lcom/itextpdf/text/pdf/PdfWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->HIGHLIGHT_NONE:Lcom/itextpdf/text/pdf/PdfName;

    .line 63
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->I:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->HIGHLIGHT_INVERT:Lcom/itextpdf/text/pdf/PdfName;

    .line 65
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->O:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->HIGHLIGHT_OUTLINE:Lcom/itextpdf/text/pdf/PdfName;

    .line 67
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->HIGHLIGHT_PUSH:Lcom/itextpdf/text/pdf/PdfName;

    .line 69
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->HIGHLIGHT_TOGGLE:Lcom/itextpdf/text/pdf/PdfName;

    .line 89
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->APPEARANCE_NORMAL:Lcom/itextpdf/text/pdf/PdfName;

    .line 91
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->R:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->APPEARANCE_ROLLOVER:Lcom/itextpdf/text/pdf/PdfName;

    .line 93
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->APPEARANCE_DOWN:Lcom/itextpdf/text/pdf/PdfName;

    .line 95
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->E:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->AA_ENTER:Lcom/itextpdf/text/pdf/PdfName;

    .line 97
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->X:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->AA_EXIT:Lcom/itextpdf/text/pdf/PdfName;

    .line 99
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->AA_DOWN:Lcom/itextpdf/text/pdf/PdfName;

    .line 101
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->U:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->AA_UP:Lcom/itextpdf/text/pdf/PdfName;

    .line 103
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->FO:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->AA_FOCUS:Lcom/itextpdf/text/pdf/PdfName;

    .line 105
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->BL:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->AA_BLUR:Lcom/itextpdf/text/pdf/PdfName;

    .line 107
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->K:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->AA_JS_KEY:Lcom/itextpdf/text/pdf/PdfName;

    .line 109
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->AA_JS_FORMAT:Lcom/itextpdf/text/pdf/PdfName;

    .line 111
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->AA_JS_CHANGE:Lcom/itextpdf/text/pdf/PdfName;

    .line 113
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->C:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->AA_JS_OTHER_CHANGE:Lcom/itextpdf/text/pdf/PdfName;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V
    .locals 4
    .parameter "writer"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "action"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 178
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 133
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->form:Z

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->annotation:Z

    .line 137
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->used:Z

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->placeInPage:I

    .line 179
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 180
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->LINK:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 181
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFF)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 182
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p6}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 183
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->BORDER:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfBorderArray;

    invoke-direct {v1, v2, v2, v2}, Lcom/itextpdf/text/pdf/PdfBorderArray;-><init>(FFF)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 184
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->C:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfColor;

    const/16 v2, 0xff

    invoke-direct {v1, v3, v3, v2}, Lcom/itextpdf/text/pdf/PdfColor;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfString;Lcom/itextpdf/text/pdf/PdfString;)V
    .locals 2
    .parameter "writer"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "title"
    .parameter "content"

    .prologue
    const/4 v1, 0x0

    .line 160
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 133
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->form:Z

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->annotation:Z

    .line 137
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->used:Z

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->placeInPage:I

    .line 161
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 162
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TEXT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 163
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p6}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 164
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFF)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 165
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p7}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 166
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;)V
    .locals 2
    .parameter "writer"
    .parameter "rect"

    .prologue
    const/4 v1, 0x0

    .line 143
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 133
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->form:Z

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->annotation:Z

    .line 137
    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->used:Z

    .line 140
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->placeInPage:I

    .line 144
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 145
    if-eqz p2, :cond_0

    .line 146
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-direct {v1, p2}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 147
    :cond_0
    return-void
.end method

.method public static createFileAttachment(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFileSpecification;)Lcom/itextpdf/text/pdf/PdfAnnotation;
    .locals 4
    .parameter "writer"
    .parameter "rect"
    .parameter "contents"
    .parameter "fs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;)V

    .line 452
    .local v0, annot:Lcom/itextpdf/text/pdf/PdfAnnotation;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FILEATTACHMENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 453
    if-eqz p2, :cond_0

    .line 454
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    const-string v3, "UnicodeBig"

    invoke-direct {v2, p2, v3}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 455
    :cond_0
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p3}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->getReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 456
    return-object v0
.end method

.method public static createFileAttachment(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfAnnotation;
    .locals 1
    .parameter "writer"
    .parameter "rect"
    .parameter "contents"
    .parameter "fileStore"
    .parameter "file"
    .parameter "fileDisplay"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    invoke-static {p0, p4, p5, p3}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->fileEmbedded(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/lang/String;Ljava/lang/String;[B)Lcom/itextpdf/text/pdf/PdfFileSpecification;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->createFileAttachment(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFileSpecification;)Lcom/itextpdf/text/pdf/PdfAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public static createFreeText(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfContentByte;)Lcom/itextpdf/text/pdf/PdfAnnotation;
    .locals 4
    .parameter "writer"
    .parameter "rect"
    .parameter "contents"
    .parameter "defaultAppearance"

    .prologue
    .line 323
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;)V

    .line 324
    .local v0, annot:Lcom/itextpdf/text/pdf/PdfAnnotation;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FREETEXT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 325
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    const-string v3, "UnicodeBig"

    invoke-direct {v2, p2, v3}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 326
    invoke-virtual {v0, p3}, Lcom/itextpdf/text/pdf/PdfAnnotation;->setDefaultAppearanceString(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 327
    return-object v0
.end method

.method public static createInk(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;[[F)Lcom/itextpdf/text/pdf/PdfAnnotation;
    .locals 9
    .parameter "writer"
    .parameter "rect"
    .parameter "contents"
    .parameter "inkList"

    .prologue
    .line 411
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;)V

    .line 412
    .local v0, annot:Lcom/itextpdf/text/pdf/PdfAnnotation;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->INK:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v6, v7}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 413
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v7, Lcom/itextpdf/text/pdf/PdfString;

    const-string v8, "UnicodeBig"

    invoke-direct {v7, p2, v8}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 414
    new-instance v5, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v5}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 415
    .local v5, outer:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    array-length v6, p3

    if-ge v4, v6, :cond_1

    .line 416
    new-instance v2, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 417
    .local v2, inner:Lcom/itextpdf/text/pdf/PdfArray;
    aget-object v1, p3, v4

    .line 418
    .local v1, deep:[F
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    array-length v6, v1

    if-ge v3, v6, :cond_0

    .line 419
    new-instance v6, Lcom/itextpdf/text/pdf/PdfNumber;

    aget v7, v1, v3

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v2, v6}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 418
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 420
    :cond_0
    invoke-virtual {v5, v2}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 415
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 422
    .end local v1           #deep:[F
    .end local v2           #inner:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v3           #j:I
    :cond_1
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->INKLIST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v6, v5}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 423
    return-object v0
.end method

.method public static createLine(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;FFFF)Lcom/itextpdf/text/pdf/PdfAnnotation;
    .locals 5
    .parameter "writer"
    .parameter "rect"
    .parameter "contents"
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 342
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;)V

    .line 343
    .local v0, annot:Lcom/itextpdf/text/pdf/PdfAnnotation;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->LINE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 344
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfString;

    const-string v4, "UnicodeBig"

    invoke-direct {v3, p2, v4}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 345
    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v2, p3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-direct {v1, v2}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 346
    .local v1, array:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v2, p4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 347
    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v2, p5}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 348
    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v2, p6}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 349
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->L:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 350
    return-object v0
.end method

.method protected static createLink(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfAnnotation;
    .locals 3
    .parameter "writer"
    .parameter "rect"
    .parameter "highlight"

    .prologue
    .line 262
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;)V

    .line 263
    .local v0, annot:Lcom/itextpdf/text/pdf/PdfAnnotation;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->LINK:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 264
    sget-object v1, Lcom/itextpdf/text/pdf/PdfAnnotation;->HIGHLIGHT_INVERT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p2, v1}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->H:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, p2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 266
    :cond_0
    return-object v0
.end method

.method public static createLink(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Lcom/itextpdf/text/pdf/PdfName;ILcom/itextpdf/text/pdf/PdfDestination;)Lcom/itextpdf/text/pdf/PdfAnnotation;
    .locals 3
    .parameter "writer"
    .parameter "rect"
    .parameter "highlight"
    .parameter "page"
    .parameter "dest"

    .prologue
    .line 307
    invoke-static {p0, p1, p2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->createLink(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfAnnotation;

    move-result-object v0

    .line 308
    .local v0, annot:Lcom/itextpdf/text/pdf/PdfAnnotation;
    invoke-virtual {p0, p3}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageReference(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    .line 309
    .local v1, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    invoke-virtual {p4, v1}, Lcom/itextpdf/text/pdf/PdfDestination;->addPage(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Z

    .line 310
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DEST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2, p4}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 311
    return-object v0
.end method

.method public static createLink(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfAction;)Lcom/itextpdf/text/pdf/PdfAnnotation;
    .locals 2
    .parameter "writer"
    .parameter "rect"
    .parameter "highlight"
    .parameter "action"

    .prologue
    .line 278
    invoke-static {p0, p1, p2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->createLink(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfAnnotation;

    move-result-object v0

    .line 279
    .local v0, annot:Lcom/itextpdf/text/pdf/PdfAnnotation;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, p3}, Lcom/itextpdf/text/pdf/PdfAnnotation;->putEx(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 280
    return-object v0
.end method

.method public static createLink(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Lcom/itextpdf/text/pdf/PdfName;Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfAnnotation;
    .locals 3
    .parameter "writer"
    .parameter "rect"
    .parameter "highlight"
    .parameter "namedDestination"

    .prologue
    .line 292
    invoke-static {p0, p1, p2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->createLink(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfAnnotation;

    move-result-object v0

    .line 293
    .local v0, annot:Lcom/itextpdf/text/pdf/PdfAnnotation;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->DEST:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v2, p3}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 294
    return-object v0
.end method

.method public static createMarkup(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;I[F)Lcom/itextpdf/text/pdf/PdfAnnotation;
    .locals 7
    .parameter "writer"
    .parameter "rect"
    .parameter "contents"
    .parameter "type"
    .parameter "quadPoints"

    .prologue
    .line 372
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;)V

    .line 373
    .local v0, annot:Lcom/itextpdf/text/pdf/PdfAnnotation;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->HIGHLIGHT:Lcom/itextpdf/text/pdf/PdfName;

    .line 374
    .local v3, name:Lcom/itextpdf/text/pdf/PdfName;
    packed-switch p3, :pswitch_data_0

    .line 385
    :goto_0
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v4, v3}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 386
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v5, Lcom/itextpdf/text/pdf/PdfString;

    const-string v6, "UnicodeBig"

    invoke-direct {v5, p2, v6}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 387
    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 388
    .local v1, array:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_1
    array-length v4, p4

    if-ge v2, v4, :cond_0

    .line 389
    new-instance v4, Lcom/itextpdf/text/pdf/PdfNumber;

    aget v5, p4, v2

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 388
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 376
    .end local v1           #array:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #k:I
    :pswitch_0
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->UNDERLINE:Lcom/itextpdf/text/pdf/PdfName;

    .line 377
    goto :goto_0

    .line 379
    :pswitch_1
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->STRIKEOUT:Lcom/itextpdf/text/pdf/PdfName;

    .line 380
    goto :goto_0

    .line 382
    :pswitch_2
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->SQUIGGLY:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_0

    .line 390
    .restart local v1       #array:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v2       #k:I
    :cond_0
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->QUADPOINTS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v4, v1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 391
    return-object v0

    .line 374
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static createPolygonPolyline(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;ZLcom/itextpdf/text/pdf/PdfArray;)Lcom/itextpdf/text/pdf/PdfAnnotation;
    .locals 4
    .parameter "writer"
    .parameter "rect"
    .parameter "contents"
    .parameter "polygon"
    .parameter "vertices"

    .prologue
    .line 488
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;)V

    .line 489
    .local v0, annot:Lcom/itextpdf/text/pdf/PdfAnnotation;
    if-eqz p3, :cond_0

    .line 490
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->POLYGON:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 493
    :goto_0
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    const-string v3, "UnicodeBig"

    invoke-direct {v2, p2, v3}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 494
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->VERTICES:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v2, p4}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfArray;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 495
    return-object v0

    .line 492
    :cond_0
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->POLYLINE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public static createPopup(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/PdfAnnotation;
    .locals 4
    .parameter "writer"
    .parameter "rect"
    .parameter "contents"
    .parameter "open"

    .prologue
    .line 468
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;)V

    .line 469
    .local v0, annot:Lcom/itextpdf/text/pdf/PdfAnnotation;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->POPUP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 470
    if-eqz p2, :cond_0

    .line 471
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    const-string v3, "UnicodeBig"

    invoke-direct {v2, p2, v3}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 472
    :cond_0
    if-eqz p3, :cond_1

    .line 473
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->OPEN:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 474
    :cond_1
    return-object v0
.end method

.method public static createScreen(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFileSpecification;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/PdfAnnotation;
    .locals 8
    .parameter "writer"
    .parameter "rect"
    .parameter "clipTitle"
    .parameter "fs"
    .parameter "mimeType"
    .parameter "playOnDisplay"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    new-instance v3, Lcom/itextpdf/text/pdf/PdfAnnotation;

    invoke-direct {v3, p0, p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;)V

    .line 201
    .local v3, ann:Lcom/itextpdf/text/pdf/PdfAnnotation;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->SCREEN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v5, v6}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 202
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfNumber;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v3, v5, v6}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 203
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->ANNOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v5, v6}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 204
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfAnnotation;->setPage()V

    .line 205
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    .line 206
    .local v4, ref:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    invoke-static {p2, p3, p4, v4}, Lcom/itextpdf/text/pdf/PdfAction;->rendition(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFileSpecification;Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfAction;

    move-result-object v1

    .line 207
    .local v1, action:Lcom/itextpdf/text/pdf/PdfAction;
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    .line 209
    .local v2, actionRef:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    if-eqz p5, :cond_0

    .line 211
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 212
    .local v0, aa:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v5, Lcom/itextpdf/text/pdf/PdfName;

    const-string v6, "PV"

    invoke-direct {v5, v6}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 213
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->AA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v5, v0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 215
    .end local v0           #aa:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_0
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v5, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 216
    return-object v3
.end method

.method public static createSquareCircle(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/PdfAnnotation;
    .locals 4
    .parameter "writer"
    .parameter "rect"
    .parameter "contents"
    .parameter "square"

    .prologue
    .line 362
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;)V

    .line 363
    .local v0, annot:Lcom/itextpdf/text/pdf/PdfAnnotation;
    if-eqz p3, :cond_0

    .line 364
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->SQUARE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 367
    :goto_0
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    const-string v3, "UnicodeBig"

    invoke-direct {v2, p2, v3}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 368
    return-object v0

    .line 366
    :cond_0
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CIRCLE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public static createStamp(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfAnnotation;
    .locals 4
    .parameter "writer"
    .parameter "rect"
    .parameter "contents"
    .parameter "name"

    .prologue
    .line 403
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;)V

    .line 404
    .local v0, annot:Lcom/itextpdf/text/pdf/PdfAnnotation;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->STAMP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 405
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    const-string v3, "UnicodeBig"

    invoke-direct {v2, p2, v3}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 406
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->NAME:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v2, p3}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 407
    return-object v0
.end method

.method public static createText(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/itextpdf/text/pdf/PdfAnnotation;
    .locals 4
    .parameter "writer"
    .parameter "rect"
    .parameter "title"
    .parameter "contents"
    .parameter "open"
    .parameter "icon"

    .prologue
    .line 240
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;)V

    .line 241
    .local v0, annot:Lcom/itextpdf/text/pdf/PdfAnnotation;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->TEXT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 242
    if-eqz p2, :cond_0

    .line 243
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    const-string v3, "UnicodeBig"

    invoke-direct {v2, p2, v3}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 244
    :cond_0
    if-eqz p3, :cond_1

    .line 245
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->CONTENTS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    const-string v3, "UnicodeBig"

    invoke-direct {v2, p3, v3}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 246
    :cond_1
    if-eqz p4, :cond_2

    .line 247
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->OPEN:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 248
    :cond_2
    if-eqz p5, :cond_3

    .line 249
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->NAME:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v2, p5}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 251
    :cond_3
    return-object v0
.end method

.method public static getMKColor(Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/pdf/PdfArray;
    .locals 6
    .parameter "color"

    .prologue
    const/high16 v5, 0x437f

    .line 683
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 684
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-static {p0}, Lcom/itextpdf/text/pdf/ExtendedColor;->getType(Lcom/itextpdf/text/BaseColor;)I

    move-result v2

    .line 685
    .local v2, type:I
    packed-switch v2, :pswitch_data_0

    .line 703
    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/text/BaseColor;->getRed()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 704
    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/text/BaseColor;->getGreen()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 705
    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {p0}, Lcom/itextpdf/text/BaseColor;->getBlue()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 707
    .end local p0
    :goto_0
    return-object v0

    .line 687
    .restart local p0
    :pswitch_0
    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    check-cast p0, Lcom/itextpdf/text/pdf/GrayColor;

    .end local p0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/GrayColor;->getGray()F

    move-result v4

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_0

    .restart local p0
    :pswitch_1
    move-object v1, p0

    .line 691
    check-cast v1, Lcom/itextpdf/text/pdf/CMYKColor;

    .line 692
    .local v1, cmyk:Lcom/itextpdf/text/pdf/CMYKColor;
    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/CMYKColor;->getCyan()F

    move-result v4

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 693
    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/CMYKColor;->getMagenta()F

    move-result v4

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 694
    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/CMYKColor;->getYellow()F

    move-result v4

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 695
    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/CMYKColor;->getBlack()F

    move-result v4

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_0

    .line 701
    .end local v1           #cmyk:Lcom/itextpdf/text/pdf/CMYKColor;
    :pswitch_2
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "separations.patterns.and.shadings.are.not.allowed.in.mk.dictionary"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 685
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->reference:Lcom/itextpdf/text/pdf/PdfIndirectReference;

    return-object v0
.end method

.method getMK()Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 2

    .prologue
    .line 670
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->MK:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 671
    .local v0, mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_0

    .line 672
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v0           #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 673
    .restart local v0       #mk:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->MK:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 675
    :cond_0
    return-object v0
.end method

.method public getPlaceInPage()I
    .locals 1

    .prologue
    .line 653
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->placeInPage:I

    return v0
.end method

.method public getTemplates()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/itextpdf/text/pdf/PdfTemplate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->templates:Ljava/util/HashSet;

    return-object v0
.end method

.method public isAnnotation()Z
    .locals 1

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->annotation:Z

    return v0
.end method

.method public isForm()Z
    .locals 1

    .prologue
    .line 631
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->form:Z

    return v0
.end method

.method public isUsed()Z
    .locals 1

    .prologue
    .line 614
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->used:Z

    return v0
.end method

.method public setAction(Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 596
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 597
    return-void
.end method

.method public setAdditionalActions(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 3
    .parameter "key"
    .parameter "action"

    .prologue
    .line 601
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->AA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfAnnotation;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 602
    .local v1, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 603
    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 606
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 607
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->AA:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v2, v0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 608
    return-void

    .line 605
    .end local v0           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .restart local v0       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    goto :goto_0
.end method

.method public setAppearance(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfTemplate;)V
    .locals 2
    .parameter "ap"
    .parameter "template"

    .prologue
    .line 537
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 538
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_0

    .line 539
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v0           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 540
    .restart local v0       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/text/pdf/PdfTemplate;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 541
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 542
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->form:Z

    if-nez v1, :cond_1

    .line 547
    :goto_0
    return-void

    .line 544
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->templates:Ljava/util/HashSet;

    if-nez v1, :cond_2

    .line 545
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->templates:Ljava/util/HashSet;

    .line 546
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->templates:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setAppearance(Lcom/itextpdf/text/pdf/PdfName;Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfTemplate;)V
    .locals 5
    .parameter "ap"
    .parameter "state"
    .parameter "template"

    .prologue
    .line 550
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfAnnotation;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 551
    .local v1, dicAp:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v1, :cond_0

    .line 552
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v1           #dicAp:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 555
    .restart local v1       #dicAp:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_0
    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 556
    .local v2, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    .line 557
    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 560
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :goto_0
    new-instance v3, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v3, p2}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/itextpdf/text/pdf/PdfTemplate;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 561
    invoke-virtual {v1, p1, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 562
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->AP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v3, v1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 563
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->form:Z

    if-nez v3, :cond_2

    .line 568
    :goto_1
    return-void

    .line 559
    .end local v0           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_1
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .restart local v0       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    goto :goto_0

    .line 565
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->templates:Ljava/util/HashSet;

    if-nez v3, :cond_3

    .line 566
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->templates:Ljava/util/HashSet;

    .line 567
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->templates:Ljava/util/HashSet;

    invoke-virtual {v3, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public setAppearanceState(Ljava/lang/String;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 571
    if-nez p1, :cond_0

    .line 572
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->AS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 576
    :goto_0
    return-void

    .line 575
    :cond_0
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->AS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public setBorder(Lcom/itextpdf/text/pdf/PdfBorderArray;)V
    .locals 1
    .parameter "border"

    .prologue
    .line 516
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->BORDER:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 517
    return-void
.end method

.method public setBorderStyle(Lcom/itextpdf/text/pdf/PdfBorderDictionary;)V
    .locals 1
    .parameter "border"

    .prologue
    .line 520
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->BS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 521
    return-void
.end method

.method public setColor(Lcom/itextpdf/text/BaseColor;)V
    .locals 2
    .parameter "color"

    .prologue
    .line 579
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->C:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfColor;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfColor;-><init>(Lcom/itextpdf/text/BaseColor;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 580
    return-void
.end method

.method public setDefaultAppearanceString(Lcom/itextpdf/text/pdf/PdfContentByte;)V
    .locals 5
    .parameter "cb"

    .prologue
    .line 499
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfContentByte;->getInternalBuffer()Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/ByteBuffer;->toByteArray()[B

    move-result-object v0

    .line 500
    .local v0, b:[B
    array-length v2, v0

    .line 501
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 502
    aget-byte v3, v0, v1

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    .line 503
    const/16 v3, 0x20

    aput-byte v3, v0, v1

    .line 501
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 505
    :cond_1
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v4, v0}, Lcom/itextpdf/text/pdf/PdfString;-><init>([B)V

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 506
    return-void
.end method

.method public setFlags(I)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 509
    if-nez p1, :cond_0

    .line 510
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 513
    :goto_0
    return-void

    .line 512
    :cond_0
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public setHighlighting(Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 1
    .parameter "highlight"

    .prologue
    .line 530
    sget-object v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->HIGHLIGHT_INVERT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->H:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 534
    :goto_0
    return-void

    .line 533
    :cond_0
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->H:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public setLayer(Lcom/itextpdf/text/pdf/PdfOCG;)V
    .locals 2
    .parameter "layer"

    .prologue
    .line 773
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->OC:Lcom/itextpdf/text/pdf/PdfName;

    invoke-interface {p1}, Lcom/itextpdf/text/pdf/PdfOCG;->getRef()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 774
    return-void
.end method

.method public setMKAlternateCaption(Ljava/lang/String;)V
    .locals 4
    .parameter "caption"

    .prologue
    .line 733
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getMK()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->AC:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    const-string v3, "UnicodeBig"

    invoke-direct {v2, p1, v3}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 734
    return-void
.end method

.method public setMKAlternateIcon(Lcom/itextpdf/text/pdf/PdfTemplate;)V
    .locals 3
    .parameter "template"

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getMK()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->IX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 746
    return-void
.end method

.method public setMKBackgroundColor(Lcom/itextpdf/text/BaseColor;)V
    .locals 3
    .parameter "color"

    .prologue
    .line 718
    if-nez p1, :cond_0

    .line 719
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getMK()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->BG:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 722
    :goto_0
    return-void

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getMK()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->BG:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getMKColor(Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public setMKBorderColor(Lcom/itextpdf/text/BaseColor;)V
    .locals 3
    .parameter "color"

    .prologue
    .line 711
    if-nez p1, :cond_0

    .line 712
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getMK()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->BC:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 715
    :goto_0
    return-void

    .line 714
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getMK()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->BC:Lcom/itextpdf/text/pdf/PdfName;

    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getMKColor(Lcom/itextpdf/text/BaseColor;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public setMKIconFit(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfName;FFZ)V
    .locals 4
    .parameter "scale"
    .parameter "scalingType"
    .parameter "leftoverLeft"
    .parameter "leftoverBottom"
    .parameter "fitInBounds"

    .prologue
    const/high16 v3, 0x3f00

    .line 749
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 750
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 751
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->SW:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 752
    :cond_0
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p2, v2}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 753
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, p2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 754
    :cond_1
    cmpl-float v2, p3, v3

    if-nez v2, :cond_2

    cmpl-float v2, p4, v3

    if-eqz v2, :cond_3

    .line 755
    :cond_2
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v2, p3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 756
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v2, p4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 757
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 759
    .end local v0           #array:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_3
    if-eqz p5, :cond_4

    .line 760
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FB:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v3, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 761
    :cond_4
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getMK()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->IF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 762
    return-void
.end method

.method public setMKNormalCaption(Ljava/lang/String;)V
    .locals 4
    .parameter "caption"

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getMK()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->CA:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    const-string v3, "UnicodeBig"

    invoke-direct {v2, p1, v3}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 726
    return-void
.end method

.method public setMKNormalIcon(Lcom/itextpdf/text/pdf/PdfTemplate;)V
    .locals 3
    .parameter "template"

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getMK()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->I:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 738
    return-void
.end method

.method public setMKRolloverCaption(Ljava/lang/String;)V
    .locals 4
    .parameter "caption"

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getMK()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->RC:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    const-string v3, "UnicodeBig"

    invoke-direct {v2, p1, v3}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 730
    return-void
.end method

.method public setMKRolloverIcon(Lcom/itextpdf/text/pdf/PdfTemplate;)V
    .locals 3
    .parameter "template"

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getMK()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->RI:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfTemplate;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 742
    return-void
.end method

.method public setMKRotation(I)V
    .locals 3
    .parameter "rotation"

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getMK()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->R:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v2, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 680
    return-void
.end method

.method public setMKTextPosition(I)V
    .locals 3
    .parameter "tp"

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getMK()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TP:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v2, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 766
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 782
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->NM:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 783
    return-void
.end method

.method public setPage()V
    .locals 2

    .prologue
    .line 646
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfWriter;->getCurrentPage()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 647
    return-void
.end method

.method public setPage(I)V
    .locals 2
    .parameter "page"

    .prologue
    .line 642
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageReference(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 643
    return-void
.end method

.method public setPlaceInPage(I)V
    .locals 0
    .parameter "placeInPage"

    .prologue
    .line 662
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->placeInPage:I

    .line 663
    return-void
.end method

.method public setPopup(Lcom/itextpdf/text/pdf/PdfAnnotation;)V
    .locals 2
    .parameter "popup"

    .prologue
    .line 591
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->POPUP:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 592
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 593
    return-void
.end method

.method public setRotate(I)V
    .locals 2
    .parameter "v"

    .prologue
    .line 666
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->ROTATE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 667
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 583
    if-nez p1, :cond_0

    .line 584
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 588
    :goto_0
    return-void

    .line 587
    :cond_0
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string v2, "UnicodeBig"

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public setUsed()V
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->used:Z

    .line 621
    return-void
.end method
