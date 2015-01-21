.class Lcom/itextpdf/text/pdf/Type1Font;
.super Lcom/itextpdf/text/pdf/BaseFont;
.source "Type1Font.java"


# static fields
.field private static final PFB_TYPES:[I

.field private static resourceAnchor:Lcom/itextpdf/text/pdf/fonts/FontsResourceAnchor;


# instance fields
.field private Ascender:I

.field private CapHeight:I

.field private CharMetrics:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private CharacterSet:Ljava/lang/String;

.field private Descender:I

.field private EncodingScheme:Ljava/lang/String;

.field private FamilyName:Ljava/lang/String;

.field private FontName:Ljava/lang/String;

.field private FullName:Ljava/lang/String;

.field private IsFixedPitch:Z

.field private ItalicAngle:F

.field private KernPairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private StdHW:I

.field private StdVW:I

.field private UnderlinePosition:I

.field private UnderlineThickness:I

.field private Weight:Ljava/lang/String;

.field private XHeight:I

.field private builtinFont:Z

.field private fileName:Ljava/lang/String;

.field private llx:I

.field private lly:I

.field protected pfb:[B

.field private urx:I

.field private ury:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/text/pdf/Type1Font;->PFB_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Z[B[BZ)V
    .locals 13
    .parameter "afmFile"
    .parameter "enc"
    .parameter "emb"
    .parameter "ttfAfm"
    .parameter "pfb"
    .parameter "forceRead"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/BaseFont;-><init>()V

    .line 79
    const-string v9, ""

    iput-object v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->Weight:Ljava/lang/String;

    .line 82
    const/4 v9, 0x0

    iput v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->ItalicAngle:F

    .line 86
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->IsFixedPitch:Z

    .line 92
    const/16 v9, -0x32

    iput v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->llx:I

    .line 95
    const/16 v9, -0xc8

    iput v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->lly:I

    .line 98
    const/16 v9, 0x3e8

    iput v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->urx:I

    .line 101
    const/16 v9, 0x384

    iput v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->ury:I

    .line 104
    const/16 v9, -0x64

    iput v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->UnderlinePosition:I

    .line 107
    const/16 v9, 0x32

    iput v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->UnderlineThickness:I

    .line 113
    const-string v9, "FontSpecific"

    iput-object v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->EncodingScheme:Ljava/lang/String;

    .line 116
    const/16 v9, 0x2bc

    iput v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->CapHeight:I

    .line 119
    const/16 v9, 0x1e0

    iput v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->XHeight:I

    .line 122
    const/16 v9, 0x320

    iput v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->Ascender:I

    .line 125
    const/16 v9, -0xc8

    iput v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->Descender:I

    .line 131
    const/16 v9, 0x50

    iput v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->StdVW:I

    .line 138
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->CharMetrics:Ljava/util/HashMap;

    .line 145
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->KernPairs:Ljava/util/HashMap;

    .line 151
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->builtinFont:Z

    .line 169
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_0

    .line 170
    new-instance v9, Lcom/itextpdf/text/DocumentException;

    const-string v10, "two.byte.arrays.are.needed.if.the.type1.font.is.embedded"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 171
    :cond_0
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 172
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/itextpdf/text/pdf/Type1Font;->pfb:[B

    .line 173
    :cond_1
    iput-object p2, p0, Lcom/itextpdf/text/pdf/Type1Font;->encoding:Ljava/lang/String;

    .line 174
    move/from16 v0, p3

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/Type1Font;->embedded:Z

    .line 175
    iput-object p1, p0, Lcom/itextpdf/text/pdf/Type1Font;->fileName:Ljava/lang/String;

    .line 176
    const/4 v9, 0x0

    iput v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->fontType:I

    .line 177
    const/4 v6, 0x0

    .line 178
    .local v6, rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    const/4 v3, 0x0

    .line 179
    .local v3, is:Ljava/io/InputStream;
    sget-object v9, Lcom/itextpdf/text/pdf/Type1Font;->BuiltinFonts14:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 180
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->embedded:Z

    .line 181
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->builtinFont:Z

    .line 182
    const/16 v9, 0x400

    new-array v2, v9, [B

    .line 184
    .local v2, buf:[B
    :try_start_0
    sget-object v9, Lcom/itextpdf/text/pdf/Type1Font;->resourceAnchor:Lcom/itextpdf/text/pdf/fonts/FontsResourceAnchor;

    if-nez v9, :cond_2

    .line 185
    new-instance v9, Lcom/itextpdf/text/pdf/fonts/FontsResourceAnchor;

    invoke-direct {v9}, Lcom/itextpdf/text/pdf/fonts/FontsResourceAnchor;-><init>()V

    sput-object v9, Lcom/itextpdf/text/pdf/Type1Font;->resourceAnchor:Lcom/itextpdf/text/pdf/fonts/FontsResourceAnchor;

    .line 186
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "com/itextpdf/text/pdf/fonts/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".afm"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/itextpdf/text/pdf/Type1Font;->resourceAnchor:Lcom/itextpdf/text/pdf/fonts/FontsResourceAnchor;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/itextpdf/text/pdf/Type1Font;->getResourceStream(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/io/InputStream;

    move-result-object v3

    .line 187
    if-nez v3, :cond_4

    .line 188
    const-string v9, "1.not.found.as.resource"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-static {v9, v10}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, msg:Ljava/lang/String;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v9, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 190
    new-instance v9, Lcom/itextpdf/text/DocumentException;

    invoke-direct {v9, v4}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    .end local v4           #msg:Ljava/lang/String;
    :catchall_0
    move-exception v9

    if-eqz v3, :cond_3

    .line 204
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 208
    :cond_3
    :goto_0
    throw v9

    .line 192
    :cond_4
    :try_start_2
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 194
    .local v5, out:Ljava/io/ByteArrayOutputStream;
    :goto_1
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .line 195
    .local v8, size:I
    if-gez v8, :cond_b

    .line 199
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 202
    if-eqz v3, :cond_5

    .line 204
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 212
    :cond_5
    :goto_2
    :try_start_4
    new-instance v7, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-direct {v7, v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 213
    .end local v6           #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .local v7, rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :try_start_5
    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/Type1Font;->process(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 216
    if-eqz v7, :cond_6

    .line 218
    :try_start_6
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_6
    :goto_3
    move-object v6, v7

    .line 271
    .end local v2           #buf:[B
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .end local v7           #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .end local v8           #size:I
    .restart local v6       #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :cond_7
    :goto_4
    iget-object v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->EncodingScheme:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->EncodingScheme:Ljava/lang/String;

    .line 272
    iget-object v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->EncodingScheme:Ljava/lang/String;

    const-string v10, "AdobeStandardEncoding"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->EncodingScheme:Ljava/lang/String;

    const-string v10, "StandardEncoding"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 273
    :cond_8
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->fontSpecific:Z

    .line 275
    :cond_9
    iget-object v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->encoding:Ljava/lang/String;

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 276
    const-string v9, " "

    invoke-static {v9, p2}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 277
    :cond_a
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/Type1Font;->createEncoding()V

    .line 278
    return-void

    .line 197
    .restart local v2       #buf:[B
    .restart local v5       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #size:I
    :cond_b
    const/4 v9, 0x0

    :try_start_7
    invoke-virtual {v5, v2, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 216
    :catchall_1
    move-exception v9

    :goto_5
    if-eqz v6, :cond_c

    .line 218
    :try_start_8
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 222
    :cond_c
    :goto_6
    throw v9

    .line 226
    .end local v2           #buf:[B
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .end local v8           #size:I
    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".afm"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 228
    if-nez p4, :cond_e

    .line 229
    :try_start_9
    new-instance v7, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    sget-boolean v9, Lcom/itextpdf/text/Document;->plainRandomAccess:Z

    move/from16 v0, p6

    invoke-direct {v7, p1, v0, v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>(Ljava/lang/String;ZZ)V

    .end local v6           #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v7       #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    move-object v6, v7

    .line 232
    .end local v7           #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v6       #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :goto_7
    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/Type1Font;->process(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 235
    if-eqz v6, :cond_7

    .line 237
    :try_start_a
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_4

    .line 239
    :catch_0
    move-exception v9

    goto :goto_4

    .line 231
    :cond_e
    :try_start_b
    new-instance v7, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v0, p4

    invoke-direct {v7, v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>([B)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .end local v6           #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v7       #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    move-object v6, v7

    .end local v7           #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v6       #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    goto :goto_7

    .line 235
    :catchall_2
    move-exception v9

    if-eqz v6, :cond_f

    .line 237
    :try_start_c
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 241
    :cond_f
    :goto_8
    throw v9

    .line 245
    :cond_10
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".pfm"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 247
    :try_start_d
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 248
    .local v1, ba:Ljava/io/ByteArrayOutputStream;
    if-nez p4, :cond_11

    .line 249
    new-instance v7, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    sget-boolean v9, Lcom/itextpdf/text/Document;->plainRandomAccess:Z

    move/from16 v0, p6

    invoke-direct {v7, p1, v0, v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>(Ljava/lang/String;ZZ)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 252
    .end local v6           #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v7       #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :goto_9
    :try_start_e
    invoke-static {v7, v1}, Lcom/itextpdf/text/pdf/Pfm2afm;->convert(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;Ljava/io/OutputStream;)V

    .line 253
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V

    .line 254
    new-instance v6, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>([B)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 255
    .end local v7           #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v6       #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :try_start_f
    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/Type1Font;->process(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 258
    if-eqz v6, :cond_7

    .line 260
    :try_start_10
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_4

    .line 262
    :catch_1
    move-exception v9

    goto/16 :goto_4

    .line 251
    :cond_11
    :try_start_11
    new-instance v7, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v0, p4

    invoke-direct {v7, v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>([B)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .end local v6           #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v7       #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    goto :goto_9

    .line 258
    .end local v1           #ba:Ljava/io/ByteArrayOutputStream;
    .end local v7           #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v6       #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :catchall_3
    move-exception v9

    :goto_a
    if-eqz v6, :cond_12

    .line 260
    :try_start_12
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    .line 264
    :cond_12
    :goto_b
    throw v9

    .line 269
    :cond_13
    new-instance v9, Lcom/itextpdf/text/DocumentException;

    const-string v10, "1.is.not.an.afm.or.pfm.font.file"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    invoke-static {v10, v11}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 206
    .restart local v2       #buf:[B
    .restart local v5       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #size:I
    :catch_2
    move-exception v9

    goto/16 :goto_2

    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .end local v8           #size:I
    :catch_3
    move-exception v10

    goto/16 :goto_0

    .line 220
    .end local v6           #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v5       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v8       #size:I
    :catch_4
    move-exception v9

    goto/16 :goto_3

    .end local v7           #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v6       #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :catch_5
    move-exception v10

    goto/16 :goto_6

    .line 239
    .end local v2           #buf:[B
    .end local v5           #out:Ljava/io/ByteArrayOutputStream;
    .end local v8           #size:I
    :catch_6
    move-exception v10

    goto :goto_8

    .line 262
    :catch_7
    move-exception v10

    goto :goto_b

    .line 258
    .end local v6           #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v1       #ba:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :catchall_4
    move-exception v9

    move-object v6, v7

    .end local v7           #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v6       #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    goto :goto_a

    .line 216
    .end local v1           #ba:Ljava/io/ByteArrayOutputStream;
    .end local v6           #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v2       #buf:[B
    .restart local v5       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v8       #size:I
    :catchall_5
    move-exception v9

    move-object v6, v7

    .end local v7           #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v6       #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    goto/16 :goto_5
.end method

.method private getFontBaseType(Lcom/itextpdf/text/pdf/PdfIndirectReference;II[B)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 11
    .parameter "fontDescriptor"
    .parameter "firstChar"
    .parameter "lastChar"
    .parameter "shortTag"

    .prologue
    const/4 v7, 0x0

    .line 592
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FONT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v0, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 593
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->TYPE1:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 594
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->BASEFONT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/text/pdf/PdfName;

    iget-object v10, p0, Lcom/itextpdf/text/pdf/Type1Font;->FontName:Ljava/lang/String;

    invoke-direct {v9, v10}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 595
    iget-object v8, p0, Lcom/itextpdf/text/pdf/Type1Font;->encoding:Ljava/lang/String;

    const-string v9, "Cp1252"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/itextpdf/text/pdf/Type1Font;->encoding:Ljava/lang/String;

    const-string v9, "MacRoman"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_0
    const/4 v5, 0x1

    .line 596
    .local v5, stdEncoding:Z
    :goto_0
    iget-boolean v8, p0, Lcom/itextpdf/text/pdf/Type1Font;->fontSpecific:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/itextpdf/text/pdf/Type1Font;->specialMap:Lcom/itextpdf/text/pdf/IntHashtable;

    if-eqz v8, :cond_3

    .line 597
    :cond_1
    move v4, p2

    .local v4, k:I
    :goto_1
    if-gt v4, p3, :cond_2

    .line 598
    iget-object v8, p0, Lcom/itextpdf/text/pdf/Type1Font;->differences:[Ljava/lang/String;

    aget-object v8, v8, v4

    const-string v9, ".notdef"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 599
    move p2, v4

    .line 603
    :cond_2
    if-eqz v5, :cond_8

    .line 604
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    iget-object v8, p0, Lcom/itextpdf/text/pdf/Type1Font;->encoding:Ljava/lang/String;

    const-string v10, "Cp1252"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->WIN_ANSI_ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    :goto_2
    invoke-virtual {v0, v9, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 624
    .end local v4           #k:I
    :cond_3
    :goto_3
    iget-object v8, p0, Lcom/itextpdf/text/pdf/Type1Font;->specialMap:Lcom/itextpdf/text/pdf/IntHashtable;

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/itextpdf/text/pdf/Type1Font;->forceWidthsOutput:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/itextpdf/text/pdf/Type1Font;->builtinFont:Z

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcom/itextpdf/text/pdf/Type1Font;->fontSpecific:Z

    if-nez v8, :cond_e

    if-nez v5, :cond_e

    .line 625
    :cond_4
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->FIRSTCHAR:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v9, p2}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 626
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->LASTCHAR:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v9, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v9, p3}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v8, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 627
    new-instance v6, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v6}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 628
    .local v6, wd:Lcom/itextpdf/text/pdf/PdfArray;
    move v4, p2

    .restart local v4       #k:I
    :goto_4
    if-gt v4, p3, :cond_d

    .line 629
    aget-byte v8, p4, v4

    if-nez v8, :cond_c

    .line 630
    new-instance v8, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v8, v7}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v6, v8}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 628
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .end local v4           #k:I
    .end local v5           #stdEncoding:Z
    .end local v6           #wd:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_5
    move v5, v7

    .line 595
    goto :goto_0

    .line 597
    .restart local v4       #k:I
    .restart local v5       #stdEncoding:Z
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 604
    :cond_7
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->MAC_ROMAN_ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    goto :goto_2

    .line 606
    :cond_8
    new-instance v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v2, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 607
    .local v2, enc:Lcom/itextpdf/text/pdf/PdfDictionary;
    new-instance v1, Lcom/itextpdf/text/pdf/PdfArray;

    invoke-direct {v1}, Lcom/itextpdf/text/pdf/PdfArray;-><init>()V

    .line 608
    .local v1, dif:Lcom/itextpdf/text/pdf/PdfArray;
    const/4 v3, 0x1

    .line 609
    .local v3, gap:Z
    move v4, p2

    :goto_6
    if-gt v4, p3, :cond_b

    .line 610
    aget-byte v8, p4, v4

    if-eqz v8, :cond_a

    .line 611
    if-eqz v3, :cond_9

    .line 612
    new-instance v8, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v8, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 613
    const/4 v3, 0x0

    .line 615
    :cond_9
    new-instance v8, Lcom/itextpdf/text/pdf/PdfName;

    iget-object v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->differences:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    .line 609
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 618
    :cond_a
    const/4 v3, 0x1

    goto :goto_7

    .line 620
    :cond_b
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->DIFFERENCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v8, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 621
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v8, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_3

    .line 632
    .end local v1           #dif:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #enc:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v3           #gap:Z
    .restart local v6       #wd:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_c
    new-instance v8, Lcom/itextpdf/text/pdf/PdfNumber;

    iget-object v9, p0, Lcom/itextpdf/text/pdf/Type1Font;->widths:[I

    aget v9, v9, v4

    invoke-direct {v8, v9}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v6, v8}, Lcom/itextpdf/text/pdf/PdfArray;->add(Lcom/itextpdf/text/pdf/PdfObject;)Z

    goto :goto_5

    .line 634
    :cond_d
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->WIDTHS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v7, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 636
    .end local v4           #k:I
    .end local v6           #wd:Lcom/itextpdf/text/pdf/PdfArray;
    :cond_e
    iget-boolean v7, p0, Lcom/itextpdf/text/pdf/Type1Font;->builtinFont:Z

    if-nez v7, :cond_f

    if-eqz p1, :cond_f

    .line 637
    sget-object v7, Lcom/itextpdf/text/pdf/PdfName;->FONTDESCRIPTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v7, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 638
    :cond_f
    return-object v0
.end method

.method private getFontDescriptor(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 8
    .parameter "fontStream"

    .prologue
    .line 556
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/Type1Font;->builtinFont:Z

    if-eqz v2, :cond_0

    .line 557
    const/4 v0, 0x0

    .line 580
    :goto_0
    return-object v0

    .line 558
    :cond_0
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONTDESCRIPTOR:Lcom/itextpdf/text/pdf/PdfName;

    invoke-direct {v0, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 559
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ASCENT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v4, p0, Lcom/itextpdf/text/pdf/Type1Font;->Ascender:I

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 560
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->CAPHEIGHT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v4, p0, Lcom/itextpdf/text/pdf/Type1Font;->CapHeight:I

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 561
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->DESCENT:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v4, p0, Lcom/itextpdf/text/pdf/Type1Font;->Descender:I

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 562
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONTBBOX:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfRectangle;

    iget v4, p0, Lcom/itextpdf/text/pdf/Type1Font;->llx:I

    int-to-float v4, v4

    iget v5, p0, Lcom/itextpdf/text/pdf/Type1Font;->lly:I

    int-to-float v5, v5

    iget v6, p0, Lcom/itextpdf/text/pdf/Type1Font;->urx:I

    int-to-float v6, v6

    iget v7, p0, Lcom/itextpdf/text/pdf/Type1Font;->ury:I

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/itextpdf/text/pdf/PdfRectangle;-><init>(FFFF)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 563
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONTNAME:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfName;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/Type1Font;->FontName:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 564
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->ITALICANGLE:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v4, p0, Lcom/itextpdf/text/pdf/Type1Font;->ItalicAngle:F

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(F)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 565
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->STEMV:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    iget v4, p0, Lcom/itextpdf/text/pdf/Type1Font;->StdVW:I

    invoke-direct {v3, v4}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 566
    if-eqz p1, :cond_1

    .line 567
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FONTFILE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v2, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 568
    :cond_1
    const/4 v1, 0x0

    .line 569
    .local v1, flags:I
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/Type1Font;->IsFixedPitch:Z

    if-eqz v2, :cond_2

    .line 570
    or-int/lit8 v1, v1, 0x1

    .line 571
    :cond_2
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/Type1Font;->fontSpecific:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x4

    :goto_1
    or-int/2addr v1, v2

    .line 572
    iget v2, p0, Lcom/itextpdf/text/pdf/Type1Font;->ItalicAngle:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 573
    or-int/lit8 v1, v1, 0x40

    .line 574
    :cond_3
    iget-object v2, p0, Lcom/itextpdf/text/pdf/Type1Font;->FontName:Ljava/lang/String;

    const-string v3, "Caps"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_4

    iget-object v2, p0, Lcom/itextpdf/text/pdf/Type1Font;->FontName:Ljava/lang/String;

    const-string v3, "SC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 575
    :cond_4
    const/high16 v2, 0x2

    or-int/2addr v1, v2

    .line 576
    :cond_5
    iget-object v2, p0, Lcom/itextpdf/text/pdf/Type1Font;->Weight:Ljava/lang/String;

    const-string v3, "Bold"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 577
    const/high16 v2, 0x4

    or-int/2addr v1, v2

    .line 578
    :cond_6
    sget-object v2, Lcom/itextpdf/text/pdf/PdfName;->FLAGS:Lcom/itextpdf/text/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/text/pdf/PdfNumber;

    invoke-direct {v3, v1}, Lcom/itextpdf/text/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    goto/16 :goto_0

    .line 571
    :cond_7
    const/16 v2, 0x20

    goto :goto_1
.end method


# virtual methods
.method public getAllNameEntries()[[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 773
    new-array v0, v3, [[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "4"

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/itextpdf/text/pdf/Type1Font;->FullName:Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    return-object v0
.end method

.method public getFamilyFontName()[[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 786
    new-array v0, v3, [[Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/itextpdf/text/pdf/Type1Font;->FamilyName:Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    return-object v0
.end method

.method public getFontDescriptor(IF)F
    .locals 3
    .parameter "key"
    .parameter "fontSize"

    .prologue
    const/4 v0, 0x0

    const/high16 v2, 0x447a

    .line 687
    packed-switch p1, :pswitch_data_0

    .line 715
    :goto_0
    :pswitch_0
    return v0

    .line 690
    :pswitch_1
    iget v0, p0, Lcom/itextpdf/text/pdf/Type1Font;->Ascender:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 692
    :pswitch_2
    iget v0, p0, Lcom/itextpdf/text/pdf/Type1Font;->CapHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 695
    :pswitch_3
    iget v0, p0, Lcom/itextpdf/text/pdf/Type1Font;->Descender:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 697
    :pswitch_4
    iget v0, p0, Lcom/itextpdf/text/pdf/Type1Font;->ItalicAngle:F

    goto :goto_0

    .line 699
    :pswitch_5
    iget v0, p0, Lcom/itextpdf/text/pdf/Type1Font;->llx:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 701
    :pswitch_6
    iget v0, p0, Lcom/itextpdf/text/pdf/Type1Font;->lly:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 703
    :pswitch_7
    iget v0, p0, Lcom/itextpdf/text/pdf/Type1Font;->urx:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 705
    :pswitch_8
    iget v0, p0, Lcom/itextpdf/text/pdf/Type1Font;->ury:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 709
    :pswitch_9
    iget v0, p0, Lcom/itextpdf/text/pdf/Type1Font;->urx:I

    iget v1, p0, Lcom/itextpdf/text/pdf/Type1Font;->llx:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 711
    :pswitch_a
    iget v0, p0, Lcom/itextpdf/text/pdf/Type1Font;->UnderlinePosition:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 713
    :pswitch_b
    iget v0, p0, Lcom/itextpdf/text/pdf/Type1Font;->UnderlineThickness:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    goto :goto_0

    .line 687
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public getFullFontName()[[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 760
    new-array v0, v3, [[Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v4

    const-string v2, ""

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/itextpdf/text/pdf/Type1Font;->FullName:Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    return-object v0
.end method

.method public getFullFontStream()Lcom/itextpdf/text/pdf/PdfStream;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 501
    iget-boolean v11, p0, Lcom/itextpdf/text/pdf/Type1Font;->builtinFont:Z

    if-nez v11, :cond_0

    iget-boolean v11, p0, Lcom/itextpdf/text/pdf/Type1Font;->embedded:Z

    if-nez v11, :cond_2

    .line 502
    :cond_0
    const/4 v11, 0x0

    .line 544
    :cond_1
    :goto_0
    return-object v11

    .line 503
    :cond_2
    const/4 v7, 0x0

    .line 505
    .local v7, rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/itextpdf/text/pdf/Type1Font;->fileName:Ljava/lang/String;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/itextpdf/text/pdf/Type1Font;->fileName:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x3

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "pfb"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 506
    .local v3, filePfb:Ljava/lang/String;
    iget-object v11, p0, Lcom/itextpdf/text/pdf/Type1Font;->pfb:[B

    if-nez v11, :cond_4

    .line 507
    new-instance v8, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v11, 0x1

    sget-boolean v12, Lcom/itextpdf/text/Document;->plainRandomAccess:Z

    invoke-direct {v8, v3, v11, v12}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>(Ljava/lang/String;ZZ)V

    .end local v7           #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .local v8, rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    move-object v7, v8

    .line 510
    .end local v8           #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v7       #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    :goto_1
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()J

    move-result-wide v11

    long-to-int v2, v11

    .line 511
    .local v2, fileLength:I
    add-int/lit8 v11, v2, -0x12

    new-array v10, v11, [B

    .line 512
    .local v10, st:[B
    const/4 v11, 0x3

    new-array v6, v11, [I

    .line 513
    .local v6, lengths:[I
    const/4 v0, 0x0

    .line 514
    .local v0, bytePtr:I
    const/4 v5, 0x0

    .local v5, k:I
    :goto_2
    const/4 v11, 0x3

    if-ge v5, v11, :cond_9

    .line 515
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v11

    const/16 v12, 0x80

    if-eq v11, v12, :cond_5

    .line 516
    new-instance v11, Lcom/itextpdf/text/DocumentException;

    const-string v12, "start.marker.missing.in.1"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-static {v12, v13}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    .end local v0           #bytePtr:I
    .end local v2           #fileLength:I
    .end local v3           #filePfb:Ljava/lang/String;
    .end local v5           #k:I
    .end local v6           #lengths:[I
    .end local v10           #st:[B
    :catch_0
    move-exception v1

    .line 535
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    new-instance v11, Lcom/itextpdf/text/DocumentException;

    invoke-direct {v11, v1}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/Exception;)V

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 538
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    if-eqz v7, :cond_3

    .line 540
    :try_start_2
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 544
    :cond_3
    :goto_3
    throw v11

    .line 509
    .restart local v3       #filePfb:Ljava/lang/String;
    :cond_4
    :try_start_3
    new-instance v8, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    iget-object v11, p0, Lcom/itextpdf/text/pdf/Type1Font;->pfb:[B

    invoke-direct {v8, v11}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;-><init>([B)V

    .end local v7           #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v8       #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    move-object v7, v8

    .end local v8           #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    .restart local v7       #rf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    goto :goto_1

    .line 517
    .restart local v0       #bytePtr:I
    .restart local v2       #fileLength:I
    .restart local v5       #k:I
    .restart local v6       #lengths:[I
    .restart local v10       #st:[B
    :cond_5
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v11

    sget-object v12, Lcom/itextpdf/text/pdf/Type1Font;->PFB_TYPES:[I

    aget v12, v12, v5

    if-eq v11, v12, :cond_6

    .line 518
    new-instance v11, Lcom/itextpdf/text/DocumentException;

    const-string v12, "incorrect.segment.type.in.1"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-static {v12, v13}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 519
    :cond_6
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v9

    .line 520
    .local v9, size:I
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v11

    shl-int/lit8 v11, v11, 0x8

    add-int/2addr v9, v11

    .line 521
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v11

    shl-int/lit8 v11, v11, 0x10

    add-int/2addr v9, v11

    .line 522
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v11

    shl-int/lit8 v11, v11, 0x18

    add-int/2addr v9, v11

    .line 523
    aput v9, v6, v5

    .line 524
    :goto_4
    if-eqz v9, :cond_8

    .line 525
    invoke-virtual {v7, v10, v0, v9}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read([BII)I

    move-result v4

    .line 526
    .local v4, got:I
    if-gez v4, :cond_7

    .line 527
    new-instance v11, Lcom/itextpdf/text/DocumentException;

    const-string v12, "premature.end.in.1"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-static {v12, v13}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 528
    :cond_7
    add-int/2addr v0, v4

    .line 529
    sub-int/2addr v9, v4

    .line 530
    goto :goto_4

    .line 514
    .end local v4           #got:I
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 532
    .end local v9           #size:I
    :cond_9
    new-instance v11, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;

    iget v12, p0, Lcom/itextpdf/text/pdf/Type1Font;->compressionLevel:I

    invoke-direct {v11, v10, v6, v12}, Lcom/itextpdf/text/pdf/BaseFont$StreamFont;-><init>([B[II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 538
    if-eqz v7, :cond_1

    .line 540
    :try_start_4
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 542
    :catch_1
    move-exception v12

    goto/16 :goto_0

    .end local v0           #bytePtr:I
    .end local v2           #fileLength:I
    .end local v3           #filePfb:Ljava/lang/String;
    .end local v5           #k:I
    .end local v6           #lengths:[I
    .end local v10           #st:[B
    :catch_2
    move-exception v12

    goto :goto_3
.end method

.method public getKerning(II)I
    .locals 6
    .parameter "char1"
    .parameter "char2"

    .prologue
    const/4 v4, 0x0

    .line 313
    invoke-static {p1}, Lcom/itextpdf/text/pdf/GlyphList;->unicodeToName(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, first:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 326
    :cond_0
    :goto_0
    return v4

    .line 316
    :cond_1
    invoke-static {p2}, Lcom/itextpdf/text/pdf/GlyphList;->unicodeToName(I)Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, second:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 319
    iget-object v5, p0, Lcom/itextpdf/text/pdf/Type1Font;->KernPairs:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 320
    .local v2, obj:[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 322
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 323
    aget-object v5, v2, v1

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 324
    add-int/lit8 v4, v1, 0x1

    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    .line 322
    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method public getPostscriptFontName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Type1Font;->FontName:Ljava/lang/String;

    return-object v0
.end method

.method protected getRawCharBBox(ILjava/lang/String;)[I
    .locals 4
    .parameter "c"
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 846
    if-nez p2, :cond_1

    .line 847
    iget-object v2, p0, Lcom/itextpdf/text/pdf/Type1Font;->CharMetrics:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 854
    .local v0, metrics:[Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_0

    .line 855
    const/4 v1, 0x3

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    .line 856
    .end local v0           #metrics:[Ljava/lang/Object;
    :cond_0
    return-object v1

    .line 850
    :cond_1
    const-string v2, ".notdef"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 852
    iget-object v2, p0, Lcom/itextpdf/text/pdf/Type1Font;->CharMetrics:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .restart local v0       #metrics:[Ljava/lang/Object;
    goto :goto_0
.end method

.method getRawWidth(ILjava/lang/String;)I
    .locals 4
    .parameter "c"
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 290
    if-nez p2, :cond_1

    .line 291
    iget-object v2, p0, Lcom/itextpdf/text/pdf/Type1Font;->CharMetrics:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 298
    .local v0, metrics:[Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_0

    .line 299
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 300
    .end local v0           #metrics:[Ljava/lang/Object;
    :cond_0
    return v1

    .line 294
    :cond_1
    const-string v2, ".notdef"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/itextpdf/text/pdf/Type1Font;->CharMetrics:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .restart local v0       #metrics:[Ljava/lang/Object;
    goto :goto_0
.end method

.method public hasKernPairs()Z
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Type1Font;->KernPairs:Ljava/util/HashMap;

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

.method public process(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V
    .locals 24
    .parameter "rf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    const/4 v8, 0x0

    .line 339
    .local v8, isMetrics:Z
    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, line:Ljava/lang/String;
    if-eqz v9, :cond_12

    .line 341
    new-instance v16, Ljava/util/StringTokenizer;

    const-string v19, " ,\n\r\t\u000c"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v9, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .local v16, tok:Ljava/util/StringTokenizer;
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 344
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 345
    .local v7, ident:Ljava/lang/String;
    const-string v19, "FontName"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 346
    const-string v19, "\u00ff"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/Type1Font;->FontName:Ljava/lang/String;

    goto :goto_0

    .line 347
    :cond_1
    const-string v19, "FullName"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 348
    const-string v19, "\u00ff"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/Type1Font;->FullName:Ljava/lang/String;

    goto :goto_0

    .line 349
    :cond_2
    const-string v19, "FamilyName"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 350
    const-string v19, "\u00ff"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/Type1Font;->FamilyName:Ljava/lang/String;

    goto :goto_0

    .line 351
    :cond_3
    const-string v19, "Weight"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 352
    const-string v19, "\u00ff"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/Type1Font;->Weight:Ljava/lang/String;

    goto/16 :goto_0

    .line 353
    :cond_4
    const-string v19, "ItalicAngle"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 354
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/Type1Font;->ItalicAngle:F

    goto/16 :goto_0

    .line 355
    :cond_5
    const-string v19, "IsFixedPitch"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 356
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    const-string v20, "true"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/itextpdf/text/pdf/Type1Font;->IsFixedPitch:Z

    goto/16 :goto_0

    .line 357
    :cond_6
    const-string v19, "CharacterSet"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 358
    const-string v19, "\u00ff"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/Type1Font;->CharacterSet:Ljava/lang/String;

    goto/16 :goto_0

    .line 359
    :cond_7
    const-string v19, "FontBBox"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 361
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/Type1Font;->llx:I

    .line 362
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/Type1Font;->lly:I

    .line 363
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/Type1Font;->urx:I

    .line 364
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/Type1Font;->ury:I

    goto/16 :goto_0

    .line 366
    :cond_8
    const-string v19, "UnderlinePosition"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 367
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/Type1Font;->UnderlinePosition:I

    goto/16 :goto_0

    .line 368
    :cond_9
    const-string v19, "UnderlineThickness"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 369
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/Type1Font;->UnderlineThickness:I

    goto/16 :goto_0

    .line 370
    :cond_a
    const-string v19, "EncodingScheme"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 371
    const-string v19, "\u00ff"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/itextpdf/text/pdf/Type1Font;->EncodingScheme:Ljava/lang/String;

    goto/16 :goto_0

    .line 372
    :cond_b
    const-string v19, "CapHeight"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 373
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/Type1Font;->CapHeight:I

    goto/16 :goto_0

    .line 374
    :cond_c
    const-string v19, "XHeight"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 375
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/Type1Font;->XHeight:I

    goto/16 :goto_0

    .line 376
    :cond_d
    const-string v19, "Ascender"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 377
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/Type1Font;->Ascender:I

    goto/16 :goto_0

    .line 378
    :cond_e
    const-string v19, "Descender"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 379
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/Type1Font;->Descender:I

    goto/16 :goto_0

    .line 380
    :cond_f
    const-string v19, "StdHW"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 381
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/Type1Font;->StdHW:I

    goto/16 :goto_0

    .line 382
    :cond_10
    const-string v19, "StdVW"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 383
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/itextpdf/text/pdf/Type1Font;->StdVW:I

    goto/16 :goto_0

    .line 384
    :cond_11
    const-string v19, "StartCharMetrics"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 386
    const/4 v8, 0x1

    .line 390
    .end local v7           #ident:Ljava/lang/String;
    .end local v16           #tok:Ljava/util/StringTokenizer;
    :cond_12
    if-nez v8, :cond_13

    .line 391
    new-instance v19, Lcom/itextpdf/text/DocumentException;

    const-string v20, "missing.startcharmetrics.in.1"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Type1Font;->fileName:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 392
    :cond_13
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_14

    .line 394
    new-instance v16, Ljava/util/StringTokenizer;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 395
    .restart local v16       #tok:Ljava/util/StringTokenizer;
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v19

    if-eqz v19, :cond_13

    .line 397
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 398
    .restart local v7       #ident:Ljava/lang/String;
    const-string v19, "EndCharMetrics"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 400
    const/4 v8, 0x0

    .line 433
    .end local v7           #ident:Ljava/lang/String;
    .end local v16           #tok:Ljava/util/StringTokenizer;
    :cond_14
    if-eqz v8, :cond_1c

    .line 434
    new-instance v19, Lcom/itextpdf/text/DocumentException;

    const-string v20, "missing.endcharmetrics.in.1"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Type1Font;->fileName:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 403
    .restart local v7       #ident:Ljava/lang/String;
    .restart local v16       #tok:Ljava/util/StringTokenizer;
    :cond_15
    const/16 v19, -0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 404
    .local v3, C:Ljava/lang/Integer;
    const/16 v19, 0xfa

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 405
    .local v5, WX:Ljava/lang/Integer;
    const-string v4, ""

    .line 406
    .local v4, N:Ljava/lang/String;
    const/4 v2, 0x0

    .line 408
    .local v2, B:[I
    new-instance v16, Ljava/util/StringTokenizer;

    .end local v16           #tok:Ljava/util/StringTokenizer;
    const-string v19, ";"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v9, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .restart local v16       #tok:Ljava/util/StringTokenizer;
    :cond_16
    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 411
    new-instance v17, Ljava/util/StringTokenizer;

    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 412
    .local v17, tokc:Ljava/util/StringTokenizer;
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v19

    if-eqz v19, :cond_16

    .line 414
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 415
    const-string v19, "C"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 416
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    .line 417
    :cond_17
    const-string v19, "WX"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 418
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    .line 419
    :cond_18
    const-string v19, "N"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 420
    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 421
    :cond_19
    const-string v19, "B"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 422
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v2, v0, [I

    .end local v2           #B:[I
    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    aput v20, v2, v19

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    aput v20, v2, v19

    const/16 v19, 0x2

    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    aput v20, v2, v19

    const/16 v19, 0x3

    invoke-virtual/range {v17 .. v17}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    aput v20, v2, v19

    .restart local v2       #B:[I
    goto/16 :goto_2

    .line 428
    .end local v17           #tokc:Ljava/util/StringTokenizer;
    :cond_1a
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v10, v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v3, v10, v19

    const/16 v19, 0x1

    aput-object v5, v10, v19

    const/16 v19, 0x2

    aput-object v4, v10, v19

    const/16 v19, 0x3

    aput-object v2, v10, v19

    .line 429
    .local v10, metrics:[Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v19

    if-ltz v19, :cond_1b

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Type1Font;->CharMetrics:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Type1Font;->CharMetrics:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 435
    .end local v2           #B:[I
    .end local v3           #C:Ljava/lang/Integer;
    .end local v4           #N:Ljava/lang/String;
    .end local v5           #WX:Ljava/lang/Integer;
    .end local v7           #ident:Ljava/lang/String;
    .end local v10           #metrics:[Ljava/lang/Object;
    .end local v16           #tok:Ljava/util/StringTokenizer;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Type1Font;->CharMetrics:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "nonbreakingspace"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_1d

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Type1Font;->CharMetrics:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "space"

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Ljava/lang/Object;

    .line 437
    .local v15, space:[Ljava/lang/Object;
    if-eqz v15, :cond_1d

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Type1Font;->CharMetrics:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const-string v20, "nonbreakingspace"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    .end local v15           #space:[Ljava/lang/Object;
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1f

    .line 442
    new-instance v16, Ljava/util/StringTokenizer;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 443
    .restart local v16       #tok:Ljava/util/StringTokenizer;
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 445
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 446
    .restart local v7       #ident:Ljava/lang/String;
    const-string v19, "EndFontMetrics"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 489
    .end local v7           #ident:Ljava/lang/String;
    .end local v16           #tok:Ljava/util/StringTokenizer;
    :goto_3
    return-void

    .line 448
    .restart local v7       #ident:Ljava/lang/String;
    .restart local v16       #tok:Ljava/util/StringTokenizer;
    :cond_1e
    const-string v19, "StartKernPairs"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 450
    const/4 v8, 0x1

    .line 454
    .end local v7           #ident:Ljava/lang/String;
    .end local v16           #tok:Ljava/util/StringTokenizer;
    :cond_1f
    if-nez v8, :cond_20

    .line 455
    new-instance v19, Lcom/itextpdf/text/DocumentException;

    const-string v20, "missing.endfontmetrics.in.1"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Type1Font;->fileName:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 456
    :cond_20
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_23

    .line 458
    new-instance v16, Ljava/util/StringTokenizer;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 459
    .restart local v16       #tok:Ljava/util/StringTokenizer;
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v19

    if-eqz v19, :cond_20

    .line 461
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 462
    .restart local v7       #ident:Ljava/lang/String;
    const-string v19, "KPX"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_22

    .line 464
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 465
    .local v6, first:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    .line 466
    .local v14, second:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 467
    .local v18, width:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Type1Font;->KernPairs:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/Object;

    .line 468
    .local v12, relates:[Ljava/lang/Object;
    if-nez v12, :cond_21

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Type1Font;->KernPairs:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v14, v20, v21

    const/16 v21, 0x1

    aput-object v18, v20, v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 472
    :cond_21
    array-length v11, v12

    .line 473
    .local v11, n:I
    add-int/lit8 v19, v11, 0x2

    move/from16 v0, v19

    new-array v13, v0, [Ljava/lang/Object;

    .line 474
    .local v13, relates2:[Ljava/lang/Object;
    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v12, v0, v13, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 475
    aput-object v14, v13, v11

    .line 476
    add-int/lit8 v19, v11, 0x1

    aput-object v18, v13, v19

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Type1Font;->KernPairs:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 480
    .end local v6           #first:Ljava/lang/String;
    .end local v11           #n:I
    .end local v12           #relates:[Ljava/lang/Object;
    .end local v13           #relates2:[Ljava/lang/Object;
    .end local v14           #second:Ljava/lang/String;
    .end local v18           #width:Ljava/lang/Integer;
    :cond_22
    const-string v19, "EndKernPairs"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_20

    .line 482
    const/4 v8, 0x0

    .line 486
    .end local v7           #ident:Ljava/lang/String;
    .end local v16           #tok:Ljava/util/StringTokenizer;
    :cond_23
    if-eqz v8, :cond_24

    .line 487
    new-instance v19, Lcom/itextpdf/text/DocumentException;

    const-string v20, "missing.endkernpairs.in.1"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/Type1Font;->fileName:Ljava/lang/String;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/itextpdf/text/DocumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 488
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V

    goto/16 :goto_3
.end method

.method public setFontDescriptor(IF)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 728
    sparse-switch p1, :sswitch_data_0

    .line 740
    :goto_0
    return-void

    .line 731
    :sswitch_0
    float-to-int v0, p2

    iput v0, p0, Lcom/itextpdf/text/pdf/Type1Font;->Ascender:I

    goto :goto_0

    .line 735
    :sswitch_1
    float-to-int v0, p2

    iput v0, p0, Lcom/itextpdf/text/pdf/Type1Font;->Descender:I

    goto :goto_0

    .line 728
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x9 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setKerning(III)Z
    .locals 9
    .parameter "char1"
    .parameter "char2"
    .parameter "kern"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 816
    invoke-static {p1}, Lcom/itextpdf/text/pdf/GlyphList;->unicodeToName(I)Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, first:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 840
    :cond_0
    :goto_0
    return v6

    .line 819
    :cond_1
    invoke-static {p2}, Lcom/itextpdf/text/pdf/GlyphList;->unicodeToName(I)Ljava/lang/String;

    move-result-object v4

    .line 820
    .local v4, second:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 822
    iget-object v8, p0, Lcom/itextpdf/text/pdf/Type1Font;->KernPairs:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 823
    .local v2, obj:[Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 824
    const/4 v8, 0x2

    new-array v2, v8, [Ljava/lang/Object;

    .end local v2           #obj:[Ljava/lang/Object;
    aput-object v4, v2, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v7

    .line 825
    .restart local v2       #obj:[Ljava/lang/Object;
    iget-object v6, p0, Lcom/itextpdf/text/pdf/Type1Font;->KernPairs:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v7

    .line 826
    goto :goto_0

    .line 828
    :cond_2
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    array-length v8, v2

    if-ge v1, v8, :cond_4

    .line 829
    aget-object v8, v2, v1

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 830
    add-int/lit8 v6, v1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v6

    move v6, v7

    .line 831
    goto :goto_0

    .line 828
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 834
    :cond_4
    array-length v5, v2

    .line 835
    .local v5, size:I
    add-int/lit8 v8, v5, 0x2

    new-array v3, v8, [Ljava/lang/Object;

    .line 836
    .local v3, obj2:[Ljava/lang/Object;
    invoke-static {v2, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 837
    aput-object v4, v3, v5

    .line 838
    add-int/lit8 v6, v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v6

    .line 839
    iget-object v6, p0, Lcom/itextpdf/text/pdf/Type1Font;->KernPairs:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v7

    .line 840
    goto :goto_0
.end method

.method public setPostscriptFontName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 804
    iput-object p1, p0, Lcom/itextpdf/text/pdf/Type1Font;->FontName:Ljava/lang/String;

    .line 805
    return-void
.end method

.method writeFont(Lcom/itextpdf/text/pdf/PdfWriter;Lcom/itextpdf/text/pdf/PdfIndirectReference;[Ljava/lang/Object;)V
    .locals 10
    .parameter "writer"
    .parameter "ref"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 650
    aget-object v8, p3, v7

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 651
    .local v0, firstChar:I
    aget-object v8, p3, v9

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 652
    .local v3, lastChar:I
    const/4 v8, 0x2

    aget-object v8, p3, v8

    check-cast v8, [B

    move-object v6, v8

    check-cast v6, [B

    .line 653
    .local v6, shortTag:[B
    const/4 v8, 0x3

    aget-object v8, p3, v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/itextpdf/text/pdf/Type1Font;->subset:Z

    if-eqz v8, :cond_0

    move v7, v9

    .line 654
    .local v7, subsetp:Z
    :cond_0
    if-nez v7, :cond_1

    .line 655
    const/4 v0, 0x0

    .line 656
    array-length v8, v6

    add-int/lit8 v3, v8, -0x1

    .line 657
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    array-length v8, v6

    if-ge v2, v8, :cond_1

    .line 658
    aput-byte v9, v6, v2

    .line 657
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 660
    .end local v2           #k:I
    :cond_1
    const/4 v1, 0x0

    .line 661
    .local v1, ind_font:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    const/4 v5, 0x0

    .line 662
    .local v5, pobj:Lcom/itextpdf/text/pdf/PdfObject;
    const/4 v4, 0x0

    .line 663
    .local v4, obj:Lcom/itextpdf/text/pdf/PdfIndirectObject;
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/Type1Font;->getFullFontStream()Lcom/itextpdf/text/pdf/PdfStream;

    move-result-object v5

    .line 664
    if-eqz v5, :cond_2

    .line 665
    invoke-virtual {p1, v5}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v4

    .line 666
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    .line 668
    :cond_2
    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/Type1Font;->getFontDescriptor(Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v5

    .line 669
    if-eqz v5, :cond_3

    .line 670
    invoke-virtual {p1, v5}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    move-result-object v4

    .line 671
    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfIndirectObject;->getIndirectReference()Lcom/itextpdf/text/pdf/PdfIndirectReference;

    move-result-object v1

    .line 673
    :cond_3
    invoke-direct {p0, v1, v0, v3, v6}, Lcom/itextpdf/text/pdf/Type1Font;->getFontBaseType(Lcom/itextpdf/text/pdf/PdfIndirectReference;II[B)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v5

    .line 674
    invoke-virtual {p1, v5, p2}, Lcom/itextpdf/text/pdf/PdfWriter;->addToBody(Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfIndirectReference;)Lcom/itextpdf/text/pdf/PdfIndirectObject;

    .line 675
    return-void
.end method
