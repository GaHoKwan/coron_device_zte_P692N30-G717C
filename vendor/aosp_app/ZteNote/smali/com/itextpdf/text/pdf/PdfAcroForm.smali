.class public Lcom/itextpdf/text/pdf/PdfAcroForm;
.super Lcom/itextpdf/text/pdf/PdfDictionary;
.source "PdfAcroForm.java"


# instance fields
.field private calculationOrder:Lcom/itextpdf/text/pdf/PdfArray;

.field private documentFields:Lcom/itextpdf/text/pdf/PdfArray;

.field private fieldTemplates:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/itextpdf/text/pdf/PdfTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private sigFlags:I

.field private writer:Lcom/itextpdf/text/pdf/PdfWriter;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 1
    .parameter "writer"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->fieldTemplates:Ljava/util/HashSet;

    .line 65
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->documentFields:Lcom/itextpdf/text/pdf/PdfArray;

    .line 68
    new-instance v0, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->calculationOrder:Lcom/itextpdf/text/pdf/PdfArray;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->sigFlags:I

    .line 78
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    .line 79
    return-void
.end method


# virtual methods
.method public addCalculationOrder(Lcom/itextpdf/text/pdf/PdfFormField;)V
    .locals 2
    .parameter "formField"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->calculationOrder:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfFormField;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 136
    return-void
.end method

