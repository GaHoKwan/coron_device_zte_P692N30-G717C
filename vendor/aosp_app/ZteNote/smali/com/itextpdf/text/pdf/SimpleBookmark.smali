.class public final Lcom/itextpdf/text/pdf/SimpleBookmark;
.super Ljava/lang/Object;
.source "SimpleBookmark.java"

# interfaces
.implements Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;


# instance fields
.field private final attr:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private topList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/SimpleBookmark;->attr:Ljava/util/Stack;

    .line 114
    return-void
.end method

.method private static bookmarkDepth(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/IntHashtable;Z)Ljava/util/List;
    .locals 22
    .parameter "reader"
    .parameter "outline"
    .parameter "pages"
    .parameter "processCurrentOutlineOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfReader;",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            "Lcom/itextpdf/text/pdf/IntHashtable;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v12, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    if-eqz p1, :cond_15

    .line 119
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v13, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->TITLE:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v18

    check-cast v18, Lcom/itextpdf/text/pdf/PdfString;

    .line 121
    .local v18, title:Lcom/itextpdf/text/pdf/PdfString;
    const-string v19, "Title"

    invoke-virtual/range {v18 .. v18}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->C:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/text/pdf/PdfArray;

    .line 123
    .local v5, color:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 124
    new-instance v15, Lcom/itextpdf/text/pdf/ByteBuffer;

    invoke-direct {v15}, Lcom/itextpdf/text/pdf/ByteBuffer;-><init>()V

    .line 125
    .local v15, out:Lcom/itextpdf/text/pdf/ByteBuffer;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v19

    const/16 v20, 0x20

    invoke-virtual/range {v19 .. v20}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 126
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    move-result-object v19

    const/16 v20, 0x20

    invoke-virtual/range {v19 .. v20}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(C)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 127
    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfNumber;->floatValue()F

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/itextpdf/text/pdf/ByteBuffer;->append(F)Lcom/itextpdf/text/pdf/ByteBuffer;

    .line 128
    const-string v19, "Color"

    invoke-virtual {v15}, Lcom/itextpdf/text/pdf/ByteBuffer;->toByteArray()[B

    move-result-object v20

    const/16 v21, 0x0

    invoke-static/range {v20 .. v21}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .end local v15           #out:Lcom/itextpdf/text/pdf/ByteBuffer;
    :cond_0
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v17

    check-cast v17, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 131
    .local v17, style:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v17, :cond_3

    .line 132
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v8

    .line 133
    .local v8, f:I
    const-string v16, ""

    .line 134
    .local v16, s:Ljava/lang/String;
    and-int/lit8 v19, v8, 0x1

    if-eqz v19, :cond_1

    .line 135
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "italic "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 136
    :cond_1
    and-int/lit8 v19, v8, 0x2

    if-eqz v19, :cond_2

    .line 137
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "bold "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 138
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 139
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_3

    .line 140
    const-string v19, "Style"

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .end local v8           #f:I
    .end local v16           #s:Ljava/lang/String;
    :cond_3
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->COUNT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 143
    .local v6, count:Lcom/itextpdf/text/pdf/PdfNumber;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v19

    if-gez v19, :cond_4

    .line 144
    const-string v19, "Open"

    const-string v20, "false"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_4
    :try_start_0
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->DEST:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 147
    .local v7, dest:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v7, :cond_7

    .line 148
    move-object/from16 v0, p2

    invoke-static {v13, v7, v0}, Lcom/itextpdf/text/pdf/SimpleBookmark;->mapGotoBookmark(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/IntHashtable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v7           #dest:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_5
    :goto_1
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->FIRST:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 221
    .local v10, first:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v10, :cond_6

    .line 222
    const-string v19, "Kids"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v20

    invoke-static {v0, v10, v1, v2}, Lcom/itextpdf/text/pdf/SimpleBookmark;->bookmarkDepth(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/IntHashtable;Z)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_6
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    if-nez p3, :cond_14

    .line 226
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->NEXT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .restart local p1
    goto/16 :goto_0

    .line 151
    .end local v10           #first:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v7       #dest:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_7
    :try_start_1
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 152
    .local v3, action:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v3, :cond_5

    .line 153
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->GOTO:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 154
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 155
    if-eqz v7, :cond_5

    .line 156
    move-object/from16 v0, p2

    invoke-static {v13, v7, v0}, Lcom/itextpdf/text/pdf/SimpleBookmark;->mapGotoBookmark(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/IntHashtable;)V

    goto :goto_1

    .line 217
    .end local v3           #action:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v7           #dest:Lcom/itextpdf/text/pdf/PdfObject;
    :catch_0
    move-exception v19

    goto :goto_1

    .line 159
    .restart local v3       #action:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v7       #dest:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_8
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->URI:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 160
    const-string v19, "Action"

    const-string v20, "URI"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v20, "URI"

    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->URI:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    check-cast v19, Lcom/itextpdf/text/pdf/PdfString;

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 163
    :cond_9
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->JAVASCRIPT:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 164
    const-string v19, "Action"

    const-string v20, "JS"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v19, "Code"

    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->JS:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 167
    :cond_a
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->GOTOR:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 168
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v7

    .line 169
    if-eqz v7, :cond_b

    .line 170
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 171
    const-string v19, "Named"

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_b
    :goto_2
    const-string v19, "Action"

    const-string v20, "GoToR"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    .line 186
    .local v9, file:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v9, :cond_c

    .line 187
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v19

    if-eqz v19, :cond_10

    .line 188
    const-string v20, "File"

    move-object v0, v9

    check-cast v0, Lcom/itextpdf/text/pdf/PdfString;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_c
    :goto_3
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->NEWWINDOW:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v14

    .line 196
    .local v14, newWindow:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v14, :cond_5

    .line 197
    const-string v19, "NewWindow"

    invoke-virtual {v14}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 172
    .end local v9           #file:Lcom/itextpdf/text/pdf/PdfObject;
    .end local v14           #newWindow:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_d
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v19

    if-eqz v19, :cond_e

    .line 173
    const-string v19, "NamedN"

    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 174
    :cond_e
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 175
    move-object v0, v7

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    move-object v4, v0

    .line 176
    .local v4, arr:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 177
    .local v16, s:Ljava/lang/StringBuffer;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    const/16 v19, 0x20

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    const/4 v11, 0x2

    .local v11, k:I
    :goto_4
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_f

    .line 180
    const/16 v19, 0x20

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual {v4, v11}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 181
    :cond_f
    const-string v19, "Page"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 189
    .end local v4           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v11           #k:I
    .end local v16           #s:Ljava/lang/StringBuffer;
    .restart local v9       #file:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_10
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 190
    check-cast v9, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v9           #file:Lcom/itextpdf/text/pdf/PdfObject;
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    .line 191
    .restart local v9       #file:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v19

    if-eqz v19, :cond_c

    .line 192
    const-string v20, "File"

    move-object v0, v9

    check-cast v0, Lcom/itextpdf/text/pdf/PdfString;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 199
    .end local v9           #file:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_11
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->LAUNCH:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 200
    const-string v19, "Action"

    const-string v20, "Launch"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    .line 202
    .restart local v9       #file:Lcom/itextpdf/text/pdf/PdfObject;
    if-nez v9, :cond_12

    .line 203
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->WIN:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    .line 204
    :cond_12
    if-eqz v9, :cond_5

    .line 205
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v19

    if-eqz v19, :cond_13

    .line 206
    const-string v19, "File"

    check-cast v9, Lcom/itextpdf/text/pdf/PdfString;

    .end local v9           #file:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 207
    .restart local v9       #file:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_13
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 208
    check-cast v9, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local v9           #file:Lcom/itextpdf/text/pdf/PdfObject;
    sget-object v19, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    .line 209
    .restart local v9       #file:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 210
    const-string v19, "File"

    check-cast v9, Lcom/itextpdf/text/pdf/PdfString;

    .end local v9           #file:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v9}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 228
    .end local v3           #action:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v7           #dest:Lcom/itextpdf/text/pdf/PdfObject;
    .restart local v10       #first:Lcom/itextpdf/text/pdf/PdfDictionary;
    :cond_14
    const/16 p1, 0x0

    goto/16 :goto_0

    .line 230
    .end local v5           #color:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v6           #count:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v10           #first:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v13           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v17           #style:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v18           #title:Lcom/itextpdf/text/pdf/PdfString;
    :cond_15
    return-object v12
.end method

.method static createOutlineAction(Lcom/itextpdf/text/pdf/PdfDictionary;Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfWriter;Z)V
    .locals 16
    .parameter "outline"
    .parameter
    .parameter "writer"
    .parameter "namedAsNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/itextpdf/text/pdf/PdfWriter;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    const-string v13, "Action"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 425
    .local v1, action:Ljava/lang/String;
    const-string v13, "GoTo"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 427
    const-string v13, "Named"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .local v10, p:Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 428
    if-eqz p3, :cond_1

    .line 429
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->DEST:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v14, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v14, v10}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 530
    .end local v1           #action:Ljava/lang/String;
    .end local v10           #p:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 431
    .restart local v1       #action:Ljava/lang/String;
    .restart local v10       #p:Ljava/lang/String;
    :cond_1
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->DEST:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v14, Lcom/itextpdf/text/pdf/PdfString;

    const/4 v15, 0x0

    invoke-direct {v14, v10, v15}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 527
    .end local v1           #action:Ljava/lang/String;
    .end local v10           #p:Ljava/lang/String;
    :catch_0
    move-exception v13

    goto :goto_0

    .line 433
    .restart local v1       #action:Ljava/lang/String;
    .restart local v10       #p:Ljava/lang/String;
    :cond_2
    const-string v13, "Page"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #p:Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .restart local v10       #p:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 434
    new-instance v2, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 435
    .local v2, ar:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v11, Ljava/util/StringTokenizer;

    invoke-direct {v11, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 436
    .local v11, tk:Ljava/util/StringTokenizer;
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 437
    .local v8, n:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/PdfWriter;->getPageReference(I)Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 438
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-nez v13, :cond_4

    .line 439
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->XYZ:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v13}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 440
    const/4 v13, 0x3

    new-array v13, v13, [F

    fill-array-data v13, :array_0

    invoke-virtual {v2, v13}, Lcom/itextpdf/text/pdf/PdfArray;->add([F)Z

    .line 455
    :cond_3
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->DEST:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0

    .line 443
    :cond_4
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 444
    .local v6, fn:Ljava/lang/String;
    const-string v13, "/"

    invoke-virtual {v6, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 445
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 446
    :cond_5
    new-instance v13, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v13, v6}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 447
    const/4 v7, 0x0

    .local v7, k:I
    :goto_1
    const/4 v13, 0x4

    if-ge v7, v13, :cond_3

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 448
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 449
    const-string v13, "null"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 450
    sget-object v13, Lcom/itextpdf/text/pdf/PdfNull;->PDFNULL:Lcom/itextpdf/text/pdf/PdfNull;

    invoke-virtual {v2, v13}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 447
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 452
    :cond_6
    new-instance v13, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v13, v6}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_2

    .line 458
    .end local v2           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v6           #fn:Ljava/lang/String;
    .end local v7           #k:I
    .end local v8           #n:I
    .end local v10           #p:Ljava/lang/String;
    .end local v11           #tk:Ljava/util/StringTokenizer;
    :cond_7
    const-string v13, "GoToR"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 460
    new-instance v4, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 461
    .local v4, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    const-string v13, "Named"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .restart local v10       #p:Ljava/lang/String;
    if-eqz v10, :cond_a

    .line 462
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v14, Lcom/itextpdf/text/pdf/PdfString;

    const/4 v15, 0x0

    invoke-direct {v14, v10, v15}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v13, v14}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 488
    :cond_8
    :goto_3
    const-string v13, "File"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 489
    .local v5, file:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->size()I

    move-result v13

    if-lez v13, :cond_0

    if-eqz v5, :cond_0

    .line 490
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v14, Lcom/itextpdf/text/pdf/PdfName;->GOTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v13, v14}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 491
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v14, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v14, v5}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13, v14}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 492
    const-string v13, "NewWindow"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 493
    .local v9, nw:Ljava/lang/String;
    if-eqz v9, :cond_9

    .line 494
    const-string v13, "true"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 495
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->NEWWINDOW:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v14, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFTRUE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v4, v13, v14}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 499
    :cond_9
    :goto_4
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0

    .line 463
    .end local v5           #file:Ljava/lang/String;
    .end local v9           #nw:Ljava/lang/String;
    :cond_a
    const-string v13, "NamedN"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #p:Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .restart local v10       #p:Ljava/lang/String;
    if-eqz v10, :cond_b

    .line 464
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v14, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v14, v10}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13, v14}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_3

    .line 465
    :cond_b
    const-string v13, "Page"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #p:Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .restart local v10       #p:Ljava/lang/String;
    if-eqz v10, :cond_8

    .line 466
    new-instance v2, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 467
    .restart local v2       #ar:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v11, Ljava/util/StringTokenizer;

    invoke-direct {v11, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 468
    .restart local v11       #tk:Ljava/util/StringTokenizer;
    new-instance v13, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 469
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-nez v13, :cond_d

    .line 470
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->XYZ:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v13}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 471
    const/4 v13, 0x3

    new-array v13, v13, [F

    fill-array-data v13, :array_1

    invoke-virtual {v2, v13}, Lcom/itextpdf/text/pdf/PdfArray;->add([F)Z

    .line 486
    :cond_c
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->D:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v13, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_3

    .line 474
    :cond_d
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 475
    .restart local v6       #fn:Ljava/lang/String;
    const-string v13, "/"

    invoke-virtual {v6, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 476
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 477
    :cond_e
    new-instance v13, Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v13, v6}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 478
    const/4 v7, 0x0

    .restart local v7       #k:I
    :goto_5
    const/4 v13, 0x4

    if-ge v7, v13, :cond_c

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 479
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 480
    const-string v13, "null"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 481
    sget-object v13, Lcom/itextpdf/text/pdf/PdfNull;->PDFNULL:Lcom/itextpdf/text/pdf/PdfNull;

    invoke-virtual {v2, v13}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 478
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 483
    :cond_f
    new-instance v13, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v13, v6}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_6

    .line 496
    .end local v2           #ar:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v6           #fn:Ljava/lang/String;
    .end local v7           #k:I
    .end local v11           #tk:Ljava/util/StringTokenizer;
    .restart local v5       #file:Ljava/lang/String;
    .restart local v9       #nw:Ljava/lang/String;
    :cond_10
    const-string v13, "false"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 497
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->NEWWINDOW:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v14, Lcom/itextpdf/text/pdf/PdfBoolean;->PDFFALSE:Lcom/itextpdf/text/pdf/PdfBoolean;

    invoke-virtual {v4, v13, v14}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_4

    .line 502
    .end local v4           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v5           #file:Ljava/lang/String;
    .end local v9           #nw:Ljava/lang/String;
    .end local v10           #p:Ljava/lang/String;
    :cond_11
    const-string v13, "URI"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 503
    const-string v13, "URI"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 504
    .local v12, uri:Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 505
    new-instance v4, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 506
    .restart local v4       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v14, Lcom/itextpdf/text/pdf/PdfName;->URI:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v13, v14}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 507
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->URI:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v14, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v14, v12}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13, v14}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 508
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0

    .line 511
    .end local v4           #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v12           #uri:Ljava/lang/String;
    :cond_12
    const-string v13, "JS"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 512
    const-string v13, "Code"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 513
    .local v3, code:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 514
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/itextpdf/text/pdf/PdfAction;->javaScript(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfWriter;)Lcom/itextpdf/text/pdf/PdfAction;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0

    .line 517
    .end local v3           #code:Ljava/lang/String;
    :cond_13
    const-string v13, "Launch"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 518
    const-string v13, "File"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 519
    .restart local v5       #file:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 520
    new-instance v4, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 521
    .restart local v4       #dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v14, Lcom/itextpdf/text/pdf/PdfName;->LAUNCH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v13, v14}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 522
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v14, Lcom/itextpdf/text/pdf/PdfString;

    invoke-direct {v14, v5}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13, v14}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 523
    sget-object v13, Lcom/itextpdf/text/pdf/PdfName;->A:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 440
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x1ct 0x46t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 471
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x1ct 0x46t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static eliminatePages(Ljava/util/List;[I)V
    .locals 11
    .parameter
    .parameter "pageRange"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[I)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-nez p0, :cond_1

    .line 367
    :cond_0
    return-void

    .line 327
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 328
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 329
    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 330
    .local v0, hit:Z
    const-string v9, "GoTo"

    const-string v10, "Action"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 331
    const-string v9, "Page"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 332
    .local v7, page:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 333
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 334
    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 336
    .local v1, idx:I
    if-gez v1, :cond_5

    .line 337
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 340
    .local v8, pageNum:I
    :goto_1
    array-length v9, p1

    and-int/lit8 v5, v9, -0x2

    .line 341
    .local v5, len:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_2
    if-ge v3, v5, :cond_3

    .line 342
    aget v9, p1, v3

    if-lt v8, v9, :cond_6

    add-int/lit8 v9, v3, 0x1

    aget v9, p1, v9

    if-gt v8, v9, :cond_6

    .line 343
    const/4 v0, 0x1

    .line 349
    .end local v1           #idx:I
    .end local v3           #k:I
    .end local v5           #len:I
    .end local v7           #page:Ljava/lang/String;
    .end local v8           #pageNum:I
    :cond_3
    const-string v9, "Kids"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 350
    .local v4, kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v4, :cond_4

    .line 351
    invoke-static {v4, p1}, Lcom/itextpdf/text/pdf/SimpleBookmark;->eliminatePages(Ljava/util/List;[I)V

    .line 352
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 353
    const-string v9, "Kids"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const/4 v4, 0x0

    .line 357
    :cond_4
    if-eqz v0, :cond_2

    .line 358
    if-nez v4, :cond_7

    .line 359
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 339
    .end local v4           #kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v1       #idx:I
    .restart local v7       #page:Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    invoke-virtual {v7, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .restart local v8       #pageNum:I
    goto :goto_1

    .line 341
    .restart local v3       #k:I
    .restart local v5       #len:I
    :cond_6
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 361
    .end local v1           #idx:I
    .end local v3           #k:I
    .end local v5           #len:I
    .end local v7           #page:Ljava/lang/String;
    .end local v8           #pageNum:I
    .restart local v4       #kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_7
    const-string v9, "Action"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v9, "Page"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v9, "Named"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static exportToXML(Ljava/util/List;Ljava/io/OutputStream;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter "out"
    .parameter "encoding"
    .parameter "onlyASCII"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 681
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-static {p2}, Lcom/itextpdf/text/xml/simpleparser/IanaEncodings;->getJavaEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, jenc:Ljava/lang/String;
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p1, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 683
    .local v1, wrt:Ljava/io/Writer;
    invoke-static {p0, v1, p2, p3}, Lcom/itextpdf/text/pdf/SimpleBookmark;->exportToXML(Ljava/util/List;Ljava/io/Writer;Ljava/lang/String;Z)V

    .line 684
    return-void
.end method

.method public static exportToXML(Ljava/util/List;Ljava/io/Writer;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "wrt"
    .parameter "encoding"
    .parameter "onlyASCII"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/io/Writer;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const-string v0, "<?xml version=\"1.0\" encoding=\""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 698
    invoke-static {p2, p3}, Lcom/itextpdf/text/xml/XMLUtil;->escapeXML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 699
    const-string v0, "\"?>\n<Bookmark>\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 700
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p3}, Lcom/itextpdf/text/pdf/SimpleBookmark;->exportToXMLNode(Ljava/util/List;Ljava/io/Writer;IZ)V

    .line 701
    const-string v0, "</Bookmark>\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 702
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 703
    return-void
.end method

.method public static exportToXMLNode(Ljava/util/List;Ljava/io/Writer;IZ)V
    .locals 12
    .parameter
    .parameter "out"
    .parameter "indent"
    .parameter "onlyASCII"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/io/Writer;",
            "IZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 609
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const-string v0, ""

    .line 610
    .local v0, dep:Ljava/lang/String;
    const/4 v10, -0x1

    if-eq p2, v10, :cond_0

    .line 611
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    if-ge v4, p2, :cond_0

    .line 612
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 611
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 614
    .end local v4           #k:I
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 615
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x0

    .line 616
    .local v8, title:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 617
    const-string v10, "<Title "

    invoke-virtual {p1, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 618
    const/4 v6, 0x0

    .line 619
    .local v6, kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 620
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 621
    .local v5, key:Ljava/lang/String;
    const-string v10, "Title"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 622
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #title:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 623
    .restart local v8       #title:Ljava/lang/String;
    goto :goto_2

    .line 625
    :cond_1
    const-string v10, "Kids"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 626
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    check-cast v6, Ljava/util/List;

    .line 627
    .restart local v6       #kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    goto :goto_2

    .line 630
    :cond_2
    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 631
    const-string v10, "=\""

    invoke-virtual {p1, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 632
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 633
    .local v9, value:Ljava/lang/String;
    const-string v10, "Named"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "NamedN"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 634
    :cond_3
    invoke-static {v9}, Lcom/itextpdf/text/pdf/SimpleNamedDestination;->escapeBinaryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 635
    :cond_4
    invoke-static {v9, p3}, Lcom/itextpdf/text/xml/XMLUtil;->escapeXML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 636
    const-string v10, "\" "

    invoke-virtual {p1, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 639
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5           #key:Ljava/lang/String;
    .end local v9           #value:Ljava/lang/String;
    :cond_5
    const-string v10, ">"

    invoke-virtual {p1, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 640
    if-nez v8, :cond_6

    .line 641
    const-string v8, ""

    .line 642
    :cond_6
    invoke-static {v8, p3}, Lcom/itextpdf/text/xml/XMLUtil;->escapeXML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 643
    if-eqz v6, :cond_7

    .line 644
    const-string v10, "\n"

    invoke-virtual {p1, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 645
    const/4 v10, -0x1

    if-ne p2, v10, :cond_8

    move v10, p2

    :goto_3
    invoke-static {v6, p1, v10, p3}, Lcom/itextpdf/text/pdf/SimpleBookmark;->exportToXMLNode(Ljava/util/List;Ljava/io/Writer;IZ)V

    .line 646
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 648
    :cond_7
    const-string v10, "</Title>\n"

    invoke-virtual {p1, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 645
    :cond_8
    add-int/lit8 v10, p2, 0x1

    goto :goto_3

    .line 650
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8           #title:Ljava/lang/String;
    :cond_9
    return-void
.end method

.method public static getBookmark(Lcom/itextpdf/text/pdf/PdfReader;)Ljava/util/List;
    .locals 4
    .parameter "reader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfReader;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 284
    .local v0, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->OUTLINES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 285
    .local v1, obj:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v3

    if-nez v3, :cond_1

    .line 286
    :cond_0
    const/4 v3, 0x0

    .line 288
    :goto_0
    return-object v3

    :cond_1
    move-object v2, v1

    .line 287
    check-cast v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 288
    .local v2, outlines:Lcom/itextpdf/text/pdf/PdfDictionary;
    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/itextpdf/text/pdf/SimpleBookmark;->getBookmark(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfDictionary;Z)Ljava/util/List;

    move-result-object v3

    goto :goto_0
.end method

.method public static getBookmark(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfDictionary;Z)Ljava/util/List;
    .locals 6
    .parameter "reader"
    .parameter "outline"
    .parameter "includeRoot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfReader;",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 302
    .local v0, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez p1, :cond_0

    .line 303
    const/4 v4, 0x0

    .line 313
    :goto_0
    return-object v4

    .line 304
    :cond_0
    new-instance v3, Lcom/itextpdf/text/pdf/IntHashtable;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/IntHashtable;-><init>()V

    .line 305
    .local v3, pages:Lcom/itextpdf/text/pdf/IntHashtable;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v2

    .line 306
    .local v2, numPages:I
    const/4 v1, 0x1

    .local v1, k:I
    :goto_1
    if-gt v1, v2, :cond_1

    .line 307
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageOrigRef(I)Lcom/itextpdf/text/pdf/PRIndirectReference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PRIndirectReference;->getNumber()I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/itextpdf/text/pdf/IntHashtable;->put(II)I

    .line 308
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfReader;->releasePage(I)V

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 310
    :cond_1
    if-eqz p2, :cond_2

    .line 311
    const/4 v4, 0x1

    invoke-static {p0, p1, v3, v4}, Lcom/itextpdf/text/pdf/SimpleBookmark;->bookmarkDepth(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/IntHashtable;Z)Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 313
    :cond_2
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->FIRST:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfDictionary;

    const/4 v5, 0x0

    invoke-static {p0, v4, v3, v5}, Lcom/itextpdf/text/pdf/SimpleBookmark;->bookmarkDepth(Lcom/itextpdf/text/pdf/PdfReader;Lcom/itextpdf/text/pdf/PdfDictionary;Lcom/itextpdf/text/pdf/IntHashtable;Z)Ljava/util/List;

    move-result-object v4

    goto :goto_0
.end method

.method private static getNumber(Lcom/itextpdf/text/pdf/PdfIndirectReference;)I
    .locals 4
    .parameter "indirect"

    .prologue
    .line 266
    invoke-static {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getPdfObjectRelease(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 267
    .local v1, pdfObj:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->TYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->PAGES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->contains(Lcom/itextpdf/text/pdf/PdfName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 270
    .local v0, kids:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .line 272
    .end local v0           #kids:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfIndirectReference;->getNumber()I

    move-result v2

    return v2
.end method

.method public static importFromXML(Ljava/io/InputStream;)Ljava/util/List;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 712
    new-instance v0, Lcom/itextpdf/text/pdf/SimpleBookmark;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/SimpleBookmark;-><init>()V

    .line 713
    .local v0, book:Lcom/itextpdf/text/pdf/SimpleBookmark;
    invoke-static {v0, p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->parse(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Ljava/io/InputStream;)V

    .line 714
    iget-object v1, v0, Lcom/itextpdf/text/pdf/SimpleBookmark;->topList:Ljava/util/ArrayList;

    return-object v1
.end method

.method public static importFromXML(Ljava/io/Reader;)Ljava/util/List;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 724
    new-instance v0, Lcom/itextpdf/text/pdf/SimpleBookmark;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/SimpleBookmark;-><init>()V

    .line 725
    .local v0, book:Lcom/itextpdf/text/pdf/SimpleBookmark;
    invoke-static {v0, p0}, Lcom/itextpdf/text/xml/simpleparser/SimpleXMLParser;->parse(Lcom/itextpdf/text/xml/simpleparser/SimpleXMLDocHandler;Ljava/io/Reader;)V

    .line 726
    iget-object v1, v0, Lcom/itextpdf/text/pdf/SimpleBookmark;->topList:Ljava/util/ArrayList;

    return-object v1
.end method

.method public static iterateOutlines(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/pdf/PdfIndirectReference;Ljava/util/List;Z)[Ljava/lang/Object;
    .locals 24
    .parameter "writer"
    .parameter "parent"
    .parameter
    .parameter "namedAsNames"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/text/pdf/PdfWriter;",
            "Lcom/itextpdf/text/pdf/PdfIndirectReference;",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;Z)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    .local p2, kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-object/from16 v16, v0

    .line 535
    .local v16, refs:[Lcom/itextpdf/text/pdf/PdfIndirectReference;
    const/4 v10, 0x0

    .local v10, k:I
    :goto_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v10, v0, :cond_0

    .line 536
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/PdfWriter;->getPdfIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v20

    aput-object v20, v16, v10

    .line 535
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 537
    :cond_0
    const/4 v15, 0x0

    .line 538
    .local v15, ptr:I
    const/4 v7, 0x0

    .line 539
    .local v7, count:I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v9

    .local v9, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_d

    .line 540
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    .line 541
    .local v12, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v11, 0x0

    .line 542
    .local v11, lower:[Ljava/lang/Object;
    const-string v20, "Kids"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 543
    .local v18, subKid:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v18, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_1

    .line 544
    aget-object v20, v16, v15

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/SimpleBookmark;->iterateOutlines(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/pdf/PdfIndirectReference;Ljava/util/List;Z)[Ljava/lang/Object;

    move-result-object v11

    .line 545
    :cond_1
    new-instance v14, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v14}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 546
    .local v14, outline:Lcom/itextpdf/text/pdf/PdfDictionary;
    add-int/lit8 v7, v7, 0x1

    .line 547
    if-eqz v11, :cond_2

    .line 548
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->FIRST:Lcom/itextpdf/text/pdf/PdfName;

    const/16 v20, 0x0

    aget-object v20, v11, v20

    check-cast v20, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 549
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->LAST:Lcom/itextpdf/text/pdf/PdfName;

    const/16 v20, 0x1

    aget-object v20, v11, v20

    check-cast v20, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 550
    const/16 v20, 0x2

    aget-object v20, v11, v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 551
    .local v13, n:I
    const-string v20, "false"

    const-string v21, "Open"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 552
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->COUNT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v21, Lcom/itextpdf/text/pdf/PdfNumber;

    neg-int v0, v13

    move/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 559
    .end local v13           #n:I
    :cond_2
    :goto_2
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->PARENT:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v14, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 560
    if-lez v15, :cond_3

    .line 561
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->PREV:Lcom/itextpdf/text/pdf/PdfName;

    add-int/lit8 v21, v15, -0x1

    aget-object v21, v16, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 562
    :cond_3
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ge v15, v0, :cond_4

    .line 563
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->NEXT:Lcom/itextpdf/text/pdf/PdfName;

    add-int/lit8 v21, v15, 0x1

    aget-object v21, v16, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 564
    :cond_4
    sget-object v21, Lcom/itextpdf/text/pdf/PdfName;->TITLE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v22, Lcom/itextpdf/text/pdf/PdfString;

    const-string v20, "Title"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    const-string v23, "UnicodeBig"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 565
    const-string v20, "Color"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 566
    .local v6, color:Ljava/lang/String;
    if-eqz v6, :cond_9

    .line 568
    :try_start_0
    new-instance v4, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v4}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 569
    .local v4, arr:Lcom/itextpdf/text/pdf/PdfArray;
    new-instance v19, Ljava/util/StringTokenizer;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 570
    .local v19, tk:Ljava/util/StringTokenizer;
    const/4 v10, 0x0

    :goto_3
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ge v10, v0, :cond_8

    .line 571
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    .line 572
    .local v8, f:F
    const/16 v20, 0x0

    cmpg-float v20, v8, v20

    if-gez v20, :cond_5

    const/4 v8, 0x0

    .line 573
    :cond_5
    const/high16 v20, 0x3f80

    cmpl-float v20, v8, v20

    if-lez v20, :cond_6

    const/high16 v8, 0x3f80

    .line 574
    :cond_6
    new-instance v20, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v20

    invoke-direct {v0, v8}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 555
    .end local v4           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v6           #color:Ljava/lang/String;
    .end local v8           #f:F
    .end local v19           #tk:Ljava/util/StringTokenizer;
    .restart local v13       #n:I
    :cond_7
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->COUNT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v21, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 556
    add-int/2addr v7, v13

    goto/16 :goto_2

    .line 576
    .end local v13           #n:I
    .restart local v4       #arr:Lcom/itextpdf/text/pdf/PdfArray;
    .restart local v6       #color:Ljava/lang/String;
    .restart local v19       #tk:Ljava/util/StringTokenizer;
    :cond_8
    :try_start_1
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->C:Lcom/itextpdf/text/pdf/PdfName;

    move-object/from16 v0, v20

    invoke-virtual {v14, v0, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 579
    .end local v4           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v19           #tk:Ljava/util/StringTokenizer;
    :cond_9
    :goto_4
    const-string v20, "Style"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 580
    .local v17, style:Ljava/lang/String;
    if-eqz v17, :cond_c

    .line 581
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 582
    const/4 v5, 0x0

    .line 583
    .local v5, bits:I
    const-string v20, "italic"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    if-ltz v20, :cond_a

    .line 584
    or-int/lit8 v5, v5, 0x1

    .line 585
    :cond_a
    const-string v20, "bold"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    if-ltz v20, :cond_b

    .line 586
    or-int/lit8 v5, v5, 0x2

    .line 587
    :cond_b
    if-eqz v5, :cond_c

    .line 588
    sget-object v20, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v21, Lcom/itextpdf/text/pdf/PdfNumber;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 590
    .end local v5           #bits:I
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v14, v12, v0, v1}, Lcom/itextpdf/text/pdf/SimpleBookmark;->createOutlineAction(Lcom/itextpdf/text/pdf/PdfDictionary;Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfWriter;Z)V

    .line 591
    aget-object v20, v16, v15

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 539
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 593
    .end local v6           #color:Ljava/lang/String;
    .end local v11           #lower:[Ljava/lang/Object;
    .end local v12           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14           #outline:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v17           #style:Ljava/lang/String;
    .end local v18           #subKid:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_d
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    aget-object v22, v16, v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    aget-object v22, v16, v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    return-object v20

    .line 577
    .restart local v6       #color:Ljava/lang/String;
    .restart local v11       #lower:[Ljava/lang/Object;
    .restart local v12       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v14       #outline:Lcom/itextpdf/text/pdf/PdfDictionary;
    .restart local v18       #subKid:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :catch_0
    move-exception v20

    goto :goto_4
.end method

.method private static makeBookmarkParam(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/IntHashtable;)Ljava/lang/String;
    .locals 7
    .parameter "dest"
    .parameter "pages"

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x1

    .line 246
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 247
    .local v2, s:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    .line 248
    .local v1, obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfObject;->isNumber()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    check-cast v1, Lcom/itextpdf/text/pdf/PdfNumber;

    .end local v1           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 252
    :goto_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    const/4 v0, 0x2

    .local v0, k:I
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 254
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 251
    .end local v0           #k:I
    .restart local v1       #obj:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_0
    check-cast v1, Lcom/itextpdf/text/pdf/PdfIndirectReference;

    .end local v1           #obj:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-static {v1}, Lcom/itextpdf/text/pdf/SimpleBookmark;->getNumber(Lcom/itextpdf/text/pdf/PdfIndirectReference;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/IntHashtable;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 255
    .restart local v0       #k:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static mapGotoBookmark(Ljava/util/HashMap;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/IntHashtable;)V
    .locals 2
    .parameter
    .parameter "dest"
    .parameter "pages"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/itextpdf/text/pdf/PdfObject;",
            "Lcom/itextpdf/text/pdf/IntHashtable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    const-string v0, "Named"

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .end local p1
    :cond_0
    :goto_0
    const-string v0, "Action"

    const-string v1, "GoTo"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    return-void

    .line 237
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    const-string v0, "Named"

    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 239
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfObject;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "Page"

    check-cast p1, Lcom/itextpdf/text/pdf/PdfArray;

    .end local p1
    invoke-static {p1, p2}, Lcom/itextpdf/text/pdf/SimpleBookmark;->makeBookmarkParam(Lcom/itextpdf/text/pdf/PdfArray;Lcom/itextpdf/text/pdf/IntHashtable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static shiftPageNumbers(Ljava/util/List;I[I)V
    .locals 11
    .parameter
    .parameter "pageShift"
    .parameter "pageRange"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;I[I)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-nez p0, :cond_1

    .line 420
    :cond_0
    return-void

    .line 383
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 384
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 385
    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "GoTo"

    const-string v10, "Action"

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 386
    const-string v9, "Page"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 387
    .local v7, page:Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 388
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 389
    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 391
    .local v1, idx:I
    if-gez v1, :cond_6

    .line 392
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 395
    .local v8, pageNum:I
    :goto_1
    const/4 v0, 0x0

    .line 396
    .local v0, hit:Z
    if-nez p2, :cond_7

    .line 397
    const/4 v0, 0x1

    .line 407
    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 408
    if-gez v1, :cond_9

    .line 409
    add-int v9, v8, p1

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 413
    :cond_4
    :goto_3
    const-string v9, "Page"

    invoke-virtual {v6, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .end local v0           #hit:Z
    .end local v1           #idx:I
    .end local v7           #page:Ljava/lang/String;
    .end local v8           #pageNum:I
    :cond_5
    const-string v9, "Kids"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 417
    .local v4, kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-eqz v4, :cond_2

    .line 418
    invoke-static {v4, p1, p2}, Lcom/itextpdf/text/pdf/SimpleBookmark;->shiftPageNumbers(Ljava/util/List;I[I)V

    goto :goto_0

    .line 394
    .end local v4           #kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v1       #idx:I
    .restart local v7       #page:Ljava/lang/String;
    :cond_6
    const/4 v9, 0x0

    invoke-virtual {v7, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .restart local v8       #pageNum:I
    goto :goto_1

    .line 399
    .restart local v0       #hit:Z
    :cond_7
    array-length v9, p2

    and-int/lit8 v5, v9, -0x2

    .line 400
    .local v5, len:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_4
    if-ge v3, v5, :cond_3

    .line 401
    aget v9, p2, v3

    if-lt v8, v9, :cond_8

    add-int/lit8 v9, v3, 0x1

    aget v9, p2, v9

    if-gt v8, v9, :cond_8

    .line 402
    const/4 v0, 0x1

    .line 403
    goto :goto_2

    .line 400
    :cond_8
    add-int/lit8 v3, v3, 0x2

    goto :goto_4

    .line 411
    .end local v3           #k:I
    .end local v5           #len:I
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    add-int v10, v8, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3
.end method


# virtual methods
.method public endDocument()V
    .locals 0

    .prologue
    .line 730
    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 9
    .parameter "tag"

    .prologue
    const/4 v8, 0x0

    .line 734
    const-string v5, "Bookmark"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 735
    iget-object v5, p0, Lcom/itextpdf/text/pdf/SimpleBookmark;->attr:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 762
    :goto_0
    return-void

    .line 738
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "bookmark.end.tag.out.of.place"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 740
    :cond_1
    const-string v5, "Title"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 741
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "invalid.end.tag.1"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 742
    :cond_2
    iget-object v5, p0, Lcom/itextpdf/text/pdf/SimpleBookmark;->attr:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 743
    .local v0, attributes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "Title"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 744
    .local v4, title:Ljava/lang/String;
    const-string v5, "Title"

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    const-string v5, "Named"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 746
    .local v2, named:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 747
    const-string v5, "Named"

    invoke-static {v2}, Lcom/itextpdf/text/pdf/SimpleNamedDestination;->unEscapeBinaryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    :cond_3
    const-string v5, "NamedN"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #named:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 749
    .restart local v2       #named:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 750
    const-string v5, "NamedN"

    invoke-static {v2}, Lcom/itextpdf/text/pdf/SimpleNamedDestination;->unEscapeBinaryString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    :cond_4
    iget-object v5, p0, Lcom/itextpdf/text/pdf/SimpleBookmark;->attr:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 752
    iget-object v5, p0, Lcom/itextpdf/text/pdf/SimpleBookmark;->topList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 754
    :cond_5
    iget-object v5, p0, Lcom/itextpdf/text/pdf/SimpleBookmark;->attr:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 755
    .local v3, parent:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "Kids"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 756
    .local v1, kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    if-nez v1, :cond_6

    .line 757
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 758
    .restart local v1       #kids:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const-string v5, "Kids"

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    :cond_6
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public startDocument()V
    .locals 0

    .prologue
    .line 765
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, h:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 768
    iget-object v1, p0, Lcom/itextpdf/text/pdf/SimpleBookmark;->topList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 769
    const-string v1, "Bookmark"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 770
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/SimpleBookmark;->topList:Ljava/util/ArrayList;

    .line 782
    :goto_0
    return-void

    .line 774
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "root.element.is.not.bookmark.1"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 776
    :cond_1
    const-string v1, "Title"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 777
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "tag.1.not.allowed"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 778
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 779
    .local v0, attributes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const-string v1, "Kids"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    iget-object v1, p0, Lcom/itextpdf/text/pdf/SimpleBookmark;->attr:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public text(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 785
    iget-object v2, p0, Lcom/itextpdf/text/pdf/SimpleBookmark;->attr:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 791
    :goto_0
    return-void

    .line 787
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/SimpleBookmark;->attr:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 788
    .local v0, attributes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "Title"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 789
    .local v1, title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 790
    const-string v2, "Title"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
