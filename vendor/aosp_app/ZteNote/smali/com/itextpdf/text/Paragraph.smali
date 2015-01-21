.class public Lcom/itextpdf/text/Paragraph;
.super Lcom/itextpdf/text/Phrase;
.source "Paragraph.java"

# interfaces
.implements Lcom/itextpdf/text/api/Indentable;
.implements Lcom/itextpdf/text/api/Spaceable;


# static fields
.field private static final serialVersionUID:J = 0x6cf906dc9370a61aL


# instance fields
.field protected alignment:I

.field private extraParagraphSpace:F

.field private firstLineIndent:F

.field protected indentationLeft:F

.field protected indentationRight:F

.field protected keeptogether:Z

.field protected multipliedLeading:F

.field protected spacingAfter:F

.field protected spacingBefore:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Lcom/itextpdf/text/Phrase;-><init>()V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    .line 84
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    .line 93
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->firstLineIndent:F

    .line 102
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->extraParagraphSpace:F

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/Paragraph;->keeptogether:Z

    .line 114
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .parameter "leading"

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Phrase;-><init>(F)V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    .line 84
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    .line 93
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->firstLineIndent:F

    .line 102
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->extraParagraphSpace:F

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/Paragraph;->keeptogether:Z

    .line 123
    return-void
.end method

.method public constructor <init>(FLcom/itextpdf/text/Chunk;)V
    .locals 2
    .parameter "leading"
    .parameter "chunk"

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/Phrase;-><init>(FLcom/itextpdf/text/Chunk;)V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    .line 84
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    .line 93
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->firstLineIndent:F

    .line 102
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->extraParagraphSpace:F

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/Paragraph;->keeptogether:Z

    .line 143
    return-void
.end method

.method public constructor <init>(FLjava/lang/String;)V
    .locals 2
    .parameter "leading"
    .parameter "string"

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/Phrase;-><init>(FLjava/lang/String;)V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    .line 84
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    .line 93
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->firstLineIndent:F

    .line 102
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->extraParagraphSpace:F

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/Paragraph;->keeptogether:Z

    .line 174
    return-void
.end method

.method public constructor <init>(FLjava/lang/String;Lcom/itextpdf/text/Font;)V
    .locals 2
    .parameter "leading"
    .parameter "string"
    .parameter "font"

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-direct {p0, p1, p2, p3}, Lcom/itextpdf/text/Phrase;-><init>(FLjava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    .line 84
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    .line 93
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->firstLineIndent:F

    .line 102
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->extraParagraphSpace:F

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/Paragraph;->keeptogether:Z

    .line 186
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Chunk;)V
    .locals 2
    .parameter "chunk"

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Phrase;-><init>(Lcom/itextpdf/text/Chunk;)V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    .line 84
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    .line 93
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->firstLineIndent:F

    .line 102
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->extraParagraphSpace:F

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/Paragraph;->keeptogether:Z

    .line 132
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/Phrase;)V
    .locals 3
    .parameter "phrase"

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Phrase;-><init>(Lcom/itextpdf/text/Phrase;)V

    .line 81
    const/4 v1, -0x1

    iput v1, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    .line 84
    iput v2, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    .line 93
    iput v2, p0, Lcom/itextpdf/text/Paragraph;->firstLineIndent:F

    .line 102
    iput v2, p0, Lcom/itextpdf/text/Paragraph;->extraParagraphSpace:F

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/text/Paragraph;->keeptogether:Z

    .line 195
    instance-of v1, p1, Lcom/itextpdf/text/Paragraph;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 196
    check-cast v0, Lcom/itextpdf/text/Paragraph;

    .line 197
    .local v0, p:Lcom/itextpdf/text/Paragraph;
    iget v1, v0, Lcom/itextpdf/text/Paragraph;->alignment:I

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Paragraph;->setAlignment(I)V

    .line 198
    invoke-virtual {p1}, Lcom/itextpdf/text/Phrase;->getLeading()F

    move-result v1

    iget v2, v0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/Paragraph;->setLeading(FF)V

    .line 199
    invoke-virtual {v0}, Lcom/itextpdf/text/Paragraph;->getIndentationLeft()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Paragraph;->setIndentationLeft(F)V

    .line 200
    invoke-virtual {v0}, Lcom/itextpdf/text/Paragraph;->getIndentationRight()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Paragraph;->setIndentationRight(F)V

    .line 201
    invoke-virtual {v0}, Lcom/itextpdf/text/Paragraph;->getFirstLineIndent()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Paragraph;->setFirstLineIndent(F)V

    .line 202
    invoke-virtual {v0}, Lcom/itextpdf/text/Paragraph;->getSpacingAfter()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Paragraph;->setSpacingAfter(F)V

    .line 203
    invoke-virtual {v0}, Lcom/itextpdf/text/Paragraph;->getSpacingBefore()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Paragraph;->setSpacingBefore(F)V

    .line 204
    invoke-virtual {v0}, Lcom/itextpdf/text/Paragraph;->getExtraParagraphSpace()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/Paragraph;->setExtraParagraphSpace(F)V

    .line 206
    .end local v0           #p:Lcom/itextpdf/text/Paragraph;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "string"

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Phrase;-><init>(Ljava/lang/String;)V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    .line 84
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    .line 93
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->firstLineIndent:F

    .line 102
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->extraParagraphSpace:F

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/Paragraph;->keeptogether:Z

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V
    .locals 2
    .parameter "string"
    .parameter "font"

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/text/Phrase;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    .line 84
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    .line 93
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->firstLineIndent:F

    .line 102
    iput v1, p0, Lcom/itextpdf/text/Paragraph;->extraParagraphSpace:F

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/Paragraph;->keeptogether:Z

    .line 163
    return-void
