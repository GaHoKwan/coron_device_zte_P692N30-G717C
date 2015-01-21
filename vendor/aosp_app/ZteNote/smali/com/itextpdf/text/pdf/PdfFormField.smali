.class public Lcom/itextpdf/text/pdf/PdfFormField;
.super Lcom/itextpdf/text/pdf/PdfAnnotation;
.source "PdfFormField.java"


# static fields
.field public static final FF_COMB:I = 0x1000000

.field public static final FF_COMBO:I = 0x20000

.field public static final FF_DONOTSCROLL:I = 0x800000

.field public static final FF_DONOTSPELLCHECK:I = 0x400000

.field public static final FF_EDIT:I = 0x40000

.field public static final FF_FILESELECT:I = 0x100000

.field public static final FF_MULTILINE:I = 0x1000

.field public static final FF_MULTISELECT:I = 0x200000

.field public static final FF_NO_EXPORT:I = 0x4

.field public static final FF_NO_TOGGLE_TO_OFF:I = 0x4000

.field public static final FF_PASSWORD:I = 0x2000

.field public static final FF_PUSHBUTTON:I = 0x10000

.field public static final FF_RADIO:I = 0x8000

.field public static final FF_RADIOSINUNISON:I = 0x2000000

.field public static final FF_READ_ONLY:I = 0x1

.field public static final FF_REQUIRED:I = 0x2

.field public static final FF_RICHTEXT:I = 0x4000000

.field public static final IF_SCALE_ALWAYS:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final IF_SCALE_ANAMORPHIC:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final IF_SCALE_BIGGER:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final IF_SCALE_NEVER:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final IF_SCALE_PROPORTIONAL:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final IF_SCALE_SMALLER:Lcom/itextpdf/text/pdf/PdfName; = null

.field public static final MK_CAPTION_ABOVE:I = 0x3

.field public static final MK_CAPTION_BELOW:I = 0x2

.field public static final MK_CAPTION_LEFT:I = 0x5

.field public static final MK_CAPTION_OVERLAID:I = 0x6

.field public static final MK_CAPTION_RIGHT:I = 0x4

.field public static final MK_NO_CAPTION:I = 0x1

.field public static final MK_NO_ICON:I = 0x0

.field public static final MULTILINE:Z = true

.field public static final PASSWORD:Z = true

.field public static final PLAINTEXT:Z = false

.field public static final Q_CENTER:I = 0x1

.field public static final Q_LEFT:I = 0x0

.field public static final Q_RIGHT:I = 0x2

.field public static final SINGLELINE:Z

.field static mergeTarget:[Lcom/itextpdf/text/pdf/PdfName;


# instance fields
.field protected kids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfFormField;",
            ">;"
        }
    .end annotation
.end field

.field protected parent:Lcom/itextpdf/text/pdf/PdfFormField;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfFormField;->IF_SCALE_ALWAYS:Lcom/itextpdf/text/pdf/PdfName;

    .line 87
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->B:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfFormField;->IF_SCALE_BIGGER:Lcom/itextpdf/text/pdf/PdfName;

    .line 88
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfFormField;->IF_SCALE_SMALLER:Lcom/itextpdf/text/pdf/PdfName;

    .line 89
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->N:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfFormField;->IF_SCALE_NEVER:Lcom/itextpdf/text/pdf/PdfName;

    .line 90
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfFormField;->IF_SCALE_ANAMORPHIC:Lcom/itextpdf/text/pdf/PdfName;

    .line 91
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->P:Lcom/itextpdf/text/pdf/PdfName;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfFormField;->IF_SCALE_PROPORTIONAL:Lcom/itextpdf/text/pdf/PdfName;

    .line 96
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfName;

    const/4 v1, 0x0

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->XOBJECT:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->COLORSPACE:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->PATTERN:Lcom/itextpdf/text/pdf/PdfName;

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/PdfFormField;->mergeTarget:[Lcom/itextpdf/text/pdf/PdfName;

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 1
    .parameter "writer"

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;)V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfFormField;->form:Z

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfFormField;->annotation:Z

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V
    .locals 2
    .parameter "writer"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"
    .parameter "action"

    .prologue
    .line 108
    invoke-direct/range {p0 .. p6}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V

    .line 109
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ANNOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 110
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->WIDGET:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfFormField;->annotation:Z

    .line 112
    return-void
