.class public Lcom/itextpdf/text/pdf/PdfChunk;
.super Ljava/lang/Object;
.source "PdfChunk.java"


# static fields
.field private static final ITALIC_ANGLE:F = 0.21256f

.field private static final keysAttributes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final keysNoStroke:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final singleSpace:[C

.field private static final thisChunk:[Lcom/itextpdf/text/pdf/PdfChunk;


# instance fields
.field protected attributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected baseFont:Lcom/itextpdf/text/pdf/BaseFont;

.field protected changeLeading:Z

.field protected encoding:Ljava/lang/String;

.field protected font:Lcom/itextpdf/text/pdf/PdfFont;

.field protected image:Lcom/itextpdf/text/Image;

.field protected newlineSplit:Z

.field protected noStroke:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected offsetX:F

.field protected offsetY:F

.field protected splitCharacter:Lcom/itextpdf/text/SplitCharacter;

.field protected value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 70
    new-array v0, v3, [C

    const/4 v1, 0x0

    const/16 v2, 0x20

    aput-char v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/PdfChunk;->singleSpace:[C

    .line 71
    new-array v0, v3, [Lcom/itextpdf/text/pdf/PdfChunk;

    sput-object v0, Lcom/itextpdf/text/pdf/PdfChunk;->thisChunk:[Lcom/itextpdf/text/pdf/PdfChunk;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfChunk;->keysAttributes:Ljava/util/HashSet;

    .line 77
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/PdfChunk;->keysNoStroke:Ljava/util/HashSet;

    .line 80
    sget-object v0, Lcom/itextpdf/text/pdf/PdfChunk;->keysAttributes:Ljava/util/HashSet;

    const-string v1, "ACTION"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/itextpdf/text/pdf/PdfChunk;->keysAttributes:Ljava/util/HashSet;

    const-string v1, "UNDERLINE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lcom/itextpdf/text/pdf/PdfChunk;->keysAttributes:Ljava/util/HashSet;

    const-string v1, "REMOTEGOTO"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lcom/itextpdf/text/pdf/PdfChunk;->keysAttributes:Ljava/util/HashSet;

    const-string v1, "LOCALGOTO"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/itextpdf/text/pdf/PdfChunk;->keysAttributes:Ljava/util/HashSet;

    const-string v1, "LOCALDESTINATION"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lcom/itextpdf/text/pdf/PdfChunk;->keysAttributes:Ljava/util/HashSet;

    const-string v1, "GENERICTAG"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/itextpdf/text/pdf/PdfChunk;->keysAttributes:Ljava/util/HashSet;

    const-string v1, "NEWPAGE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/itextpdf/text/pdf/PdfChunk;->keysAttributes:Ljava/util/HashSet;

    const-string v1, "IMAGE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lcom/itextpdf/text/pdf/PdfChunk;->keysAttributes:Ljava/util/HashSet;

    const-string v1, "BACKGROUND"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lcom/itextpdf/text/pdf/PdfChunk;->keysAttributes:Ljava/util/HashSet;

    const-string v1, "PDFANNOTATION"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lcom/itextpdf/text/pdf/PdfChunk;->keysAttributes:Ljava/util/HashSet;

    const-string v1, "SKEW"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/itextpdf/text/pdf/PdfChunk;->keysAttributes:Ljava/util/HashSet;

    const-string v1, "HSCALE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/itextpdf/text/pdf/PdfChunk;->keysAttributes:Ljava/util/HashSet;

    const-string v1, "SEPARATOR"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/itextpdf/text/pdf/PdfChunk;->keysAttributes:Ljava/util/HashSet;

    const-string v1, "TAB"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/itextpdf/text/pdf/PdfChunk;->keysAttributes:Ljava/util/HashSet;

    const-string v1, "CHAR_SPACING"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/itextpdf/text/pdf/PdfChunk;->keysNoStroke:Ljava/util/HashSet;

    const-string v1, "SUBSUPSCRIPT"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/itextpdf/text/pdf/PdfChunk;->keysNoStroke:Ljava/util/HashSet;

    const-string v1, "SPLITCHARACTER"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/itextpdf/text/pdf/PdfChunk;->keysNoStroke:Ljava/util/HashSet;

    const-string v1, "HYPHENATION"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/itextpdf/text/pdf/PdfChunk;->keysNoStroke:Ljava/util/HashSet;

    const-string v1, "TEXTRENDERMODE"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/text/Chunk;Lcom/itextpdf/text/pdf/PdfAction;)V
    .locals 17
    .parameter "chunk"
    .parameter "action"

    .prologue
    .line 185
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const-string v11, ""

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    .line 107
    const-string v11, "Cp1252"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->encoding:Ljava/lang/String;

    .line 122
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    .line 130
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->noStroke:Ljava/util/HashMap;

    .line 145
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->changeLeading:Z

    .line 186
    sget-object v11, Lcom/itextpdf/text/pdf/PdfChunk;->thisChunk:[Lcom/itextpdf/text/pdf/PdfChunk;

    const/4 v12, 0x0

    aput-object p0, v11, v12

    .line 187
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Chunk;->getContent()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    .line 189
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Chunk;->getFont()Lcom/itextpdf/text/Font;

    move-result-object v3

    .line 190
    .local v3, f:Lcom/itextpdf/text/Font;
    invoke-virtual {v3}, Lcom/itextpdf/text/Font;->getSize()F

    move-result v8

    .line 191
    .local v8, size:F
    const/high16 v11, -0x4080

    cmpl-float v11, v8, v11

    if-nez v11, :cond_0

    .line 192
    const/high16 v8, 0x4140

    .line 193
    :cond_0
    invoke-virtual {v3}, Lcom/itextpdf/text/Font;->getBaseFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    .line 194
    invoke-virtual {v3}, Lcom/itextpdf/text/Font;->getStyle()I

    move-result v9

    .line 195
    .local v9, style:I
    const/4 v11, -0x1

    if-ne v9, v11, :cond_1

    .line 196
    const/4 v9, 0x0

    .line 198
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    if-nez v11, :cond_4

    .line 200
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/itextpdf/text/Font;->getCalculatedBaseFont(Z)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    .line 210
    :cond_2
    :goto_0
    new-instance v11, Lcom/itextpdf/text/pdf/PdfFont;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfChunk;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    invoke-direct {v11, v12, v8}, Lcom/itextpdf/text/pdf/PdfFont;-><init>(Lcom/itextpdf/text/pdf/BaseFont;F)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    .line 212
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Chunk;->getAttributes()Ljava/util/HashMap;

    move-result-object v1

    .line 213
    .local v1, attr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_8

    .line 214
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 215
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 216
    .local v6, name:Ljava/lang/String;
    sget-object v11, Lcom/itextpdf/text/pdf/PdfChunk;->keysAttributes:Ljava/util/HashSet;

    invoke-virtual {v11, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 217
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 204
    .end local v1           #attr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #name:Ljava/lang/String;
    :cond_4
    and-int/lit8 v11, v9, 0x1

    if-eqz v11, :cond_5

    .line 205
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    const-string v12, "TEXTRENDERMODE"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    new-instance v15, Ljava/lang/Float;

    const/high16 v16, 0x41f0

    div-float v16, v8, v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/Float;-><init>(F)V

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const/4 v15, 0x0

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_5
    and-int/lit8 v11, v9, 0x2

    if-eqz v11, :cond_2

    .line 208
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    const-string v12, "SKEW"

    const/4 v13, 0x2

    new-array v13, v13, [F

    fill-array-data v13, :array_0

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 219
    .restart local v1       #attr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #name:Ljava/lang/String;
    :cond_6
    sget-object v11, Lcom/itextpdf/text/pdf/PdfChunk;->keysNoStroke:Ljava/util/HashSet;

    invoke-virtual {v11, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 220
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->noStroke:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 223
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #name:Ljava/lang/String;
    :cond_7
    const-string v11, ""

    const-string v12, "GENERICTAG"

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 224
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    const-string v12, "GENERICTAG"

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/Chunk;->getContent()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_8
    invoke-virtual {v3}, Lcom/itextpdf/text/Font;->isUnderlined()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 228
    const/4 v11, 0x2

    new-array v7, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-object v12, v7, v11

    const/4 v11, 0x1

    const/4 v12, 0x5

    new-array v12, v12, [F

    fill-array-data v12, :array_1

    aput-object v12, v7, v11

    .line 229
    .local v7, obj:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    const-string v12, "UNDERLINE"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Ljava/lang/Object;

    check-cast v11, [[Ljava/lang/Object;

    invoke-static {v11, v7}, Lcom/itextpdf/text/Utilities;->addToArray([[Ljava/lang/Object;[Ljava/lang/Object;)[[Ljava/lang/Object;

    move-result-object v10

    .line 230
    .local v10, unders:[[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    const-string v12, "UNDERLINE"

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    .end local v7           #obj:[Ljava/lang/Object;
    .end local v10           #unders:[[Ljava/lang/Object;
    :cond_9
    invoke-virtual {v3}, Lcom/itextpdf/text/Font;->isStrikethru()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 233
    const/4 v11, 0x2

    new-array v7, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-object v12, v7, v11

    const/4 v11, 0x1

    const/4 v12, 0x5

    new-array v12, v12, [F

    fill-array-data v12, :array_2

    aput-object v12, v7, v11

    .line 234
    .restart local v7       #obj:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    const-string v12, "UNDERLINE"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Ljava/lang/Object;

    check-cast v11, [[Ljava/lang/Object;

    invoke-static {v11, v7}, Lcom/itextpdf/text/Utilities;->addToArray([[Ljava/lang/Object;[Ljava/lang/Object;)[[Ljava/lang/Object;

    move-result-object v10

    .line 235
    .restart local v10       #unders:[[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    const-string v12, "UNDERLINE"

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .end local v7           #obj:[Ljava/lang/Object;
    .end local v10           #unders:[[Ljava/lang/Object;
    :cond_a
    if-eqz p2, :cond_b

    .line 238
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    const-string v12, "ACTION"

    move-object/from16 v0, p2

    invoke-virtual {v11, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->noStroke:Ljava/util/HashMap;

    const-string v12, "COLOR"

    invoke-virtual {v3}, Lcom/itextpdf/text/Font;->getColor()Lcom/itextpdf/text/BaseColor;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->noStroke:Ljava/util/HashMap;

    const-string v12, "ENCODING"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/PdfFont;->getFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v13

    invoke-virtual {v13}, Lcom/itextpdf/text/pdf/BaseFont;->getEncoding()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    const-string v12, "IMAGE"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    move-object v7, v11

    check-cast v7, [Ljava/lang/Object;

    .line 243
    .restart local v7       #obj:[Ljava/lang/Object;
    if-nez v7, :cond_e

    .line 244
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->image:Lcom/itextpdf/text/Image;

    .line 253
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/itextpdf/text/pdf/PdfChunk;->image:Lcom/itextpdf/text/Image;

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/PdfFont;->setImage(Lcom/itextpdf/text/Image;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    const-string v12, "HSCALE"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 255
    .local v4, hs:Ljava/lang/Float;
    if-eqz v4, :cond_c

    .line 256
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v11, v12}, Lcom/itextpdf/text/pdf/PdfFont;->setHorizontalScaling(F)V

    .line 257
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/PdfFont;->getFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/text/pdf/BaseFont;->getEncoding()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->encoding:Ljava/lang/String;

    .line 258
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->noStroke:Ljava/util/HashMap;

    const-string v12, "SPLITCHARACTER"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/itextpdf/text/SplitCharacter;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->splitCharacter:Lcom/itextpdf/text/SplitCharacter;

    .line 259
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->splitCharacter:Lcom/itextpdf/text/SplitCharacter;

    if-nez v11, :cond_d

    .line 260
    sget-object v11, Lcom/itextpdf/text/pdf/DefaultSplitCharacter;->DEFAULT:Lcom/itextpdf/text/SplitCharacter;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->splitCharacter:Lcom/itextpdf/text/SplitCharacter;

    .line 261
    :cond_d
    return-void

    .line 247
    .end local v4           #hs:Ljava/lang/Float;
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    const-string v12, "HSCALE"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const/4 v11, 0x0

    aget-object v11, v7, v11

    check-cast v11, Lcom/itextpdf/text/Image;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->image:Lcom/itextpdf/text/Image;

    .line 249
    const/4 v11, 0x1

    aget-object v11, v7, v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->offsetX:F

    .line 250
    const/4 v11, 0x2

    aget-object v11, v7, v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->offsetY:F

    .line 251
    const/4 v11, 0x3

    aget-object v11, v7, v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/itextpdf/text/pdf/PdfChunk;->changeLeading:Z

    goto/16 :goto_2

    .line 208
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x54t 0xa9t 0x59t 0x3et
    .end array-data

    .line 228
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x89t 0x88t 0x88t 0x3dt
        0x0t 0x0t 0x0t 0x0t
        0xabt 0xaat 0xaat 0xbet
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 233
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x89t 0x88t 0x88t 0x3dt
        0x0t 0x0t 0x0t 0x0t
        0xabt 0xaat 0xaat 0x3et
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfChunk;)V
    .locals 4
    .parameter "string"
    .parameter "other"

    .prologue
    const/4 v3, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const-string v1, ""

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    .line 107
    const-string v1, "Cp1252"

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->encoding:Ljava/lang/String;

    .line 122
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->noStroke:Ljava/util/HashMap;

    .line 145
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/PdfChunk;->changeLeading:Z

    .line 157
    sget-object v1, Lcom/itextpdf/text/pdf/PdfChunk;->thisChunk:[Lcom/itextpdf/text/pdf/PdfChunk;

    aput-object p0, v1, v3

    .line 158
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    .line 159
    iget-object v1, p2, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    .line 160
    iget-object v1, p2, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    .line 161
    iget-object v1, p2, Lcom/itextpdf/text/pdf/PdfChunk;->noStroke:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->noStroke:Ljava/util/HashMap;

    .line 162
    iget-object v1, p2, Lcom/itextpdf/text/pdf/PdfChunk;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    .line 163
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    const-string v2, "IMAGE"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 164
    .local v0, obj:[Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 165
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->image:Lcom/itextpdf/text/Image;

    .line 172
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfFont;->getFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/BaseFont;->getEncoding()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->encoding:Ljava/lang/String;

    .line 173
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->noStroke:Ljava/util/HashMap;

    const-string v2, "SPLITCHARACTER"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/SplitCharacter;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->splitCharacter:Lcom/itextpdf/text/SplitCharacter;

    .line 174
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->splitCharacter:Lcom/itextpdf/text/SplitCharacter;

    if-nez v1, :cond_0

    .line 175
    sget-object v1, Lcom/itextpdf/text/pdf/DefaultSplitCharacter;->DEFAULT:Lcom/itextpdf/text/SplitCharacter;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->splitCharacter:Lcom/itextpdf/text/SplitCharacter;

    .line 176
    :cond_0
    return-void

    .line 167
    :cond_1
    aget-object v1, v0, v3

    check-cast v1, Lcom/itextpdf/text/Image;

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->image:Lcom/itextpdf/text/Image;

    .line 168
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->offsetX:F

    .line 169
    const/4 v1, 0x2

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->offsetY:F

    .line 170
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->changeLeading:Z

    goto :goto_0
.end method

.method public static noPrint(I)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 852
    const/16 v0, 0x200b

    if-lt p0, v0, :cond_0

    const/16 v0, 0x200f

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x202a

    if-lt p0, v0, :cond_2

    const/16 v0, 0x202e

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method adjustLeft(F)V
    .locals 8
    .parameter "newValue"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 692
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    const-string v2, "TAB"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 693
    .local v0, o:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 694
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    const-string v2, "TAB"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, v0, v5

    aput-object v4, v3, v5

    aget-object v4, v0, v6

    aput-object v4, v3, v6

    aget-object v4, v0, v7

    aput-object v4, v3, v7

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Float;

    invoke-direct {v5, p1}, Ljava/lang/Float;-><init>(F)V

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    :cond_0
    return-void
.end method

.method public changeLeading()Z
    .locals 1

    .prologue
    .line 838
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfChunk;->changeLeading:Z

    return v0
.end method

.method color()Lcom/itextpdf/text/BaseColor;
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfChunk;->noStroke:Ljava/util/HashMap;

    const-string v1, "COLOR"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/BaseColor;

    return-object v0
.end method

.method font()Lcom/itextpdf/text/pdf/PdfFont;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    return-object v0
.end method

.method getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 629
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfChunk;->noStroke:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method getCharWidth(I)F
    .locals 4
    .parameter "c"

    .prologue
    .line 842
    invoke-static {p1}, Lcom/itextpdf/text/pdf/PdfChunk;->noPrint(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 843
    const/4 v1, 0x0

    .line 848
    :goto_0
    return v1

    .line 844
    :cond_0
    const-string v1, "CHAR_SPACING"

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 845
    const-string v1, "CHAR_SPACING"

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 846
    .local v0, cs:Ljava/lang/Float;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/PdfFont;->width(I)F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfFont;->getHorizontalScaling()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    goto :goto_0

    .line 848
    .end local v0           #cs:Ljava/lang/Float;
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v1, p1}, Lcom/itextpdf/text/pdf/PdfFont;->width(I)F

    move-result v1

    goto :goto_0
.end method

.method getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfChunk;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method getImage()Lcom/itextpdf/text/Image;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfChunk;->image:Lcom/itextpdf/text/Image;

    return-object v0
.end method

.method getImageOffsetX()F
    .locals 1

    .prologue
    .line 735
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfChunk;->offsetX:F

    return v0
.end method

.method getImageOffsetY()F
    .locals 1

    .prologue
    .line 755
    iget v0, p0, Lcom/itextpdf/text/pdf/PdfChunk;->offsetY:F

    return v0
.end method

.method public getTextRise()F
    .locals 2

    .prologue
    .line 571
    const-string v1, "SUBSUPSCRIPT"

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 572
    .local v0, f:Ljava/lang/Float;
    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 575
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUnicodeEquivalent(I)I
    .locals 1
    .parameter "c"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfChunk;->baseFont:Lcom/itextpdf/text/pdf/BaseFont;

    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/BaseFont;->getUnicodeEquivalent(I)I

    move-result v0

    return v0
.end method

.method public getWidthCorrected(FF)F
    .locals 5
    .parameter "charSpacing"
    .parameter "wordSpacing"

    .prologue
    .line 556
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfChunk;->image:Lcom/itextpdf/text/Image;

    if-eqz v2, :cond_0

    .line 557
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfChunk;->image:Lcom/itextpdf/text/Image;

    invoke-virtual {v2}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v2

    add-float/2addr v2, p1

    .line 563
    :goto_0
    return v2

    .line 559
    :cond_0
    const/4 v1, 0x0

    .line 560
    .local v1, numberOfSpaces:I
    const/4 v0, -0x1

    .line 561
    .local v0, idx:I
    :goto_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    const/16 v3, 0x20

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_1

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 563
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfChunk;->width()F

    move-result v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    int-to-float v3, v1

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    goto :goto_0
.end method

.method protected getWord(Ljava/lang/String;I)I
    .locals 2
    .parameter "text"
    .parameter "start"

    .prologue
    .line 276
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 277
    .local v0, len:I
    :goto_0
    if-ge p2, v0, :cond_0

    .line 278
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 282
    :cond_0
    return p2

    .line 280
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method isAttribute(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    const/4 v0, 0x1

    .line 642
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfChunk;->noStroke:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method isExtSplitCharacter(III[C[Lcom/itextpdf/text/pdf/PdfChunk;)Z
    .locals 6
    .parameter "start"
    .parameter "current"
    .parameter "end"
    .parameter "cc"
    .parameter "ck"

    .prologue
    .line 813
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfChunk;->splitCharacter:Lcom/itextpdf/text/SplitCharacter;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/itextpdf/text/SplitCharacter;->isSplitCharacter(III[C[Lcom/itextpdf/text/pdf/PdfChunk;)Z

    move-result v0

    return v0
.end method

.method isHorizontalSeparator()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 670
    const-string v1, "SEPARATOR"

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 671
    const-string v1, "SEPARATOR"

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    .line 672
    .local v0, o:[Ljava/lang/Object;
    aget-object v1, v0, v2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 674
    .end local v0           #o:[Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0       #o:[Ljava/lang/Object;
    :cond_0
    move v1, v3

    .line 672
    goto :goto_0

    .end local v0           #o:[Ljava/lang/Object;
    :cond_1
    move v1, v3

    .line 674
    goto :goto_0
.end method

.method isImage()Z
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfChunk;->image:Lcom/itextpdf/text/Image;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNewlineSplit()Z
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/PdfChunk;->newlineSplit:Z

    return v0
.end method

.method isSeparator()Z
    .locals 1

    .prologue
    .line 661
    const-string v0, "SEPARATOR"

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isSpecialEncoding()Z
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfChunk;->encoding:Ljava/lang/String;

    const-string v1, "UnicodeBigUnmarked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfChunk;->encoding:Ljava/lang/String;

    const-string v1, "Identity-H"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isStroked()Z
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTab()Z
    .locals 1

    .prologue
    .line 683
    const-string v0, "TAB"

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method length()I
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method lengthUtf32()I
    .locals 5

    .prologue
    .line 800
    const-string v3, "Identity-H"

    iget-object v4, p0, Lcom/itextpdf/text/pdf/PdfChunk;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 801
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 809
    :cond_0
    return v2

    .line 802
    :cond_1
    const/4 v2, 0x0

    .line 803
    .local v2, total:I
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 804
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 805
    iget-object v3, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/itextpdf/text/Utilities;->isSurrogateHigh(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 806
    add-int/lit8 v0, v0, 0x1

    .line 807
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 804
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method setImageOffsetX(F)V
    .locals 0
    .parameter "offsetX"

    .prologue
    .line 725
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->offsetX:F

    .line 726
    return-void
.end method

.method setImageOffsetY(F)V
    .locals 0
    .parameter "offsetY"

    .prologue
    .line 745
    iput p1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->offsetY:F

    .line 746
    return-void
.end method

.method setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 765
    iput-object p1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    .line 766
    return-void
.end method

.method split(F)Lcom/itextpdf/text/pdf/PdfChunk;
    .locals 29
    .parameter "width"

    .prologue
    .line 295
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->newlineSplit:Z

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->image:Lcom/itextpdf/text/Image;

    if-eqz v3, :cond_1

    .line 297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->image:Lcom/itextpdf/text/Image;

    invoke-virtual {v3}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v3

    cmpl-float v3, v3, p1

    if-lez v3, :cond_0

    .line 298
    new-instance v22, Lcom/itextpdf/text/pdf/PdfChunk;

    const-string v3, "\ufffc"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v3, v1}, Lcom/itextpdf/text/pdf/PdfChunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfChunk;)V

    .line 299
    .local v22, pc:Lcom/itextpdf/text/pdf/PdfChunk;
    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    .line 300
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    .line 301
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->image:Lcom/itextpdf/text/Image;

    .line 302
    invoke-static {}, Lcom/itextpdf/text/pdf/PdfFont;->getDefaultFont()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    .line 418
    .end local v22           #pc:Lcom/itextpdf/text/pdf/PdfChunk;
    :goto_0
    return-object v22

    .line 306
    :cond_0
    const/16 v22, 0x0

    goto :goto_0

    .line 308
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->noStroke:Ljava/util/HashMap;

    const-string v4, "HYPHENATION"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/itextpdf/text/pdf/HyphenationEvent;

    .line 309
    .local v18, hyphenationEvent:Lcom/itextpdf/text/pdf/HyphenationEvent;
    const/4 v5, 0x0

    .line 310
    .local v5, currentPosition:I
    const/16 v26, -0x1

    .line 311
    .local v26, splitPosition:I
    const/16 v16, 0x0

    .line 315
    .local v16, currentWidth:F
    const/16 v20, -0x1

    .line 316
    .local v20, lastSpace:I
    const/16 v21, 0x0

    .line 317
    .local v21, lastSpaceWidth:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    .line 318
    .local v6, length:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 319
    .local v7, valueArray:[C
    const/4 v14, 0x0

    .line 320
    .local v14, character:C
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfFont;->getFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v17

    .line 321
    .local v17, ft:Lcom/itextpdf/text/pdf/BaseFont;
    const/16 v27, 0x0

    .line 322
    .local v27, surrogate:Z
    invoke-virtual/range {v17 .. v17}, Lcom/itextpdf/text/pdf/BaseFont;->getFontType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    const/16 v3, 0x20

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/BaseFont;->getUnicodeEquivalent(I)I

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_a

    .line 323
    :goto_1
    if-ge v5, v6, :cond_5

    .line 325
    aget-char v15, v7, v5

    .line 326
    .local v15, cidChar:C
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/BaseFont;->getUnicodeEquivalent(I)I

    move-result v3

    int-to-char v14, v3

    .line 328
    const/16 v3, 0xa

    if-ne v14, v3, :cond_3

    .line 329
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->newlineSplit:Z

    .line 330
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .line 331
    .local v25, returnValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    .line 333
    const-string v3, "\u0001"

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    .line 335
    :cond_2
    new-instance v22, Lcom/itextpdf/text/pdf/PdfChunk;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfChunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfChunk;)V

    .line 336
    .restart local v22       #pc:Lcom/itextpdf/text/pdf/PdfChunk;
    goto/16 :goto_0

    .line 338
    .end local v22           #pc:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v25           #returnValue:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/PdfChunk;->getCharWidth(I)F

    move-result v3

    add-float v16, v16, v3

    .line 339
    const/16 v3, 0x20

    if-ne v14, v3, :cond_4

    .line 340
    add-int/lit8 v20, v5, 0x1

    .line 341
    move/from16 v21, v16

    .line 343
    :cond_4
    cmpl-float v3, v16, p1

    if-lez v3, :cond_6

    .line 390
    .end local v15           #cidChar:C
    :cond_5
    :goto_2
    if-ne v5, v6, :cond_12

    .line 391
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 346
    .restart local v15       #cidChar:C
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->splitCharacter:Lcom/itextpdf/text/SplitCharacter;

    const/4 v4, 0x0

    sget-object v8, Lcom/itextpdf/text/pdf/PdfChunk;->thisChunk:[Lcom/itextpdf/text/pdf/PdfChunk;

    invoke-interface/range {v3 .. v8}, Lcom/itextpdf/text/SplitCharacter;->isSplitCharacter(III[C[Lcom/itextpdf/text/pdf/PdfChunk;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 347
    add-int/lit8 v26, v5, 0x1

    .line 348
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 349
    goto :goto_1

    .line 383
    .end local v15           #cidChar:C
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->splitCharacter:Lcom/itextpdf/text/SplitCharacter;

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/itextpdf/text/SplitCharacter;->isSplitCharacter(III[C[Lcom/itextpdf/text/pdf/PdfChunk;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 384
    add-int/lit8 v26, v5, 0x1

    .line 385
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 352
    :cond_a
    if-ge v5, v6, :cond_5

    .line 354
    aget-char v14, v7, v5

    .line 356
    const/16 v3, 0xd

    if-eq v14, v3, :cond_b

    const/16 v3, 0xa

    if-ne v14, v3, :cond_e

    .line 357
    :cond_b
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->newlineSplit:Z

    .line 358
    const/16 v19, 0x1

    .line 359
    .local v19, inc:I
    const/16 v3, 0xd

    if-ne v14, v3, :cond_c

    add-int/lit8 v3, v5, 0x1

    if-ge v3, v6, :cond_c

    add-int/lit8 v3, v5, 0x1

    aget-char v3, v7, v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_c

    .line 360
    const/16 v19, 0x2

    .line 361
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    add-int v4, v5, v19

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .line 362
    .restart local v25       #returnValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    .line 363
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_d

    .line 364
    const-string v3, " "

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    .line 366
    :cond_d
    new-instance v22, Lcom/itextpdf/text/pdf/PdfChunk;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfChunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfChunk;)V

    .line 367
    .restart local v22       #pc:Lcom/itextpdf/text/pdf/PdfChunk;
    goto/16 :goto_0

    .line 369
    .end local v19           #inc:I
    .end local v22           #pc:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v25           #returnValue:Ljava/lang/String;
    :cond_e
    invoke-static {v7, v5}, Lcom/itextpdf/text/Utilities;->isSurrogatePair([CI)Z

    move-result v27

    .line 370
    if-eqz v27, :cond_11

    .line 371
    aget-char v3, v7, v5

    add-int/lit8 v4, v5, 0x1

    aget-char v4, v7, v4

    invoke-static {v3, v4}, Lcom/itextpdf/text/Utilities;->convertToUtf32(CC)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfChunk;->getCharWidth(I)F

    move-result v3

    add-float v16, v16, v3

    .line 374
    :goto_3
    const/16 v3, 0x20

    if-ne v14, v3, :cond_f

    .line 375
    add-int/lit8 v20, v5, 0x1

    .line 376
    move/from16 v21, v16

    .line 378
    :cond_f
    if-eqz v27, :cond_10

    .line 379
    add-int/lit8 v5, v5, 0x1

    .line 380
    :cond_10
    cmpl-float v3, v16, p1

    if-lez v3, :cond_8

    goto/16 :goto_2

    .line 373
    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/itextpdf/text/pdf/PdfChunk;->getCharWidth(I)F

    move-result v3

    add-float v16, v16, v3

    goto :goto_3

    .line 394
    :cond_12
    if-gez v26, :cond_13

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 396
    .restart local v25       #returnValue:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    .line 397
    new-instance v22, Lcom/itextpdf/text/pdf/PdfChunk;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfChunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfChunk;)V

    .line 398
    .restart local v22       #pc:Lcom/itextpdf/text/pdf/PdfChunk;
    goto/16 :goto_0

    .line 400
    .end local v22           #pc:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v25           #returnValue:Ljava/lang/String;
    :cond_13
    move/from16 v0, v20

    move/from16 v1, v26

    if-le v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/itextpdf/text/pdf/PdfChunk;->splitCharacter:Lcom/itextpdf/text/SplitCharacter;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    sget-object v12, Lcom/itextpdf/text/pdf/PdfChunk;->singleSpace:[C

    const/4 v13, 0x0

    invoke-interface/range {v8 .. v13}, Lcom/itextpdf/text/SplitCharacter;->isSplitCharacter(III[C[Lcom/itextpdf/text/pdf/PdfChunk;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 401
    move/from16 v26, v20

    .line 402
    :cond_14
    if-eqz v18, :cond_15

    if-ltz v20, :cond_15

    move/from16 v0, v20

    if-ge v0, v5, :cond_15

    .line 403
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/text/pdf/PdfChunk;->getWord(Ljava/lang/String;I)I

    move-result v28

    .line 404
    .local v28, wordIdx:I
    move/from16 v0, v28

    move/from16 v1, v20

    if-le v0, v1, :cond_15

    .line 405
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    move/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfFont;->getFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfFont;->size()F

    move-result v8

    sub-float v9, p1, v21

    move-object/from16 v0, v18

    invoke-interface {v0, v3, v4, v8, v9}, Lcom/itextpdf/text/pdf/HyphenationEvent;->getHyphenatedWordPre(Ljava/lang/String;Lcom/itextpdf/text/pdf/BaseFont;FF)Ljava/lang/String;

    move-result-object v24

    .line 406
    .local v24, pre:Ljava/lang/String;
    invoke-interface/range {v18 .. v18}, Lcom/itextpdf/text/pdf/HyphenationEvent;->getHyphenatedWordPost()Ljava/lang/String;

    move-result-object v23

    .line 407
    .local v23, post:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_15

    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 409
    .restart local v25       #returnValue:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    const/4 v8, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfChunk;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    .line 410
    new-instance v22, Lcom/itextpdf/text/pdf/PdfChunk;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfChunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfChunk;)V

    .line 411
    .restart local v22       #pc:Lcom/itextpdf/text/pdf/PdfChunk;
    goto/16 :goto_0

    .line 415
    .end local v22           #pc:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v23           #post:Ljava/lang/String;
    .end local v24           #pre:Ljava/lang/String;
    .end local v25           #returnValue:Ljava/lang/String;
    .end local v28           #wordIdx:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .line 416
    .restart local v25       #returnValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    const/4 v4, 0x0

    move/from16 v0, v26

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfChunk;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    .line 417
    new-instance v22, Lcom/itextpdf/text/pdf/PdfChunk;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/PdfChunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfChunk;)V

    .line 418
    .restart local v22       #pc:Lcom/itextpdf/text/pdf/PdfChunk;
    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    return-object v0
.end method

.method trim(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "string"

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    .line 823
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfFont;->getFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    .line 824
    .local v0, ft:Lcom/itextpdf/text/pdf/BaseFont;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/BaseFont;->getFontType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/BaseFont;->getUnicodeEquivalent(I)I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 825
    :goto_0
    const-string v1, "\u0001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 826
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 830
    :cond_0
    :goto_1
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\t"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 831
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 834
    :cond_2
    return-object p1
.end method

.method public trimFirstSpace()F
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x1

    .line 602
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfFont;->getFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    .line 603
    .local v0, ft:Lcom/itextpdf/text/pdf/BaseFont;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/BaseFont;->getFontType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/BaseFont;->getUnicodeEquivalent(I)I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 604
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    const-string v2, "\u0001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    .line 606
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfFont;->width(I)F

    move-result v1

    .line 615
    :goto_0
    return v1

    .line 610
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 611
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    .line 612
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfFont;->width(I)F

    move-result v1

    goto :goto_0

    .line 615
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public trimLastSpace()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x20

    const/4 v3, 0x1

    .line 585
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfFont;->getFont()Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    .line 586
    .local v0, ft:Lcom/itextpdf/text/pdf/BaseFont;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/BaseFont;->getFontType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/BaseFont;->getUnicodeEquivalent(I)I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 587
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    const-string v2, "\u0001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    .line 589
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v1, v3}, Lcom/itextpdf/text/pdf/PdfFont;->width(I)F

    move-result v1

    .line 598
    :goto_0
    return v1

    .line 593
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 594
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    .line 595
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v1, v4}, Lcom/itextpdf/text/pdf/PdfFont;->width(I)F

    move-result v1

    goto :goto_0

    .line 598
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method truncate(F)Lcom/itextpdf/text/pdf/PdfChunk;
    .locals 11
    .parameter "width"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 430
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfChunk;->image:Lcom/itextpdf/text/Image;

    if-eqz v8, :cond_2

    .line 431
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfChunk;->image:Lcom/itextpdf/text/Image;

    invoke-virtual {v8}, Lcom/itextpdf/text/Image;->getScaledWidth()F

    move-result v8

    cmpl-float v8, v8, p1

    if-lez v8, :cond_1

    .line 433
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfChunk;->image:Lcom/itextpdf/text/Image;

    invoke-virtual {v8}, Lcom/itextpdf/text/Image;->isScaleToFitLineWhenOverflow()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 434
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfChunk;->image:Lcom/itextpdf/text/Image;

    invoke-virtual {v8}, Lcom/itextpdf/text/Image;->getWidth()F

    move-result v8

    div-float v8, p1, v8

    const/high16 v9, 0x42c8

    mul-float v5, v8, v9

    .line 435
    .local v5, scalePercent:F
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfChunk;->image:Lcom/itextpdf/text/Image;

    invoke-virtual {v8, v5}, Lcom/itextpdf/text/Image;->scalePercent(F)V

    move-object v3, v7

    .line 494
    .end local v5           #scalePercent:F
    :goto_0
    return-object v3

    .line 438
    :cond_0
    new-instance v3, Lcom/itextpdf/text/pdf/PdfChunk;

    const-string v8, ""

    invoke-direct {v3, v8, p0}, Lcom/itextpdf/text/pdf/PdfChunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfChunk;)V

    .line 439
    .local v3, pc:Lcom/itextpdf/text/pdf/PdfChunk;
    const-string v8, ""

    iput-object v8, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    .line 440
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfChunk;->attributes:Ljava/util/HashMap;

    const-string v9, "IMAGE"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iput-object v7, p0, Lcom/itextpdf/text/pdf/PdfChunk;->image:Lcom/itextpdf/text/Image;

    .line 442
    invoke-static {}, Lcom/itextpdf/text/pdf/PdfFont;->getDefaultFont()Lcom/itextpdf/text/pdf/PdfFont;

    move-result-object v7

    iput-object v7, p0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    goto :goto_0

    .end local v3           #pc:Lcom/itextpdf/text/pdf/PdfChunk;
    :cond_1
    move-object v3, v7

    .line 446
    goto :goto_0

    .line 449
    :cond_2
    const/4 v0, 0x0

    .line 450
    .local v0, currentPosition:I
    const/4 v1, 0x0

    .line 453
    .local v1, currentWidth:F
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    invoke-virtual {v8}, Lcom/itextpdf/text/pdf/PdfFont;->width()F

    move-result v8

    cmpg-float v8, p1, v8

    if-gez v8, :cond_3

    .line 454
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 455
    .local v4, returnValue:Ljava/lang/String;
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    .line 456
    new-instance v3, Lcom/itextpdf/text/pdf/PdfChunk;

    invoke-direct {v3, v4, p0}, Lcom/itextpdf/text/pdf/PdfChunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfChunk;)V

    .line 457
    .restart local v3       #pc:Lcom/itextpdf/text/pdf/PdfChunk;
    goto :goto_0

    .line 462
    .end local v3           #pc:Lcom/itextpdf/text/pdf/PdfChunk;
    .end local v4           #returnValue:Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    .line 463
    .local v2, length:I
    const/4 v6, 0x0

    .line 464
    .local v6, surrogate:Z
    :goto_1
    if-ge v0, v2, :cond_4

    .line 466
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/itextpdf/text/Utilities;->isSurrogatePair(Ljava/lang/String;I)Z

    move-result v6

    .line 467
    if-eqz v6, :cond_5

    .line 468
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-static {v8, v0}, Lcom/itextpdf/text/Utilities;->convertToUtf32(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/itextpdf/text/pdf/PdfChunk;->getCharWidth(I)F

    move-result v8

    add-float/2addr v1, v8

    .line 471
    :goto_2
    cmpl-float v8, v1, p1

    if-lez v8, :cond_6

    .line 479
    :cond_4
    if-ne v0, v2, :cond_8

    move-object v3, v7

    .line 480
    goto :goto_0

    .line 470
    :cond_5
    iget-object v8, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {p0, v8}, Lcom/itextpdf/text/pdf/PdfChunk;->getCharWidth(I)F

    move-result v8

    add-float/2addr v1, v8

    goto :goto_2

    .line 473
    :cond_6
    if-eqz v6, :cond_7

    .line 474
    add-int/lit8 v0, v0, 0x1

    .line 475
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 486
    :cond_8
    if-nez v0, :cond_9

    .line 487
    const/4 v0, 0x1

    .line 488
    if-eqz v6, :cond_9

    .line 489
    add-int/lit8 v0, v0, 0x1

    .line 491
    :cond_9
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 492
    .restart local v4       #returnValue:Ljava/lang/String;
    iget-object v7, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v7, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    .line 493
    new-instance v3, Lcom/itextpdf/text/pdf/PdfChunk;

    invoke-direct {v3, v4, p0}, Lcom/itextpdf/text/pdf/PdfChunk;-><init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfChunk;)V

    .line 494
    .restart local v3       #pc:Lcom/itextpdf/text/pdf/PdfChunk;
    goto/16 :goto_0
.end method

.method width()F
    .locals 4

    .prologue
    .line 526
    const-string v1, "CHAR_SPACING"

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    const-string v1, "CHAR_SPACING"

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfChunk;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 528
    .local v0, cs:Ljava/lang/Float;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfFont;->width(Ljava/lang/String;)F

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 533
    .end local v0           #cs:Ljava/lang/Float;
    :goto_0
    return v1

    .line 530
    :cond_0
    const-string v1, "SEPARATOR"

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/PdfChunk;->isAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 531
    const/4 v1, 0x0

    goto :goto_0

    .line 533
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/PdfChunk;->font:Lcom/itextpdf/text/pdf/PdfFont;

    iget-object v2, p0, Lcom/itextpdf/text/pdf/PdfChunk;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/PdfFont;->width(Ljava/lang/String;)F

    move-result v1

    goto :goto_0
.end method
