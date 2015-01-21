.class public Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;
.super Ljava/lang/Object;
.source "PdfAnnotationsImp.java"


# instance fields
.field protected acroForm:Lcom/itextpdf/text/pdf/PdfAcroForm;

.field protected annotations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field protected delayedAnnotations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/PdfAnnotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/PdfWriter;)V
    .locals 1
    .parameter "writer"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->delayedAnnotations:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Lcom/itextpdf/text/pdf/PdfAcroForm;

    invoke-direct {v0, p1}, Lcom/itextpdf/text/pdf/PdfAcroForm;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->acroForm:Lcom/itextpdf/text/pdf/PdfAcroForm;

    .line 89
    return-void
.end method

.method public static convertAnnotation(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Annotation;Lcom/itextpdf/text/Rectangle;)Lcom/itextpdf/text/pdf/PdfAnnotation;
    .locals 17
    .parameter "writer"
    .parameter "annot"
    .parameter "defaultRect"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->annotationType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 238
    new-instance v6, Lcom/itextpdf/text/pdf/PdfAnnotation;

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getLeft()F

    move-result v8

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getBottom()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v11

    new-instance v12, Lcom/itextpdf/text/pdf/PdfString;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->title()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnicodeBig"

    invoke-direct {v12, v1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v13, Lcom/itextpdf/text/pdf/PdfString;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->content()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UnicodeBig"

    invoke-direct {v13, v1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfString;Lcom/itextpdf/text/pdf/PdfString;)V

    :goto_0
    return-object v6

    .line 214
    :pswitch_0
    new-instance v1, Lcom/itextpdf/text/pdf/PdfAnnotation;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->llx()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->lly()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->urx()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->ury()F

    move-result v6

    new-instance v7, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->attributes()Ljava/util/HashMap;

    move-result-object v2

    const-string v8, "url"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    invoke-direct {v7, v2}, Lcom/itextpdf/text/pdf/PdfAction;-><init>(Ljava/net/URL;)V

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V

    move-object v6, v1

    goto :goto_0

    .line 216
    :pswitch_1
    new-instance v1, Lcom/itextpdf/text/pdf/PdfAnnotation;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->llx()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->lly()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->urx()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->ury()F

    move-result v6

    new-instance v7, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->attributes()Ljava/util/HashMap;

    move-result-object v2

    const-string v8, "file"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v7, v2}, Lcom/itextpdf/text/pdf/PdfAction;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V

    move-object v6, v1

    goto :goto_0

    .line 218
    :pswitch_2
    new-instance v1, Lcom/itextpdf/text/pdf/PdfAnnotation;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->llx()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->lly()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->urx()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->ury()F

    move-result v6

    new-instance v7, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->attributes()Ljava/util/HashMap;

    move-result-object v2

    const-string v8, "file"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->attributes()Ljava/util/HashMap;

    move-result-object v8

    const-string v9, "destination"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v2, v8}, Lcom/itextpdf/text/pdf/PdfAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V

    move-object v6, v1

    goto/16 :goto_0

    .line 220
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->attributes()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "parameters"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    move-object v15, v1

    check-cast v15, [Z

    .line 221
    .local v15, sparams:[Z
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->attributes()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 222
    .local v3, fname:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->attributes()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "mime"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 224
    .local v5, mimetype:Ljava/lang/String;
    const/4 v1, 0x0

    aget-boolean v1, v15, v1

    if-eqz v1, :cond_0

    .line 225
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v3, v1}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->fileEmbedded(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/lang/String;Ljava/lang/String;[B)Lcom/itextpdf/text/pdf/PdfFileSpecification;

    move-result-object v4

    .line 228
    .local v4, fs:Lcom/itextpdf/text/pdf/PdfFileSpecification;
    :goto_1
    new-instance v2, Lcom/itextpdf/text/Rectangle;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->llx()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->lly()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->urx()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->ury()F

    move-result v8

    invoke-direct {v2, v1, v6, v7, v8}, Lcom/itextpdf/text/Rectangle;-><init>(FFFF)V

    const/4 v1, 0x1

    aget-boolean v6, v15, v1

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/itextpdf/text/pdf/PdfAnnotation;->createScreen(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfFileSpecification;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/PdfAnnotation;

    move-result-object v14

    .local v14, ann:Lcom/itextpdf/text/pdf/PdfAnnotation;
    move-object v6, v14

    .line 230
    goto/16 :goto_0

    .line 227
    .end local v4           #fs:Lcom/itextpdf/text/pdf/PdfFileSpecification;
    .end local v14           #ann:Lcom/itextpdf/text/pdf/PdfAnnotation;
    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/itextpdf/text/pdf/PdfFileSpecification;->fileExtern(Lcom/itextpdf/text/pdf/PdfWriter;Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfFileSpecification;

    move-result-object v4

    .restart local v4       #fs:Lcom/itextpdf/text/pdf/PdfFileSpecification;
    goto :goto_1

    .line 232
    .end local v3           #fname:Ljava/lang/String;
    .end local v4           #fs:Lcom/itextpdf/text/pdf/PdfFileSpecification;
    .end local v5           #mimetype:Ljava/lang/String;
    .end local v15           #sparams:[Z
    :pswitch_4
    new-instance v6, Lcom/itextpdf/text/pdf/PdfAnnotation;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->llx()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->lly()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->urx()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->ury()F

    move-result v11

    new-instance v12, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->attributes()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->attributes()Ljava/util/HashMap;

    move-result-object v2

    const-string v7, "page"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v12, v1, v2}, Lcom/itextpdf/text/pdf/PdfAction;-><init>(Ljava/lang/String;I)V

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V

    goto/16 :goto_0

    .line 234
    :pswitch_5
    new-instance v6, Lcom/itextpdf/text/pdf/PdfAnnotation;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->llx()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->lly()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->urx()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->ury()F

    move-result v11

    new-instance v12, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->attributes()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "named"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v12, v1}, Lcom/itextpdf/text/pdf/PdfAction;-><init>(I)V

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V

    goto/16 :goto_0

    .line 236
    :pswitch_6
    new-instance v6, Lcom/itextpdf/text/pdf/PdfAnnotation;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->llx()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->lly()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->urx()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->ury()F

    move-result v11

    new-instance v12, Lcom/itextpdf/text/pdf/PdfAction;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->attributes()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "application"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->attributes()Ljava/util/HashMap;

    move-result-object v2

    const-string v7, "parameters"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->attributes()Ljava/util/HashMap;

    move-result-object v7

    const-string v13, "operation"

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Annotation;->attributes()Ljava/util/HashMap;

    move-result-object v13

    const-string v16, "defaultdir"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {v12, v1, v2, v7, v13}, Lcom/itextpdf/text/pdf/PdfAction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/itextpdf/text/pdf/PdfAnnotation;-><init>(Lcom/itextpdf/text/pdf/PdfWriter;FFFFLcom/itextpdf/text/pdf/PdfAction;)V

    goto/16 :goto_0

    .line 212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V
    .locals 2
    .parameter "annot"

    .prologue
    .line 115
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isForm()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 116
    check-cast v0, Lcom/itextpdf/text/pdf/PdfFormField;

    .line 117
    .local v0, field:Lcom/itextpdf/text/pdf/PdfFormField;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfFormField;->getParent()Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v1

    if-nez v1, :cond_0

    .line 118
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->addFormFieldRaw(Lcom/itextpdf/text/pdf/PdfFormField;)V

    .line 122
    .end local v0           #field:Lcom/itextpdf/text/pdf/PdfFormField;
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addCalculationOrder(Lcom/itextpdf/text/pdf/PdfFormField;)V
    .locals 1
    .parameter "formField"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->acroForm:Lcom/itextpdf/text/pdf/PdfAcroForm;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfAcroForm;->addCalculationOrder(Lcom/itextpdf/text/pdf/PdfFormField;)V

    .line 112
    return-void
.end method

.method addFormFieldRaw(Lcom/itextpdf/text/pdf/PdfFormField;)V
    .locals 3
    .parameter "field"

    .prologue
    .line 129
    iget-object v2, p0, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfFormField;->getKids()Ljava/util/ArrayList;

    move-result-object v1

    .line 131
    .local v1, kids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/itextpdf/text/pdf/PdfFormField;>;"
    if-eqz v1, :cond_0

    .line 132
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 133
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfFormField;

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->addFormFieldRaw(Lcom/itextpdf/text/pdf/PdfFormField;)V

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v0           #k:I
    :cond_0
    return-void
.end method

.method public addPlainAnnotation(Lcom/itextpdf/text/pdf/PdfAnnotation;)V
    .locals 1
    .parameter "annot"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public getAcroForm()Lcom/itextpdf/text/pdf/PdfAcroForm;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->acroForm:Lcom/itextpdf/text/pdf/PdfAcroForm;

    return-object v0
.end method

.method public hasUnusedAnnotations()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValidAcroForm()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->acroForm:Lcom/itextpdf/text/pdf/PdfAcroForm;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfAcroForm;->isValid()Z

    move-result v0

    return v0
.end method

.method public resetAnnotations()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->delayedAnnotations:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->annotations:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->delayedAnnotations:Ljava/util/ArrayList;

    .line 144
    return-void
.end method

.method public rotateAnnotations(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/Rectangle;)Lcom/itextpdf/text/pdf/PdfArray;
    .locals 18
    .parameter "writer"
    .parameter "pageSize"

    .prologue
    .line 147
    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 148
    .local v1, array:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getRotation()I

    move-result v11

    rem-int/lit16 v9, v11, 0x168

    .line 149
    .local v9, rotation:I
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/PdfWriter;->getCurrentPageNumber()I

    move-result v2

    .line 150
    .local v2, currentPage:I
    const/4 v6, 0x0

    .local v6, k:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_5

    .line 151
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->annotations:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfAnnotation;

    .line 152
    .local v3, dic:Lcom/itextpdf/text/pdf/PdfAnnotation;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getPlaceInPage()I

    move-result v7

    .line 153
    .local v7, page:I
    if-le v7, v2, :cond_1

    .line 154
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->delayedAnnotations:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isForm()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 158
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isUsed()Z

    move-result v11

    if-nez v11, :cond_2

    .line 159
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getTemplates()Ljava/util/HashSet;

    move-result-object v10

    .line 160
    .local v10, templates:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/itextpdf/text/pdf/PdfTemplate;>;"
    if-eqz v10, :cond_2

    .line 161
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->acroForm:Lcom/itextpdf/text/pdf/PdfAcroForm;

    invoke-virtual {v11, v10}, Lcom/itextpdf/text/pdf/PdfAcroForm;->addFieldTemplates(Ljava/util/HashSet;)V

    .end local v10           #templates:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/itextpdf/text/pdf/PdfTemplate;>;"
    :cond_2
    move-object v5, v3

    .line 163
    check-cast v5, Lcom/itextpdf/text/pdf/PdfFormField;

    .line 164
    .local v5, field:Lcom/itextpdf/text/pdf/PdfFormField;
    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfFormField;->getParent()Lcom/itextpdf/text/pdf/PdfFormField;

    move-result-object v11

    if-nez v11, :cond_3

    .line 165
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->acroForm:Lcom/itextpdf/text/pdf/PdfAcroForm;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfFormField;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/PdfAcroForm;->addDocumentField(Lcom/itextpdf/text/pdf/PdfIndirectReference;)V

    .line 167
    .end local v5           #field:Lcom/itextpdf/text/pdf/PdfFormField;
    :cond_3
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isAnnotation()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 168
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 169
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isUsed()Z

    move-result v11

    if-nez v11, :cond_4

    .line 170
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v11}, Lcom/itextpdf/text/pdf/PdfAnnotation;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/text/pdf/PdfRectangle;

    .line 171
    .local v8, rect:Lcom/itextpdf/text/pdf/PdfRectangle;
    if-eqz v8, :cond_4

    .line 172
    sparse-switch v9, :sswitch_data_0

    .line 198
    .end local v8           #rect:Lcom/itextpdf/text/pdf/PdfRectangle;
    :cond_4
    :goto_2
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfAnnotation;->isUsed()Z

    move-result v11

    if-nez v11, :cond_0

    .line 199
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfAnnotation;->setUsed()V

    .line 201
    :try_start_0
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfAnnotation;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 203
    :catch_0
    move-exception v4

    .line 204
    .local v4, e:Ljava/io/IOException;
    new-instance v11, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v11, v4}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v11

    .line 174
    .end local v4           #e:Ljava/io/IOException;
    .restart local v8       #rect:Lcom/itextpdf/text/pdf/PdfRectangle;
    :sswitch_0
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v12, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v13

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->bottom()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->left()F

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v15

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->top()F

    move-result v16

    sub-float v15, v15, v16

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->right()F

    move-result v16

    invoke-direct/range {v12 .. v16}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFF)V

    invoke-virtual {v3, v11, v12}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_2

    .line 181
    :sswitch_1
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v12, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v13

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->left()F

    move-result v14

    sub-float/2addr v13, v14

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v14

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->bottom()F

    move-result v15

    sub-float/2addr v14, v15

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v15

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->right()F

    move-result v16

    sub-float v15, v15, v16

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getTop()F

    move-result v16

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->top()F

    move-result v17

    sub-float v16, v16, v17

    invoke-direct/range {v12 .. v16}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFF)V

    invoke-virtual {v3, v11, v12}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_2

    .line 188
    :sswitch_2
    sget-object v11, Lcom/itextpdf/text/pdf/PdfName;->RECT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v12, Lcom/itextpdf/text/pdf/PdfRectangle;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->bottom()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v14

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->left()F

    move-result v15

    sub-float/2addr v14, v15

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->top()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/text/Rectangle;->getRight()F

    move-result v16

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfRectangle;->right()F

    move-result v17

    sub-float v16, v16, v17

    invoke-direct/range {v12 .. v16}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFF)V

    invoke-virtual {v3, v11, v12}, Lcom/itextpdf/text/pdf/PdfAnnotation;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_2

    .line 208
    .end local v3           #dic:Lcom/itextpdf/text/pdf/PdfAnnotation;
    .end local v7           #page:I
    .end local v8           #rect:Lcom/itextpdf/text/pdf/PdfRectangle;
    :cond_5
    return-object v1

    .line 172
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public setSigFlags(I)V
    .locals 1
    .parameter "f"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/itextpdf/text/pdf/internal/PdfAnnotationsImp;->acroForm:Lcom/itextpdf/text/pdf/PdfAcroForm;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfAcroForm;->setSigFlags(I)V

    .line 108
    return-void
.end method