.end method

.method protected static createButton(Lcom/itextpdf/text/pdf/PdfWriter;I)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 1
    .parameter "writer"
    .parameter "flags"

    .prologue
    .line 142
    new-instance v0, Lcom/itextpdf/text/pdf/PdfFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfFormField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 143
    .local v0, field:Lcom/itextpdf/text/pdf/PdfFormField;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfFormField;->setButton(I)V

    .line 144
    return-object v0
.end method

.method public static createCheckBox(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 1
    .parameter "writer"

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->createButton(Lcom/itextpdf/text/pdf/PdfWriter;I)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v0

    return-object v0
.end method

.method protected static createChoice(Lcom/itextpdf/text/pdf/PdfWriter;ILcom/itextpdf/text/pdf/PdfArray;I)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 3
    .parameter "writer"
    .parameter "flags"
    .parameter "options"
    .parameter "topIndex"

    .prologue
    .line 171
    new-instance v0, Lcom/itextpdf/text/pdf/PdfFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfFormField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 172
    .local v0, field:Lcom/itextpdf/text/pdf/PdfFormField;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 173
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v2, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 174
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->OPT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, p2}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 175
    if-lez p3, :cond_0

    .line 176
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->TI:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v2, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v2, p3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 177
    :cond_0
    return-object v0
.end method

