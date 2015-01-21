.class public abstract Lorg/apache/commons/compress/archivers/zip/B;
.super Ljava/lang/Object;


# static fields
.field static final UTF8:Ljava/lang/String; = "UTF8"

.field private static final lP:Ljava/util/Map; = null

.field private static final lQ:[B = null

.field private static final lR:Ljava/lang/String; = "UTF-8"

.field static final lS:Lorg/apache/commons/compress/archivers/zip/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x80

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/B;->lP:Ljava/util/Map;

    new-array v0, v3, [C

    fill-array-data v0, :array_0

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/D;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/zip/D;-><init>([C)V

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/B;->lP:Ljava/util/Map;

    const-string v2, "CP437"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/B;->lP:Ljava/util/Map;

    const-string v2, "Cp437"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/B;->lP:Ljava/util/Map;

    const-string v2, "cp437"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/B;->lP:Ljava/util/Map;

    const-string v2, "IBM437"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/B;->lP:Ljava/util/Map;

    const-string v2, "ibm437"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v3, [C

    fill-array-data v0, :array_1

    new-instance v1, Lorg/apache/commons/compress/archivers/zip/D;

    invoke-direct {v1, v0}, Lorg/apache/commons/compress/archivers/zip/D;-><init>([C)V

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/B;->lP:Ljava/util/Map;

    const-string v2, "CP850"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/B;->lP:Ljava/util/Map;

    const-string v2, "Cp850"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/B;->lP:Ljava/util/Map;

    const-string v2, "cp850"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/B;->lP:Ljava/util/Map;

    const-string v2, "IBM850"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/B;->lP:Ljava/util/Map;

    const-string v2, "ibm850"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/B;->lQ:[B

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/m;

    const-string v1, "UTF8"

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/B;->lS:Lorg/apache/commons/compress/archivers/zip/e;

    return-void

    :array_0
    .array-data 0x2
        0xc7t 0x0t
        0xfct 0x0t
        0xe9t 0x0t
        0xe2t 0x0t
        0xe4t 0x0t
        0xe0t 0x0t
        0xe5t 0x0t
        0xe7t 0x0t
        0xeat 0x0t
        0xebt 0x0t
        0xe8t 0x0t
        0xeft 0x0t
        0xeet 0x0t
        0xect 0x0t
        0xc4t 0x0t
        0xc5t 0x0t
        0xc9t 0x0t
        0xe6t 0x0t
        0xc6t 0x0t
        0xf4t 0x0t
        0xf6t 0x0t
        0xf2t 0x0t
        0xfbt 0x0t
        0xf9t 0x0t
        0xfft 0x0t
        0xd6t 0x0t
        0xdct 0x0t
        0xa2t 0x0t
        0xa3t 0x0t
        0xa5t 0x0t
        0xa7t 0x20t
        0x92t 0x1t
        0xe1t 0x0t
        0xedt 0x0t
        0xf3t 0x0t
        0xfat 0x0t
        0xf1t 0x0t
        0xd1t 0x0t
        0xaat 0x0t
        0xbat 0x0t
        0xbft 0x0t
        0x10t 0x23t
        0xact 0x0t
        0xbdt 0x0t
        0xbct 0x0t
        0xa1t 0x0t
        0xabt 0x0t
        0xbbt 0x0t
        0x91t 0x25t
        0x92t 0x25t
        0x93t 0x25t
        0x2t 0x25t
        0x24t 0x25t
        0x61t 0x25t
        0x62t 0x25t
        0x56t 0x25t
        0x55t 0x25t
        0x63t 0x25t
        0x51t 0x25t
        0x57t 0x25t
        0x5dt 0x25t
        0x5ct 0x25t
        0x5bt 0x25t
        0x10t 0x25t
        0x14t 0x25t
        0x34t 0x25t
        0x2ct 0x25t
        0x1ct 0x25t
        0x0t 0x25t
        0x3ct 0x25t
        0x5et 0x25t
        0x5ft 0x25t
        0x5at 0x25t
        0x54t 0x25t
        0x69t 0x25t
        0x66t 0x25t
        0x60t 0x25t
        0x50t 0x25t
        0x6ct 0x25t
        0x67t 0x25t
        0x68t 0x25t
        0x64t 0x25t
        0x65t 0x25t
        0x59t 0x25t
        0x58t 0x25t
        0x52t 0x25t
        0x53t 0x25t
        0x6bt 0x25t
        0x6at 0x25t
        0x18t 0x25t
        0xct 0x25t
        0x88t 0x25t
        0x84t 0x25t
        0x8ct 0x25t
        0x90t 0x25t
        0x80t 0x25t
        0xb1t 0x3t
        0xdft 0x0t
        0x93t 0x3t
        0xc0t 0x3t
        0xa3t 0x3t
        0xc3t 0x3t
        0xb5t 0x0t
        0xc4t 0x3t
        0xa6t 0x3t
        0x98t 0x3t
        0xa9t 0x3t
        0xb4t 0x3t
        0x1et 0x22t
        0xc6t 0x3t
        0xb5t 0x3t
        0x29t 0x22t
        0x61t 0x22t
        0xb1t 0x0t
        0x65t 0x22t
        0x64t 0x22t
        0x20t 0x23t
        0x21t 0x23t
        0xf7t 0x0t
        0x48t 0x22t
        0xb0t 0x0t
        0x19t 0x22t
        0xb7t 0x0t
        0x1at 0x22t
        0x7ft 0x20t
        0xb2t 0x0t
        0xa0t 0x25t
        0xa0t 0x0t
    .end array-data

    :array_1
    .array-data 0x2
        0xc7t 0x0t
        0xfct 0x0t
        0xe9t 0x0t
        0xe2t 0x0t
        0xe4t 0x0t
        0xe0t 0x0t
        0xe5t 0x0t
        0xe7t 0x0t
        0xeat 0x0t
        0xebt 0x0t
        0xe8t 0x0t
        0xeft 0x0t
        0xeet 0x0t
        0xect 0x0t
        0xc4t 0x0t
        0xc5t 0x0t
        0xc9t 0x0t
        0xe6t 0x0t
        0xc6t 0x0t
        0xf4t 0x0t
        0xf6t 0x0t
        0xf2t 0x0t
        0xfbt 0x0t
        0xf9t 0x0t
        0xfft 0x0t
        0xd6t 0x0t
        0xdct 0x0t
        0xf8t 0x0t
        0xa3t 0x0t
        0xd8t 0x0t
        0xd7t 0x0t
        0x92t 0x1t
        0xe1t 0x0t
        0xedt 0x0t
        0xf3t 0x0t
        0xfat 0x0t
        0xf1t 0x0t
        0xd1t 0x0t
        0xaat 0x0t
        0xbat 0x0t
        0xbft 0x0t
        0xaet 0x0t
        0xact 0x0t
        0xbdt 0x0t
        0xbct 0x0t
        0xa1t 0x0t
        0xabt 0x0t
        0xbbt 0x0t
        0x91t 0x25t
        0x92t 0x25t
        0x93t 0x25t
        0x2t 0x25t
        0x24t 0x25t
        0xc1t 0x0t
        0xc2t 0x0t
        0xc0t 0x0t
        0xa9t 0x0t
        0x63t 0x25t
        0x51t 0x25t
        0x57t 0x25t
        0x5dt 0x25t
        0xa2t 0x0t
        0xa5t 0x0t
        0x10t 0x25t
        0x14t 0x25t
        0x34t 0x25t
        0x2ct 0x25t
        0x1ct 0x25t
        0x0t 0x25t
        0x3ct 0x25t
        0xe3t 0x0t
        0xc3t 0x0t
        0x5at 0x25t
        0x54t 0x25t
        0x69t 0x25t
        0x66t 0x25t
        0x60t 0x25t
        0x50t 0x25t
        0x6ct 0x25t
        0xa4t 0x0t
        0xf0t 0x0t
        0xd0t 0x0t
        0xcat 0x0t
        0xcbt 0x0t
        0xc8t 0x0t
        0x31t 0x1t
        0xcdt 0x0t
        0xcet 0x0t
        0xcft 0x0t
        0x18t 0x25t
        0xct 0x25t
        0x88t 0x25t
        0x84t 0x25t
        0xa6t 0x0t
        0xcct 0x0t
        0x80t 0x25t
        0xd3t 0x0t
        0xdft 0x0t
        0xd4t 0x0t
        0xd2t 0x0t
        0xf5t 0x0t
        0xd5t 0x0t
        0xb5t 0x0t
        0xfet 0x0t
        0xdet 0x0t
        0xdat 0x0t
        0xdbt 0x0t
        0xd9t 0x0t
        0xfdt 0x0t
        0xddt 0x0t
        0xaft 0x0t
        0xb4t 0x0t
        0xadt 0x0t
        0xb1t 0x0t
        0x17t 0x20t
        0xbet 0x0t
        0xb6t 0x0t
        0xa7t 0x0t
        0xf7t 0x0t
        0xb8t 0x0t
        0xb0t 0x0t
        0xa8t 0x0t
        0xb7t 0x0t
        0xb9t 0x0t
        0xb3t 0x0t
        0xb2t 0x0t
        0xa0t 0x25t
        0xa0t 0x0t
    .end array-data

    :array_2
    .array-data 0x1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static I(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/e;
    .locals 2

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/zip/B;->J(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/B;->lS:Lorg/apache/commons/compress/archivers/zip/e;

    :goto_0
    return-object v0

    :cond_0
    if-nez p0, :cond_1

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/m;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/m;-><init>()V

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/B;->lP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/D;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/D;->cz()Lorg/apache/commons/compress/archivers/zip/N;

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/z;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/z;-><init>(Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/m;

    invoke-direct {v0, p0}, Lorg/apache/commons/compress/archivers/zip/m;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static J(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "UTF8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UTF-8"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    if-ge v0, p1, :cond_0

    :goto_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    return-object v0

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method static a(Ljava/nio/ByteBuffer;C)V
    .locals 2

    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x55

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/B;->lQ:[B

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-byte v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/B;->lQ:[B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit8 v1, v1, 0xf

    aget-byte v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/B;->lQ:[B

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-byte v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    sget-object v0, Lorg/apache/commons/compress/archivers/zip/B;->lQ:[B

    and-int/lit8 v1, p1, 0xf

    aget-byte v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method
