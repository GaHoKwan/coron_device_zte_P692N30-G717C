.class public Lcom/itextpdf/text/pdf/FontSelector;
.super Ljava/lang/Object;
.source "FontSelector.java"


# instance fields
.field protected fonts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/Font;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/FontSelector;->fonts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addFont(Lcom/itextpdf/text/Font;)V
    .locals 5
    .parameter "font"

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/itextpdf/text/Font;->getBaseFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/itextpdf/text/pdf/FontSelector;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/itextpdf/text/Font;->getCalculatedBaseFont(Z)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    .line 76
    .local v0, bf:Lcom/itextpdf/text/pdf/BaseFont;
    new-instance v1, Lcom/itextpdf/text/Font;

    invoke-virtual {p1}, Lcom/itextpdf/text/Font;->getSize()F

    move-result v2

    invoke-virtual {p1}, Lcom/itextpdf/text/Font;->getCalculatedStyle()I

    move-result v3

    invoke-virtual {p1}, Lcom/itextpdf/text/Font;->getColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/itextpdf/text/Font;-><init>(Lcom/itextpdf/text/pdf/BaseFont;FILcom/itextpdf/text/BaseColor;)V

    .line 77
    .local v1, f2:Lcom/itextpdf/text/Font;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/FontSelector;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public process(Ljava/lang/String;)Lcom/itextpdf/text/Phrase;
    .locals 15
    .parameter "text"

    .prologue
    .line 87
    iget-object v12, p0, Lcom/itextpdf/text/pdf/FontSelector;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 88
    .local v5, fsize:I
    if-nez v5, :cond_0

    .line 89
    new-instance v12, Ljava/lang/IndexOutOfBoundsException;

    const-string v13, "no.font.is.defined"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 90
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 91
    .local v1, cc:[C
    array-length v8, v1

    .line 92
    .local v8, len:I
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 93
    .local v10, sb:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 94
    .local v4, font:Lcom/itextpdf/text/Font;
    const/4 v7, -0x1

    .line 95
    .local v7, lastidx:I
    new-instance v9, Lcom/itextpdf/text/Phrase;

    invoke-direct {v9}, Lcom/itextpdf/text/Phrase;-><init>()V

    .line 96
    .local v9, ret:Lcom/itextpdf/text/Phrase;
    const/4 v6, 0x0

    .local v6, k:I
    :goto_0
    if-ge v6, v8, :cond_b

    .line 97
    aget-char v0, v1, v6

    .line 98
    .local v0, c:C
    const/16 v12, 0xa

    if-eq v0, v12, :cond_1

    const/16 v12, 0xd

    if-ne v0, v12, :cond_3

    .line 99
    :cond_1
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 96
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 102
    :cond_3
    invoke-static {v1, v6}, Lcom/itextpdf/text/Utilities;->isSurrogatePair([CI)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 103
    invoke-static {v1, v6}, Lcom/itextpdf/text/Utilities;->convertToUtf32([CI)I

    move-result v11

    .line 104
    .local v11, u:I
    const/4 v3, 0x0

    .local v3, f:I
    :goto_2
    if-ge v3, v5, :cond_2

    .line 105
    iget-object v12, p0, Lcom/itextpdf/text/pdf/FontSelector;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #font:Lcom/itextpdf/text/Font;
    check-cast v4, Lcom/itextpdf/text/Font;

    .line 106
    .restart local v4       #font:Lcom/itextpdf/text/Font;
    invoke-virtual {v4}, Lcom/itextpdf/text/Font;->getBaseFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/itextpdf/text/pdf/BaseFont;->charExists(I)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 107
    if-eq v7, v3, :cond_5

    .line 108
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_4

    const/4 v12, -0x1

    if-eq v7, v12, :cond_4

    .line 109
    new-instance v2, Lcom/itextpdf/text/Chunk;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v12, p0, Lcom/itextpdf/text/pdf/FontSelector;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/text/Font;

    invoke-direct {v2, v13, v12}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 110
    .local v2, ck:Lcom/itextpdf/text/Chunk;
    invoke-virtual {v9, v2}, Lcom/itextpdf/text/Phrase;->add(Lcom/itextpdf/text/Element;)Z

    .line 111
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 113
    .end local v2           #ck:Lcom/itextpdf/text/Chunk;
    :cond_4
    move v7, v3

    .line 115
    :cond_5
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 116
    add-int/lit8 v6, v6, 0x1

    aget-char v12, v1, v6

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 104
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 122
    .end local v3           #f:I
    .end local v11           #u:I
    :cond_7
    const/4 v3, 0x0

    .restart local v3       #f:I
    :goto_3
    if-ge v3, v5, :cond_2

    .line 123
    iget-object v12, p0, Lcom/itextpdf/text/pdf/FontSelector;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #font:Lcom/itextpdf/text/Font;
    check-cast v4, Lcom/itextpdf/text/Font;

    .line 124
    .restart local v4       #font:Lcom/itextpdf/text/Font;
    invoke-virtual {v4}, Lcom/itextpdf/text/Font;->getBaseFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v12

    invoke-virtual {v12, v0}, Lcom/itextpdf/text/pdf/BaseFont;->charExists(I)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 125
    if-eq v7, v3, :cond_9

    .line 126
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_8

    const/4 v12, -0x1

    if-eq v7, v12, :cond_8

    .line 127
    new-instance v2, Lcom/itextpdf/text/Chunk;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v12, p0, Lcom/itextpdf/text/pdf/FontSelector;->fonts:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/text/Font;

    invoke-direct {v2, v13, v12}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 128
    .restart local v2       #ck:Lcom/itextpdf/text/Chunk;
    invoke-virtual {v9, v2}, Lcom/itextpdf/text/Phrase;->add(Lcom/itextpdf/text/Element;)Z

    .line 129
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 131
    .end local v2           #ck:Lcom/itextpdf/text/Chunk;
    :cond_8
    move v7, v3

    .line 133
    :cond_9
    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 122
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 139
    .end local v0           #c:C
    .end local v3           #f:I
    :cond_b
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    if-lez v12, :cond_d

    .line 140
    new-instance v2, Lcom/itextpdf/text/Chunk;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v12, p0, Lcom/itextpdf/text/pdf/FontSelector;->fonts:Ljava/util/ArrayList;

    const/4 v14, -0x1

    if-ne v7, v14, :cond_c

    const/4 v7, 0x0

    .end local v7           #lastidx:I
    :cond_c
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itextpdf/text/Font;

    invoke-direct {v2, v13, v12}, Lcom/itextpdf/text/Chunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/Font;)V

    .line 141
    .restart local v2       #ck:Lcom/itextpdf/text/Chunk;
    invoke-virtual {v9, v2}, Lcom/itextpdf/text/Phrase;->add(Lcom/itextpdf/text/Element;)Z

    .line 143
    .end local v2           #ck:Lcom/itextpdf/text/Chunk;
    :cond_d
    return-object v9
.end method