.method public static createCombo(Lcom/itextpdf/text/pdf/PdfWriter;Z[Ljava/lang/String;I)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 2
    .parameter "writer"
    .parameter "edit"
    .parameter "options"
    .parameter "topIndex"

    .prologue
    .line 189
    const/high16 v1, 0x2

    if-eqz p1, :cond_0

    const/high16 v0, 0x4

    :goto_0
    add-int/2addr v0, v1

    invoke-static {p2}, Lcom/itextpdf/text/pdf/PdfFormField;->processOptions([Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v1

    invoke-static {p0, v0, v1, p3}, Lcom/itextpdf/text/pdf/PdfFormField;->createChoice(Lcom/itextpdf/text/pdf/PdfWriter;ILcom/itextpdf/text/pdf/PdfArray;I)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createCombo(Lcom/itextpdf/text/pdf/PdfWriter;Z[[Ljava/lang/String;I)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 2
    .parameter "writer"
    .parameter "edit"
    .parameter "options"
    .parameter "topIndex"

    .prologue
    .line 193
    const/high16 v1, 0x2

    if-eqz p1, :cond_0

    const/high16 v0, 0x4

    :goto_0
    add-int/2addr v0, v1

    invoke-static {p2}, Lcom/itextpdf/text/pdf/PdfFormField;->processOptions([[Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v1

    invoke-static {p0, v0, v1, p3}, Lcom/itextpdf/text/pdf/PdfFormField;->createChoice(Lcom/itextpdf/text/pdf/PdfWriter;ILcom/itextpdf/text/pdf/PdfArray;I)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createEmpty(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 1
    .parameter "writer"

    .prologue
    .line 131
    new-instance v0, Lcom/itextpdf/text/pdf/PdfFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfFormField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 132
    .local v0, field:Lcom/itextpdf/text/pdf/PdfFormField;
    return-object v0
.end method

.method public static createList(Lcom/itextpdf/text/pdf/PdfWriter;[Ljava/lang/String;I)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 2
    .parameter "writer"
    .parameter "options"
    .parameter "topIndex"

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfFormField;->processOptions([Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v1

    invoke-static {p0, v0, v1, p2}, Lcom/itextpdf/text/pdf/PdfFormField;->createChoice(Lcom/itextpdf/text/pdf/PdfWriter;ILcom/itextpdf/text/pdf/PdfArray;I)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createList(Lcom/itextpdf/text/pdf/PdfWriter;[[Ljava/lang/String;I)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 2
    .parameter "writer"
    .parameter "options"
    .parameter "topIndex"

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfFormField;->processOptions([[Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v1

    invoke-static {p0, v0, v1, p2}, Lcom/itextpdf/text/pdf/PdfFormField;->createChoice(Lcom/itextpdf/text/pdf/PdfWriter;ILcom/itextpdf/text/pdf/PdfArray;I)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createPushButton(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 1
    .parameter "writer"

    .prologue
    .line 148
    const/high16 v0, 0x1

    invoke-static {p0, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->createButton(Lcom/itextpdf/text/pdf/PdfWriter;I)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v0

    return-object v0
.end method

.method public static createRadioButton(Lcom/itextpdf/text/pdf/PdfWriter;Z)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 2
    .parameter "writer"
    .parameter "noToggleToOff"

    .prologue
    .line 156
    const v1, 0x8000

    if-eqz p1, :cond_0

    const/16 v0, 0x4000

    :goto_0
    add-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->createButton(Lcom/itextpdf/text/pdf/PdfWriter;I)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createSignature(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 3
    .parameter "writer"

    .prologue
    .line 216
    new-instance v0, Lcom/itextpdf/text/pdf/PdfFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfFormField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 217
    .local v0, field:Lcom/itextpdf/text/pdf/PdfFormField;
    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->SIG:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 218
    return-object v0
.end method

.method public static createTextField(Lcom/itextpdf/text/pdf/PdfWriter;ZZI)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 5
    .parameter "writer"
    .parameter "multiline"
    .parameter "password"
    .parameter "maxLen"

    .prologue
    const/4 v2, 0x0

    .line 160
    new-instance v0, Lcom/itextpdf/text/pdf/PdfFormField;

    invoke-direct {v0, p0}, Lcom/itextpdf/text/pdf/PdfFormField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .line 161
    .local v0, field:Lcom/itextpdf/text/pdf/PdfFormField;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->TX:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 162
    if-eqz p1, :cond_2

    const/16 v1, 0x1000

    .line 163
    .local v1, flags:I
    :goto_0
    if-eqz p2, :cond_0

    const/16 v2, 0x2000

    :cond_0
    add-int/2addr v1, v2

    .line 164
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v3, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 165
    if-lez p3, :cond_1

    .line 166
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->MAXLEN:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v3, p3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 167
    :cond_1
    return-object v0

    .end local v1           #flags:I
    :cond_2
    move v1, v2

    .line 162
    goto :goto_0
.end method

.method static mergeResources(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 1
    .parameter "result"
    .parameter "source"

    .prologue
    .line 338
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->mergeResources(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfStamperImp;)V

    .line 339
    return-void
.end method

.method static mergeResources(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfStamperImp;)V
    .locals 6
    .parameter "result"
    .parameter "source"
    .parameter "writer"

    .prologue
    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/4 v3, 0x0

    .line 321
    .local v3, res:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/4 v4, 0x0

    .line 322
    .local v4, target:Lcom/itextpdf/text/pdf/PdfName;
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    sget-object v5, Lcom/itextpdf/text/pdf/PdfFormField;->mergeTarget:[Lcom/itextpdf/text/pdf/PdfName;

    array-length v5, v5

    if-ge v1, v5, :cond_2

    .line 323
    sget-object v5, Lcom/itextpdf/text/pdf/PdfFormField;->mergeTarget:[Lcom/itextpdf/text/pdf/PdfName;

    aget-object v4, v5, v1

    .line 324
    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    .line 325
    .local v2, pdfDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    move-object v0, v2

    if-eqz v2, :cond_1

    .line 326
    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .end local v3           #res:Lcom/itextpdf/text/pdf/PdfDictionary;
    check-cast v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    .restart local v3       #res:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v3, :cond_0

    .line 327
    new-instance v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v3           #res:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 329
    .restart local v3       #res:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_0
    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->mergeDifferent(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 330
    invoke-virtual {p0, v4, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 331
    if-eqz p2, :cond_1

    .line 332
    invoke-virtual {p2, v3}, Lcom/itextpdf/text/pdf/PdfStamperImp;->markUsed(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 322
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    .end local v2           #pdfDict:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_2
    return-void
.end method

.method protected static processOptions([Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfArray;
    .locals 5
    .parameter "options"

    .prologue
    .line 197
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 198
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 199
    new-instance v2, Lcom/itextpdf/text/pdf/PdfString;

    aget-object v3, p0, v1

    const-string v4, "UnicodeBig"

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    :cond_0
    return-object v0
.end method

.method protected static processOptions([[Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfArray;
    .locals 7
    .parameter "options"

    .prologue
    .line 205
    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 206
    .local v1, array:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_0

    .line 207
    aget-object v3, p0, v2

    .line 208
    .local v3, subOption:[Ljava/lang/String;
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfString;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    const-string v6, "UnicodeBig"

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v4}, Lcom/itextpdf/text/pdf/PdfArray;-><init>(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 209
    .local v0, ar2:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v4, Lcom/itextpdf/text/pdf/PdfString;

    const/4 v5, 0x1

    aget-object v5, v3, v5

    const-string v6, "UnicodeBig"

    invoke-direct {v4, v5, v6}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 210
    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 212
    .end local v0           #ar2:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v3           #subOption:[Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public static shallowDuplicate(Lcom/itextpdf/text/pdf/PdfAnnotation;)Lcom/itextpdf/text/pdf/PdfAnnotation;
    .locals 5
    .parameter "annot"

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isForm()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 364
    new-instance v0, Lcom/itextpdf/text/pdf/PdfFormField;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-direct {v0, v3}, Lcom/itextpdf/text/pdf/PdfFormField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    .local v0, dup:Lcom/itextpdf/text/pdf/PdfAnnotation;
    move-object v1, v0

    .line 365
    check-cast v1, Lcom/itextpdf/text/pdf/PdfFormField;

    .local v1, dupField:Lcom/itextpdf/text/pdf/PdfFormField;
    move-object v2, p0

    .line 366
    check-cast v2, Lcom/itextpdf/text/pdf/PdfFormField;

    .line 367
    .local v2, srcField:Lcom/itextpdf/text/pdf/PdfFormField;
    iget-object v3, v2, Lcom/itextpdf/text/pdf/PdfFormField;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    iput-object v3, v1, Lcom/itextpdf/text/pdf/PdfFormField;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    .line 368
    iget-object v3, v2, Lcom/itextpdf/text/pdf/PdfFormField;->kids:Ljava/util/ArrayList;

    iput-object v3, v1, Lcom/itextpdf/text/pdf/PdfFormField;->kids:Ljava/util/ArrayList;

    .line 372
    .end local v1           #dupField:Lcom/itextpdf/text/pdf/PdfFormField;
    .end local v2           #srcField:Lcom/itextpdf/text/pdf/PdfFormField;
    :goto_0
    invoke-virtual {v0, p0}, Lcom/itextpdf/text/pdf/PdfAnnotation;->merge(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 373
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->form:Z

    iput-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->form:Z

    .line 374
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->annotation:Z

    iput-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->annotation:Z

    .line 375
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->templates:Ljava/util/HashSet;

    iput-object v3, v0, Lcom/itextpdf/text/pdf/PdfAnnotation;->templates:Ljava/util/HashSet;

    .line 376
    return-object v0

    .line 371
    .end local v0           #dup:Lcom/itextpdf/text/pdf/PdfAnnotation;
    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAnnotation;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfAnnotation;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;)V

    .restart local v0       #dup:Lcom/itextpdf/text/pdf/PdfAnnotation;
    goto :goto_0
.end method


# virtual methods
.method public addKid(Lcom/itextpdf/text/pdf/PdfFormField;)V
    .locals 1
    .parameter "field"

    .prologue
    .line 229
    iput-object p0, p1, Lcom/itextpdf/text/pdf/PdfFormField;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    .line 230
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfFormField;->kids:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfFormField;->kids:Ljava/util/ArrayList;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfFormField;->kids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method public getKids()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfFormField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfFormField;->kids:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getParent()Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfFormField;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    return-object v0
.end method

.method public setButton(I)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 136
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->FT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->BTN:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 137
    if-eqz p1, :cond_0

    .line 138
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 139
    :cond_0
    return-void
.end method

.method public setDefaultValueAsName(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 286
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->DV:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 287
    return-void
.end method

.method public setDefaultValueAsString(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 282
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->DV:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string v2, "UnicodeBig"

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 283
    return-void
.end method

.method public setFieldFlags(I)I
    .locals 5
    .parameter "flags"

    .prologue
    .line 245
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 247
    .local v0, obj:Lcom/itextpdf/text/pdf/PdfNumber;
    if-nez v0, :cond_0

    .line 248
    const/4 v1, 0x0

    .line 251
    .local v1, old:I
    :goto_0
    or-int v2, v1, p1

    .line 252
    .local v2, v:I
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->FF:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v4, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v4, v2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 253
    return v1

    .line 250
    .end local v1           #old:I
    .end local v2           #v:I
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v1

    .restart local v1       #old:I
    goto :goto_0
.end method

.method public setFieldName(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 290
    if-eqz p1, :cond_0

    .line 291
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string v2, "UnicodeBig"

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 292
    :cond_0
    return-void
.end method

.method public setMappingName(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 307
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TM:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string v2, "UnicodeBig"

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 308
    return-void
.end method

.method public setQuadding(I)V
    .locals 2
    .parameter "v"

    .prologue
    .line 315
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->Q:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 316
    return-void
.end method

.method public setRichValue(Ljava/lang/String;)V
    .locals 2
    .parameter "rv"

    .prologue
    .line 278
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->RV:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 279
    return-void
.end method

.method public setUsed()V
    .locals 7

    .prologue
    .line 343
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/PdfFormField;->used:Z

    .line 344
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfFormField;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    if-eqz v5, :cond_0

    .line 345
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfFormField;->parent:Lcom/itextpdf/text/pdf/PdfFormField;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfFormField;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 346
    :cond_0
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfFormField;->kids:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 347
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 348
    .local v0, array:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfFormField;->kids:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 349
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfFormField;->kids:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfFormField;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfFormField;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 348
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 350
    :cond_1
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v5, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 352
    .end local v0           #array:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v3           #k:I
    :cond_2
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfFormField;->templates:Ljava/util/HashSet;

    if-nez v5, :cond_3

    .line 359
    :goto_1
    return-void

    .line 354
    :cond_3
    new-instance v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 355
    .local v1, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/PdfFormField;->templates:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfTemplate;

    .line 356
    .local v4, template:Lcom/itextpdf/text/pdf/PdfTemplate;
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfTemplate;->getResources()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-static {v1, v5}, Lcom/itextpdf/text/pdf/PdfFormField;->mergeResources(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    goto :goto_2

    .line 358
    .end local v4           #template:Lcom/itextpdf/text/pdf/PdfTemplate;
    :cond_4
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->DR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v5, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_1
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 299
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TU:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string v2, "UnicodeBig"

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 300
    return-void
.end method

.method public setValue(Lcom/itextpdf/text/pdf/PdfSignature;)V
    .locals 1
    .parameter "sig"

    .prologue
    .line 265
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 266
    return-void
.end method

.method public setValueAsName(Ljava/lang/String;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 261
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 262
    return-void
.end method

.method public setValueAsString(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 257
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfString;

    const-string v2, "UnicodeBig"

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 258
    return-void
.end method

.method public setWidget(Lcom/itextpdf/text/Rectangle;Lcom/itextpdf/text/pdf/PdfName;)V
    .locals 2
    .parameter "rect"
    .parameter "highlight"

    .prologue
    .line 122
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->ANNOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 123
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/text/pdf/PdfName;->WIDGET:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 124
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(Lcom/itextpdf/text/Rectangle;)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfFormField;->annotation:Z

    .line 126
    if-eqz p2, :cond_0

    sget-object v0, Lcom/itextpdf/text/pdf/PdfFormField;->HIGHLIGHT_INVERT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p2, v0}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->H:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 128
    :cond_0
    return-void
.end method
