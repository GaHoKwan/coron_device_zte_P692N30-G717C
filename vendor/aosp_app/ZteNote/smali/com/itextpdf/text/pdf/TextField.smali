.class public Lcom/itextpdf/text/pdf/TextField;
.super Lcom/itextpdf/text/pdf/BaseField;
.source "TextField.java"


# instance fields
.field private choiceExports:[Ljava/lang/String;

.field private choiceSelections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private choices:[Ljava/lang/String;

.field private defaultText:Ljava/lang/String;

.field private extensionFont:Lcom/itextpdf/text/pdf/BaseFont;

.field private extraMarginLeft:F

.field private extraMarginTop:F

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


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;)V
    .locals 1
    .parameter "writer"
    .parameter "box"
    .parameter "fieldName"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/text/pdf/BaseField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;)V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/TextField;->choiceSelections:Ljava/util/ArrayList;

    .line 90
    return-void
.end method

.method private static changeFontSize(Lcom/itextpdf/text/Phrase;F)V
    .locals 2
    .parameter "p"
    .parameter "size"

    .prologue
    .line 105
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/text/Phrase;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 106
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/Phrase;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/Chunk;

    invoke-virtual {v1}, Lcom/itextpdf/text/Chunk;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/Font;->setSize(F)V

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method private static checkRTL(Ljava/lang/String;)Z
    .locals 5
    .parameter "text"

    .prologue
    const/4 v3, 0x0

    .line 93
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v3

    .line 95
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 96
    .local v1, cc:[C
    const/4 v2, 0x0

    .local v2, k:I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 97
    aget-char v0, v1, v2

    .line 98
    .local v0, c:I
    const/16 v4, 0x590

    if-lt v0, v4, :cond_2

    const/16 v4, 0x780

    if-ge v0, v4, :cond_2

    .line 99
    const/4 v3, 0x1

    goto :goto_0

    .line 96
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private composePhrase(Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;Lcom/itextpdf/text/BaseColor;F)Lcom/itextpdf/text/Phrase;
    .locals 6
    .parameter "text"
    .parameter "ufont"
    .parameter "color"
    .parameter "fontSize"

    .prologue
    const/4 v5, 0x0

    .line 110
    const/4 v2, 0x0

    .line 111
    .local v2, phrase:Lcom/itextpdf/text/Phrase;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->extensionFont:Lcom/itextpdf/text/pdf/BaseFont;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->substitutionFonts:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->substitutionFonts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    :cond_0
    new-instance v2, Lcom/itextpdf/text/Phrase;

    .end local v2           #phrase:Lcom/itextpdf/text/Phrase;
    new-instance v3, Lcom/itextpdf/text/Chunk;

    new-instance v4, Lcom/itextpdf/text/Font;

    invoke-direct {v4, p2, p4, v5, p3}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/pdf/BaseFont;FILcom/itextpdf/text/BaseColor;)V

    invoke-direct {v3, p1, v4}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    invoke-direct {v2, v3}, Lcom/itextpdf/text/Phrase;-><init>(Lcom/itextpdf/text/Chunk;)V

    .line 124
    .restart local v2       #phrase:Lcom/itextpdf/text/Phrase;
    :goto_0
    return-object v2

    .line 114
    :cond_1
    new-instance v0, Lcom/itextpdf/text/pdf/FontSelector;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/FontSelector;-><init>()V

    .line 115
    .local v0, fs:Lcom/itextpdf/text/pdf/FontSelector;
    new-instance v3, Lcom/itextpdf/text/Font;

    invoke-direct {v3, p2, p4, v5, p3}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/pdf/BaseFont;FILcom/itextpdf/text/BaseColor;)V

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/FontSelector;->addFont(Lcom/itextpdf/text/Font;)V

    .line 116
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->extensionFont:Lcom/itextpdf/text/pdf/BaseFont;

    if-eqz v3, :cond_2

    .line 117
    new-instance v3, Lcom/itextpdf/text/Font;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/TextField;->extensionFont:Lcom/itextpdf/text/pdf/BaseFont;

    invoke-direct {v3, v4, p4, v5, p3}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/pdf/BaseFont;FILcom/itextpdf/text/BaseColor;)V

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/FontSelector;->addFont(Lcom/itextpdf/text/Font;)V

    .line 118
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->substitutionFonts:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 119
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->substitutionFonts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 120
    new-instance v4, Lcom/itextpdf/text/Font;

    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->substitutionFonts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/BaseFont;

    invoke-direct {v4, v3, p4, v5, p3}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/pdf/BaseFont;FILcom/itextpdf/text/BaseColor;)V

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/FontSelector;->addFont(Lcom/itextpdf/text/Font;)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 122
    .end local v1           #k:I
    :cond_3
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/FontSelector;->process(Ljava/lang/String;)Lcom/itextpdf/text/Phrase;

    move-result-object v2

    goto :goto_0
.end method

