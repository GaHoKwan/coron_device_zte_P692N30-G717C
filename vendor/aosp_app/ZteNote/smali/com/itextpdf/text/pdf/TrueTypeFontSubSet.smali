.class Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;
.super Ljava/lang/Object;
.source "TrueTypeFontSubSet.java"


# static fields
.field static final ARG_1_AND_2_ARE_WORDS:I = 0x1

.field static final HEAD_LOCA_FORMAT_OFFSET:I = 0x33

.field static final MORE_COMPONENTS:I = 0x20

.field static final TABLE_CHECKSUM:I = 0x0

.field static final TABLE_LENGTH:I = 0x2

.field static final TABLE_OFFSET:I = 0x1

.field static final WE_HAVE_AN_X_AND_Y_SCALE:I = 0x40

.field static final WE_HAVE_A_SCALE:I = 0x8

.field static final WE_HAVE_A_TWO_BY_TWO:I = 0x80

.field static final entrySelectors:[I

.field static final tableNamesCmap:[Ljava/lang/String;

.field static final tableNamesExtra:[Ljava/lang/String;

.field static final tableNamesSimple:[Ljava/lang/String;


# instance fields
.field protected directoryOffset:I

.field protected fileName:Ljava/lang/String;

.field protected fontPtr:I

.field protected glyfTableRealSize:I

.field protected glyphsInList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected glyphsUsed:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected includeCmap:Z

.field protected includeExtras:Z

.field protected locaShortTable:Z

.field protected locaTable:[I

.field protected locaTableRealSize:I

.field protected newGlyfTable:[B

.field protected newLocaTable:[I

.field protected newLocaTableOut:[B

.field protected outFont:[B

.field protected rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

.field protected tableDirectory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field protected tableGlyphOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cvt "

    aput-object v1, v0, v3

    const-string v1, "fpgm"

    aput-object v1, v0, v4

    const-string v1, "glyf"

    aput-object v1, v0, v5

    const-string v1, "head"

    aput-object v1, v0, v6

    const-string v1, "hhea"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "hmtx"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "loca"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "maxp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "prep"

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->tableNamesSimple:[Ljava/lang/String;

    .line 64
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cmap"

    aput-object v1, v0, v3

    const-string v1, "cvt "

    aput-object v1, v0, v4

    const-string v1, "fpgm"

    aput-object v1, v0, v5

    const-string v1, "glyf"

    aput-object v1, v0, v6

    const-string v1, "head"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "hhea"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hmtx"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "loca"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "maxp"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "prep"

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->tableNamesCmap:[Ljava/lang/String;

    .line 66
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "OS/2"

    aput-object v1, v0, v3

    const-string v1, "cmap"

    aput-object v1, v0, v4

    const-string v1, "cvt "

    aput-object v1, v0, v5

    const-string v1, "fpgm"

    aput-object v1, v0, v6

    const-string v1, "glyf"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "head"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "hhea"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "hmtx"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "loca"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "maxp"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "name, prep"

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->tableNamesExtra:[Ljava/lang/String;

    .line 68
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->entrySelectors:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;Ljava/util/HashSet;IZZ)V
    .locals 1
    .parameter "fileName"
    .parameter "rf"
    .parameter
    .parameter "directoryOffset"
    .parameter "includeCmap"
    .parameter "includeExtras"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;IZZ)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p3, glyphsUsed:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fileName:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    .line 118
    iput-object p3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->glyphsUsed:Ljava/util/HashSet;

    .line 119
    iput-boolean p5, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->includeCmap:Z

    .line 120
    iput-boolean p6, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->includeExtras:Z

    .line 121
    iput p4, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->directoryOffset:I

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->glyphsInList:Ljava/util/ArrayList;

    .line 123
    return-void
.end method


# virtual methods
.method protected assembleFont()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, fullFontSize:I
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->includeExtras:Z

    if-eqz v9, :cond_1

    .line 156
    sget-object v7, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->tableNamesExtra:[Ljava/lang/String;

    .line 163
    .local v7, tableNames:[Ljava/lang/String;
    :goto_0
    const/4 v8, 0x2

    .line 164
    .local v8, tablesUsed:I
    const/4 v2, 0x0

    .line 165
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    array-length v9, v7

    if-ge v1, v9, :cond_4

    .line 166
    aget-object v3, v7, v1

    .line 167
    .local v3, name:Ljava/lang/String;
    const-string v9, "glyf"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "loca"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 165
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 158
    .end local v1           #k:I
    .end local v2           #len:I
    .end local v3           #name:Ljava/lang/String;
    .end local v7           #tableNames:[Ljava/lang/String;
    .end local v8           #tablesUsed:I
    :cond_1
    iget-boolean v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->includeCmap:Z

    if-eqz v9, :cond_2

    .line 159
    sget-object v7, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->tableNamesCmap:[Ljava/lang/String;

    .restart local v7       #tableNames:[Ljava/lang/String;
    goto :goto_0

    .line 161
    .end local v7           #tableNames:[Ljava/lang/String;
    :cond_2
    sget-object v7, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->tableNamesSimple:[Ljava/lang/String;

    .restart local v7       #tableNames:[Ljava/lang/String;
    goto :goto_0

    .line 169
    .restart local v1       #k:I
    .restart local v2       #len:I
    .restart local v3       #name:Ljava/lang/String;
    .restart local v8       #tablesUsed:I
    :cond_3
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->tableDirectory:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 170
    .local v6, tableLocation:[I
    if-eqz v6, :cond_0

    .line 172
    add-int/lit8 v8, v8, 0x1

    .line 173
    const/4 v9, 0x2

    aget v9, v6, v9

    add-int/lit8 v9, v9, 0x3

    and-int/lit8 v9, v9, -0x4

    add-int/2addr v0, v9

    goto :goto_2

    .line 175
    .end local v3           #name:Ljava/lang/String;
    .end local v6           #tableLocation:[I
    :cond_4
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newLocaTableOut:[B

    array-length v9, v9

    add-int/2addr v0, v9

    .line 176
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newGlyfTable:[B

    array-length v9, v9

    add-int/2addr v0, v9

    .line 177
    mul-int/lit8 v9, v8, 0x10

    add-int/lit8 v4, v9, 0xc

    .line 178
    .local v4, ref:I
    add-int/2addr v0, v4

    .line 179
    new-array v9, v0, [B

    iput-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->outFont:[B

    .line 180
    const/4 v9, 0x0

    iput v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    .line 181
    const/high16 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->writeFontInt(I)V

    .line 182
    invoke-virtual {p0, v8}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->writeFontShort(I)V

    .line 183
    sget-object v9, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->entrySelectors:[I

    aget v5, v9, v8

    .line 184
    .local v5, selector:I
    const/4 v9, 0x1

    shl-int/2addr v9, v5

    mul-int/lit8 v9, v9, 0x10

    invoke-virtual {p0, v9}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->writeFontShort(I)V

    .line 185
    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->writeFontShort(I)V

    .line 186
    const/4 v9, 0x1

    shl-int/2addr v9, v5

    sub-int v9, v8, v9

    mul-int/lit8 v9, v9, 0x10

    invoke-virtual {p0, v9}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->writeFontShort(I)V

    .line 187
    const/4 v1, 0x0

    :goto_3
    array-length v9, v7

    if-ge v1, v9, :cond_8

    .line 188
    aget-object v3, v7, v1

    .line 189
    .restart local v3       #name:Ljava/lang/String;
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->tableDirectory:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 190
    .restart local v6       #tableLocation:[I
    if-nez v6, :cond_5

    .line 187
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 192
    :cond_5
    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->writeFontString(Ljava/lang/String;)V

    .line 193
    const-string v9, "glyf"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 194
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newGlyfTable:[B

    invoke-virtual {p0, v9}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->calculateChecksum([B)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->writeFontInt(I)V

    .line 195
    iget v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->glyfTableRealSize:I

    .line 205
    :goto_5
    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->writeFontInt(I)V

    .line 206
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->writeFontInt(I)V

    .line 207
    add-int/lit8 v9, v2, 0x3

    and-int/lit8 v9, v9, -0x4

    add-int/2addr v4, v9

    goto :goto_4

    .line 197
    :cond_6
    const-string v9, "loca"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 198
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newLocaTableOut:[B

    invoke-virtual {p0, v9}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->calculateChecksum([B)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->writeFontInt(I)V

    .line 199
    iget v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->locaTableRealSize:I

    goto :goto_5

    .line 202
    :cond_7
    const/4 v9, 0x0

    aget v9, v6, v9

    invoke-virtual {p0, v9}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->writeFontInt(I)V

    .line 203
    const/4 v9, 0x2

    aget v2, v6, v9

    goto :goto_5

    .line 209
    .end local v3           #name:Ljava/lang/String;
    .end local v6           #tableLocation:[I
    :cond_8
    const/4 v1, 0x0

    :goto_6
    array-length v9, v7

    if-ge v1, v9, :cond_c

    .line 210
    aget-object v3, v7, v1

    .line 211
    .restart local v3       #name:Ljava/lang/String;
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->tableDirectory:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 212
    .restart local v6       #tableLocation:[I
    if-nez v6, :cond_9

    .line 209
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 214
    :cond_9
    const-string v9, "glyf"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 215
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newGlyfTable:[B

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->outFont:[B

    iget v12, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    iget-object v13, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newGlyfTable:[B

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 216
    iget v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newGlyfTable:[B

    array-length v10, v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    .line 217
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newGlyfTable:[B

    goto :goto_7

    .line 219
    :cond_a
    const-string v9, "loca"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 220
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newLocaTableOut:[B

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->outFont:[B

    iget v12, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    iget-object v13, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newLocaTableOut:[B

    array-length v13, v13

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 221
    iget v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newLocaTableOut:[B

    array-length v10, v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    .line 222
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newLocaTableOut:[B

    goto :goto_7

    .line 225
    :cond_b
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v10, 0x1

    aget v10, v6, v10

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 226
    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    iget-object v10, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->outFont:[B

    iget v11, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    const/4 v12, 0x2

    aget v12, v6, v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([BII)V

    .line 227
    iget v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    const/4 v10, 0x2

    aget v10, v6, v10

    add-int/lit8 v10, v10, 0x3

    and-int/lit8 v10, v10, -0x4

    add-int/2addr v9, v10

    iput v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    goto :goto_7

    .line 230
    .end local v3           #name:Ljava/lang/String;
    .end local v6           #tableLocation:[I
    :cond_c
    return-void
.end method

.method protected calculateChecksum([B)I
    .locals 10
    .parameter "b"

    .prologue
    .line 410
    array-length v8, p1

    div-int/lit8 v1, v8, 0x4

    .line 411
    .local v1, len:I
    const/4 v4, 0x0

    .line 412
    .local v4, v0:I
    const/4 v5, 0x0

    .line 413
    .local v5, v1:I
    const/4 v6, 0x0

    .line 414
    .local v6, v2:I
    const/4 v7, 0x0

    .line 415
    .local v7, v3:I
    const/4 v2, 0x0

    .line 416
    .local v2, ptr:I
    const/4 v0, 0x0

    .local v0, k:I
    move v3, v2

    .end local v2           #ptr:I
    .local v3, ptr:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 417
    add-int/lit8 v2, v3, 0x1

    .end local v3           #ptr:I
    .restart local v2       #ptr:I
    aget-byte v8, p1, v3

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    .line 418
    add-int/lit8 v3, v2, 0x1

    .end local v2           #ptr:I
    .restart local v3       #ptr:I
    aget-byte v8, p1, v2

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    .line 419
    add-int/lit8 v2, v3, 0x1

    .end local v3           #ptr:I
    .restart local v2       #ptr:I
    aget-byte v8, p1, v3

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v5, v8

    .line 420
    add-int/lit8 v3, v2, 0x1

    .end local v2           #ptr:I
    .restart local v3       #ptr:I
    aget-byte v8, p1, v2

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 422
    :cond_0
    shl-int/lit8 v8, v5, 0x8

    add-int/2addr v8, v4

    shl-int/lit8 v9, v6, 0x10

    add-int/2addr v8, v9

    shl-int/lit8 v9, v7, 0x18

    add-int/2addr v8, v9

    return v8
.end method

.method protected checkGlyphComposite(I)V
    .locals 8
    .parameter "glyph"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->locaTable:[I

    aget v4, v5, p1

    .line 343
    .local v4, start:I
    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->locaTable:[I

    add-int/lit8 v6, p1, 0x1

    aget v5, v5, v6

    if-ne v4, v5, :cond_1

    .line 358
    :cond_0
    return-void

    .line 345
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    iget v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->tableGlyphOffset:I

    add-int/2addr v6, v4

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 346
    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S

    move-result v2

    .line 347
    .local v2, numContours:I
    if-gez v2, :cond_0

    .line 349
    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    .line 351
    :goto_0
    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v1

    .line 352
    .local v1, flags:I
    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 353
    .local v0, cGlyph:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->glyphsUsed:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 354
    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->glyphsUsed:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->glyphsInList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_2
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_0

    .line 360
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_5

    .line 361
    const/4 v3, 0x4

    .line 364
    .local v3, skip:I
    :goto_1
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_6

    .line 365
    add-int/lit8 v3, v3, 0x2

    .line 368
    :cond_3
    :goto_2
    and-int/lit16 v5, v1, 0x80

    if-eqz v5, :cond_4

    .line 369
    add-int/lit8 v3, v3, 0x8

    .line 370
    :cond_4
    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v5, v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    goto :goto_0

    .line 363
    .end local v3           #skip:I
    :cond_5
    const/4 v3, 0x2

    .restart local v3       #skip:I
    goto :goto_1

    .line 366
    :cond_6
    and-int/lit8 v5, v1, 0x40

    if-eqz v5, :cond_3

    .line 367
    add-int/lit8 v3, v3, 0x4

    goto :goto_2
.end method

.method protected createNewGlyphTables()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->locaTable:[I

    array-length v8, v8

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newLocaTable:[I

    .line 277
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->glyphsInList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v0, v8, [I

    .line 278
    .local v0, activeGlyphs:[I
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    array-length v8, v0

    if-ge v4, v8, :cond_0

    .line 279
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->glyphsInList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v0, v4

    .line 278
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 280
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 281
    const/4 v2, 0x0

    .line 282
    .local v2, glyfSize:I
    const/4 v4, 0x0

    :goto_1
    array-length v8, v0

    if-ge v4, v8, :cond_1

    .line 283
    aget v3, v0, v4

    .line 284
    .local v3, glyph:I
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->locaTable:[I

    add-int/lit8 v9, v3, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->locaTable:[I

    aget v9, v9, v3

    sub-int/2addr v8, v9

    add-int/2addr v2, v8

    .line 282
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 286
    .end local v3           #glyph:I
    :cond_1
    iput v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->glyfTableRealSize:I

    .line 287
    add-int/lit8 v8, v2, 0x3

    and-int/lit8 v2, v8, -0x4

    .line 288
    new-array v8, v2, [B

    iput-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newGlyfTable:[B

    .line 289
    const/4 v1, 0x0

    .line 290
    .local v1, glyfPtr:I
    const/4 v6, 0x0

    .line 291
    .local v6, listGlyf:I
    const/4 v4, 0x0

    :goto_2
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newLocaTable:[I

    array-length v8, v8

    if-ge v4, v8, :cond_3

    .line 292
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newLocaTable:[I

    aput v1, v8, v4

    .line 293
    array-length v8, v0

    if-ge v6, v8, :cond_2

    aget v8, v0, v6

    if-ne v8, v4, :cond_2

    .line 294
    add-int/lit8 v6, v6, 0x1

    .line 295
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newLocaTable:[I

    aput v1, v8, v4

    .line 296
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->locaTable:[I

    aget v7, v8, v4

    .line 297
    .local v7, start:I
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->locaTable:[I

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    sub-int v5, v8, v7

    .line 298
    .local v5, len:I
    if-lez v5, :cond_2

    .line 299
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    iget v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->tableGlyphOffset:I

    add-int/2addr v9, v7

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 300
    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    iget-object v9, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newGlyfTable:[B

    invoke-virtual {v8, v9, v1, v5}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([BII)V

    .line 301
    add-int/2addr v1, v5

    .line 291
    .end local v5           #len:I
    .end local v7           #start:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 305
    :cond_3
    return-void
.end method

.method protected createTableDirectory()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 233
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->tableDirectory:Ljava/util/HashMap;

    .line 234
    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    iget v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->directoryOffset:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 235
    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v0

    .line 236
    .local v0, id:I
    const/high16 v5, 0x1

    if-eq v0, v5, :cond_0

    .line 237
    new-instance v5, Lcom/itextpdf/text/DocumentException;

    const-string v6, "1.is.not.a.true.type.file"

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fileName:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 238
    :cond_0
    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v2

    .line 239
    .local v2, num_tables:I
    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->skipBytes(I)I

    .line 240
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 241
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->readStandardString(I)Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, tag:Ljava/lang/String;
    const/4 v5, 0x3

    new-array v3, v5, [I

    .line 243
    .local v3, tableLocation:[I
    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v5

    aput v5, v3, v9

    .line 244
    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v5

    aput v5, v3, v8

    .line 245
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v6

    aput v6, v3, v5

    .line 246
    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->tableDirectory:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v3           #tableLocation:[I
    .end local v4           #tag:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected flatGlyphs()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 326
    iget-object v4, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->tableDirectory:Ljava/util/HashMap;

    const-string v5, "glyf"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 327
    .local v3, tableLocation:[I
    if-nez v3, :cond_0

    .line 328
    new-instance v4, Lcom/itextpdf/text/DocumentException;

    const-string v5, "table.1.does.not.exist.in.2"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "glyf"

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fileName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 329
    :cond_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 330
    .local v1, glyph0:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->glyphsUsed:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 331
    iget-object v4, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->glyphsUsed:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v4, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->glyphsInList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_1
    aget v4, v3, v9

    iput v4, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->tableGlyphOffset:I

    .line 335
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->glyphsInList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 336
    iget-object v4, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->glyphsInList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 337
    .local v0, glyph:I
    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->checkGlyphComposite(I)V

    .line 335
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    .end local v0           #glyph:I
    :cond_2
    return-void
.end method

.method protected locaTobytes()V
    .locals 2

    .prologue
    .line 308
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->locaShortTable:Z

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newLocaTable:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->locaTableRealSize:I

    .line 312
    :goto_0
    iget v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->locaTableRealSize:I

    add-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, -0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newLocaTableOut:[B

    .line 313
    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newLocaTableOut:[B

    iput-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->outFont:[B

    .line 314
    const/4 v1, 0x0

    iput v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    .line 315
    const/4 v0, 0x0

    .local v0, k:I
    :goto_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newLocaTable:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 316
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->locaShortTable:Z

    if-eqz v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newLocaTable:[I

    aget v1, v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->writeFontShort(I)V

    .line 315
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 311
    .end local v0           #k:I
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newLocaTable:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->locaTableRealSize:I

    goto :goto_0

    .line 319
    .restart local v0       #k:I
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->newLocaTable:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->writeFontInt(I)V

    goto :goto_2

    .line 322
    :cond_2
    return-void
.end method

.method process()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->reOpen()V

    .line 133
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->createTableDirectory()V

    .line 134
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->readLoca()V

    .line 135
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->flatGlyphs()V

    .line 136
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->createNewGlyphTables()V

    .line 137
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->locaTobytes()V

    .line 138
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->assembleFont()V

    .line 139
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->outFont:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :try_start_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    :goto_0
    return-object v0

    .line 142
    :catchall_0
    move-exception v0

    .line 143
    :try_start_2
    iget-object v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 147
    :goto_1
    throw v0

    .line 145
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method protected readLoca()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x2

    const/4 v4, 0x1

    .line 252
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->tableDirectory:Ljava/util/HashMap;

    const-string v6, "head"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 253
    .local v2, tableLocation:[I
    if-nez v2, :cond_0

    .line 254
    new-instance v3, Lcom/itextpdf/text/DocumentException;

    const-string v6, "table.1.does.not.exist.in.2"

    new-array v7, v8, [Ljava/lang/Object;

    const-string v8, "head"

    aput-object v8, v7, v5

    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fileName:Ljava/lang/String;

    aput-object v5, v7, v4

    invoke-static {v6, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 255
    :cond_0
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    aget v6, v2, v4

    add-int/lit8 v6, v6, 0x33

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 256
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->locaShortTable:Z

    .line 257
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->tableDirectory:Ljava/util/HashMap;

    const-string v6, "loca"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #tableLocation:[I
    check-cast v2, [I

    .line 258
    .restart local v2       #tableLocation:[I
    if-nez v2, :cond_2

    .line 259
    new-instance v3, Lcom/itextpdf/text/DocumentException;

    const-string v6, "table.1.does.not.exist.in.2"

    new-array v7, v8, [Ljava/lang/Object;

    const-string v8, "loca"

    aput-object v8, v7, v5

    iget-object v5, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fileName:Ljava/lang/String;

    aput-object v5, v7, v4

    invoke-static {v6, v7}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move v3, v5

    .line 256
    goto :goto_0

    .line 260
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    aget v4, v2, v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 261
    iget-boolean v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->locaShortTable:Z

    if-eqz v3, :cond_3

    .line 262
    aget v3, v2, v8

    div-int/lit8 v0, v3, 0x2

    .line 263
    .local v0, entries:I
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->locaTable:[I

    .line 264
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 265
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->locaTable:[I

    iget-object v4, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    aput v4, v3, v1

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 268
    .end local v0           #entries:I
    .end local v1           #k:I
    :cond_3
    aget v3, v2, v8

    div-int/lit8 v0, v3, 0x4

    .line 269
    .restart local v0       #entries:I
    new-array v3, v0, [I

    iput-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->locaTable:[I

    .line 270
    const/4 v1, 0x0

    .restart local v1       #k:I
    :goto_2
    if-ge v1, v0, :cond_4

    .line 271
    iget-object v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->locaTable:[I

    iget-object v4, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v4

    aput v4, v3, v1

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 273
    :cond_4
    return-void
.end method

.method protected readStandardString(I)Ljava/lang/String;
    .locals 4
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    new-array v0, p1, [B

    .line 382
    .local v0, buf:[B
    iget-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([B)V

    .line 384
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "Cp1252"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 386
    :catch_0
    move-exception v1

    .line 387
    .local v1, e:Ljava/lang/Exception;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v2, v1}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method protected writeFontInt(I)V
    .locals 3
    .parameter "n"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->outFont:[B

    iget v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 398
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->outFont:[B

    iget v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 399
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->outFont:[B

    iget v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 400
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->outFont:[B

    iget v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 401
    return-void
.end method

.method protected writeFontShort(I)V
    .locals 3
    .parameter "n"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->outFont:[B

    iget v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 393
    iget-object v0, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->outFont:[B

    iget v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 394
    return-void
.end method

.method protected writeFontString(Ljava/lang/String;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 404
    const-string v1, "Cp1252"

    invoke-static {p1, v1}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 405
    .local v0, b:[B
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->outFont:[B

    iget v3, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    array-length v4, v0

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    iget v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/itextpdf/text/pdf/TrueTypeFontSubSet;->fontPtr:I

    .line 407
    return-void
.end method