.method public addCheckBox(Ljava/lang/String;Ljava/lang/String;ZFFFF)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 9
    .parameter "name"
    .parameter "value"
    .parameter "status"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfFormField;->createCheckBox(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v1

    .local v1, field:Lcom/itextpdf/text/pdf/PdfFormField;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    .line 422
    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/text/pdf/PdfAcroForm;->setCheckBoxParams(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;Ljava/lang/String;ZFFFF)V

    move-object v0, p0

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    .line 423
    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfAcroForm;->drawCheckBoxAppearences(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;FFFF)V

    .line 424
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfAcroForm;->addFormField(Lcom/itextpdf/text/pdf/PdfFormField;)V

    .line 425
    return-object v1
.end method

.method public addComboBox(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLcom/itextpdf/text/pdf/BaseFont;FFFFF)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 9
    .parameter "name"
    .parameter "options"
    .parameter "defaultValue"
    .parameter "editable"
    .parameter "font"
    .parameter "fontSize"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v2, 0x0

    invoke-static {v0, p4, p2, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->createCombo(Lcom/itextpdf/text/pdf/PdfWriter;Z[Ljava/lang/String;I)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v1

    .local v1, choice:Lcom/itextpdf/text/pdf/PdfFormField;
    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    .line 614
    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/text/pdf/PdfAcroForm;->setChoiceParams(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;Ljava/lang/String;FFFF)V

    .line 615
    if-nez p3, :cond_0

    .line 616
    const/4 v0, 0x0

    aget-object p3, p2, v0

    :cond_0
    move-object v0, p0

    move-object v2, p3

    move-object v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    .line 618
    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/text/pdf/PdfAcroForm;->drawSingleLineOfText(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;FFFFF)V

    .line 619
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfAcroForm;->addFormField(Lcom/itextpdf/text/pdf/PdfFormField;)V

    .line 620
    return-object v1
.end method

.method public addComboBox(Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;ZLcom/itextpdf/text/pdf/BaseFont;FFFFF)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 15
    .parameter "name"
    .parameter "options"
    .parameter "defaultValue"
    .parameter "editable"
    .parameter "font"
    .parameter "fontSize"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 637
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v5, 0x0

    move/from16 v0, p4

    move-object/from16 v1, p2

    invoke-static {v2, v0, v1, v5}, Lcom/itextpdf/text/pdf/PdfFormField;->createCombo(Lcom/itextpdf/text/pdf/PdfWriter;Z[[Ljava/lang/String;I)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v3

    .local v3, choice:Lcom/itextpdf/text/pdf/PdfFormField;
    move-object v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    .line 638
    invoke-virtual/range {v2 .. v9}, Lcom/itextpdf/text/pdf/PdfAcroForm;->setChoiceParams(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;Ljava/lang/String;FFFF)V

    .line 639
    const/4 v4, 0x0

    .line 640
    .local v4, value:Ljava/lang/String;
    move-object/from16 v11, p2

    .local v11, arr$:[[Ljava/lang/String;
    array-length v13, v11

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_0
    if-ge v12, v13, :cond_0

    aget-object v14, v11, v12

    .line 641
    .local v14, option:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v14, v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 642
    const/4 v2, 0x1

    aget-object v4, v14, v2

    .line 646
    .end local v14           #option:[Ljava/lang/String;
    :cond_0
    if-nez v4, :cond_1

    .line 647
    const/4 v2, 0x0

    aget-object v2, p2, v2

    const/4 v5, 0x1

    aget-object v4, v2, v5

    :cond_1
    move-object v2, p0

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 649
    invoke-virtual/range {v2 .. v10}, Lcom/itextpdf/text/pdf/PdfAcroForm;->drawSingleLineOfText(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;FFFFF)V

    .line 650
    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfAcroForm;->addFormField(Lcom/itextpdf/text/pdf/PdfFormField;)V

    .line 651
    return-object v3

    .line 640
    .restart local v14       #option:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method

.method public addDocumentField(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V
    .locals 1
    .parameter "ref"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->documentFields:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 101
    return-void
.end method

.method public addFieldTemplates(Ljava/util/HashSet;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/itextpdf/text/pdf/PdfTemplate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, ft:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/itextpdf/text/pdf/PdfTemplate;>;"
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->fieldTemplates:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 92
    return-void
.end method

.method public addFormField(Lcom/itextpdf/text/pdf/PdfFormField;)V
    .locals 1
    .parameter "formField"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfWriter;->addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V

    .line 154
    return-void
.end method

.method public addHiddenField(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 257
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfFormField;->createEmpty(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v0

    .line 258
    .local v0, hidden:Lcom/itextpdf/text/pdf/PdfFormField;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldName(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfFormField;->setValueAsName(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfAcroForm;->addFormField(Lcom/itextpdf/text/pdf/PdfFormField;)V

    .line 261
    return-object v0
.end method

.method public addHtmlPostButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;FFFFF)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 19
    .parameter "name"
    .parameter "caption"
    .parameter "value"
    .parameter "url"
    .parameter "font"
    .parameter "fontSize"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 170
    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object/from16 v0, p4

    invoke-static {v0, v4, v5}, Lcom/itextpdf/text/pdf/PdfAction;->createSubmitForm(Ljava/lang/String;[Ljava/lang/Object;I)Lcom/itextpdf/text/pdf/PdfAction;

    move-result-object v9

    .line 171
    .local v9, action:Lcom/itextpdf/text/pdf/PdfAction;
    new-instance v3, Lcom/itextpdf/text/pdf/PdfFormField;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-direct/range {v3 .. v9}, Lcom/itextpdf/text/pdf/PdfFormField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V

    .line 172
    .local v3, button:Lcom/itextpdf/text/pdf/PdfFormField;
    const/high16 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/itextpdf/text/pdf/PdfAcroForm;->setButtonParams(Lcom/itextpdf/text/pdf/PdfFormField;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, p0

    move-object v11, v3

    move-object/from16 v12, p2

    move-object/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    move/from16 v18, p10

    .line 173
    invoke-virtual/range {v10 .. v18}, Lcom/itextpdf/text/pdf/PdfAcroForm;->drawButton(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;FFFFF)V

    .line 174
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfAcroForm;->addFormField(Lcom/itextpdf/text/pdf/PdfFormField;)V

    .line 175
    return-object v3
.end method

.method public addMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfContentByte;FFFF)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 8
    .parameter "name"
    .parameter "value"
    .parameter "url"
    .parameter "appearance"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 211
    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-static {p3, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;->createSubmitForm(Ljava/lang/String;[Ljava/lang/Object;I)Lcom/itextpdf/text/pdf/PdfAction;

    move-result-object v6

    .line 212
    .local v6, action:Lcom/itextpdf/text/pdf/PdfAction;
    new-instance v0, Lcom/itextpdf/text/pdf/PdfFormField;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move v2, p5

    move v3, p6

    move v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfFormField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V

    .line 213
    .local v0, button:Lcom/itextpdf/text/pdf/PdfFormField;
    const/high16 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/itextpdf/text/pdf/PdfAcroForm;->setButtonParams(Lcom/itextpdf/text/pdf/PdfFormField;ILjava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    sub-float v2, p7, p5

    sub-float v3, p8, p6

    invoke-static {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfAppearance;->createAppearance(Lcom/itextpdf/text/pdf/PdfWriter;FF)Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v7

    .line 215
    .local v7, pa:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-virtual {v7, p4}, Lcom/itextpdf/text/pdf/PdfAppearance;->add(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 216
    sget-object v1, Lcom/itextpdf/text/pdf/PdfAnnotation;->APPEARANCE_NORMAL:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v1, v7}, Lcom/itextpdf/text/pdf/PdfFormField;->setAppearance(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 217
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfAcroForm;->addFormField(Lcom/itextpdf/text/pdf/PdfFormField;)V

    .line 218
    return-object v0
.end method

.method public addMultiLineTextField(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;FFFFF)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 9
    .parameter "name"
    .parameter "text"
    .parameter "font"
    .parameter "fontSize"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->createTextField(Lcom/itextpdf/text/pdf/PdfWriter;ZZI)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v1

    .local v1, field:Lcom/itextpdf/text/pdf/PdfFormField;
    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 296
    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/text/pdf/PdfAcroForm;->setTextFieldParams(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;Ljava/lang/String;FFFF)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 297
    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/text/pdf/PdfAcroForm;->drawMultiLineOfText(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;FFFFF)V

    .line 298
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfAcroForm;->addFormField(Lcom/itextpdf/text/pdf/PdfFormField;)V

    .line 299
    return-object v1
.end method

.method public addRadioButton(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;FFFF)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 8
    .parameter "radiogroup"
    .parameter "value"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 520
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfFormField;->createEmpty(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v1

    .line 521
    .local v1, radio:Lcom/itextpdf/text/pdf/PdfFormField;
    new-instance v0, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v0, p3, p4, p5, p6}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    sget-object v2, Lcom/itextpdf/text/pdf/PdfAnnotation;->HIGHLIGHT_TOGGLE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v0, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->setWidget(Lcom/itextpdf/text/Rectangle;Lcom/itextpdf/text/pdf/PdfName;)V

    .line 522
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 523
    .local v7, name:Ljava/lang/String;
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {v1, p2}, Lcom/itextpdf/text/pdf/PdfFormField;->setAppearanceState(Ljava/lang/String;)V

    :goto_0
    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 529
    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfAcroForm;->drawRadioAppearences(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;FFFF)V

    .line 530
    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->addKid(Lcom/itextpdf/text/pdf/PdfFormField;)V

    .line 531
    return-object v1

    .line 527
    :cond_0
    const-string v0, "Off"

    invoke-virtual {v1, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->setAppearanceState(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addRadioGroup(Lcom/itextpdf/text/pdf/PdfFormField;)V
    .locals 0
    .parameter "radiogroup"

    .prologue
    .line 507
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfAcroForm;->addFormField(Lcom/itextpdf/text/pdf/PdfFormField;)V

    .line 508
    return-void
.end method

.method public addResetButton(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;FFFFF)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 19
    .parameter "name"
    .parameter "caption"
    .parameter "value"
    .parameter "font"
    .parameter "fontSize"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 191
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/itextpdf/text/pdf/PdfAction;->createResetForm([Ljava/lang/Object;I)Lcom/itextpdf/text/pdf/PdfAction;

    move-result-object v9

    .line 192
    .local v9, action:Lcom/itextpdf/text/pdf/PdfAction;
    new-instance v3, Lcom/itextpdf/text/pdf/PdfFormField;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v3 .. v9}, Lcom/itextpdf/text/pdf/PdfFormField;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V

    .line 193
    .local v3, button:Lcom/itextpdf/text/pdf/PdfFormField;
    const/high16 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/itextpdf/text/pdf/PdfAcroForm;->setButtonParams(Lcom/itextpdf/text/pdf/PdfFormField;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v10, p0

    move-object v11, v3

    move-object/from16 v12, p2

    move-object/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, p9

    .line 194
    invoke-virtual/range {v10 .. v18}, Lcom/itextpdf/text/pdf/PdfAcroForm;->drawButton(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;FFFFF)V

    .line 195
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfAcroForm;->addFormField(Lcom/itextpdf/text/pdf/PdfFormField;)V

    .line 196
    return-object v3
.end method

.method public addSelectList(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;FFFFF)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 15
    .parameter "name"
    .parameter "options"
    .parameter "defaultValue"
    .parameter "font"
    .parameter "fontSize"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 564
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-static {v1, v0, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->createList(Lcom/itextpdf/text/pdf/PdfWriter;[Ljava/lang/String;I)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v2

    .local v2, choice:Lcom/itextpdf/text/pdf/PdfFormField;
    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 565
    invoke-virtual/range {v1 .. v8}, Lcom/itextpdf/text/pdf/PdfAcroForm;->setChoiceParams(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;Ljava/lang/String;FFFF)V

    .line 566
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 567
    .local v14, text:Ljava/lang/StringBuffer;
    move-object/from16 v10, p2

    .local v10, arr$:[Ljava/lang/String;
    array-length v12, v10

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v12, :cond_0

    aget-object v13, v10, v11

    .line 568
    .local v13, option:Ljava/lang/String;
    invoke-virtual {v14, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 567
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 570
    .end local v13           #option:Ljava/lang/String;
    :cond_0
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/text/pdf/PdfAcroForm;->drawMultiLineOfText(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;FFFFF)V

    .line 571
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfAcroForm;->addFormField(Lcom/itextpdf/text/pdf/PdfFormField;)V

    .line 572
    return-object v2
.end method

.method public addSelectList(Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;FFFFF)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 15
    .parameter "name"
    .parameter "options"
    .parameter "defaultValue"
    .parameter "font"
    .parameter "fontSize"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 588
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-static {v1, v0, v3}, Lcom/itextpdf/text/pdf/PdfFormField;->createList(Lcom/itextpdf/text/pdf/PdfWriter;[[Ljava/lang/String;I)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v2

    .local v2, choice:Lcom/itextpdf/text/pdf/PdfFormField;
    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    .line 589
    invoke-virtual/range {v1 .. v8}, Lcom/itextpdf/text/pdf/PdfAcroForm;->setChoiceParams(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;Ljava/lang/String;FFFF)V

    .line 590
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    .line 591
    .local v14, text:Ljava/lang/StringBuffer;
    move-object/from16 v10, p2

    .local v10, arr$:[[Ljava/lang/String;
    array-length v12, v10

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_0
    if-ge v11, v12, :cond_0

    aget-object v13, v10, v11

    .line 592
    .local v13, option:[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v13, v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 591
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 594
    .end local v13           #option:[Ljava/lang/String;
    :cond_0
    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v1 .. v9}, Lcom/itextpdf/text/pdf/PdfAcroForm;->drawMultiLineOfText(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;FFFFF)V

    .line 595
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/PdfAcroForm;->addFormField(Lcom/itextpdf/text/pdf/PdfFormField;)V

    .line 596
    return-object v2
.end method

.method public addSignature(Ljava/lang/String;FFFF)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 7
    .parameter "name"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 685
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-static {v0}, Lcom/itextpdf/text/pdf/PdfFormField;->createSignature(Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v1

    .local v1, signature:Lcom/itextpdf/text/pdf/PdfFormField;
    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 686
    invoke-virtual/range {v0 .. v6}, Lcom/itextpdf/text/pdf/PdfAcroForm;->setSignatureParams(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;FFFF)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 687
    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfAcroForm;->drawSignatureAppearences(Lcom/itextpdf/text/pdf/PdfFormField;FFFF)V

    .line 688
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfAcroForm;->addFormField(Lcom/itextpdf/text/pdf/PdfFormField;)V

    .line 689
    return-object v1
.end method

.method public addSingleLinePasswordField(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;FFFFF)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 9
    .parameter "name"
    .parameter "text"
    .parameter "font"
    .parameter "fontSize"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->createTextField(Lcom/itextpdf/text/pdf/PdfWriter;ZZI)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v1

    .local v1, field:Lcom/itextpdf/text/pdf/PdfFormField;
    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 315
    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/text/pdf/PdfAcroForm;->setTextFieldParams(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;Ljava/lang/String;FFFF)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 316
    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/text/pdf/PdfAcroForm;->drawSingleLineOfText(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;FFFFF)V

    .line 317
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfAcroForm;->addFormField(Lcom/itextpdf/text/pdf/PdfFormField;)V

    .line 318
    return-object v1
.end method

.method public addSingleLineTextField(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;FFFFF)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 9
    .parameter "name"
    .parameter "text"
    .parameter "font"
    .parameter "fontSize"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->createTextField(Lcom/itextpdf/text/pdf/PdfWriter;ZZI)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v1

    .local v1, field:Lcom/itextpdf/text/pdf/PdfFormField;
    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    .line 277
    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/text/pdf/PdfAcroForm;->setTextFieldParams(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;Ljava/lang/String;FFFF)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 278
    invoke-virtual/range {v0 .. v8}, Lcom/itextpdf/text/pdf/PdfAcroForm;->drawSingleLineOfText(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;FFFFF)V

    .line 279
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfAcroForm;->addFormField(Lcom/itextpdf/text/pdf/PdfFormField;)V

    .line 280
    return-object v1
.end method

.method public drawButton(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;FFFFF)V
    .locals 8
    .parameter "button"
    .parameter "caption"
    .parameter "font"
    .parameter "fontSize"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 246
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    sub-float v2, p7, p5

    sub-float v3, p8, p6

    invoke-static {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfAppearance;->createAppearance(Lcom/itextpdf/text/pdf/PdfWriter;FF)Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v0

    .line 247
    .local v0, pa:Lcom/itextpdf/text/pdf/PdfAppearance;
    const/4 v1, 0x0

    const/4 v2, 0x0

    sub-float v3, p7, p5

    sub-float v4, p8, p6

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/text/pdf/PdfAppearance;->drawButton(FFFFLjava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 248
    sget-object v1, Lcom/itextpdf/text/pdf/PdfAnnotation;->APPEARANCE_NORMAL:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v1, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->setAppearance(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 249
    return-void
.end method

.method public drawCheckBoxAppearences(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;FFFF)V
    .locals 11
    .parameter "field"
    .parameter "value"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 463
    const/4 v7, 0x0

    .line 465
    .local v7, font:Lcom/itextpdf/text/pdf/BaseFont;
    :try_start_0
    const-string v1, "ZapfDingbats"

    const-string v2, "Cp1252"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 470
    sub-float v8, p6, p4

    .line 471
    .local v8, size:F
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    sub-float v2, p5, p3

    sub-float v3, p6, p4

    invoke-static {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfAppearance;->createAppearance(Lcom/itextpdf/text/pdf/PdfWriter;FF)Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v0

    .line 472
    .local v0, tpOn:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/text/pdf/PdfAppearance;

    .line 473
    .local v9, tp2:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-virtual {v9, v7, v8}, Lcom/itextpdf/text/pdf/PdfAppearance;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 474
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfAppearance;->resetRGBColorFill()V

    .line 475
    invoke-virtual {p1, v9}, Lcom/itextpdf/text/pdf/PdfFormField;->setDefaultAppearanceString(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 476
    const/4 v1, 0x0

    const/4 v2, 0x0

    sub-float v3, p5, p3

    sub-float v4, p6, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfAppearance;->drawTextField(FFFF)V

    .line 477
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->saveState()V

    .line 478
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->resetRGBColorFill()V

    .line 479
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->beginText()V

    .line 480
    invoke-virtual {v0, v7, v8}, Lcom/itextpdf/text/pdf/PdfAppearance;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 481
    const/4 v1, 0x1

    const-string v2, "4"

    sub-float v3, p5, p3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sub-float v4, p6, p4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    const v5, 0x3e99999a

    mul-float/2addr v5, v8

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->showTextAligned(ILjava/lang/String;FFF)V

    .line 482
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->endText()V

    .line 483
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->restoreState()V

    .line 484
    sget-object v1, Lcom/itextpdf/text/pdf/PdfAnnotation;->APPEARANCE_NORMAL:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v1, p2, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->setAppearance(Lcom/itextpdf/text/pdf/PdfName;Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 485
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    sub-float v2, p5, p3

    sub-float v3, p6, p4

    invoke-static {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfAppearance;->createAppearance(Lcom/itextpdf/text/pdf/PdfWriter;FF)Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v10

    .line 486
    .local v10, tpOff:Lcom/itextpdf/text/pdf/PdfAppearance;
    const/4 v1, 0x0

    const/4 v2, 0x0

    sub-float v3, p5, p3

    sub-float v4, p6, p4

    invoke-virtual {v10, v1, v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfAppearance;->drawTextField(FFFF)V

    .line 487
    sget-object v1, Lcom/itextpdf/text/pdf/PdfAnnotation;->APPEARANCE_NORMAL:Lcom/itextpdf/text/pdf/PdfName;

    const-string v2, "Off"

    invoke-virtual {p1, v1, v2, v10}, Lcom/itextpdf/text/pdf/PdfFormField;->setAppearance(Lcom/itextpdf/text/pdf/PdfName;Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 488
    return-void

    .line 467
    .end local v0           #tpOn:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v8           #size:F
    .end local v9           #tp2:Lcom/itextpdf/text/pdf/PdfAppearance;
    .end local v10           #tpOff:Lcom/itextpdf/text/pdf/PdfAppearance;
    :catch_0
    move-exception v6

    .line 468
    .local v6, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v6}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public drawMultiLineOfText(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;FFFFF)V
    .locals 9
    .parameter "field"
    .parameter "text"
    .parameter "font"
    .parameter "fontSize"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 383
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    sub-float v2, p7, p5

    sub-float v3, p8, p6

    invoke-static {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfAppearance;->createAppearance(Lcom/itextpdf/text/pdf/PdfWriter;FF)Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v0

    .line 384
    .local v0, tp:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/text/pdf/PdfAppearance;

    .line 385
    .local v7, tp2:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-virtual {v7, p3, p4}, Lcom/itextpdf/text/pdf/PdfAppearance;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 386
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfAppearance;->resetRGBColorFill()V

    .line 387
    invoke-virtual {p1, v7}, Lcom/itextpdf/text/pdf/PdfFormField;->setDefaultAppearanceString(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 388
    const/4 v1, 0x0

    const/4 v2, 0x0

    sub-float v3, p7, p5

    sub-float v5, p8, p6

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->drawTextField(FFFF)V

    .line 389
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->beginVariableText()V

    .line 390
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->saveState()V

    .line 391
    const/high16 v1, 0x4040

    const/high16 v2, 0x4040

    sub-float v3, p7, p5

    const/high16 v5, 0x40c0

    sub-float/2addr v3, v5

    sub-float v5, p8, p6

    const/high16 v8, 0x40c0

    sub-float/2addr v5, v8

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->rectangle(FFFF)V

    .line 392
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->clip()V

    .line 393
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->newPath()V

    .line 394
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->beginText()V

    .line 395
    invoke-virtual {v0, p3, p4}, Lcom/itextpdf/text/pdf/PdfAppearance;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 396
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->resetRGBColorFill()V

    .line 397
    const/high16 v1, 0x4080

    const/high16 v2, 0x40a0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfAppearance;->setTextMatrix(FF)V

    .line 398
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v1, "\n"

    invoke-direct {v6, p2, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .local v6, tokenizer:Ljava/util/StringTokenizer;
    sub-float v4, p8, p6

    .line 400
    .local v4, yPos:F
    :goto_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    const v1, 0x3f99999a

    mul-float/2addr v1, p4

    sub-float/2addr v4, v1

    .line 402
    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x4040

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->showTextAligned(ILjava/lang/String;FFF)V

    goto :goto_0

    .line 404
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->endText()V

    .line 405
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->restoreState()V

    .line 406
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->endVariableText()V

    .line 407
    sget-object v1, Lcom/itextpdf/text/pdf/PdfAnnotation;->APPEARANCE_NORMAL:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v1, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->setAppearance(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 408
    return-void
.end method

.method public drawRadioAppearences(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;FFFF)V
    .locals 8
    .parameter "field"
    .parameter "value"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    const/4 v1, 0x0

    .line 543
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    sub-float v4, p5, p3

    sub-float v5, p6, p4

    invoke-static {v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->createAppearance(Lcom/itextpdf/text/pdf/PdfWriter;FF)Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v0

    .line 544
    .local v0, tpOn:Lcom/itextpdf/text/pdf/PdfAppearance;
    sub-float v3, p5, p3

    sub-float v4, p6, p4

    const/4 v5, 0x1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->drawRadioField(FFFFZ)V

    .line 545
    sget-object v3, Lcom/itextpdf/text/pdf/PdfAnnotation;->APPEARANCE_NORMAL:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v3, p2, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->setAppearance(Lcom/itextpdf/text/pdf/PdfName;Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 546
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    sub-float v4, p5, p3

    sub-float v5, p6, p4

    invoke-static {v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->createAppearance(Lcom/itextpdf/text/pdf/PdfWriter;FF)Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v2

    .line 547
    .local v2, tpOff:Lcom/itextpdf/text/pdf/PdfAppearance;
    sub-float v5, p5, p3

    sub-float v6, p6, p4

    const/4 v7, 0x0

    move v3, v1

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Lcom/itextpdf/text/pdf/PdfAppearance;->drawRadioField(FFFFZ)V

    .line 548
    sget-object v1, Lcom/itextpdf/text/pdf/PdfAnnotation;->APPEARANCE_NORMAL:Lcom/itextpdf/text/pdf/PdfName;

    const-string v3, "Off"

    invoke-virtual {p1, v1, v3, v2}, Lcom/itextpdf/text/pdf/PdfFormField;->setAppearance(Lcom/itextpdf/text/pdf/PdfName;Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 549
    return-void
.end method

.method public drawSignatureAppearences(Lcom/itextpdf/text/pdf/PdfFormField;FFFF)V
    .locals 8
    .parameter "field"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    const/high16 v7, 0x4000

    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    const/high16 v4, 0x3f00

    .line 719
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    sub-float v2, p4, p2

    sub-float v3, p5, p3

    invoke-static {v1, v2, v3}, Lcom/itextpdf/text/pdf/PdfAppearance;->createAppearance(Lcom/itextpdf/text/pdf/PdfWriter;FF)Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v0

    .line 720
    .local v0, tp:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->setGrayFill(F)V

    .line 721
    sub-float v1, p4, p2

    sub-float v2, p5, p3

    invoke-virtual {v0, v6, v6, v1, v2}, Lcom/itextpdf/text/pdf/PdfAppearance;->rectangle(FFFF)V

    .line 722
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->fill()V

    .line 723
    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfAppearance;->setGrayStroke(F)V

    .line 724
    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->setLineWidth(F)V

    .line 725
    sub-float v1, p4, p2

    sub-float/2addr v1, v4

    sub-float v2, p5, p3

    sub-float/2addr v2, v4

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/itextpdf/text/pdf/PdfAppearance;->rectangle(FFFF)V

    .line 726
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->closePathStroke()V

    .line 727
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->saveState()V

    .line 728
    sub-float v1, p4, p2

    sub-float/2addr v1, v7

    sub-float v2, p5, p3

    sub-float/2addr v2, v7

    invoke-virtual {v0, v5, v5, v1, v2}, Lcom/itextpdf/text/pdf/PdfAppearance;->rectangle(FFFF)V

    .line 729
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->clip()V

    .line 730
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->newPath()V

    .line 731
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->restoreState()V

    .line 732
    sget-object v1, Lcom/itextpdf/text/pdf/PdfAnnotation;->APPEARANCE_NORMAL:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v1, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->setAppearance(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 733
    return-void
.end method

.method public drawSingleLineOfText(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;FFFFF)V
    .locals 7
    .parameter "field"
    .parameter "text"
    .parameter "font"
    .parameter "fontSize"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 350
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    sub-float v3, p7, p5

    sub-float v4, p8, p6

    invoke-static {v2, v3, v4}, Lcom/itextpdf/text/pdf/PdfAppearance;->createAppearance(Lcom/itextpdf/text/pdf/PdfWriter;FF)Lcom/itextpdf/text/pdf/PdfAppearance;

    move-result-object v0

    .line 351
    .local v0, tp:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->getDuplicate()Lcom/itextpdf/text/pdf/PdfContentByte;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfAppearance;

    .line 352
    .local v1, tp2:Lcom/itextpdf/text/pdf/PdfAppearance;
    invoke-virtual {v1, p3, p4}, Lcom/itextpdf/text/pdf/PdfAppearance;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 353
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfAppearance;->resetRGBColorFill()V

    .line 354
    invoke-virtual {p1, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->setDefaultAppearanceString(Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 355
    const/4 v2, 0x0

    const/4 v3, 0x0

    sub-float v4, p7, p5

    sub-float v5, p8, p6

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->drawTextField(FFFF)V

    .line 356
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->beginVariableText()V

    .line 357
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->saveState()V

    .line 358
    const/high16 v2, 0x4040

    const/high16 v3, 0x4040

    sub-float v4, p7, p5

    const/high16 v5, 0x40c0

    sub-float/2addr v4, v5

    sub-float v5, p8, p6

    const/high16 v6, 0x40c0

    sub-float/2addr v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/itextpdf/text/pdf/PdfAppearance;->rectangle(FFFF)V

    .line 359
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->clip()V

    .line 360
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->newPath()V

    .line 361
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->beginText()V

    .line 362
    invoke-virtual {v0, p3, p4}, Lcom/itextpdf/text/pdf/PdfAppearance;->setFontAndSize(Lcom/itextpdf/text/pdf/BaseFont;F)V

    .line 363
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->resetRGBColorFill()V

    .line 364
    const/high16 v2, 0x4080

    sub-float v3, p8, p6

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    const v4, 0x3e99999a

    mul-float/2addr v4, p4

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfAppearance;->setTextMatrix(FF)V

    .line 365
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfAppearance;->showText(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->endText()V

    .line 367
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->restoreState()V

    .line 368
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAppearance;->endVariableText()V

    .line 369
    sget-object v2, Lcom/itextpdf/text/pdf/PdfAnnotation;->APPEARANCE_NORMAL:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v2, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->setAppearance(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 370
    return-void
.end method

.method public getRadioGroup(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/PdfFormField;
    .locals 2
    .parameter "name"
    .parameter "defaultValue"
    .parameter "noToggleToOff"

    .prologue
    .line 497
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-static {v1, p3}, Lcom/itextpdf/text/pdf/PdfFormField;->createRadioButton(Lcom/itextpdf/text/pdf/PdfWriter;Z)Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v0

    .line 498
    .local v0, radio:Lcom/itextpdf/text/pdf/PdfFormField;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldName(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0, p2}, Lcom/itextpdf/text/pdf/PdfFormField;->setValueAsName(Ljava/lang/String;)V

    .line 500
    return-object v0
.end method

.method public isValid()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 109
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->documentFields:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 126
    :goto_0
    return v4

    .line 110
    :cond_0
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->FIELDS:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->documentFields:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {p0, v4, v6}, Lcom/itextpdf/text/pdf/PdfAcroForm;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 111
    iget v4, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->sigFlags:I

    if-eqz v4, :cond_1

    .line 112
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->SIGFLAGS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v7, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->sigFlags:I

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v4, v6}, Lcom/itextpdf/text/pdf/PdfAcroForm;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 113
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->calculationOrder:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 114
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->CO:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->calculationOrder:Lcom/itextpdf/text/pdf/PdfArray;

    invoke-virtual {p0, v4, v6}, Lcom/itextpdf/text/pdf/PdfAcroForm;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 115
    :cond_2
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->fieldTemplates:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    goto :goto_0

    .line 116
    :cond_3
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 117
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->fieldTemplates:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfTemplate;

    .line 118
    .local v3, template:Lcom/itextpdf/text/pdf/PdfTemplate;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfTemplate;->getResources()Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-static {v0, v4}, Lcom/itextpdf/text/pdf/PdfFormField;->mergeResources(Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    goto :goto_1

    .line 120
    .end local v3           #template:Lcom/itextpdf/text/pdf/PdfTemplate;
    :cond_4
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->DR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v4, v0}, Lcom/itextpdf/text/pdf/PdfAcroForm;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 121
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->DA:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v6, Lcom/itextpdf/text/pdf/PdfString;

    const-string v7, "/Helv 0 Tf 0 g "

    invoke-direct {v6, v7}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v6}, Lcom/itextpdf/text/pdf/PdfAcroForm;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 122
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 123
    .local v1, fonts:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v1, :cond_5

    .line 124
    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->writer:Lcom/itextpdf/text/pdf/PdfWriter;

    invoke-virtual {v4, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->eliminateFontSubset(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    :cond_5
    move v4, v5

    .line 126
    goto :goto_0
.end method

.method public setButtonParams(Lcom/itextpdf/text/pdf/PdfFormField;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "button"
    .parameter "characteristics"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 228
    invoke-virtual {p1, p2}, Lcom/itextpdf/text/pdf/PdfFormField;->setButton(I)V

    .line 229
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->setFlags(I)V

    .line 230
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfFormField;->setPage()V

    .line 231
    invoke-virtual {p1, p3}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldName(Ljava/lang/String;)V

    .line 232
    if-eqz p4, :cond_0

    invoke-virtual {p1, p4}, Lcom/itextpdf/text/pdf/PdfFormField;->setValueAsString(Ljava/lang/String;)V

    .line 233
    :cond_0
    return-void
.end method

.method public setCheckBoxParams(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;Ljava/lang/String;ZFFFF)V
    .locals 3
    .parameter "field"
    .parameter "name"
    .parameter "value"
    .parameter "status"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 439
    new-instance v0, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v0, p5, p6, p7, p8}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    sget-object v1, Lcom/itextpdf/text/pdf/PdfAnnotation;->HIGHLIGHT_TOGGLE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->setWidget(Lcom/itextpdf/text/Rectangle;Lcom/itextpdf/text/pdf/PdfName;)V

    .line 440
    invoke-virtual {p1, p2}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldName(Ljava/lang/String;)V

    .line 441
    if-eqz p4, :cond_0

    .line 442
    invoke-virtual {p1, p3}, Lcom/itextpdf/text/pdf/PdfFormField;->setValueAsName(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p1, p3}, Lcom/itextpdf/text/pdf/PdfFormField;->setAppearanceState(Ljava/lang/String;)V

    .line 449
    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->setFlags(I)V

    .line 450
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfFormField;->setPage()V

    .line 451
    new-instance v0, Lcom/itextpdf/text/pdf/PdfBorderDictionary;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfBorderDictionary;-><init>(FI)V

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->setBorderStyle(Lcom/itextpdf/text/pdf/PdfBorderDictionary;)V

    .line 452
    return-void

    .line 446
    :cond_0
    const-string v0, "Off"

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->setValueAsName(Ljava/lang/String;)V

    .line 447
    const-string v0, "Off"

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->setAppearanceState(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setChoiceParams(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;Ljava/lang/String;FFFF)V
    .locals 3
    .parameter "field"
    .parameter "name"
    .parameter "defaultValue"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 664
    new-instance v0, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v0, p4, p5, p6, p7}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    sget-object v1, Lcom/itextpdf/text/pdf/PdfAnnotation;->HIGHLIGHT_INVERT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->setWidget(Lcom/itextpdf/text/Rectangle;Lcom/itextpdf/text/pdf/PdfName;)V

    .line 665
    if-eqz p3, :cond_0

    .line 666
    invoke-virtual {p1, p3}, Lcom/itextpdf/text/pdf/PdfFormField;->setValueAsString(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p1, p3}, Lcom/itextpdf/text/pdf/PdfFormField;->setDefaultValueAsString(Ljava/lang/String;)V

    .line 669
    :cond_0
    invoke-virtual {p1, p2}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldName(Ljava/lang/String;)V

    .line 670
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->setFlags(I)V

    .line 671
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfFormField;->setPage()V

    .line 672
    new-instance v0, Lcom/itextpdf/text/pdf/PdfBorderDictionary;

    const/high16 v1, 0x4000

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfBorderDictionary;-><init>(FI)V

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->setBorderStyle(Lcom/itextpdf/text/pdf/PdfBorderDictionary;)V

    .line 673
    return-void
.end method

.method public setNeedAppearances(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 82
    sget-object v0, Lcom/itextpdf/text/pdf/PdfName;->NEEDAPPEARANCES:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-direct {v1, p1}, Lcom/itextpdf/text/pdf/PdfBoolean;-><init>(Z)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/text/pdf/PdfAcroForm;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 83
    return-void
.end method

.method public setSigFlags(I)V
    .locals 1
    .parameter "f"

    .prologue
    .line 144
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->sigFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/itextpdf/text/pdf/PdfAcroForm;->sigFlags:I

    .line 145
    return-void
.end method

.method public setSignatureParams(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;FFFF)V
    .locals 2
    .parameter "field"
    .parameter "name"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 702
    new-instance v0, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v0, p3, p4, p5, p6}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    sget-object v1, Lcom/itextpdf/text/pdf/PdfAnnotation;->HIGHLIGHT_INVERT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->setWidget(Lcom/itextpdf/text/Rectangle;Lcom/itextpdf/text/pdf/PdfName;)V

    .line 703
    invoke-virtual {p1, p2}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldName(Ljava/lang/String;)V

    .line 704
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->setFlags(I)V

    .line 705
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfFormField;->setPage()V

    .line 706
    sget-object v0, Lcom/itextpdf/text/BaseColor;->BLACK:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->setMKBorderColor(Lcom/itextpdf/text/BaseColor;)V

    .line 707
    sget-object v0, Lcom/itextpdf/text/BaseColor;->WHITE:Lcom/itextpdf/text/BaseColor;

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->setMKBackgroundColor(Lcom/itextpdf/text/BaseColor;)V

    .line 708
    return-void
.end method

.method public setTextFieldParams(Lcom/itextpdf/text/pdf/PdfFormField;Ljava/lang/String;Ljava/lang/String;FFFF)V
    .locals 2
    .parameter "field"
    .parameter "text"
    .parameter "name"
    .parameter "llx"
    .parameter "lly"
    .parameter "urx"
    .parameter "ury"

    .prologue
    .line 331
    new-instance v0, Lcom/itextpdf/text/Rectangle;

    invoke-direct {v0, p4, p5, p6, p7}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    sget-object v1, Lcom/itextpdf/text/pdf/PdfAnnotation;->HIGHLIGHT_INVERT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v0, v1}, Lcom/itextpdf/text/pdf/PdfFormField;->setWidget(Lcom/itextpdf/text/Rectangle;Lcom/itextpdf/text/pdf/PdfName;)V

    .line 332
    invoke-virtual {p1, p2}, Lcom/itextpdf/text/pdf/PdfFormField;->setValueAsString(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1, p2}, Lcom/itextpdf/text/pdf/PdfFormField;->setDefaultValueAsString(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1, p3}, Lcom/itextpdf/text/pdf/PdfFormField;->setFieldName(Ljava/lang/String;)V

    .line 335
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfFormField;->setFlags(I)V

    .line 336
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfFormField;->setPage()V

    .line 337
    return-void
.end method
