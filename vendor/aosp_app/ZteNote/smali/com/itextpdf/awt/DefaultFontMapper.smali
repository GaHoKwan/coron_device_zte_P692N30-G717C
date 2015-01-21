.class public Lcom/itextpdf/awt/DefaultFontMapper;
.super Ljava/lang/Object;
.source "DefaultFontMapper.java"

# interfaces
.implements Lcom/itextpdf/awt/FontMapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/awt/DefaultFontMapper$BaseFontParameters;
    }
.end annotation


# instance fields
.field private aliases:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mapper:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/awt/DefaultFontMapper$BaseFontParameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/awt/DefaultFontMapper;->aliases:Ljava/util/HashMap;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/awt/DefaultFontMapper;->mapper:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public awtToPdf(Ljava/awt/Font;)Lcom/itextpdf/text/pdf/BaseFont;
    .locals 10
    .parameter "font"

    .prologue
    .line 106
    :try_start_0
    invoke-virtual {p1}, Ljava/awt/Font;->getFontName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/awt/DefaultFontMapper;->getBaseFontParameters(Ljava/lang/String;)Lcom/itextpdf/awt/DefaultFontMapper$BaseFontParameters;

    move-result-object v9

    .line 107
    .local v9, p:Lcom/itextpdf/awt/DefaultFontMapper$BaseFontParameters;
    if-eqz v9, :cond_0

    .line 108
    iget-object v0, v9, Lcom/itextpdf/awt/DefaultFontMapper$BaseFontParameters;->fontName:Ljava/lang/String;

    iget-object v1, v9, Lcom/itextpdf/awt/DefaultFontMapper$BaseFontParameters;->encoding:Ljava/lang/String;

    iget-boolean v2, v9, Lcom/itextpdf/awt/DefaultFontMapper$BaseFontParameters;->embedded:Z

    iget-boolean v3, v9, Lcom/itextpdf/awt/DefaultFontMapper$BaseFontParameters;->cached:Z

    iget-object v4, v9, Lcom/itextpdf/awt/DefaultFontMapper$BaseFontParameters;->ttfAfm:[B

    iget-object v5, v9, Lcom/itextpdf/awt/DefaultFontMapper$BaseFontParameters;->pfb:[B

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;ZZ[B[B)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    .line 168
    :goto_0
    return-object v0

    .line 109
    :cond_0
    const/4 v7, 0x0

    .line 110
    .local v7, fontKey:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object v8

    .line 112
    .local v8, logicalName:Ljava/lang/String;
    const-string v0, "DialogInput"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Monospaced"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Courier"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    :cond_1
    invoke-virtual {p1}, Ljava/awt/Font;->isItalic()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 115
    invoke-virtual {p1}, Ljava/awt/Font;->isBold()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    const-string v7, "Courier-BoldOblique"

    .line 168
    :goto_1
    const-string v0, "Cp1252"

    const/4 v1, 0x0

    invoke-static {v7, v0, v1}, Lcom/itextpdf/text/pdf/BaseFont;->createFont(Ljava/lang/String;Ljava/lang/String;Z)Lcom/itextpdf/text/pdf/BaseFont;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_2
    const-string v7, "Courier-Oblique"

    goto :goto_1

    .line 123
    :cond_3
    invoke-virtual {p1}, Ljava/awt/Font;->isBold()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    const-string v7, "Courier-Bold"

    goto :goto_1

    .line 127
    :cond_4
    const-string v7, "Courier"

    goto :goto_1

    .line 131
    :cond_5
    const-string v0, "Serif"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "TimesRoman"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 133
    :cond_6
    invoke-virtual {p1}, Ljava/awt/Font;->isItalic()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 134
    invoke-virtual {p1}, Ljava/awt/Font;->isBold()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 135
    const-string v7, "Times-BoldItalic"

    goto :goto_1

    .line 138
    :cond_7
    const-string v7, "Times-Italic"

    goto :goto_1

    .line 142
    :cond_8
    invoke-virtual {p1}, Ljava/awt/Font;->isBold()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 143
    const-string v7, "Times-Bold"

    goto :goto_1

    .line 146
    :cond_9
    const-string v7, "Times-Roman"

    goto :goto_1

    .line 152
    :cond_a
    invoke-virtual {p1}, Ljava/awt/Font;->isItalic()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 153
    invoke-virtual {p1}, Ljava/awt/Font;->isBold()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 154
    const-string v7, "Helvetica-BoldOblique"

    goto :goto_1

    .line 157
    :cond_b
    const-string v7, "Helvetica-Oblique"

    goto :goto_1

    .line 161
    :cond_c
    invoke-virtual {p1}, Ljava/awt/Font;->isBold()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 162
    const-string v7, "Helvetica-Bold"

    goto :goto_1

    .line 164
    :cond_d
    const-string v7, "Helvetica"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 170
    .end local v7           #fontKey:Ljava/lang/String;
    .end local v8           #logicalName:Ljava/lang/String;
    .end local v9           #p:Lcom/itextpdf/awt/DefaultFontMapper$BaseFontParameters;
    :catch_0
    move-exception v6

    .line 171
    .local v6, e:Ljava/lang/Exception;
    new-instance v0, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v0, v6}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getAliases()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/itextpdf/awt/DefaultFontMapper;->aliases:Ljava/util/HashMap;

    return-object v0
.end method

.method public getBaseFontParameters(Ljava/lang/String;)Lcom/itextpdf/awt/DefaultFontMapper$BaseFontParameters;
    .locals 3
    .parameter "name"

    .prologue
    .line 227
    iget-object v2, p0, Lcom/itextpdf/awt/DefaultFontMapper;->aliases:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 228
    .local v0, alias:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 229
    iget-object v2, p0, Lcom/itextpdf/awt/DefaultFontMapper;->mapper:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/awt/DefaultFontMapper$BaseFontParameters;

    .line 234
    :goto_0
    return-object v2

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/awt/DefaultFontMapper;->mapper:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/awt/DefaultFontMapper$BaseFontParameters;

    .line 231
    .local v1, p:Lcom/itextpdf/awt/DefaultFontMapper$BaseFontParameters;
    if-nez v1, :cond_1

    .line 232
    iget-object v2, p0, Lcom/itextpdf/awt/DefaultFontMapper;->mapper:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/awt/DefaultFontMapper$BaseFontParameters;

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 234
    goto :goto_0
.end method

.method public getMapper()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/awt/DefaultFontMapper$BaseFontParameters;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/itextpdf/awt/DefaultFontMapper;->mapper:Ljava/util/HashMap;

    return-object v0
.end method

.method public insertDirectory(Ljava/lang/String;)I
    .locals 5
    .parameter "dir"

    .prologue
    const/4 v0, 0x0

    .line 298
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    .line 308
    :cond_0
    return v0

    .line 301
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 302
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 306
    aget-object v4, v2, v3

    invoke-virtual {p0, v4}, Lcom/itextpdf/awt/DefaultFontMapper;->insertFile(Ljava/io/File;)I

    move-result v4

    add-int/2addr v0, v4

    .line 305
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public insertFile(Ljava/io/File;)I
    .locals 9
    .parameter "file"

    .prologue
    const/4 v5, 0x1

    .line 270
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, name:Ljava/lang/String;
    :try_start_0
    const-string v6, ".ttf"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ".otf"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ".afm"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 273
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cp1252"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/itextpdf/text/pdf/BaseFont;->getAllFontNames(Ljava/lang/String;Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v0

    .line 274
    .local v0, allNames:[Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v0, v6}, Lcom/itextpdf/awt/DefaultFontMapper;->insertNames([Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    .end local v0           #allNames:[Ljava/lang/Object;
    :cond_1
    :goto_0
    return v5

    .line 276
    :cond_2
    const-string v6, ".ttc"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 277
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/pdf/BaseFont;->enumerateTTCNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, ttcs:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v6, v4

    if-ge v1, v6, :cond_1

    .line 279
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, nt:Ljava/lang/String;
    const-string v6, "Cp1252"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Lcom/itextpdf/text/pdf/BaseFont;->getAllFontNames(Ljava/lang/String;Ljava/lang/String;[B)[Ljava/lang/Object;

    move-result-object v0

    .line 281
    .restart local v0       #allNames:[Ljava/lang/Object;
    invoke-virtual {p0, v0, v3}, Lcom/itextpdf/awt/DefaultFontMapper;->insertNames([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 285
    .end local v0           #allNames:[Ljava/lang/Object;
    .end local v1           #j:I
    .end local v3           #nt:Ljava/lang/String;
    .end local v4           #ttcs:[Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 287
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public insertNames([Ljava/lang/Object;Ljava/lang/String;)V
    .locals 10
    .parameter "allNames"
    .parameter "path"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x3

    .line 243
    aget-object v5, p1, v9

    check-cast v5, [[Ljava/lang/String;

    move-object v3, v5

    check-cast v3, [[Ljava/lang/String;

    .line 244
    .local v3, names:[[Ljava/lang/String;
    const/4 v1, 0x0

    .line 245
    .local v1, main:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 246
    aget-object v2, v3, v0

    .line 247
    .local v2, name:[Ljava/lang/String;
    aget-object v5, v2, v9

    const-string v6, "1033"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 248
    aget-object v1, v2, v7

    .line 252
    .end local v2           #name:[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .line 253
    aget-object v5, v3, v8

    aget-object v1, v5, v7

    .line 254
    :cond_1
    new-instance v4, Lcom/itextpdf/awt/DefaultFontMapper$BaseFontParameters;

    invoke-direct {v4, p2}, Lcom/itextpdf/awt/DefaultFontMapper$BaseFontParameters;-><init>(Ljava/lang/String;)V

    .line 255
    .local v4, p:Lcom/itextpdf/awt/DefaultFontMapper$BaseFontParameters;
    iget-object v5, p0, Lcom/itextpdf/awt/DefaultFontMapper;->mapper:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 257
    iget-object v5, p0, Lcom/itextpdf/awt/DefaultFontMapper;->aliases:Ljava/util/HashMap;

    aget-object v6, v3, v0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 245
    .end local v4           #p:Lcom/itextpdf/awt/DefaultFontMapper$BaseFontParameters;
    .restart local v2       #name:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    .end local v2           #name:[Ljava/lang/String;
    .restart local v4       #p:Lcom/itextpdf/awt/DefaultFontMapper$BaseFontParameters;
    :cond_3
    iget-object v6, p0, Lcom/itextpdf/awt/DefaultFontMapper;->aliases:Ljava/util/HashMap;

    aget-object v5, p1, v8

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    return-void
.end method

.method public pdfToAwt(Lcom/itextpdf/text/pdf/BaseFont;I)Ljava/awt/Font;
    .locals 11
    .parameter "font"
    .parameter "size"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 184
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/BaseFont;->getFullFontName()[[Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, names:[[Ljava/lang/String;
    array-length v6, v5

    if-ne v6, v10, :cond_0

    .line 186
    new-instance v6, Ljava/awt/Font;

    aget-object v7, v5, v8

    aget-object v7, v7, v9

    invoke-direct {v6, v7, v8, p2}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    .line 203
    :goto_0
    return-object v6

    .line 187
    :cond_0
    const/4 v3, 0x0

    .line 188
    .local v3, name10:Ljava/lang/String;
    const/4 v4, 0x0

    .line 189
    .local v4, name3x:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_3

    .line 190
    aget-object v2, v5, v1

    .line 191
    .local v2, name:[Ljava/lang/String;
    aget-object v6, v2, v8

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, v2, v10

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 192
    aget-object v3, v2, v9

    .line 189
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 193
    :cond_2
    const/4 v6, 0x2

    aget-object v6, v2, v6

    const-string v7, "1033"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 194
    aget-object v4, v2, v9

    .line 198
    .end local v2           #name:[Ljava/lang/String;
    :cond_3
    move-object v0, v4

    .line 199
    .local v0, finalName:Ljava/lang/String;
    if-nez v0, :cond_4

    .line 200
    move-object v0, v3

    .line 201
    :cond_4
    if-nez v0, :cond_5

    .line 202
    aget-object v6, v5, v8

    aget-object v0, v6, v9

    .line 203
    :cond_5
    new-instance v6, Ljava/awt/Font;

    invoke-direct {v6, v0, v8, p2}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public putAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "alias"
    .parameter "awtName"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/itextpdf/awt/DefaultFontMapper;->aliases:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-void
.end method

.method public putName(Ljava/lang/String;Lcom/itextpdf/awt/DefaultFontMapper$BaseFontParameters;)V
    .locals 1
    .parameter "awtName"
    .parameter "parameters"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/itextpdf/awt/DefaultFontMapper;->mapper:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    return-void
.end method