.end method


# virtual methods
.method public add(Lcom/itextpdf/text/Element;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    .line 315
    instance-of v2, p1, Lcom/itextpdf/text/List;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 316
    check-cast v0, Lcom/itextpdf/text/List;

    .line 317
    .local v0, list:Lcom/itextpdf/text/List;
    invoke-virtual {v0}, Lcom/itextpdf/text/List;->getIndentationLeft()F

    move-result v1

    iget v2, p0, Lcom/itextpdf/text/Paragraph;->indentationLeft:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/List;->setIndentationLeft(F)V

    .line 318
    iget v1, p0, Lcom/itextpdf/text/Paragraph;->indentationRight:F

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/List;->setIndentationRight(F)V

    .line 319
    invoke-super {p0, v0}, Lcom/itextpdf/text/Phrase;->add(Lcom/itextpdf/text/Element;)Z

    move-result v1

    .line 329
    .end local v0           #list:Lcom/itextpdf/text/List;
    :goto_0
    return v1

    .line 321
    :cond_0
    instance-of v2, p1, Lcom/itextpdf/text/Image;

    if-eqz v2, :cond_1

    .line 322
    invoke-super {p0, p1}, Lcom/itextpdf/text/Phrase;->addSpecial(Lcom/itextpdf/text/Element;)V

    goto :goto_0

    .line 325
    :cond_1
    instance-of v2, p1, Lcom/itextpdf/text/Paragraph;

    if-eqz v2, :cond_2

    .line 326
    invoke-super {p0, p1}, Lcom/itextpdf/text/Phrase;->addSpecial(Lcom/itextpdf/text/Element;)V

    goto :goto_0

    .line 329
    :cond_2
    invoke-super {p0, p1}, Lcom/itextpdf/text/Phrase;->add(Lcom/itextpdf/text/Element;)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    check-cast p1, Lcom/itextpdf/text/Element;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/Paragraph;->add(Lcom/itextpdf/text/Element;)Z

    move-result v0

    return v0
.end method

.method public breakUp()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/itextpdf/text/Element;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 232
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Lcom/itextpdf/text/Element;>;"
    const/4 v6, 0x0

    .line 234
    .local v6, tmp:Lcom/itextpdf/text/Paragraph;
    invoke-virtual {p0}, Lcom/itextpdf/text/Paragraph;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/Element;

    .line 235
    .local v0, e:Lcom/itextpdf/text/Element;
    invoke-interface {v0}, Lcom/itextpdf/text/Element;->type()I

    move-result v7

    const/16 v9, 0xe

    if-eq v7, v9, :cond_0

    invoke-interface {v0}, Lcom/itextpdf/text/Element;->type()I

    move-result v7

    const/16 v9, 0x17

    if-eq v7, v9, :cond_0

    invoke-interface {v0}, Lcom/itextpdf/text/Element;->type()I

    move-result v7

    const/16 v9, 0xc

    if-ne v7, v9, :cond_3

    .line 236
    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/itextpdf/text/Paragraph;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 237
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/itextpdf/text/Paragraph;->setSpacingAfter(F)V

    .line 238
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    invoke-virtual {p0, v8}, Lcom/itextpdf/text/Paragraph;->cloneShallow(Z)Lcom/itextpdf/text/Paragraph;

    move-result-object v6

    .line 241
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 242
    invoke-interface {v0}, Lcom/itextpdf/text/Element;->type()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 259
    :cond_2
    :goto_1
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_0
    move-object v7, v0

    .line 244
    check-cast v7, Lcom/itextpdf/text/pdf/PdfPTable;

    invoke-virtual {p0}, Lcom/itextpdf/text/Paragraph;->getSpacingBefore()F

    move-result v9

    invoke-virtual {v7, v9}, Lcom/itextpdf/text/pdf/PdfPTable;->setSpacingBefore(F)V

    goto :goto_1

    :sswitch_1
    move-object v7, v0

    .line 247
    check-cast v7, Lcom/itextpdf/text/Paragraph;

    invoke-virtual {p0}, Lcom/itextpdf/text/Paragraph;->getSpacingBefore()F

    move-result v9

    invoke-virtual {v7, v9}, Lcom/itextpdf/text/Paragraph;->setSpacingBefore(F)V

    goto :goto_1

    :sswitch_2
    move-object v7, v0

    .line 250
    check-cast v7, Lcom/itextpdf/text/List;

    invoke-virtual {v7}, Lcom/itextpdf/text/List;->getFirstItem()Lcom/itextpdf/text/ListItem;

    move-result-object v1

    .line 251
    .local v1, firstItem:Lcom/itextpdf/text/ListItem;
    if-eqz v1, :cond_2

    .line 252
    invoke-virtual {p0}, Lcom/itextpdf/text/Paragraph;->getSpacingBefore()F

    move-result v7

    invoke-virtual {v1, v7}, Lcom/itextpdf/text/ListItem;->setSpacingBefore(F)V

    goto :goto_1

    .line 262
    .end local v1           #firstItem:Lcom/itextpdf/text/ListItem;
    :cond_3
    if-nez v6, :cond_4

    .line 263
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_5

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {p0, v7}, Lcom/itextpdf/text/Paragraph;->cloneShallow(Z)Lcom/itextpdf/text/Paragraph;

    move-result-object v6

    .line 265
    :cond_4
    invoke-virtual {v6, v0}, Lcom/itextpdf/text/Paragraph;->add(Lcom/itextpdf/text/Element;)Z

    goto :goto_0

    :cond_5
    move v7, v8

    .line 263
    goto :goto_2

    .line 268
    .end local v0           #e:Lcom/itextpdf/text/Element;
    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/itextpdf/text/Paragraph;->size()I

    move-result v7

    if-lez v7, :cond_7

    .line 269
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_8

    .line 272
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/Element;

    .line 273
    .local v3, lastElement:Lcom/itextpdf/text/Element;
    invoke-interface {v3}, Lcom/itextpdf/text/Element;->type()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    .line 290
    .end local v3           #lastElement:Lcom/itextpdf/text/Element;
    :cond_8
    :goto_3
    return-object v5

    .line 275
    .restart local v3       #lastElement:Lcom/itextpdf/text/Element;
    :sswitch_3
    check-cast v3, Lcom/itextpdf/text/pdf/PdfPTable;

    .end local v3           #lastElement:Lcom/itextpdf/text/Element;
    invoke-virtual {p0}, Lcom/itextpdf/text/Paragraph;->getSpacingAfter()F

    move-result v7

    invoke-virtual {v3, v7}, Lcom/itextpdf/text/pdf/PdfPTable;->setSpacingAfter(F)V

    goto :goto_3

    .line 278
    .restart local v3       #lastElement:Lcom/itextpdf/text/Element;
    :sswitch_4
    check-cast v3, Lcom/itextpdf/text/Paragraph;

    .end local v3           #lastElement:Lcom/itextpdf/text/Element;
    invoke-virtual {p0}, Lcom/itextpdf/text/Paragraph;->getSpacingAfter()F

    move-result v7

    invoke-virtual {v3, v7}, Lcom/itextpdf/text/Paragraph;->setSpacingAfter(F)V

    goto :goto_3

    .line 281
    .restart local v3       #lastElement:Lcom/itextpdf/text/Element;
    :sswitch_5
    check-cast v3, Lcom/itextpdf/text/List;

    .end local v3           #lastElement:Lcom/itextpdf/text/Element;
    invoke-virtual {v3}, Lcom/itextpdf/text/List;->getLastItem()Lcom/itextpdf/text/ListItem;

    move-result-object v4

    .line 282
    .local v4, lastItem:Lcom/itextpdf/text/ListItem;
    if-eqz v4, :cond_8

    .line 283
    invoke-virtual {p0}, Lcom/itextpdf/text/Paragraph;->getSpacingAfter()F

    move-result v7

    invoke-virtual {v4, v7}, Lcom/itextpdf/text/ListItem;->setSpacingAfter(F)V

    goto :goto_3

    .line 242
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_1
        0xe -> :sswitch_2
        0x17 -> :sswitch_0
    .end sparse-switch

    .line 273
    :sswitch_data_1
    .sparse-switch
        0xc -> :sswitch_4
        0xe -> :sswitch_5
        0x17 -> :sswitch_3
    .end sparse-switch
.end method

.method public cloneShallow(Z)Lcom/itextpdf/text/Paragraph;
    .locals 3
    .parameter "spacingBefore"

    .prologue
    .line 213
    new-instance v0, Lcom/itextpdf/text/Paragraph;

    invoke-direct {v0}, Lcom/itextpdf/text/Paragraph;-><init>()V

    .line 214
    .local v0, copy:Lcom/itextpdf/text/Paragraph;
    invoke-virtual {p0}, Lcom/itextpdf/text/Paragraph;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Paragraph;->setFont(Lcom/itextpdf/text/Font;)V

    .line 215
    invoke-virtual {p0}, Lcom/itextpdf/text/Paragraph;->getAlignment()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Paragraph;->setAlignment(I)V

    .line 216
    invoke-virtual {p0}, Lcom/itextpdf/text/Paragraph;->getLeading()F

    move-result v1

    iget v2, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/Paragraph;->setLeading(FF)V

    .line 217
    invoke-virtual {p0}, Lcom/itextpdf/text/Paragraph;->getIndentationLeft()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Paragraph;->setIndentationLeft(F)V

    .line 218
    invoke-virtual {p0}, Lcom/itextpdf/text/Paragraph;->getIndentationRight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Paragraph;->setIndentationRight(F)V

    .line 219
    invoke-virtual {p0}, Lcom/itextpdf/text/Paragraph;->getFirstLineIndent()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Paragraph;->setFirstLineIndent(F)V

    .line 220
    invoke-virtual {p0}, Lcom/itextpdf/text/Paragraph;->getSpacingAfter()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Paragraph;->setSpacingAfter(F)V

    .line 221
    if-eqz p1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/itextpdf/text/Paragraph;->getSpacingBefore()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Paragraph;->setSpacingBefore(F)V

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/Paragraph;->getExtraParagraphSpace()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/Paragraph;->setExtraParagraphSpace(F)V

    .line 224
    return-object v0
.end method

.method public getAlignment()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    return v0
.end method

.method public getExtraParagraphSpace()F
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/itextpdf/text/Paragraph;->extraParagraphSpace:F

    return v0
.end method

.method public getFirstLineIndent()F
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/itextpdf/text/Paragraph;->firstLineIndent:F

    return v0
.end method

.method public getIndentationLeft()F
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/itextpdf/text/Paragraph;->indentationLeft:F

    return v0
.end method

.method public getIndentationRight()F
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcom/itextpdf/text/Paragraph;->indentationRight:F

    return v0
.end method

.method public getKeepTogether()Z
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/itextpdf/text/Paragraph;->keeptogether:Z

    return v0
.end method

.method public getMultipliedLeading()F
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    return v0
.end method

.method public getSpacingAfter()F
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Lcom/itextpdf/text/Paragraph;->spacingAfter:F

    return v0
.end method

.method public getSpacingBefore()F
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/itextpdf/text/Paragraph;->spacingBefore:F

    return v0
.end method

.method public getTotalLeading()F
    .locals 3

    .prologue
    .line 457
    iget-object v1, p0, Lcom/itextpdf/text/Paragraph;->font:Lcom/itextpdf/text/Font;

    if-nez v1, :cond_0

    const/high16 v1, 0x4140

    iget v2, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    mul-float v0, v1, v2

    .line 459
    .local v0, m:F
    :goto_0
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/text/Paragraph;->hasLeading()Z

    move-result v1

    if-nez v1, :cond_1

    .line 462
    .end local v0           #m:F
    :goto_1
    return v0

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/Paragraph;->font:Lcom/itextpdf/text/Font;

    iget v2, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/Font;->getCalculatedLeading(F)F

    move-result v0

    goto :goto_0

    .line 462
    .restart local v0       #m:F
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/Paragraph;->getLeading()F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_1
.end method

.method public setAlignment(I)V
    .locals 0
    .parameter "alignment"

    .prologue
    .line 340
    iput p1, p0, Lcom/itextpdf/text/Paragraph;->alignment:I

    .line 341
    return-void
.end method

.method public setExtraParagraphSpace(F)V
    .locals 0
    .parameter "extraParagraphSpace"

    .prologue
    .line 514
    iput p1, p0, Lcom/itextpdf/text/Paragraph;->extraParagraphSpace:F

    .line 515
    return-void
.end method

.method public setFirstLineIndent(F)V
    .locals 0
    .parameter "firstLineIndent"

    .prologue
    .line 394
    iput p1, p0, Lcom/itextpdf/text/Paragraph;->firstLineIndent:F

    .line 395
    return-void
.end method

.method public setIndentationLeft(F)V
    .locals 0
    .parameter "indentation"

    .prologue
    .line 379
    iput p1, p0, Lcom/itextpdf/text/Paragraph;->indentationLeft:F

    .line 380
    return-void
.end method

.method public setIndentationRight(F)V
    .locals 0
    .parameter "indentation"

    .prologue
    .line 386
    iput p1, p0, Lcom/itextpdf/text/Paragraph;->indentationRight:F

    .line 387
    return-void
.end method

.method public setKeepTogether(Z)V
    .locals 0
    .parameter "keeptogether"

    .prologue
    .line 417
    iput-boolean p1, p0, Lcom/itextpdf/text/Paragraph;->keeptogether:Z

    .line 418
    return-void
.end method

.method public setLeading(F)V
    .locals 1
    .parameter "fixedLeading"

    .prologue
    .line 348
    iput p1, p0, Lcom/itextpdf/text/Paragraph;->leading:F

    .line 349
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    .line 350
    return-void
.end method

.method public setLeading(FF)V
    .locals 0
    .parameter "fixedLeading"
    .parameter "multipliedLeading"

    .prologue
    .line 371
    iput p1, p0, Lcom/itextpdf/text/Paragraph;->leading:F

    .line 372
    iput p2, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    .line 373
    return-void
.end method

.method public setMultipliedLeading(F)V
    .locals 1
    .parameter "multipliedLeading"

    .prologue
    .line 359
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/text/Paragraph;->leading:F

    .line 360
    iput p1, p0, Lcom/itextpdf/text/Paragraph;->multipliedLeading:F

    .line 361
    return-void
.end method

.method public setSpacingAfter(F)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 408
    iput p1, p0, Lcom/itextpdf/text/Paragraph;->spacingAfter:F

    .line 409
    return-void
.end method

.method public setSpacingBefore(F)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 401
    iput p1, p0, Lcom/itextpdf/text/Paragraph;->spacingBefore:F

    .line 402
    return-void
.end method

.method public spacingAfter()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 540
    iget v0, p0, Lcom/itextpdf/text/Paragraph;->spacingAfter:F

    return v0
.end method

.method public spacingBefore()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/itextpdf/text/Paragraph;->getSpacingBefore()F

    move-result v0

    return v0
.end method

.method public type()I
    .locals 1

    .prologue
    .line 302
    const/16 v0, 0xc

    return v0
.end method
