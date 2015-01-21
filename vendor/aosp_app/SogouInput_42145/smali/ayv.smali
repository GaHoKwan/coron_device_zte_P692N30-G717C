.class public Layv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private a:I

.field private a:Ljava/io/OutputStream;

.field private a:Ljava/io/Writer;

.field private a:Ljava/nio/ByteBuffer;

.field private a:Ljava/nio/charset/CharsetEncoder;

.field private a:Z

.field private final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    aput-object v3, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    aput-object v3, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    const/16 v1, 0x17

    aput-object v3, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    aput-object v3, v0, v1

    const/16 v1, 0x20

    aput-object v3, v0, v1

    const/16 v1, 0x21

    aput-object v3, v0, v1

    const/16 v1, 0x22

    const-string v2, "&quot;"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    aput-object v3, v0, v1

    const/16 v1, 0x24

    aput-object v3, v0, v1

    const/16 v1, 0x25

    aput-object v3, v0, v1

    const/16 v1, 0x26

    const-string v2, "&amp;"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    aput-object v3, v0, v1

    const/16 v1, 0x28

    aput-object v3, v0, v1

    const/16 v1, 0x29

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    aput-object v3, v0, v1

    const/16 v1, 0x2b

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    aput-object v3, v0, v1

    const/16 v1, 0x2d

    aput-object v3, v0, v1

    const/16 v1, 0x2e

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    aput-object v3, v0, v1

    const/16 v1, 0x30

    aput-object v3, v0, v1

    const/16 v1, 0x31

    aput-object v3, v0, v1

    const/16 v1, 0x32

    aput-object v3, v0, v1

    const/16 v1, 0x33

    aput-object v3, v0, v1

    const/16 v1, 0x34

    aput-object v3, v0, v1

    const/16 v1, 0x35

    aput-object v3, v0, v1

    const/16 v1, 0x36

    aput-object v3, v0, v1

    const/16 v1, 0x37

    aput-object v3, v0, v1

    const/16 v1, 0x38

    aput-object v3, v0, v1

    const/16 v1, 0x39

    aput-object v3, v0, v1

    const/16 v1, 0x3a

    aput-object v3, v0, v1

    const/16 v1, 0x3b

    aput-object v3, v0, v1

    const/16 v1, 0x3c

    const-string v2, "&lt;"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    aput-object v3, v0, v1

    const/16 v1, 0x3e

    const-string v2, "&gt;"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    aput-object v3, v0, v1

    sput-object v0, Layv;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x2000

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-array v0, v1, [C

    iput-object v0, p0, Layv;->a:[C

    .line 60
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Layv;->a:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 213
    iget-object v0, p0, Layv;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_0

    .line 214
    iget-object v1, p0, Layv;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 215
    iget-object v1, p0, Layv;->a:Ljava/io/OutputStream;

    iget-object v2, p0, Layv;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 216
    iget-object v0, p0, Layv;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 218
    :cond_0
    return-void
.end method

.method private a(C)V
    .locals 2
    .parameter

    .prologue
    .line 65
    iget v0, p0, Layv;->a:I

    .line 66
    const/16 v1, 0x1fff

    if-lt v0, v1, :cond_0

    .line 67
    invoke-virtual {p0}, Layv;->flush()V

    .line 68
    iget v0, p0, Layv;->a:I

    .line 70
    :cond_0
    iget-object v1, p0, Layv;->a:[C

    aput-char p1, v1, v0

    .line 71
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Layv;->a:I

    .line 72
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Layv;->a(Ljava/lang/String;II)V

    .line 114
    return-void
.end method

.method private a(Ljava/lang/String;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x2000

    .line 75
    if-le p3, v1, :cond_1

    .line 76
    add-int v3, p2, p3

    .line 77
    :goto_0
    if-ge p2, v3, :cond_3

    .line 78
    add-int/lit16 v2, p2, 0x2000

    .line 79
    if-ge v2, v3, :cond_0

    move v0, v1

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Layv;->a(Ljava/lang/String;II)V

    move p2, v2

    .line 81
    goto :goto_0

    .line 79
    :cond_0
    sub-int v0, v3, p2

    goto :goto_1

    .line 84
    :cond_1
    iget v0, p0, Layv;->a:I

    .line 85
    add-int v2, v0, p3

    if-le v2, v1, :cond_2

    .line 86
    invoke-virtual {p0}, Layv;->flush()V

    .line 87
    iget v0, p0, Layv;->a:I

    .line 89
    :cond_2
    add-int v1, p2, p3

    iget-object v2, p0, Layv;->a:[C

    invoke-virtual {p1, p2, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 90
    add-int/2addr v0, p3

    iput v0, p0, Layv;->a:I

    .line 91
    :cond_3
    return-void
.end method

.method private a([CII)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x2000

    .line 94
    if-le p3, v1, :cond_1

    .line 95
    add-int v3, p2, p3

    .line 96
    :goto_0
    if-ge p2, v3, :cond_3

    .line 97
    add-int/lit16 v2, p2, 0x2000

    .line 98
    if-ge v2, v3, :cond_0

    move v0, v1

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Layv;->a([CII)V

    move p2, v2

    .line 100
    goto :goto_0

    .line 98
    :cond_0
    sub-int v0, v3, p2

    goto :goto_1

    .line 103
    :cond_1
    iget v0, p0, Layv;->a:I

    .line 104
    add-int v2, v0, p3

    if-le v2, v1, :cond_2

    .line 105
    invoke-virtual {p0}, Layv;->flush()V

    .line 106
    iget v0, p0, Layv;->a:I

    .line 108
    :cond_2
    iget-object v1, p0, Layv;->a:[C

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    add-int/2addr v0, p3

    iput v0, p0, Layv;->a:I

    .line 110
    :cond_3
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 117
    if-nez p1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 121
    sget-object v1, Layv;->a:[Ljava/lang/String;

    array-length v1, v1

    int-to-char v3, v1

    .line 122
    sget-object v4, Layv;->a:[Ljava/lang/String;

    move v1, v0

    .line 125
    :goto_1
    if-ge v1, v2, :cond_5

    .line 126
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 127
    if-lt v5, v3, :cond_3

    .line 125
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 128
    :cond_3
    aget-object v5, v4, v5

    .line 129
    if-eqz v5, :cond_2

    .line 130
    if-ge v0, v1, :cond_4

    sub-int v6, v1, v0

    invoke-direct {p0, p1, v0, v6}, Layv;->a(Ljava/lang/String;II)V

    .line 131
    :cond_4
    add-int/lit8 v0, v1, 0x1

    .line 132
    invoke-direct {p0, v5}, Layv;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 134
    :cond_5
    if-ge v0, v1, :cond_0

    sub-int/2addr v1, v0

    invoke-direct {p0, p1, v0, v1}, Layv;->a(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private b([CII)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    sget-object v0, Layv;->a:[Ljava/lang/String;

    array-length v0, v0

    int-to-char v1, v0

    .line 139
    sget-object v2, Layv;->a:[Ljava/lang/String;

    .line 140
    add-int v3, p2, p3

    move v0, p2

    .line 143
    :goto_0
    if-ge p2, v3, :cond_3

    .line 144
    aget-char v4, p1, p2

    .line 145
    if-lt v4, v1, :cond_1

    .line 143
    :cond_0
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 146
    :cond_1
    aget-object v4, v2, v4

    .line 147
    if-eqz v4, :cond_0

    .line 148
    if-ge v0, p2, :cond_2

    sub-int v5, p2, v0

    invoke-direct {p0, p1, v0, v5}, Layv;->a([CII)V

    .line 149
    :cond_2
    add-int/lit8 v0, p2, 0x1

    .line 150
    invoke-direct {p0, v4}, Layv;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 152
    :cond_3
    if-ge v0, p2, :cond_4

    sub-int v1, p2, v0

    invoke-direct {p0, p1, v0, v1}, Layv;->a([CII)V

    .line 153
    :cond_4
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Layv;->a(C)V

    .line 158
    if-eqz p1, :cond_0

    .line 159
    invoke-direct {p0, p1}, Layv;->a(Ljava/lang/String;)V

    .line 160
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Layv;->a(C)V

    .line 162
    :cond_0
    invoke-direct {p0, p2}, Layv;->a(Ljava/lang/String;)V

    .line 163
    const-string v0, "=\""

    invoke-direct {p0, v0}, Layv;->a(Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, p3}, Layv;->b(Ljava/lang/String;)V

    .line 166
    const/16 v0, 0x22

    invoke-direct {p0, v0}, Layv;->a(C)V

    .line 167
    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 172
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public comment(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 177
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 182
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public endDocument()V
    .locals 0

    .prologue
    .line 186
    invoke-virtual {p0}, Layv;->flush()V

    .line 187
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 191
    iget-boolean v0, p0, Layv;->a:Z

    if-eqz v0, :cond_0

    .line 192
    const-string v0, " />\n"

    invoke-direct {p0, v0}, Layv;->a(Ljava/lang/String;)V

    .line 202
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Layv;->a:Z

    .line 203
    return-object p0

    .line 194
    :cond_0
    const-string v0, "</"

    invoke-direct {p0, v0}, Layv;->a(Ljava/lang/String;)V

    .line 195
    if-eqz p1, :cond_1

    .line 196
    invoke-direct {p0, p1}, Layv;->a(Ljava/lang/String;)V

    .line 197
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Layv;->a(C)V

    .line 199
    :cond_1
    invoke-direct {p0, p2}, Layv;->a(Ljava/lang/String;)V

    .line 200
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Layv;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 208
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public flush()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 221
    iget v0, p0, Layv;->a:I

    if-lez v0, :cond_2

    .line 222
    iget-object v0, p0, Layv;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_3

    .line 223
    iget-object v0, p0, Layv;->a:[C

    iget v1, p0, Layv;->a:I

    invoke-static {v0, v3, v1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 224
    iget-object v0, p0, Layv;->a:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Layv;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 226
    :goto_0
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 228
    :cond_0
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-direct {p0}, Layv;->a()V

    .line 230
    iget-object v0, p0, Layv;->a:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Layv;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_1
    invoke-direct {p0}, Layv;->a()V

    .line 236
    iget-object v0, p0, Layv;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 241
    :goto_1
    iput v3, p0, Layv;->a:I

    .line 243
    :cond_2
    return-void

    .line 238
    :cond_3
    iget-object v0, p0, Layv;->a:Ljava/io/Writer;

    iget-object v1, p0, Layv;->a:[C

    iget v2, p0, Layv;->a:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    .line 239
    iget-object v0, p0, Layv;->a:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    goto :goto_1
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 246
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 250
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 263
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 272
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 282
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    return-void

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 290
    if-nez p1, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 294
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Layv;->a:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 302
    iput-object p1, p0, Layv;->a:Ljava/io/OutputStream;

    .line 309
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/UnsupportedEncodingException;

    check-cast v0, Ljava/io/UnsupportedEncodingException;

    throw v0

    .line 298
    :catch_1
    move-exception v0

    .line 299
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/UnsupportedEncodingException;

    check-cast v0, Ljava/io/UnsupportedEncodingException;

    throw v0
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Layv;->a:Ljava/io/Writer;

    .line 314
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 318
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 323
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "yes"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' ?>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Layv;->a(Ljava/lang/String;)V

    .line 330
    return-void

    .line 328
    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 334
    iget-boolean v0, p0, Layv;->a:Z

    if-eqz v0, :cond_0

    .line 335
    const-string v0, ">\n"

    invoke-direct {p0, v0}, Layv;->a(Ljava/lang/String;)V

    .line 337
    :cond_0
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Layv;->a(C)V

    .line 338
    if-eqz p1, :cond_1

    .line 339
    invoke-direct {p0, p1}, Layv;->a(Ljava/lang/String;)V

    .line 340
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, Layv;->a(C)V

    .line 342
    :cond_1
    invoke-direct {p0, p2}, Layv;->a(Ljava/lang/String;)V

    .line 343
    const/4 v0, 0x1

    iput-boolean v0, p0, Layv;->a:Z

    .line 344
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter

    .prologue
    .line 359
    iget-boolean v0, p0, Layv;->a:Z

    if-eqz v0, :cond_0

    .line 360
    const-string v0, ">"

    invoke-direct {p0, v0}, Layv;->a(Ljava/lang/String;)V

    .line 361
    const/4 v0, 0x0

    iput-boolean v0, p0, Layv;->a:Z

    .line 363
    :cond_0
    invoke-direct {p0, p1}, Layv;->b(Ljava/lang/String;)V

    .line 364
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 349
    iget-boolean v0, p0, Layv;->a:Z

    if-eqz v0, :cond_0

    .line 350
    const-string v0, ">"

    invoke-direct {p0, v0}, Layv;->a(Ljava/lang/String;)V

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Layv;->a:Z

    .line 353
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Layv;->b([CII)V

    .line 354
    return-object p0
.end method