.method private getTopChoice()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 484
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->choiceSelections:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->choiceSelections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 500
    :cond_1
    :goto_0
    return v1

    .line 488
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->choiceSelections:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 490
    .local v0, firstValue:Ljava/lang/Integer;
    if-nez v0, :cond_3

    move v1, v2

    .line 491
    goto :goto_0

    .line 494
    :cond_3
    const/4 v1, 0x0

    .line 495
    .local v1, topChoice:I
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->choices:[Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 496
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 497
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->choices:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 498
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method public static obfuscatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "text"

    .prologue
    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 165
    .local v1, pchar:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 166
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public static removeCRLF(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "text"

    .prologue
    const/16 v7, 0x20

    const/16 v6, 0xd

    const/16 v5, 0xa

    .line 135
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_5

    .line 136
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 137
    .local v2, p:[C
    new-instance v3, Ljava/lang/StringBuffer;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 138
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_4

    .line 139
    aget-char v0, v2, v1

    .line 140
    .local v0, c:C
    if-ne v0, v5, :cond_2

    .line 141
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 138
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_2
    if-ne v0, v6, :cond_3

    .line 143
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 144
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    add-int/lit8 v4, v1, 0x1

    aget-char v4, v2, v4

    if-ne v4, v5, :cond_1

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 148
    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 150
    .end local v0           #c:C
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 152
    .end local v1           #k:I
    .end local v2           #p:[C
    .end local v3           #sb:Ljava/lang/StringBuffer;
    .end local p0
    :cond_5
    return-object p0
.end method

.method private writeMultipleValues(Lcom/itextpdf/text/pdf/PdfFormField;[[Ljava/lang/String;)V
    .locals 7
    .parameter "field"
    .parameter "mix"

    .prologue
    .line 610
    new-instance v2, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 611
    .local v2, indexes:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v3, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 612
    .local v3, values:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/TextField;->choiceSelections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 613
    iget-object v4, p0, Lcom/itextpdf/text/pdf/TextField;->choiceSelections:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 614
    .local v1, idx:I
    new-instance v4, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v4, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, v4}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 616
    if-eqz p2, :cond_1

    .line 617
    new-instance v4, Lcom/itextpdf/text/pdf/PdfString;

    aget-object v5, p2, v1

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 612
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/TextField;->choices:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 619
    new-instance v4, Lcom/itextpdf/text/pdf/PdfString;

    iget-object v5, p0, Lcom/itextpdf/text/pdf/TextField;->choices:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {v4, v5}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_1

    .line 622
    .end local v1           #idx:I
    :cond_2
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v4, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 623
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->I:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v4, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 625
    return-void
.end method


# virtual methods
.method public addChoiceSelection(I)V
    .locals 2
    .parameter "selection"

    .prologue
    .line 710
    iget v0, p0, Lcom/itextpdf/text/pdf/TextField;->options:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TextField;->choiceSelections:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_0
    return-void
.end method

.method public getAppearance()Lcom/itextpdf/text/pdf/PdfAppearance;
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/TextField;->getBorderAppearance()Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v5

    .line 178
    .local v5, app:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->beginVariableText()V

    .line 179
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->text:Ljava/lang/String;

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 180
    :cond_0
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->endVariableText()V

    .line 313
    :goto_0
    return-object v5

    .line 184
    :cond_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->borderStyle:I

    const/4 v9, 0x2

    if-eq v6, v9, :cond_2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->borderStyle:I

    const/4 v9, 0x3

    if-ne v6, v9, :cond_7

    :cond_2
    const/4 v14, 0x1

    .line 185
    .local v14, borderExtra:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/itextpdf/text/pdf/TextField;->borderWidth:F

    const/high16 v10, 0x4000

    mul-float/2addr v9, v10

    sub-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/itextpdf/text/pdf/TextField;->extraMarginTop:F

    sub-float v22, v6, v9

    .line 186
    .local v22, h:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/itextpdf/text/pdf/TextField;->borderWidth:F

    .line 187
    .local v15, bw2:F
    if-eqz v14, :cond_3

    .line 188
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->borderWidth:F

    const/high16 v9, 0x4000

    mul-float/2addr v6, v9

    sub-float v22, v22, v6

    .line 189
    const/high16 v6, 0x4000

    mul-float/2addr v15, v6

    .line 191
    :cond_3
    const/high16 v6, 0x3f80

    invoke-static {v15, v6}, Ljava/lang/Math;->max(FF)F

    move-result v29

    .line 192
    .local v29, offsetX:F
    move/from16 v0, v29

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v28

    .line 193
    .local v28, offX:F
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->saveState()V

    .line 194
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v6

    const/high16 v9, 0x4000

    mul-float v9, v9, v28

    sub-float/2addr v6, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/itextpdf/text/pdf/TextField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v9}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v9

    const/high16 v10, 0x4000

    mul-float v10, v10, v28

    sub-float/2addr v9, v10

    move/from16 v0, v28

    move/from16 v1, v28

    invoke-virtual {v5, v0, v1, v6, v9}, Lcom/itextpdf/text/pdf/PdfAppearance;->rectangle(FFFF)V

    .line 195
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->clip()V

    .line 196
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->newPath()V

    .line 198
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->options:I

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_8

    .line 199
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->text:Ljava/lang/String;

    invoke-static {v6}, Lcom/itextpdf/text/pdf/TextField;->obfuscatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 204
    .local v32, ptext:Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/TextField;->getRealFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v38

    .line 205
    .local v38, ufont:Lcom/itextpdf/text/pdf/BaseFont;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->textColor:Lcom/itextpdf/text/BaseColor;

    if-nez v6, :cond_a

    sget-object v21, Lcom/itextpdf/text/pdf/GrayColor;->GRAYBLACK:Lcom/itextpdf/text/pdf/GrayColor;

    .line 206
    .local v21, fcolor:Lcom/itextpdf/text/BaseColor;
    :goto_3
    invoke-static/range {v32 .. v32}, Lcom/itextpdf/text/pdf/TextField;->checkRTL(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v11, 0x2

    .line 207
    .local v11, rtl:I
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/TextField;->fontSize:F

    move/from16 v39, v0

    .line 208
    .local v39, usize:F
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v38

    move-object/from16 v3, v21

    move/from16 v4, v39

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/TextField;->composePhrase(Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;Lcom/itextpdf/text/BaseColor;F)Lcom/itextpdf/text/Phrase;

    move-result-object v7

    .line 209
    .local v7, phrase:Lcom/itextpdf/text/Phrase;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->options:I

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_d

    .line 210
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v6

    const/high16 v9, 0x4080

    mul-float v9, v9, v29

    sub-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/itextpdf/text/pdf/TextField;->extraMarginLeft:F

    sub-float v41, v6, v9

    .line 211
    .local v41, width:F
    const/16 v6, 0x8

    const/high16 v9, 0x3f80

    move-object/from16 v0, v38

    invoke-virtual {v0, v6, v9}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v6

    const/4 v9, 0x6

    const/high16 v10, 0x3f80

    move-object/from16 v0, v38

    invoke-virtual {v0, v9, v10}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v9

    sub-float v20, v6, v9

    .line 212
    .local v20, factor:F
    new-instance v18, Lcom/itextpdf/text/pdf/ColumnText;

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Lcom/itextpdf/text/pdf/ColumnText;-><init>(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 213
    .local v18, ct:Lcom/itextpdf/text/pdf/ColumnText;
    const/4 v6, 0x0

    cmpl-float v6, v39, v6

    if-nez v6, :cond_6

    .line 214
    div-float v39, v22, v20

    .line 215
    const/high16 v6, 0x4080

    cmpl-float v6, v39, v6

    if-lez v6, :cond_5

    .line 216
    const/high16 v6, 0x4140

    cmpl-float v6, v39, v6

    if-lez v6, :cond_4

    .line 217
    const/high16 v39, 0x4140

    .line 218
    :cond_4
    const/high16 v6, 0x4080

    sub-float v6, v39, v6

    const/high16 v9, 0x4120

    div-float/2addr v6, v9

    const v9, 0x3e4ccccd

    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v36

    .line 219
    .local v36, step:F
    const/4 v6, 0x0

    move/from16 v0, v22

    neg-float v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v41

    invoke-virtual {v0, v6, v9, v1, v10}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFF)V

    .line 220
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->alignment:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/ColumnText;->setAlignment(I)V

    .line 221
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 222
    :goto_5
    const/high16 v6, 0x4080

    cmpl-float v6, v39, v6

    if-lez v6, :cond_5

    .line 223
    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/ColumnText;->setYLine(F)V

    .line 224
    move/from16 v0, v39

    invoke-static {v7, v0}, Lcom/itextpdf/text/pdf/TextField;->changeFontSize(Lcom/itextpdf/text/Phrase;F)V

    .line 225
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/ColumnText;->setText(Lcom/itextpdf/text/Phrase;)V

    .line 226
    mul-float v6, v20, v39

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/ColumnText;->setLeading(F)V

    .line 227
    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/ColumnText;->go(Z)I

    move-result v35

    .line 228
    .local v35, status:I
    and-int/lit8 v6, v35, 0x2

    if-nez v6, :cond_c

    .line 232
    .end local v35           #status:I
    .end local v36           #step:F
    :cond_5
    const/high16 v6, 0x4080

    cmpg-float v6, v39, v6

    if-gez v6, :cond_6

    .line 233
    const/high16 v39, 0x4080

    .line 235
    :cond_6
    move/from16 v0, v39

    invoke-static {v7, v0}, Lcom/itextpdf/text/pdf/TextField;->changeFontSize(Lcom/itextpdf/text/Phrase;F)V

    .line 236
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/ColumnText;->setCanvas(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 237
    mul-float v25, v39, v20

    .line 238
    .local v25, leading:F
    add-float v6, v29, v22

    const/16 v9, 0x8

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v0, v9, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v9

    sub-float v30, v6, v9

    .line 239
    .local v30, offsetY:F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->extraMarginLeft:F

    const/high16 v9, 0x4000

    mul-float v9, v9, v29

    add-float/2addr v6, v9

    const v9, -0x3963c000

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/itextpdf/text/pdf/TextField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v10}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v10

    const/high16 v12, 0x4000

    mul-float v12, v12, v29

    sub-float/2addr v10, v12

    add-float v12, v30, v25

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v9, v10, v12}, Lcom/itextpdf/text/pdf/ColumnText;->setSimpleColumn(FFFF)V

    .line 240
    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/ColumnText;->setLeading(F)V

    .line 241
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->alignment:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/ColumnText;->setAlignment(I)V

    .line 242
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/itextpdf/text/pdf/ColumnText;->setRunDirection(I)V

    .line 243
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/itextpdf/text/pdf/ColumnText;->setText(Lcom/itextpdf/text/Phrase;)V

    .line 244
    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/ColumnText;->go()I

    .line 311
    .end local v18           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .end local v20           #factor:F
    .end local v25           #leading:F
    .end local v41           #width:F
    :goto_6
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->restoreState()V

    .line 312
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->endVariableText()V

    goto/16 :goto_0

    .line 184
    .end local v7           #phrase:Lcom/itextpdf/text/Phrase;
    .end local v11           #rtl:I
    .end local v14           #borderExtra:Z
    .end local v15           #bw2:F
    .end local v21           #fcolor:Lcom/itextpdf/text/BaseColor;
    .end local v22           #h:F
    .end local v28           #offX:F
    .end local v29           #offsetX:F
    .end local v30           #offsetY:F
    .end local v32           #ptext:Ljava/lang/String;
    .end local v38           #ufont:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v39           #usize:F
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 200
    .restart local v14       #borderExtra:Z
    .restart local v15       #bw2:F
    .restart local v22       #h:F
    .restart local v28       #offX:F
    .restart local v29       #offsetX:F
    :cond_8
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->options:I

    and-int/lit16 v6, v6, 0x1000

    if-nez v6, :cond_9

    .line 201
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->text:Ljava/lang/String;

    invoke-static {v6}, Lcom/itextpdf/text/pdf/TextField;->removeCRLF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .restart local v32       #ptext:Ljava/lang/String;
    goto/16 :goto_2

    .line 203
    .end local v32           #ptext:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/TextField;->text:Ljava/lang/String;

    move-object/from16 v32, v0

    .restart local v32       #ptext:Ljava/lang/String;
    goto/16 :goto_2

    .line 205
    .restart local v38       #ufont:Lcom/itextpdf/text/pdf/BaseFont;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/TextField;->textColor:Lcom/itextpdf/text/BaseColor;

    move-object/from16 v21, v0

    goto/16 :goto_3

    .line 206
    .restart local v21       #fcolor:Lcom/itextpdf/text/BaseColor;
    :cond_b
    const/4 v11, 0x1

    goto/16 :goto_4

    .line 222
    .restart local v7       #phrase:Lcom/itextpdf/text/Phrase;
    .restart local v11       #rtl:I
    .restart local v18       #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .restart local v20       #factor:F
    .restart local v35       #status:I
    .restart local v36       #step:F
    .restart local v39       #usize:F
    .restart local v41       #width:F
    :cond_c
    sub-float v39, v39, v36

    goto/16 :goto_5

    .line 247
    .end local v18           #ct:Lcom/itextpdf/text/pdf/ColumnText;
    .end local v20           #factor:F
    .end local v35           #status:I
    .end local v36           #step:F
    .end local v41           #width:F
    :cond_d
    const/4 v6, 0x0

    cmpl-float v6, v39, v6

    if-nez v6, :cond_e

    .line 248
    const/4 v6, 0x7

    const/high16 v9, 0x3f80

    move-object/from16 v0, v38

    invoke-virtual {v0, v6, v9}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v6

    const/4 v9, 0x6

    const/high16 v10, 0x3f80

    move-object/from16 v0, v38

    invoke-virtual {v0, v9, v10}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v9

    sub-float/2addr v6, v9

    div-float v26, v22, v6

    .line 249
    .local v26, maxCalculatedSize:F
    const/high16 v6, 0x3f80

    invoke-static {v7, v6}, Lcom/itextpdf/text/pdf/TextField;->changeFontSize(Lcom/itextpdf/text/Phrase;F)V

    .line 250
    const/4 v6, 0x0

    invoke-static {v7, v11, v6}, Lcom/itextpdf/text/pdf/ColumnText;->getWidth(Lcom/itextpdf/text/Phrase;II)F

    move-result v40

    .line 251
    .local v40, wd:F
    const/4 v6, 0x0

    cmpl-float v6, v40, v6

    if-nez v6, :cond_12

    .line 252
    move/from16 v39, v26

    .line 255
    :goto_7
    const/high16 v6, 0x4080

    cmpg-float v6, v39, v6

    if-gez v6, :cond_e

    .line 256
    const/high16 v39, 0x4080

    .line 258
    .end local v26           #maxCalculatedSize:F
    .end local v40           #wd:F
    :cond_e
    move/from16 v0, v39

    invoke-static {v7, v0}, Lcom/itextpdf/text/pdf/TextField;->changeFontSize(Lcom/itextpdf/text/Phrase;F)V

    .line 259
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v6

    const/high16 v9, 0x4000

    mul-float v9, v9, v28

    sub-float/2addr v6, v9

    const/4 v9, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v0, v9, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v9

    sub-float/2addr v6, v9

    const/high16 v9, 0x4000

    div-float/2addr v6, v9

    add-float v30, v28, v6

    .line 260
    .restart local v30       #offsetY:F
    cmpg-float v6, v30, v28

    if-gez v6, :cond_f

    .line 261
    move/from16 v30, v28

    .line 262
    :cond_f
    sub-float v6, v30, v28

    const/4 v9, 0x3

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v0, v9, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v9

    neg-float v9, v9

    cmpg-float v6, v6, v9

    if-gez v6, :cond_10

    .line 263
    const/4 v6, 0x3

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v0, v6, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v6

    neg-float v6, v6

    add-float v27, v6, v28

    .line 264
    .local v27, ny:F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v6

    sub-float v6, v6, v28

    const/4 v9, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v0, v9, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v9

    sub-float v19, v6, v9

    .line 265
    .local v19, dy:F
    move/from16 v0, v30

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v6

    move/from16 v0, v27

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v30

    .line 267
    .end local v19           #dy:F
    .end local v27           #ny:F
    :cond_10
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->options:I

    const/high16 v9, 0x100

    and-int/2addr v6, v9

    if-eqz v6, :cond_17

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->maxCharacterLength:I

    if-lez v6, :cond_17

    .line 268
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->maxCharacterLength:I

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v37

    .line 269
    .local v37, textLen:I
    const/16 v31, 0x0

    .line 270
    .local v31, position:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->alignment:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_13

    .line 271
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->maxCharacterLength:I

    sub-int v31, v6, v37

    .line 274
    :cond_11
    :goto_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/itextpdf/text/pdf/TextField;->extraMarginLeft:F

    sub-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/itextpdf/text/pdf/TextField;->maxCharacterLength:I

    int-to-float v9, v9

    div-float v36, v6, v9

    .line 275
    .restart local v36       #step:F
    const/high16 v6, 0x4000

    div-float v6, v36, v6

    move/from16 v0, v31

    int-to-float v9, v0

    mul-float v9, v9, v36

    add-float v34, v6, v9

    .line 276
    .local v34, start:F
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->textColor:Lcom/itextpdf/text/BaseColor;

    if-nez v6, :cond_14

    .line 277
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfAppearance;->setGrayFill(F)V

    .line 280
    :goto_9
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->beginText()V

    .line 281
    const/16 v24, 0x0

    .local v24, k:I
    :goto_a
    invoke-virtual {v7}, Lcom/itextpdf/text/Phrase;->size()I

    move-result v6

    move/from16 v0, v24

    if-ge v0, v6, :cond_16

    .line 282
    move/from16 v0, v24

    invoke-virtual {v7, v0}, Lcom/itextpdf/text/Phrase;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/itextpdf/text/Chunk;

    .line 283
    .local v17, ck:Lcom/itextpdf/text/Chunk;
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/Chunk;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/text/Font;->getBaseFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v13

    .line 284
    .local v13, bf:Lcom/itextpdf/text/pdf/BaseFont;
    move/from16 v0, v39

    invoke-virtual {v5, v13, v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 285
    const-string v6, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/Chunk;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    .line 286
    .local v33, sb:Ljava/lang/StringBuffer;
    const/16 v23, 0x0

    .local v23, j:I
    :goto_b
    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    move/from16 v0, v23

    if-ge v0, v6, :cond_15

    .line 287
    add-int/lit8 v6, v23, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 288
    .local v16, c:Ljava/lang/String;
    move-object/from16 v0, v16

    move/from16 v1, v39

    invoke-virtual {v13, v0, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getWidthPoint(Ljava/lang/String;F)F

    move-result v40

    .line 289
    .restart local v40       #wd:F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->extraMarginLeft:F

    add-float v6, v6, v34

    const/high16 v9, 0x4000

    div-float v9, v40, v9

    sub-float/2addr v6, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/itextpdf/text/pdf/TextField;->extraMarginTop:F

    sub-float v9, v30, v9

    invoke-virtual {v5, v6, v9}, Lcom/itextpdf/text/pdf/PdfAppearance;->setTextMatrix(FF)V

    .line 290
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->showText(Ljava/lang/String;)V

    .line 291
    add-float v34, v34, v36

    .line 286
    add-int/lit8 v23, v23, 0x1

    goto :goto_b

    .line 254
    .end local v13           #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v16           #c:Ljava/lang/String;
    .end local v17           #ck:Lcom/itextpdf/text/Chunk;
    .end local v23           #j:I
    .end local v24           #k:I
    .end local v30           #offsetY:F
    .end local v31           #position:I
    .end local v33           #sb:Ljava/lang/StringBuffer;
    .end local v34           #start:F
    .end local v36           #step:F
    .end local v37           #textLen:I
    .restart local v26       #maxCalculatedSize:F
    :cond_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v6

    move-object/from16 v0, p0

    iget v9, v0, Lcom/itextpdf/text/pdf/TextField;->extraMarginLeft:F

    sub-float/2addr v6, v9

    const/high16 v9, 0x4080

    mul-float v9, v9, v29

    sub-float/2addr v6, v9

    div-float v6, v6, v40

    move/from16 v0, v26

    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v39

    goto/16 :goto_7

    .line 272
    .end local v26           #maxCalculatedSize:F
    .end local v40           #wd:F
    .restart local v30       #offsetY:F
    .restart local v31       #position:I
    .restart local v37       #textLen:I
    :cond_13
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->alignment:I

    const/4 v9, 0x1

    if-ne v6, v9, :cond_11

    .line 273
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->maxCharacterLength:I

    sub-int v6, v6, v37

    div-int/lit8 v31, v6, 0x2

    goto/16 :goto_8

    .line 279
    .restart local v34       #start:F
    .restart local v36       #step:F
    :cond_14
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->textColor:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfAppearance;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    goto/16 :goto_9

    .line 281
    .restart local v13       #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .restart local v17       #ck:Lcom/itextpdf/text/Chunk;
    .restart local v23       #j:I
    .restart local v24       #k:I
    .restart local v33       #sb:Ljava/lang/StringBuffer;
    :cond_15
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_a

    .line 294
    .end local v13           #bf:Lcom/itextpdf/text/pdf/BaseFont;
    .end local v17           #ck:Lcom/itextpdf/text/Chunk;
    .end local v23           #j:I
    .end local v33           #sb:Ljava/lang/StringBuffer;
    :cond_16
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->endText()V

    goto/16 :goto_6

    .line 298
    .end local v24           #k:I
    .end local v31           #position:I
    .end local v34           #start:F
    .end local v36           #step:F
    .end local v37           #textLen:I
    :cond_17
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->alignment:I

    packed-switch v6, :pswitch_data_0

    .line 306
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->extraMarginLeft:F

    const/high16 v9, 0x4000

    mul-float v9, v9, v29

    add-float v8, v6, v9

    .line 308
    .local v8, x:F
    :goto_c
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->alignment:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/itextpdf/text/pdf/TextField;->extraMarginTop:F

    sub-float v9, v30, v9

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lcom/itextpdf/text/pdf/ColumnText;->showTextAligned(Lcom/itextpdf/text/pdf/PdfContentByte;ILcom/itextpdf/text/Phrase;FFFII)V

    goto/16 :goto_6

    .line 300
    .end local v8           #x:F
    :pswitch_0
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->extraMarginLeft:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/itextpdf/text/pdf/TextField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v9}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v9

    add-float/2addr v6, v9

    const/high16 v9, 0x4000

    mul-float v9, v9, v29

    sub-float v8, v6, v9

    .line 301
    .restart local v8       #x:F
    goto :goto_c

    .line 303
    .end local v8           #x:F
    :pswitch_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->extraMarginLeft:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/itextpdf/text/pdf/TextField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v9}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float v8, v6, v9

    .line 304
    .restart local v8       #x:F
    goto :goto_c

    .line 298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getChoiceExports()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TextField;->choiceExports:[Ljava/lang/String;

    return-object v0
.end method

.method protected getChoiceField(Z)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 13
    .parameter "isList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 504
    iget v8, p0, Lcom/itextpdf/text/pdf/TextField;->options:I

    const v9, -0x1001001

    and-int/2addr v8, v9

    iput v8, p0, Lcom/itextpdf/text/pdf/TextField;->options:I

    .line 505
    iget-object v7, p0, Lcom/itextpdf/text/pdf/TextField;->choices:[Ljava/lang/String;

    .line 506
    .local v7, uchoices:[Ljava/lang/String;
    if-nez v7, :cond_0

    .line 507
    const/4 v8, 0x0

    new-array v7, v8, [Ljava/lang/String;

    .line 509
    :cond_0
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/TextField;->getTopChoice()I

    move-result v5

    .line 511
    .local v5, topChoice:I
    array-length v8, v7

    if-lez v8, :cond_1

    if-ltz v5, :cond_1

    .line 512
    aget-object v8, v7, v5

    iput-object v8, p0, Lcom/itextpdf/text/pdf/TextField;->text:Ljava/lang/String;

    .line 514
    :cond_1
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TextField;->text:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 515
    const-string v8, ""

    iput-object v8, p0, Lcom/itextpdf/text/pdf/TextField;->text:Ljava/lang/String;

    .line 517
    :cond_2
    const/4 v1, 0x0

    .line 518
    .local v1, field:Lcom/itextpdf/text/pdf/PdfFormField;
    const/4 v3, 0x0

    check-cast v3, [[Ljava/lang/String;

    .line 520
    .local v3, mix:[[Ljava/lang/String;
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TextField;->choiceExports:[Ljava/lang/String;

    if-nez v8, :cond_e

    .line 521
    if-eqz p1, :cond_c

    .line 522
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TextField;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-static {v8, v7, v5}, Lcom/itextpdf/text/pdf/PdfFormField;->createList(Lcom/itextpdf/text/pdf/PdfWriter;[Ljava/lang/String;I)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v1

    .line 540
    :goto_0
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TextField;->box:Lcom/itextpdf/text/Rectangle;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfAnnotation;->HIGHLIGHT_INVERT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8, v9}, Lcom/itextpdf/text/pdf/PdfFormField;->setWidget(Lcom/itextpdf/text/Rectangle;Lcom/itextpdf/text/pdf/PdfName;)V

    .line 541
    iget v8, p0, Lcom/itextpdf/text/pdf/TextField;->rotation:I

    if-eqz v8, :cond_3

    .line 542
    iget v8, p0, Lcom/itextpdf/text/pdf/TextField;->rotation:I

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfFormField;->setMKRotation(I)V

    .line 543
    :cond_3
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TextField;->fieldName:Ljava/lang/String;

    if-eqz v8, :cond_8

    .line 544
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TextField;->fieldName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldName(Ljava/lang/String;)V

    .line 545
    array-length v8, v7

    if-lez v8, :cond_4

    .line 546
    if-eqz v3, :cond_15

    .line 547
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TextField;->choiceSelections:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_14

    .line 548
    aget-object v8, v3, v5

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfFormField;->setValueAsString(Ljava/lang/String;)V

    .line 549
    aget-object v8, v3, v5

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfFormField;->setDefaultValueAsString(Ljava/lang/String;)V

    .line 562
    :cond_4
    :goto_1
    iget v8, p0, Lcom/itextpdf/text/pdf/TextField;->options:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_5

    .line 563
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldFlags(I)I

    .line 564
    :cond_5
    iget v8, p0, Lcom/itextpdf/text/pdf/TextField;->options:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_6

    .line 565
    const/4 v8, 0x2

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldFlags(I)I

    .line 566
    :cond_6
    iget v8, p0, Lcom/itextpdf/text/pdf/TextField;->options:I

    const/high16 v9, 0x40

    and-int/2addr v8, v9

    if-eqz v8, :cond_7

    .line 567
    const/high16 v8, 0x40

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldFlags(I)I

    .line 568
    :cond_7
    iget v8, p0, Lcom/itextpdf/text/pdf/TextField;->options:I

    const/high16 v9, 0x20

    and-int/2addr v8, v9

    if-eqz v8, :cond_8

    .line 569
    const/high16 v8, 0x20

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldFlags(I)I

    .line 572
    :cond_8
    new-instance v8, Lcom/itextpdf/text/pdf/PdfBorderDictionary;

    iget v9, p0, Lcom/itextpdf/text/pdf/TextField;->borderWidth:F

    iget v10, p0, Lcom/itextpdf/text/pdf/TextField;->borderStyle:I

    new-instance v11, Lcom/itextpdf/text/pdf/PdfDashPattern;

    const/high16 v12, 0x4040

    invoke-direct {v11, v12}, Lcom/itextpdf/text/pdf/PdfDashPattern;-><init>(F)V

    invoke-direct {v8, v9, v10, v11}, Lcom/itextpdf/text/pdf/PdfBorderDictionary;-><init>(FILcom/itextpdf/text/pdf/PdfDashPattern;)V

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfFormField;->setBorderStyle(Lcom/itextpdf/text/pdf/PdfBorderDictionary;)V

    .line 574
    if-eqz p1, :cond_17

    .line 575
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/TextField;->getListAppearance()Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v6

    .line 576
    .local v6, tp:Lcom/itextpdf/text/pdf/PdfAppearance;
    iget v8, p0, Lcom/itextpdf/text/pdf/TextField;->topFirst:I

    if-lez v8, :cond_9

    .line 577
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->TI:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v10, p0, Lcom/itextpdf/text/pdf/TextField;->topFirst:I

    invoke-direct {v9, v10}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v8, v9}, Lcom/itextpdf/text/pdf/PdfFormField;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 581
    :cond_9
    :goto_2
    sget-object v8, Lcom/itextpdf/text/pdf/PdfAnnotation;->APPEARANCE_NORMAL:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v8, v6}, Lcom/itextpdf/text/pdf/PdfFormField;->setAppearance(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 582
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfAppearance;->getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfAppearance;

    .line 583
    .local v0, da:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/TextField;->getRealFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v8

    iget v9, p0, Lcom/itextpdf/text/pdf/TextField;->fontSize:F

    invoke-virtual {v0, v8, v9}, Lcom/itextpdf/text/pdf/PdfAppearance;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 584
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TextField;->textColor:Lcom/itextpdf/text/BaseColor;

    if-nez v8, :cond_18

    .line 585
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfAppearance;->setGrayFill(F)V

    .line 588
    :goto_3
    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->setDefaultAppearanceString(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 589
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TextField;->borderColor:Lcom/itextpdf/text/BaseColor;

    if-eqz v8, :cond_a

    .line 590
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TextField;->borderColor:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfFormField;->setMKBorderColor(Lcom/itextpdf/text/BaseColor;)V

    .line 591
    :cond_a
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TextField;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    if-eqz v8, :cond_b

    .line 592
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TextField;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfFormField;->setMKBackgroundColor(Lcom/itextpdf/text/BaseColor;)V

    .line 593
    :cond_b
    iget v8, p0, Lcom/itextpdf/text/pdf/TextField;->visibility:I

    packed-switch v8, :pswitch_data_0

    .line 603
    const/4 v8, 0x4

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfFormField;->setFlags(I)V

    .line 606
    :goto_4
    :pswitch_0
    return-object v1

    .line 524
    .end local v0           #da:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v6           #tp:Lcom/itextpdf/text/pdf/PdfAppearance;
    :cond_c
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TextField;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget v8, p0, Lcom/itextpdf/text/pdf/TextField;->options:I

    const/high16 v10, 0x4

    and-int/2addr v8, v10

    if-eqz v8, :cond_d

    const/4 v8, 0x1

    :goto_5
    invoke-static {v9, v8, v7, v5}, Lcom/itextpdf/text/pdf/PdfFormField;->createCombo(Lcom/itextpdf/text/pdf/PdfWriter;Z[Ljava/lang/String;I)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v1

    goto/16 :goto_0

    :cond_d
    const/4 v8, 0x0

    goto :goto_5

    .line 527
    :cond_e
    array-length v8, v7

    const/4 v9, 0x2

    filled-new-array {v8, v9}, [I

    move-result-object v8

    const-class v9, Ljava/lang/String;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #mix:[[Ljava/lang/String;
    check-cast v3, [[Ljava/lang/String;

    .line 528
    .restart local v3       #mix:[[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_6
    array-length v8, v3

    if-ge v2, v8, :cond_f

    .line 529
    aget-object v8, v3, v2

    const/4 v9, 0x0

    aget-object v10, v3, v2

    const/4 v11, 0x1

    aget-object v12, v7, v2

    aput-object v12, v10, v11

    aput-object v12, v8, v9

    .line 528
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 530
    :cond_f
    array-length v8, v7

    iget-object v9, p0, Lcom/itextpdf/text/pdf/TextField;->choiceExports:[Ljava/lang/String;

    array-length v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 531
    .local v4, top:I
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v4, :cond_11

    .line 532
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TextField;->choiceExports:[Ljava/lang/String;

    aget-object v8, v8, v2

    if-eqz v8, :cond_10

    .line 533
    aget-object v8, v3, v2

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/itextpdf/text/pdf/TextField;->choiceExports:[Ljava/lang/String;

    aget-object v10, v10, v2

    aput-object v10, v8, v9

    .line 531
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 535
    :cond_11
    if-eqz p1, :cond_12

    .line 536
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TextField;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-static {v8, v3, v5}, Lcom/itextpdf/text/pdf/PdfFormField;->createList(Lcom/itextpdf/text/pdf/PdfWriter;[[Ljava/lang/String;I)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v1

    goto/16 :goto_0

    .line 538
    :cond_12
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TextField;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget v8, p0, Lcom/itextpdf/text/pdf/TextField;->options:I

    const/high16 v10, 0x4

    and-int/2addr v8, v10

    if-eqz v8, :cond_13

    const/4 v8, 0x1

    :goto_8
    invoke-static {v9, v8, v3, v5}, Lcom/itextpdf/text/pdf/PdfFormField;->createCombo(Lcom/itextpdf/text/pdf/PdfWriter;Z[[Ljava/lang/String;I)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v1

    goto/16 :goto_0

    :cond_13
    const/4 v8, 0x0

    goto :goto_8

    .line 551
    .end local v2           #k:I
    .end local v4           #top:I
    :cond_14
    invoke-direct {p0, v1, v3}, Lcom/itextpdf/text/pdf/TextField;->writeMultipleValues(Lcom/itextpdf/text/pdf/PdfFormField;[[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 554
    :cond_15
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TextField;->choiceSelections:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_16

    .line 555
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TextField;->text:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfFormField;->setValueAsString(Ljava/lang/String;)V

    .line 556
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TextField;->text:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfFormField;->setDefaultValueAsString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 558
    :cond_16
    const/4 v8, 0x0

    check-cast v8, [[Ljava/lang/String;

    invoke-direct {p0, v1, v8}, Lcom/itextpdf/text/pdf/TextField;->writeMultipleValues(Lcom/itextpdf/text/pdf/PdfFormField;[[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 580
    :cond_17
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/TextField;->getAppearance()Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v6

    .restart local v6       #tp:Lcom/itextpdf/text/pdf/PdfAppearance;
    goto/16 :goto_2

    .line 587
    .restart local v0       #da:Lcom/itextpdf/text/pdf/PdfAppearance;
    :cond_18
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TextField;->textColor:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfAppearance;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    goto/16 :goto_3

    .line 595
    :pswitch_1
    const/4 v8, 0x6

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfFormField;->setFlags(I)V

    goto/16 :goto_4

    .line 600
    :pswitch_2
    const/16 v8, 0x24

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfFormField;->setFlags(I)V

    goto/16 :goto_4

    .line 593
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getChoiceSelection()I
    .locals 1

    .prologue
    .line 682
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/TextField;->getTopChoice()I

    move-result v0

    return v0
.end method

.method public getChoiceSelections()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 692
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TextField;->choiceSelections:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChoices()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TextField;->choices:[Ljava/lang/String;

    return-object v0
.end method

.method public getComboField()Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 470
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/TextField;->getChoiceField(Z)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TextField;->defaultText:Ljava/lang/String;

    return-object v0
.end method

.method public getExtensionFont()Lcom/itextpdf/text/pdf/BaseFont;
    .locals 1

    .prologue
    .line 783
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TextField;->extensionFont:Lcom/itextpdf/text/pdf/BaseFont;

    return-object v0
.end method

.method getListAppearance()Lcom/itextpdf/text/pdf/PdfAppearance;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/TextField;->getBorderAppearance()Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v5

    .line 324
    .local v5, app:Lcom/itextpdf/text/pdf/PdfAppearance;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->choices:[Ljava/lang/String;

    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->choices:[Ljava/lang/String;

    array-length v6, v6

    if-nez v6, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-object v5

    .line 327
    :cond_1
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->beginVariableText()V

    .line 329
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/text/pdf/TextField;->getTopChoice()I

    move-result v26

    .line 331
    .local v26, topChoice:I
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/TextField;->getRealFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v27

    .line 332
    .local v27, ufont:Lcom/itextpdf/text/pdf/BaseFont;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/TextField;->fontSize:F

    move/from16 v28, v0

    .line 333
    .local v28, usize:F
    const/4 v6, 0x0

    cmpl-float v6, v28, v6

    if-nez v6, :cond_2

    .line 334
    const/high16 v28, 0x4140

    .line 336
    :cond_2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->borderStyle:I

    const/4 v10, 0x2

    if-eq v6, v10, :cond_3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->borderStyle:I

    const/4 v10, 0x3

    if-ne v6, v10, :cond_7

    :cond_3
    const/4 v13, 0x1

    .line 337
    .local v13, borderExtra:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/itextpdf/text/pdf/TextField;->borderWidth:F

    const/high16 v12, 0x4000

    mul-float/2addr v10, v12

    sub-float v18, v6, v10

    .line 338
    .local v18, h:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/TextField;->borderWidth:F

    move/from16 v23, v0

    .line 339
    .local v23, offsetX:F
    if-eqz v13, :cond_4

    .line 340
    move-object/from16 v0, p0

    iget v6, v0, Lcom/itextpdf/text/pdf/TextField;->borderWidth:F

    const/high16 v10, 0x4000

    mul-float/2addr v6, v10

    sub-float v18, v18, v6

    .line 341
    const/high16 v6, 0x4000

    mul-float v23, v23, v6

    .line 344
    :cond_4
    const/16 v6, 0x8

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v6

    const/4 v10, 0x6

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v10, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v10

    sub-float v21, v6, v10

    .line 345
    .local v21, leading:F
    div-float v6, v18, v21

    float-to-int v6, v6

    add-int/lit8 v22, v6, 0x1

    .line 346
    .local v22, maxFit:I
    const/16 v17, 0x0

    .line 347
    .local v17, first:I
    const/16 v20, 0x0

    .line 348
    .local v20, last:I
    move/from16 v17, v26

    .line 349
    add-int v20, v17, v22

    .line 350
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->choices:[Ljava/lang/String;

    array-length v6, v6

    move/from16 v0, v20

    if-le v0, v6, :cond_5

    .line 351
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->choices:[Ljava/lang/String;

    array-length v0, v6

    move/from16 v20, v0

    .line 352
    :cond_5
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/TextField;->topFirst:I

    .line 353
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->saveState()V

    .line 354
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v6}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v6

    const/high16 v10, 0x4000

    mul-float v10, v10, v23

    sub-float/2addr v6, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/itextpdf/text/pdf/TextField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v10}, Lcom/itextpdf/text/Rectangle;->getHeight()F

    move-result v10

    const/high16 v12, 0x4000

    mul-float v12, v12, v23

    sub-float/2addr v10, v12

    move/from16 v0, v23

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1, v6, v10}, Lcom/itextpdf/text/pdf/PdfAppearance;->rectangle(FFFF)V

    .line 355
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->clip()V

    .line 356
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->newPath()V

    .line 357
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->textColor:Lcom/itextpdf/text/BaseColor;

    if-nez v6, :cond_8

    sget-object v16, Lcom/itextpdf/text/pdf/GrayColor;->GRAYBLACK:Lcom/itextpdf/text/pdf/GrayColor;

    .line 361
    .local v16, fcolor:Lcom/itextpdf/text/BaseColor;
    :goto_2
    new-instance v6, Lcom/itextpdf/text/BaseColor;

    const/16 v10, 0xa

    const/16 v12, 0x24

    const/16 v29, 0x6a

    move/from16 v0, v29

    invoke-direct {v6, v10, v12, v0}, Lcom/itextpdf/text/BaseColor;-><init>(III)V

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfAppearance;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    .line 362
    const/4 v15, 0x0

    .local v15, curVal:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->choiceSelections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v15, v6, :cond_9

    .line 363
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->choiceSelections:Ljava/util/ArrayList;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 366
    .local v14, curChoice:I
    move/from16 v0, v17

    if-lt v14, v0, :cond_6

    move/from16 v0, v20

    if-gt v14, v0, :cond_6

    .line 367
    add-float v6, v23, v18

    sub-int v10, v14, v17

    add-int/lit8 v10, v10, 0x1

    int-to-float v10, v10

    mul-float v10, v10, v21

    sub-float/2addr v6, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/itextpdf/text/pdf/TextField;->box:Lcom/itextpdf/text/Rectangle;

    invoke-virtual {v10}, Lcom/itextpdf/text/Rectangle;->getWidth()F

    move-result v10

    const/high16 v12, 0x4000

    mul-float v12, v12, v23

    sub-float/2addr v10, v12

    move/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v5, v0, v6, v10, v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->rectangle(FFFF)V

    .line 368
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->fill()V

    .line 362
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 336
    .end local v13           #borderExtra:Z
    .end local v14           #curChoice:I
    .end local v15           #curVal:I
    .end local v16           #fcolor:Lcom/itextpdf/text/BaseColor;
    .end local v17           #first:I
    .end local v18           #h:F
    .end local v20           #last:I
    .end local v21           #leading:F
    .end local v22           #maxFit:I
    .end local v23           #offsetX:F
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 357
    .restart local v13       #borderExtra:Z
    .restart local v17       #first:I
    .restart local v18       #h:F
    .restart local v20       #last:I
    .restart local v21       #leading:F
    .restart local v22       #maxFit:I
    .restart local v23       #offsetX:F
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/TextField;->textColor:Lcom/itextpdf/text/BaseColor;

    move-object/from16 v16, v0

    goto :goto_2

    .line 371
    .restart local v15       #curVal:I
    .restart local v16       #fcolor:Lcom/itextpdf/text/BaseColor;
    :cond_9
    const/high16 v6, 0x4000

    mul-float v8, v23, v6

    .line 372
    .local v8, xp:F
    add-float v6, v23, v18

    const/16 v10, 0x8

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v0, v10, v1}, Lcom/itextpdf/text/pdf/BaseFont;->getFontDescriptor(IF)F

    move-result v10

    sub-float v9, v6, v10

    .line 373
    .local v9, yp:F
    move/from16 v19, v17

    .local v19, idx:I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    .line 374
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->choices:[Ljava/lang/String;

    aget-object v24, v6, v19

    .line 375
    .local v24, ptext:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/itextpdf/text/pdf/TextField;->checkRTL(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v11, 0x2

    .line 376
    .local v11, rtl:I
    :goto_5
    invoke-static/range {v24 .. v24}, Lcom/itextpdf/text/pdf/TextField;->removeCRLF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 378
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/itextpdf/text/pdf/TextField;->choiceSelections:Ljava/util/ArrayList;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    sget-object v25, Lcom/itextpdf/text/pdf/GrayColor;->GRAYWHITE:Lcom/itextpdf/text/pdf/GrayColor;

    .line 379
    .local v25, textCol:Lcom/itextpdf/text/BaseColor;
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move-object/from16 v3, v25

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/TextField;->composePhrase(Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;Lcom/itextpdf/text/BaseColor;F)Lcom/itextpdf/text/Phrase;

    move-result-object v7

    .line 380
    .local v7, phrase:Lcom/itextpdf/text/Phrase;
    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lcom/itextpdf/text/pdf/ColumnText;->showTextAligned(Lcom/itextpdf/text/pdf/PdfContentByte;ILcom/itextpdf/text/Phrase;FFFII)V

    .line 373
    add-int/lit8 v19, v19, 0x1

    sub-float v9, v9, v21

    goto :goto_4

    .line 375
    .end local v7           #phrase:Lcom/itextpdf/text/Phrase;
    .end local v11           #rtl:I
    .end local v25           #textCol:Lcom/itextpdf/text/BaseColor;
    :cond_a
    const/4 v11, 0x1

    goto :goto_5

    .restart local v11       #rtl:I
    :cond_b
    move-object/from16 v25, v16

    .line 378
    goto :goto_6

    .line 382
    .end local v11           #rtl:I
    .end local v24           #ptext:Ljava/lang/String;
    :cond_c
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->restoreState()V

    .line 383
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->endVariableText()V

    goto/16 :goto_0
.end method

.method public getListField()Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 480
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/TextField;->getChoiceField(Z)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v0

    return-object v0
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
    .line 760
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TextField;->substitutionFonts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTextField()Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/high16 v9, 0x10

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x100

    .line 394
    iget v3, p0, Lcom/itextpdf/text/pdf/TextField;->maxCharacterLength:I

    if-gtz v3, :cond_0

    .line 395
    iget v3, p0, Lcom/itextpdf/text/pdf/TextField;->options:I

    const v4, -0x1000001

    and-int/2addr v3, v4

    iput v3, p0, Lcom/itextpdf/text/pdf/TextField;->options:I

    .line 396
    :cond_0
    iget v3, p0, Lcom/itextpdf/text/pdf/TextField;->options:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    .line 397
    iget v3, p0, Lcom/itextpdf/text/pdf/TextField;->options:I

    and-int/lit16 v3, v3, -0x1001

    iput v3, p0, Lcom/itextpdf/text/pdf/TextField;->options:I

    .line 398
    :cond_1
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    iget v4, p0, Lcom/itextpdf/text/pdf/TextField;->maxCharacterLength:I

    invoke-static {v3, v6, v6, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->createTextField(Lcom/itextpdf/text/pdf/PdfWriter;ZZI)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v1

    .line 399
    .local v1, field:Lcom/itextpdf/text/pdf/PdfFormField;
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->box:Lcom/itextpdf/text/Rectangle;

    sget-object v4, Lcom/itextpdf/text/pdf/PdfAnnotation;->HIGHLIGHT_INVERT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->setWidget(Lcom/itextpdf/text/Rectangle;Lcom/itextpdf/text/pdf/PdfName;)V

    .line 400
    iget v3, p0, Lcom/itextpdf/text/pdf/TextField;->alignment:I

    packed-switch v3, :pswitch_data_0

    .line 408
    :goto_0
    iget v3, p0, Lcom/itextpdf/text/pdf/TextField;->rotation:I

    if-eqz v3, :cond_2

    .line 409
    iget v3, p0, Lcom/itextpdf/text/pdf/TextField;->rotation:I

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->setMKRotation(I)V

    .line 410
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->fieldName:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 411
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->fieldName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldName(Ljava/lang/String;)V

    .line 412
    const-string v3, ""

    iget-object v4, p0, Lcom/itextpdf/text/pdf/TextField;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 413
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->text:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->setValueAsString(Ljava/lang/String;)V

    .line 414
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->defaultText:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 415
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->defaultText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->setDefaultValueAsString(Ljava/lang/String;)V

    .line 416
    :cond_4
    iget v3, p0, Lcom/itextpdf/text/pdf/TextField;->options:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    .line 417
    invoke-virtual {v1, v7}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldFlags(I)I

    .line 418
    :cond_5
    iget v3, p0, Lcom/itextpdf/text/pdf/TextField;->options:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    .line 419
    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldFlags(I)I

    .line 420
    :cond_6
    iget v3, p0, Lcom/itextpdf/text/pdf/TextField;->options:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_7

    .line 421
    const/16 v3, 0x1000

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldFlags(I)I

    .line 422
    :cond_7
    iget v3, p0, Lcom/itextpdf/text/pdf/TextField;->options:I

    const/high16 v4, 0x80

    and-int/2addr v3, v4

    if-eqz v3, :cond_8

    .line 423
    const/high16 v3, 0x80

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldFlags(I)I

    .line 424
    :cond_8
    iget v3, p0, Lcom/itextpdf/text/pdf/TextField;->options:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_9

    .line 425
    const/16 v3, 0x2000

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldFlags(I)I

    .line 426
    :cond_9
    iget v3, p0, Lcom/itextpdf/text/pdf/TextField;->options:I

    and-int/2addr v3, v9

    if-eqz v3, :cond_a

    .line 427
    invoke-virtual {v1, v9}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldFlags(I)I

    .line 428
    :cond_a
    iget v3, p0, Lcom/itextpdf/text/pdf/TextField;->options:I

    const/high16 v4, 0x40

    and-int/2addr v3, v4

    if-eqz v3, :cond_b

    .line 429
    const/high16 v3, 0x40

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldFlags(I)I

    .line 430
    :cond_b
    iget v3, p0, Lcom/itextpdf/text/pdf/TextField;->options:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_c

    .line 431
    invoke-virtual {v1, v5}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldFlags(I)I

    .line 433
    :cond_c
    new-instance v3, Lcom/itextpdf/text/pdf/PdfBorderDictionary;

    iget v4, p0, Lcom/itextpdf/text/pdf/TextField;->borderWidth:F

    iget v5, p0, Lcom/itextpdf/text/pdf/TextField;->borderStyle:I

    new-instance v6, Lcom/itextpdf/text/pdf/PdfDashPattern;

    const/high16 v7, 0x4040

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfDashPattern;-><init>(F)V

    invoke-direct {v3, v4, v5, v6}, Lcom/itextpdf/text/pdf/PdfBorderDictionary;-><init>(FILcom/itextpdf/text/pdf/PdfDashPattern;)V

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->setBorderStyle(Lcom/itextpdf/text/pdf/PdfBorderDictionary;)V

    .line 434
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/TextField;->getAppearance()Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v2

    .line 435
    .local v2, tp:Lcom/itextpdf/text/pdf/PdfAppearance;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfAnnotation;->APPEARANCE_NORMAL:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v3, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->setAppearance(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 436
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfAppearance;->getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfAppearance;

    .line 437
    .local v0, da:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/TextField;->getRealFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v3

    iget v4, p0, Lcom/itextpdf/text/pdf/TextField;->fontSize:F

    invoke-virtual {v0, v3, v4}, Lcom/itextpdf/text/pdf/PdfAppearance;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 438
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->textColor:Lcom/itextpdf/text/BaseColor;

    if-nez v3, :cond_f

    .line 439
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfAppearance;->setGrayFill(F)V

    .line 442
    :goto_1
    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->setDefaultAppearanceString(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 443
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->borderColor:Lcom/itextpdf/text/BaseColor;

    if-eqz v3, :cond_d

    .line 444
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->borderColor:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->setMKBorderColor(Lcom/itextpdf/text/BaseColor;)V

    .line 445
    :cond_d
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    if-eqz v3, :cond_e

    .line 446
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->backgroundColor:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->setMKBackgroundColor(Lcom/itextpdf/text/BaseColor;)V

    .line 447
    :cond_e
    iget v3, p0, Lcom/itextpdf/text/pdf/TextField;->visibility:I

    packed-switch v3, :pswitch_data_1

    .line 457
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->setFlags(I)V

    .line 460
    :goto_2
    :pswitch_0
    return-object v1

    .line 402
    .end local v0           #da:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v2           #tp:Lcom/itextpdf/text/pdf/PdfAppearance;
    :pswitch_1
    invoke-virtual {v1, v7}, Lcom/itextpdf/text/pdf/PdfFormField;->setQuadding(I)V

    goto/16 :goto_0

    .line 405
    :pswitch_2
    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfFormField;->setQuadding(I)V

    goto/16 :goto_0

    .line 441
    .restart local v0       #da:Lcom/itextpdf/text/pdf/PdfAppearance;
    .restart local v2       #tp:Lcom/itextpdf/text/pdf/PdfAppearance;
    :cond_f
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TextField;->textColor:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfAppearance;->setColorFill(Lcom/itextpdf/text/BaseColor;)V

    goto :goto_1

    .line 449
    :pswitch_3
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->setFlags(I)V

    goto :goto_2

    .line 454
    :pswitch_4
    const/16 v3, 0x24

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->setFlags(I)V

    goto :goto_2

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 447
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method getTopFirst()I
    .locals 1

    .prologue
    .line 736
    iget v0, p0, Lcom/itextpdf/text/pdf/TextField;->topFirst:I

    return v0
.end method

.method public setChoiceExports([Ljava/lang/String;)V
    .locals 0
    .parameter "choiceExports"

    .prologue
    .line 674
    iput-object p1, p0, Lcom/itextpdf/text/pdf/TextField;->choiceExports:[Ljava/lang/String;

    .line 675
    return-void
.end method

.method public setChoiceSelection(I)V
    .locals 2
    .parameter "choiceSelection"

    .prologue
    .line 700
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/TextField;->choiceSelections:Ljava/util/ArrayList;

    .line 701
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TextField;->choiceSelections:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    return-void
.end method

.method public setChoiceSelections(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, selections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    .line 721
    if-eqz p1, :cond_0

    .line 722
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/TextField;->choiceSelections:Ljava/util/ArrayList;

    .line 723
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TextField;->choiceSelections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    iget v0, p0, Lcom/itextpdf/text/pdf/TextField;->options:I

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 725
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TextField;->choiceSelections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 726
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TextField;->choiceSelections:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TextField;->choiceSelections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 733
    :cond_1
    return-void
.end method

.method public setChoices([Ljava/lang/String;)V
    .locals 0
    .parameter "choices"

    .prologue
    .line 656
    iput-object p1, p0, Lcom/itextpdf/text/pdf/TextField;->choices:[Ljava/lang/String;

    .line 657
    return-void
.end method

.method public setDefaultText(Ljava/lang/String;)V
    .locals 0
    .parameter "defaultText"

    .prologue
    .line 640
    iput-object p1, p0, Lcom/itextpdf/text/pdf/TextField;->defaultText:Ljava/lang/String;

    .line 641
    return-void
.end method

.method public setExtensionFont(Lcom/itextpdf/text/pdf/BaseFont;)V
    .locals 0
    .parameter "extensionFont"

    .prologue
    .line 792
    iput-object p1, p0, Lcom/itextpdf/text/pdf/TextField;->extensionFont:Lcom/itextpdf/text/pdf/BaseFont;

    .line 793
    return-void
.end method

.method public setExtraMargin(FF)V
    .locals 0
    .parameter "extraMarginLeft"
    .parameter "extraMarginTop"

    .prologue
    .line 745
    iput p1, p0, Lcom/itextpdf/text/pdf/TextField;->extraMarginLeft:F

    .line 746
    iput p2, p0, Lcom/itextpdf/text/pdf/TextField;->extraMarginTop:F

    .line 747
    return-void
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
    .line 769
    .local p1, substitutionFonts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/BaseFont;>;"
    iput-object p1, p0, Lcom/itextpdf/text/pdf/TextField;->substitutionFonts:Ljava/util/ArrayList;

    .line 770
    return-void
.end method
