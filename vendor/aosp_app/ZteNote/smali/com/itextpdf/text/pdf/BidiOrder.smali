.class public final Lcom/itextpdf/text/pdf/BidiOrder;
.super Ljava/lang/Object;
.source "BidiOrder.java"


# static fields
.field public static final AL:B = 0x4t

.field public static final AN:B = 0xbt

.field public static final B:B = 0xft

.field public static final BN:B = 0xet

.field public static final CS:B = 0xct

.field public static final EN:B = 0x8t

.field public static final ES:B = 0x9t

.field public static final ET:B = 0xat

.field public static final L:B = 0x0t

.field public static final LRE:B = 0x1t

.field public static final LRO:B = 0x2t

.field public static final NSM:B = 0xdt

.field public static final ON:B = 0x12t

.field public static final PDF:B = 0x7t

.field public static final R:B = 0x3t

.field public static final RLE:B = 0x5t

.field public static final RLO:B = 0x6t

.field public static final S:B = 0x10t

.field public static final TYPE_MAX:B = 0x12t

.field public static final TYPE_MIN:B = 0x0t

.field public static final WS:B = 0x11t

.field private static baseTypes:[C

.field private static final rtypes:[B


# instance fields
.field private embeddings:[B

.field private initialTypes:[B

.field private paragraphEmbeddingLevel:B

.field private resultLevels:[B

.field private resultTypes:[B

.field private textLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 1138
    const/high16 v5, 0x1

    new-array v5, v5, [B

    sput-object v5, Lcom/itextpdf/text/pdf/BidiOrder;->rtypes:[B

    .line 1140
    const/16 v5, 0x6bd

    new-array v5, v5, [C

    fill-array-data v5, :array_0

    sput-object v5, Lcom/itextpdf/text/pdf/BidiOrder;->baseTypes:[C

    .line 1283
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    sget-object v5, Lcom/itextpdf/text/pdf/BidiOrder;->baseTypes:[C

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 1284
    sget-object v5, Lcom/itextpdf/text/pdf/BidiOrder;->baseTypes:[C

    aget-char v3, v5, v2

    .line 1285
    .local v3, start:I
    sget-object v5, Lcom/itextpdf/text/pdf/BidiOrder;->baseTypes:[C

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v5, v2

    .line 1286
    .local v1, end:I
    sget-object v5, Lcom/itextpdf/text/pdf/BidiOrder;->baseTypes:[C

    add-int/lit8 v2, v2, 0x1

    aget-char v5, v5, v2

    int-to-byte v0, v5

    .local v0, b:B
    move v4, v3

    .line 1287
    .end local v3           #start:I
    .local v4, start:I
    :goto_1
    if-gt v4, v1, :cond_0

    .line 1288
    sget-object v5, Lcom/itextpdf/text/pdf/BidiOrder;->rtypes:[B

    add-int/lit8 v3, v4, 0x1

    .end local v4           #start:I
    .restart local v3       #start:I
    aput-byte v0, v5, v4

    move v4, v3

    .end local v3           #start:I
    .restart local v4       #start:I
    goto :goto_1

    .line 1283
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1290
    .end local v0           #b:B
    .end local v1           #end:I
    .end local v4           #start:I
    :cond_1
    return-void

    .line 1140
    nop

    :array_0
    .array-data 0x2
        0x0t 0x0t
        0x8t 0x0t
        0xet 0x0t
        0x9t 0x0t
        0x9t 0x0t
        0x10t 0x0t
        0xat 0x0t
        0xat 0x0t
        0xft 0x0t
        0xbt 0x0t
        0xbt 0x0t
        0x10t 0x0t
        0xct 0x0t
        0xct 0x0t
        0x11t 0x0t
        0xdt 0x0t
        0xdt 0x0t
        0xft 0x0t
        0xet 0x0t
        0x1bt 0x0t
        0xet 0x0t
        0x1ct 0x0t
        0x1et 0x0t
        0xft 0x0t
        0x1ft 0x0t
        0x1ft 0x0t
        0x10t 0x0t
        0x20t 0x0t
        0x20t 0x0t
        0x11t 0x0t
        0x21t 0x0t
        0x22t 0x0t
        0x12t 0x0t
        0x23t 0x0t
        0x25t 0x0t
        0xat 0x0t
        0x26t 0x0t
        0x2at 0x0t
        0x12t 0x0t
        0x2bt 0x0t
        0x2bt 0x0t
        0xat 0x0t
        0x2ct 0x0t
        0x2ct 0x0t
        0xct 0x0t
        0x2dt 0x0t
        0x2dt 0x0t
        0xat 0x0t
        0x2et 0x0t
        0x2et 0x0t
        0xct 0x0t
        0x2ft 0x0t
        0x2ft 0x0t
        0x9t 0x0t
        0x30t 0x0t
        0x39t 0x0t
        0x8t 0x0t
        0x3at 0x0t
        0x3at 0x0t
        0xct 0x0t
        0x3bt 0x0t
        0x40t 0x0t
        0x12t 0x0t
        0x41t 0x0t
        0x5at 0x0t
        0x0t 0x0t
        0x5bt 0x0t
        0x60t 0x0t
        0x12t 0x0t
        0x61t 0x0t
        0x7at 0x0t
        0x0t 0x0t
        0x7bt 0x0t
        0x7et 0x0t
        0x12t 0x0t
        0x7ft 0x0t
        0x84t 0x0t
        0xet 0x0t
        0x85t 0x0t
        0x85t 0x0t
        0xft 0x0t
        0x86t 0x0t
        0x9ft 0x0t
        0xet 0x0t
        0xa0t 0x0t
        0xa0t 0x0t
        0xct 0x0t
        0xa1t 0x0t
        0xa1t 0x0t
        0x12t 0x0t
        0xa2t 0x0t
        0xa5t 0x0t
        0xat 0x0t
        0xa6t 0x0t
        0xa9t 0x0t
        0x12t 0x0t
        0xaat 0x0t
        0xaat 0x0t
        0x0t 0x0t
        0xabt 0x0t
        0xaft 0x0t
        0x12t 0x0t
        0xb0t 0x0t
        0xb1t 0x0t
        0xat 0x0t
        0xb2t 0x0t
        0xb3t 0x0t
        0x8t 0x0t
        0xb4t 0x0t
        0xb4t 0x0t
        0x12t 0x0t
        0xb5t 0x0t
        0xb5t 0x0t
        0x0t 0x0t
        0xb6t 0x0t
        0xb8t 0x0t
        0x12t 0x0t
        0xb9t 0x0t
        0xb9t 0x0t
        0x8t 0x0t
        0xbat 0x0t
        0xbat 0x0t
        0x0t 0x0t
        0xbbt 0x0t
        0xbft 0x0t
        0x12t 0x0t
        0xc0t 0x0t
        0xd6t 0x0t
        0x0t 0x0t
        0xd7t 0x0t
        0xd7t 0x0t
        0x12t 0x0t
        0xd8t 0x0t
        0xf6t 0x0t
        0x0t 0x0t
        0xf7t 0x0t
        0xf7t 0x0t
        0x12t 0x0t
        0xf8t 0x0t
        0xb8t 0x2t
        0x0t 0x0t
        0xb9t 0x2t
        0xbat 0x2t
        0x12t 0x0t
        0xbbt 0x2t
        0xc1t 0x2t
        0x0t 0x0t
        0xc2t 0x2t
        0xcft 0x2t
        0x12t 0x0t
        0xd0t 0x2t
        0xd1t 0x2t
        0x0t 0x0t
        0xd2t 0x2t
        0xdft 0x2t
        0x12t 0x0t
        0xe0t 0x2t
        0xe4t 0x2t
        0x0t 0x0t
        0xe5t 0x2t
        0xedt 0x2t
        0x12t 0x0t
        0xeet 0x2t
        0xeet 0x2t
        0x0t 0x0t
        0xeft 0x2t
        0xfft 0x2t
        0x12t 0x0t
        0x0t 0x3t
        0x57t 0x3t
        0xdt 0x0t
        0x58t 0x3t
        0x5ct 0x3t
        0x0t 0x0t
        0x5dt 0x3t
        0x6ft 0x3t
        0xdt 0x0t
        0x70t 0x3t
        0x73t 0x3t
        0x0t 0x0t
        0x74t 0x3t
        0x75t 0x3t
        0x12t 0x0t
        0x76t 0x3t
        0x7dt 0x3t
        0x0t 0x0t
        0x7et 0x3t
        0x7et 0x3t
        0x12t 0x0t
        0x7ft 0x3t
        0x83t 0x3t
        0x0t 0x0t
        0x84t 0x3t
        0x85t 0x3t
        0x12t 0x0t
        0x86t 0x3t
        0x86t 0x3t
        0x0t 0x0t
        0x87t 0x3t
        0x87t 0x3t
        0x12t 0x0t
        0x88t 0x3t
        0xf5t 0x3t
        0x0t 0x0t
        0xf6t 0x3t
        0xf6t 0x3t
        0x12t 0x0t
        0xf7t 0x3t
        0x82t 0x4t
        0x0t 0x0t
        0x83t 0x4t
        0x86t 0x4t
        0xdt 0x0t
        0x87t 0x4t
        0x87t 0x4t
        0x0t 0x0t
        0x88t 0x4t
        0x89t 0x4t
        0xdt 0x0t
        0x8at 0x4t
        0x89t 0x5t
        0x0t 0x0t
        0x8at 0x5t
        0x8at 0x5t
        0x12t 0x0t
        0x8bt 0x5t
        0x90t 0x5t
        0x0t 0x0t
        0x91t 0x5t
        0xa1t 0x5t
        0xdt 0x0t
        0xa2t 0x5t
        0xa2t 0x5t
        0x0t 0x0t
        0xa3t 0x5t
        0xb9t 0x5t
        0xdt 0x0t
        0xbat 0x5t
        0xbat 0x5t
        0x0t 0x0t
        0xbbt 0x5t
        0xbdt 0x5t
        0xdt 0x0t
        0xbet 0x5t
        0xbet 0x5t
        0x3t 0x0t
        0xbft 0x5t
        0xbft 0x5t
        0xdt 0x0t
        0xc0t 0x5t
        0xc0t 0x5t
        0x3t 0x0t
        0xc1t 0x5t
        0xc2t 0x5t
        0xdt 0x0t
        0xc3t 0x5t
        0xc3t 0x5t
        0x3t 0x0t
        0xc4t 0x5t
        0xc4t 0x5t
        0xdt 0x0t
        0xc5t 0x5t
        0xcft 0x5t
        0x0t 0x0t
        0xd0t 0x5t
        0xeat 0x5t
        0x3t 0x0t
        0xebt 0x5t
        0xeft 0x5t
        0x0t 0x0t
        0xf0t 0x5t
        0xf4t 0x5t
        0x3t 0x0t
        0xf5t 0x5t
        0xfft 0x5t
        0x0t 0x0t
        0x0t 0x6t
        0x3t 0x6t
        0x4t 0x0t
        0x4t 0x6t
        0xbt 0x6t
        0x0t 0x0t
        0xct 0x6t
        0xct 0x6t
        0xct 0x0t
        0xdt 0x6t
        0xdt 0x6t
        0x4t 0x0t
        0xet 0x6t
        0xft 0x6t
        0x12t 0x0t
        0x10t 0x6t
        0x15t 0x6t
        0xdt 0x0t
        0x16t 0x6t
        0x1at 0x6t
        0x0t 0x0t
        0x1bt 0x6t
        0x1bt 0x6t
        0x4t 0x0t
        0x1ct 0x6t
        0x1et 0x6t
        0x0t 0x0t
        0x1ft 0x6t
        0x1ft 0x6t
        0x4t 0x0t
        0x20t 0x6t
        0x20t 0x6t
        0x0t 0x0t
        0x21t 0x6t
        0x3at 0x6t
        0x4t 0x0t
        0x3bt 0x6t
        0x3ft 0x6t
        0x0t 0x0t
        0x40t 0x6t
        0x4at 0x6t
        0x4t 0x0t
        0x4bt 0x6t
        0x58t 0x6t
        0xdt 0x0t
        0x59t 0x6t
        0x5ft 0x6t
        0x0t 0x0t
        0x60t 0x6t
        0x69t 0x6t
        0xbt 0x0t
        0x6at 0x6t
        0x6at 0x6t
        0xat 0x0t
        0x6bt 0x6t
        0x6ct 0x6t
        0xbt 0x0t
        0x6dt 0x6t
        0x6ft 0x6t
        0x4t 0x0t
        0x70t 0x6t
        0x70t 0x6t
        0xdt 0x0t
        0x71t 0x6t
        0xd5t 0x6t
        0x4t 0x0t
        0xd6t 0x6t
        0xdct 0x6t
        0xdt 0x0t
        0xddt 0x6t
        0xddt 0x6t
        0x4t 0x0t
        0xdet 0x6t
        0xe4t 0x6t
        0xdt 0x0t
        0xe5t 0x6t
        0xe6t 0x6t
        0x4t 0x0t
        0xe7t 0x6t
        0xe8t 0x6t
        0xdt 0x0t
        0xe9t 0x6t
        0xe9t 0x6t
        0x12t 0x0t
        0xeat 0x6t
        0xedt 0x6t
        0xdt 0x0t
        0xeet 0x6t
        0xeft 0x6t
        0x4t 0x0t
        0xf0t 0x6t
        0xf9t 0x6t
        0x8t 0x0t
        0xfat 0x6t
        0xdt 0x7t
        0x4t 0x0t
        0xet 0x7t
        0xet 0x7t
        0x0t 0x0t
        0xft 0x7t
        0xft 0x7t
        0xet 0x0t
        0x10t 0x7t
        0x10t 0x7t
        0x4t 0x0t
        0x11t 0x7t
        0x11t 0x7t
        0xdt 0x0t
        0x12t 0x7t
        0x2ft 0x7t
        0x4t 0x0t
        0x30t 0x7t
        0x4at 0x7t
        0xdt 0x0t
        0x4bt 0x7t
        0x4ct 0x7t
        0x0t 0x0t
        0x4dt 0x7t
        0x4ft 0x7t
        0x4t 0x0t
        0x50t 0x7t
        0x7ft 0x7t
        0x0t 0x0t
        0x80t 0x7t
        0xa5t 0x7t
        0x4t 0x0t
        0xa6t 0x7t
        0xb0t 0x7t
        0xdt 0x0t
        0xb1t 0x7t
        0xb1t 0x7t
        0x4t 0x0t
        0xb2t 0x7t
        0x0t 0x9t
        0x0t 0x0t
        0x1t 0x9t
        0x2t 0x9t
        0xdt 0x0t
        0x3t 0x9t
        0x3bt 0x9t
        0x0t 0x0t
        0x3ct 0x9t
        0x3ct 0x9t
        0xdt 0x0t
        0x3dt 0x9t
        0x40t 0x9t
        0x0t 0x0t
        0x41t 0x9t
        0x48t 0x9t
        0xdt 0x0t
        0x49t 0x9t
        0x4ct 0x9t
        0x0t 0x0t
        0x4dt 0x9t
        0x4dt 0x9t
        0xdt 0x0t
        0x4et 0x9t
        0x50t 0x9t
        0x0t 0x0t
        0x51t 0x9t
        0x54t 0x9t
        0xdt 0x0t
        0x55t 0x9t
        0x61t 0x9t
        0x0t 0x0t
        0x62t 0x9t
        0x63t 0x9t
        0xdt 0x0t
        0x64t 0x9t
        0x80t 0x9t
        0x0t 0x0t
        0x81t 0x9t
        0x81t 0x9t
        0xdt 0x0t
        0x82t 0x9t
        0xbbt 0x9t
        0x0t 0x0t
        0xbct 0x9t
        0xbct 0x9t
        0xdt 0x0t
        0xbdt 0x9t
        0xc0t 0x9t
        0x0t 0x0t
        0xc1t 0x9t
        0xc4t 0x9t
        0xdt 0x0t
        0xc5t 0x9t
        0xcct 0x9t
        0x0t 0x0t
        0xcdt 0x9t
        0xcdt 0x9t
        0xdt 0x0t
        0xcet 0x9t
        0xe1t 0x9t
        0x0t 0x0t
        0xe2t 0x9t
        0xe3t 0x9t
        0xdt 0x0t
        0xe4t 0x9t
        0xf1t 0x9t
        0x0t 0x0t
        0xf2t 0x9t
        0xf3t 0x9t
        0xat 0x0t
        0xf4t 0x9t
        0x0t 0xat
        0x0t 0x0t
        0x1t 0xat
        0x2t 0xat
        0xdt 0x0t
        0x3t 0xat
        0x3bt 0xat
        0x0t 0x0t
        0x3ct 0xat
        0x3ct 0xat
        0xdt 0x0t
        0x3dt 0xat
        0x40t 0xat
        0x0t 0x0t
        0x41t 0xat
        0x42t 0xat
        0xdt 0x0t
        0x43t 0xat
        0x46t 0xat
        0x0t 0x0t
        0x47t 0xat
        0x48t 0xat
        0xdt 0x0t
        0x49t 0xat
        0x4at 0xat
        0x0t 0x0t
        0x4bt 0xat
        0x4dt 0xat
        0xdt 0x0t
        0x4et 0xat
        0x6ft 0xat
        0x0t 0x0t
        0x70t 0xat
        0x71t 0xat
        0xdt 0x0t
        0x72t 0xat
        0x80t 0xat
        0x0t 0x0t
        0x81t 0xat
        0x82t 0xat
        0xdt 0x0t
        0x83t 0xat
        0xbbt 0xat
        0x0t 0x0t
        0xbct 0xat
        0xbct 0xat
        0xdt 0x0t
        0xbdt 0xat
        0xc0t 0xat
        0x0t 0x0t
        0xc1t 0xat
        0xc5t 0xat
        0xdt 0x0t
        0xc6t 0xat
        0xc6t 0xat
        0x0t 0x0t
        0xc7t 0xat
        0xc8t 0xat
        0xdt 0x0t
        0xc9t 0xat
        0xcct 0xat
        0x0t 0x0t
        0xcdt 0xat
        0xcdt 0xat
        0xdt 0x0t
        0xcet 0xat
        0xe1t 0xat
        0x0t 0x0t
        0xe2t 0xat
        0xe3t 0xat
        0xdt 0x0t
        0xe4t 0xat
        0xf0t 0xat
        0x0t 0x0t
        0xf1t 0xat
        0xf1t 0xat
        0xat 0x0t
        0xf2t 0xat
        0x0t 0xbt
        0x0t 0x0t
        0x1t 0xbt
        0x1t 0xbt
        0xdt 0x0t
        0x2t 0xbt
        0x3bt 0xbt
        0x0t 0x0t
        0x3ct 0xbt
        0x3ct 0xbt
        0xdt 0x0t
        0x3dt 0xbt
        0x3et 0xbt
        0x0t 0x0t
        0x3ft 0xbt
        0x3ft 0xbt
        0xdt 0x0t
        0x40t 0xbt
        0x40t 0xbt
        0x0t 0x0t
        0x41t 0xbt
        0x43t 0xbt
        0xdt 0x0t
        0x44t 0xbt
        0x4ct 0xbt
        0x0t 0x0t
        0x4dt 0xbt
        0x4dt 0xbt
        0xdt 0x0t
        0x4et 0xbt
        0x55t 0xbt
        0x0t 0x0t
        0x56t 0xbt
        0x56t 0xbt
        0xdt 0x0t
        0x57t 0xbt
        0x81t 0xbt
        0x0t 0x0t
        0x82t 0xbt
        0x82t 0xbt
        0xdt 0x0t
        0x83t 0xbt
        0xbft 0xbt
        0x0t 0x0t
        0xc0t 0xbt
        0xc0t 0xbt
        0xdt 0x0t
        0xc1t 0xbt
        0xcct 0xbt
        0x0t 0x0t
        0xcdt 0xbt
        0xcdt 0xbt
        0xdt 0x0t
        0xcet 0xbt
        0xf2t 0xbt
        0x0t 0x0t
        0xf3t 0xbt
        0xf8t 0xbt
        0x12t 0x0t
        0xf9t 0xbt
        0xf9t 0xbt
        0xat 0x0t
        0xfat 0xbt
        0xfat 0xbt
        0x12t 0x0t
        0xfbt 0xbt
        0x3dt 0xct
        0x0t 0x0t
        0x3et 0xct
        0x40t 0xct
        0xdt 0x0t
        0x41t 0xct
        0x45t 0xct
        0x0t 0x0t
        0x46t 0xct
        0x48t 0xct
        0xdt 0x0t
        0x49t 0xct
        0x49t 0xct
        0x0t 0x0t
        0x4at 0xct
        0x4dt 0xct
        0xdt 0x0t
        0x4et 0xct
        0x54t 0xct
        0x0t 0x0t
        0x55t 0xct
        0x56t 0xct
        0xdt 0x0t
        0x57t 0xct
        0xbbt 0xct
        0x0t 0x0t
        0xbct 0xct
        0xbct 0xct
        0xdt 0x0t
        0xbdt 0xct
        0xcbt 0xct
        0x0t 0x0t
        0xcct 0xct
        0xcdt 0xct
        0xdt 0x0t
        0xcet 0xct
        0x40t 0xdt
        0x0t 0x0t
        0x41t 0xdt
        0x43t 0xdt
        0xdt 0x0t
        0x44t 0xdt
        0x4ct 0xdt
        0x0t 0x0t
        0x4dt 0xdt
        0x4dt 0xdt
        0xdt 0x0t
        0x4et 0xdt
        0xc9t 0xdt
        0x0t 0x0t
        0xcat 0xdt
        0xcat 0xdt
        0xdt 0x0t
        0xcbt 0xdt
        0xd1t 0xdt
        0x0t 0x0t
        0xd2t 0xdt
        0xd4t 0xdt
        0xdt 0x0t
        0xd5t 0xdt
        0xd5t 0xdt
        0x0t 0x0t
        0xd6t 0xdt
        0xd6t 0xdt
        0xdt 0x0t
        0xd7t 0xdt
        0x30t 0xet
        0x0t 0x0t
        0x31t 0xet
        0x31t 0xet
        0xdt 0x0t
        0x32t 0xet
        0x33t 0xet
        0x0t 0x0t
        0x34t 0xet
        0x3at 0xet
        0xdt 0x0t
        0x3bt 0xet
        0x3et 0xet
        0x0t 0x0t
        0x3ft 0xet
        0x3ft 0xet
        0xat 0x0t
        0x40t 0xet
        0x46t 0xet
        0x0t 0x0t
        0x47t 0xet
        0x4et 0xet
        0xdt 0x0t
        0x4ft 0xet
        0xb0t 0xet
        0x0t 0x0t
        0xb1t 0xet
        0xb1t 0xet
        0xdt 0x0t
        0xb2t 0xet
        0xb3t 0xet
        0x0t 0x0t
        0xb4t 0xet
        0xb9t 0xet
        0xdt 0x0t
        0xbat 0xet
        0xbat 0xet
        0x0t 0x0t
        0xbbt 0xet
        0xbct 0xet
        0xdt 0x0t
        0xbdt 0xet
        0xc7t 0xet
        0x0t 0x0t
        0xc8t 0xet
        0xcdt 0xet
        0xdt 0x0t
        0xcet 0xet
        0x17t 0xft
        0x0t 0x0t
        0x18t 0xft
        0x19t 0xft
        0xdt 0x0t
        0x1at 0xft
        0x34t 0xft
        0x0t 0x0t
        0x35t 0xft
        0x35t 0xft
        0xdt 0x0t
        0x36t 0xft
        0x36t 0xft
        0x0t 0x0t
        0x37t 0xft
        0x37t 0xft
        0xdt 0x0t
        0x38t 0xft
        0x38t 0xft
        0x0t 0x0t
        0x39t 0xft
        0x39t 0xft
        0xdt 0x0t
        0x3at 0xft
        0x3dt 0xft
        0x12t 0x0t
        0x3et 0xft
        0x70t 0xft
        0x0t 0x0t
        0x71t 0xft
        0x7et 0xft
        0xdt 0x0t
        0x7ft 0xft
        0x7ft 0xft
        0x0t 0x0t
        0x80t 0xft
        0x84t 0xft
        0xdt 0x0t
        0x85t 0xft
        0x85t 0xft
        0x0t 0x0t
        0x86t 0xft
        0x87t 0xft
        0xdt 0x0t
        0x88t 0xft
        0x8ft 0xft
        0x0t 0x0t
        0x90t 0xft
        0x97t 0xft
        0xdt 0x0t
        0x98t 0xft
        0x98t 0xft
        0x0t 0x0t
        0x99t 0xft
        0xbct 0xft
        0xdt 0x0t
        0xbdt 0xft
        0xc5t 0xft
        0x0t 0x0t
        0xc6t 0xft
        0xc6t 0xft
        0xdt 0x0t
        0xc7t 0xft
        0x2ct 0x10t
        0x0t 0x0t
        0x2dt 0x10t
        0x30t 0x10t
        0xdt 0x0t
        0x31t 0x10t
        0x31t 0x10t
        0x0t 0x0t
        0x32t 0x10t
        0x32t 0x10t
        0xdt 0x0t
        0x33t 0x10t
        0x35t 0x10t
        0x0t 0x0t
        0x36t 0x10t
        0x37t 0x10t
        0xdt 0x0t
        0x38t 0x10t
        0x38t 0x10t
        0x0t 0x0t
        0x39t 0x10t
        0x39t 0x10t
        0xdt 0x0t
        0x3at 0x10t
        0x57t 0x10t
        0x0t 0x0t
        0x58t 0x10t
        0x59t 0x10t
        0xdt 0x0t
        0x5at 0x10t
        0x7ft 0x16t
        0x0t 0x0t
        0x80t 0x16t
        0x80t 0x16t
        0x11t 0x0t
        0x81t 0x16t
        0x9at 0x16t
        0x0t 0x0t
        0x9bt 0x16t
        0x9ct 0x16t
        0x12t 0x0t
        0x9dt 0x16t
        0x11t 0x17t
        0x0t 0x0t
        0x12t 0x17t
        0x14t 0x17t
        0xdt 0x0t
        0x15t 0x17t
        0x31t 0x17t
        0x0t 0x0t
        0x32t 0x17t
        0x34t 0x17t
        0xdt 0x0t
        0x35t 0x17t
        0x51t 0x17t
        0x0t 0x0t
        0x52t 0x17t
        0x53t 0x17t
        0xdt 0x0t
        0x54t 0x17t
        0x71t 0x17t
        0x0t 0x0t
        0x72t 0x17t
        0x73t 0x17t
        0xdt 0x0t
        0x74t 0x17t
        0xb6t 0x17t
        0x0t 0x0t
        0xb7t 0x17t
        0xbdt 0x17t
        0xdt 0x0t
        0xbet 0x17t
        0xc5t 0x17t
        0x0t 0x0t
        0xc6t 0x17t
        0xc6t 0x17t
        0xdt 0x0t
        0xc7t 0x17t
        0xc8t 0x17t
        0x0t 0x0t
        0xc9t 0x17t
        0xd3t 0x17t
        0xdt 0x0t
        0xd4t 0x17t
        0xdat 0x17t
        0x0t 0x0t
        0xdbt 0x17t
        0xdbt 0x17t
        0xat 0x0t
        0xdct 0x17t
        0xdct 0x17t
        0x0t 0x0t
        0xddt 0x17t
        0xddt 0x17t
        0xdt 0x0t
        0xdet 0x17t
        0xeft 0x17t
        0x0t 0x0t
        0xf0t 0x17t
        0xf9t 0x17t
        0x12t 0x0t
        0xfat 0x17t
        0xfft 0x17t
        0x0t 0x0t
        0x0t 0x18t
        0xat 0x18t
        0x12t 0x0t
        0xbt 0x18t
        0xdt 0x18t
        0xdt 0x0t
        0xet 0x18t
        0xet 0x18t
        0x11t 0x0t
        0xft 0x18t
        0xa8t 0x18t
        0x0t 0x0t
        0xa9t 0x18t
        0xa9t 0x18t
        0xdt 0x0t
        0xaat 0x18t
        0x1ft 0x19t
        0x0t 0x0t
        0x20t 0x19t
        0x22t 0x19t
        0xdt 0x0t
        0x23t 0x19t
        0x26t 0x19t
        0x0t 0x0t
        0x27t 0x19t
        0x2bt 0x19t
        0xdt 0x0t
        0x2ct 0x19t
        0x31t 0x19t
        0x0t 0x0t
        0x32t 0x19t
        0x32t 0x19t
        0xdt 0x0t
        0x33t 0x19t
        0x38t 0x19t
        0x0t 0x0t
        0x39t 0x19t
        0x3bt 0x19t
        0xdt 0x0t
        0x3ct 0x19t
        0x3ft 0x19t
        0x0t 0x0t
        0x40t 0x19t
        0x40t 0x19t
        0x12t 0x0t
        0x41t 0x19t
        0x43t 0x19t
        0x0t 0x0t
        0x44t 0x19t
        0x45t 0x19t
        0x12t 0x0t
        0x46t 0x19t
        0xdft 0x19t
        0x0t 0x0t
        0xe0t 0x19t
        0xfft 0x19t
        0x12t 0x0t
        0x0t 0x1at
        0xbct 0x1ft
        0x0t 0x0t
        0xbdt 0x1ft
        0xbdt 0x1ft
        0x12t 0x0t
        0xbet 0x1ft
        0xbet 0x1ft
        0x0t 0x0t
        0xbft 0x1ft
        0xc1t 0x1ft
        0x12t 0x0t
        0xc2t 0x1ft
        0xcct 0x1ft
        0x0t 0x0t
        0xcdt 0x1ft
        0xcft 0x1ft
        0x12t 0x0t
        0xd0t 0x1ft
        0xdct 0x1ft
        0x0t 0x0t
        0xddt 0x1ft
        0xdft 0x1ft
        0x12t 0x0t
        0xe0t 0x1ft
        0xect 0x1ft
        0x0t 0x0t
        0xedt 0x1ft
        0xeft 0x1ft
        0x12t 0x0t
        0xf0t 0x1ft
        0xfct 0x1ft
        0x0t 0x0t
        0xfdt 0x1ft
        0xfet 0x1ft
        0x12t 0x0t
        0xfft 0x1ft
        0xfft 0x1ft
        0x0t 0x0t
        0x0t 0x20t
        0xat 0x20t
        0x11t 0x0t
        0xbt 0x20t
        0xdt 0x20t
        0xet 0x0t
        0xet 0x20t
        0xet 0x20t
        0x0t 0x0t
        0xft 0x20t
        0xft 0x20t
        0x3t 0x0t
        0x10t 0x20t
        0x27t 0x20t
        0x12t 0x0t
        0x28t 0x20t
        0x28t 0x20t
        0x11t 0x0t
        0x29t 0x20t
        0x29t 0x20t
        0xft 0x0t
        0x2at 0x20t
        0x2at 0x20t
        0x1t 0x0t
        0x2bt 0x20t
        0x2bt 0x20t
        0x5t 0x0t
        0x2ct 0x20t
        0x2ct 0x20t
        0x7t 0x0t
        0x2dt 0x20t
        0x2dt 0x20t
        0x2t 0x0t
        0x2et 0x20t
        0x2et 0x20t
        0x6t 0x0t
        0x2ft 0x20t
        0x2ft 0x20t
        0x11t 0x0t
        0x30t 0x20t
        0x34t 0x20t
        0xat 0x0t
        0x35t 0x20t
        0x54t 0x20t
        0x12t 0x0t
        0x55t 0x20t
        0x56t 0x20t
        0x0t 0x0t
        0x57t 0x20t
        0x57t 0x20t
        0x12t 0x0t
        0x58t 0x20t
        0x5et 0x20t
        0x0t 0x0t
        0x5ft 0x20t
        0x5ft 0x20t
        0x11t 0x0t
        0x60t 0x20t
        0x63t 0x20t
        0xet 0x0t
        0x64t 0x20t
        0x69t 0x20t
        0x0t 0x0t
        0x6at 0x20t
        0x6ft 0x20t
        0xet 0x0t
        0x70t 0x20t
        0x70t 0x20t
        0x8t 0x0t
        0x71t 0x20t
        0x73t 0x20t
        0x0t 0x0t
        0x74t 0x20t
        0x79t 0x20t
        0x8t 0x0t
        0x7at 0x20t
        0x7bt 0x20t
        0xat 0x0t
        0x7ct 0x20t
        0x7et 0x20t
        0x12t 0x0t
        0x7ft 0x20t
        0x7ft 0x20t
        0x0t 0x0t
        0x80t 0x20t
        0x89t 0x20t
        0x8t 0x0t
        0x8at 0x20t
        0x8bt 0x20t
        0xat 0x0t
        0x8ct 0x20t
        0x8et 0x20t
        0x12t 0x0t
        0x8ft 0x20t
        0x9ft 0x20t
        0x0t 0x0t
        0xa0t 0x20t
        0xb1t 0x20t
        0xat 0x0t
        0xb2t 0x20t
        0xcft 0x20t
        0x0t 0x0t
        0xd0t 0x20t
        0xeat 0x20t
        0xdt 0x0t
        0xebt 0x20t
        0xfft 0x20t
        0x0t 0x0t
        0x0t 0x21t
        0x1t 0x21t
        0x12t 0x0t
        0x2t 0x21t
        0x2t 0x21t
        0x0t 0x0t
        0x3t 0x21t
        0x6t 0x21t
        0x12t 0x0t
        0x7t 0x21t
        0x7t 0x21t
        0x0t 0x0t
        0x8t 0x21t
        0x9t 0x21t
        0x12t 0x0t
        0xat 0x21t
        0x13t 0x21t
        0x0t 0x0t
        0x14t 0x21t
        0x14t 0x21t
        0x12t 0x0t
        0x15t 0x21t
        0x15t 0x21t
        0x0t 0x0t
        0x16t 0x21t
        0x18t 0x21t
        0x12t 0x0t
        0x19t 0x21t
        0x1dt 0x21t
        0x0t 0x0t
        0x1et 0x21t
        0x23t 0x21t
        0x12t 0x0t
        0x24t 0x21t
        0x24t 0x21t
        0x0t 0x0t
        0x25t 0x21t
        0x25t 0x21t
        0x12t 0x0t
        0x26t 0x21t
        0x26t 0x21t
        0x0t 0x0t
        0x27t 0x21t
        0x27t 0x21t
        0x12t 0x0t
        0x28t 0x21t
        0x28t 0x21t
        0x0t 0x0t
        0x29t 0x21t
        0x29t 0x21t
        0x12t 0x0t
        0x2at 0x21t
        0x2dt 0x21t
        0x0t 0x0t
        0x2et 0x21t
        0x2et 0x21t
        0xat 0x0t
        0x2ft 0x21t
        0x31t 0x21t
        0x0t 0x0t
        0x32t 0x21t
        0x32t 0x21t
        0x12t 0x0t
        0x33t 0x21t
        0x39t 0x21t
        0x0t 0x0t
        0x3at 0x21t
        0x3bt 0x21t
        0x12t 0x0t
        0x3ct 0x21t
        0x3ft 0x21t
        0x0t 0x0t
        0x40t 0x21t
        0x44t 0x21t
        0x12t 0x0t
        0x45t 0x21t
        0x49t 0x21t
        0x0t 0x0t
        0x4at 0x21t
        0x4bt 0x21t
        0x12t 0x0t
        0x4ct 0x21t
        0x52t 0x21t
        0x0t 0x0t
        0x53t 0x21t
        0x5ft 0x21t
        0x12t 0x0t
        0x60t 0x21t
        0x8ft 0x21t
        0x0t 0x0t
        0x90t 0x21t
        0x11t 0x22t
        0x12t 0x0t
        0x12t 0x22t
        0x13t 0x22t
        0xat 0x0t
        0x14t 0x22t
        0x35t 0x23t
        0x12t 0x0t
        0x36t 0x23t
        0x7at 0x23t
        0x0t 0x0t
        0x7bt 0x23t
        0x94t 0x23t
        0x12t 0x0t
        0x95t 0x23t
        0x95t 0x23t
        0x0t 0x0t
        0x96t 0x23t
        0xd0t 0x23t
        0x12t 0x0t
        0xd1t 0x23t
        0xfft 0x23t
        0x0t 0x0t
        0x0t 0x24t
        0x26t 0x24t
        0x12t 0x0t
        0x27t 0x24t
        0x3ft 0x24t
        0x0t 0x0t
        0x40t 0x24t
        0x4at 0x24t
        0x12t 0x0t
        0x4bt 0x24t
        0x5ft 0x24t
        0x0t 0x0t
        0x60t 0x24t
        0x9bt 0x24t
        0x8t 0x0t
        0x9ct 0x24t
        0xe9t 0x24t
        0x0t 0x0t
        0xeat 0x24t
        0xeat 0x24t
        0x8t 0x0t
        0xebt 0x24t
        0x17t 0x26t
        0x12t 0x0t
        0x18t 0x26t
        0x18t 0x26t
        0x0t 0x0t
        0x19t 0x26t
        0x7dt 0x26t
        0x12t 0x0t
        0x7et 0x26t
        0x7ft 0x26t
        0x0t 0x0t
        0x80t 0x26t
        0x91t 0x26t
        0x12t 0x0t
        0x92t 0x26t
        0x9ft 0x26t
        0x0t 0x0t
        0xa0t 0x26t
        0xa1t 0x26t
        0x12t 0x0t
        0xa2t 0x26t
        0x0t 0x27t
        0x0t 0x0t
        0x1t 0x27t
        0x4t 0x27t
        0x12t 0x0t
        0x5t 0x27t
        0x5t 0x27t
        0x0t 0x0t
        0x6t 0x27t
        0x9t 0x27t
        0x12t 0x0t
        0xat 0x27t
        0xbt 0x27t
        0x0t 0x0t
        0xct 0x27t
        0x27t 0x27t
        0x12t 0x0t
        0x28t 0x27t
        0x28t 0x27t
        0x0t 0x0t
        0x29t 0x27t
        0x4bt 0x27t
        0x12t 0x0t
        0x4ct 0x27t
        0x4ct 0x27t
        0x0t 0x0t
        0x4dt 0x27t
        0x4dt 0x27t
        0x12t 0x0t
        0x4et 0x27t
        0x4et 0x27t
        0x0t 0x0t
        0x4ft 0x27t
        0x52t 0x27t
        0x12t 0x0t
        0x53t 0x27t
        0x55t 0x27t
        0x0t 0x0t
        0x56t 0x27t
        0x56t 0x27t
        0x12t 0x0t
        0x57t 0x27t
        0x57t 0x27t
        0x0t 0x0t
        0x58t 0x27t
        0x5et 0x27t
        0x12t 0x0t
        0x5ft 0x27t
        0x60t 0x27t
        0x0t 0x0t
        0x61t 0x27t
        0x94t 0x27t
        0x12t 0x0t
        0x95t 0x27t
        0x97t 0x27t
        0x0t 0x0t
        0x98t 0x27t
        0xaft 0x27t
        0x12t 0x0t
        0xb0t 0x27t
        0xb0t 0x27t
        0x0t 0x0t
        0xb1t 0x27t
        0xbet 0x27t
        0x12t 0x0t
        0xbft 0x27t
        0xcft 0x27t
        0x0t 0x0t
        0xd0t 0x27t
        0xebt 0x27t
        0x12t 0x0t
        0xect 0x27t
        0xeft 0x27t
        0x0t 0x0t
        0xf0t 0x27t
        0xdt 0x2bt
        0x12t 0x0t
        0xet 0x2bt
        0x7ft 0x2et
        0x0t 0x0t
        0x80t 0x2et
        0x99t 0x2et
        0x12t 0x0t
        0x9at 0x2et
        0x9at 0x2et
        0x0t 0x0t
        0x9bt 0x2et
        0xf3t 0x2et
        0x12t 0x0t
        0xf4t 0x2et
        0xfft 0x2et
        0x0t 0x0t
        0x0t 0x2ft
        0xd5t 0x2ft
        0x12t 0x0t
        0xd6t 0x2ft
        0xeft 0x2ft
        0x0t 0x0t
        0xf0t 0x2ft
        0xfbt 0x2ft
        0x12t 0x0t
        0xfct 0x2ft
        0xfft 0x2ft
        0x0t 0x0t
        0x0t 0x30t
        0x0t 0x30t
        0x11t 0x0t
        0x1t 0x30t
        0x4t 0x30t
        0x12t 0x0t
        0x5t 0x30t
        0x7t 0x30t
        0x0t 0x0t
        0x8t 0x30t
        0x20t 0x30t
        0x12t 0x0t
        0x21t 0x30t
        0x29t 0x30t
        0x0t 0x0t
        0x2at 0x30t
        0x2ft 0x30t
        0xdt 0x0t
        0x30t 0x30t
        0x30t 0x30t
        0x12t 0x0t
        0x31t 0x30t
        0x35t 0x30t
        0x0t 0x0t
        0x36t 0x30t
        0x37t 0x30t
        0x12t 0x0t
        0x38t 0x30t
        0x3ct 0x30t
        0x0t 0x0t
        0x3dt 0x30t
        0x3ft 0x30t
        0x12t 0x0t
        0x40t 0x30t
        0x98t 0x30t
        0x0t 0x0t
        0x99t 0x30t
        0x9at 0x30t
        0xdt 0x0t
        0x9bt 0x30t
        0x9ct 0x30t
        0x12t 0x0t
        0x9dt 0x30t
        0x9ft 0x30t
        0x0t 0x0t
        0xa0t 0x30t
        0xa0t 0x30t
        0x12t 0x0t
        0xa1t 0x30t
        0xfat 0x30t
        0x0t 0x0t
        0xfbt 0x30t
        0xfbt 0x30t
        0x12t 0x0t
        0xfct 0x30t
        0x1ct 0x32t
        0x0t 0x0t
        0x1dt 0x32t
        0x1et 0x32t
        0x12t 0x0t
        0x1ft 0x32t
        0x4ft 0x32t
        0x0t 0x0t
        0x50t 0x32t
        0x5ft 0x32t
        0x12t 0x0t
        0x60t 0x32t
        0x7bt 0x32t
        0x0t 0x0t
        0x7ct 0x32t
        0x7dt 0x32t
        0x12t 0x0t
        0x7et 0x32t
        0xb0t 0x32t
        0x0t 0x0t
        0xb1t 0x32t
        0xbft 0x32t
        0x12t 0x0t
        0xc0t 0x32t
        0xcbt 0x32t
        0x0t 0x0t
        0xcct 0x32t
        0xcft 0x32t
        0x12t 0x0t
        0xd0t 0x32t
        0x76t 0x33t
        0x0t 0x0t
        0x77t 0x33t
        0x7at 0x33t
        0x12t 0x0t
        0x7bt 0x33t
        0xddt 0x33t
        0x0t 0x0t
        0xdet 0x33t
        0xdft 0x33t
        0x12t 0x0t
        0xe0t 0x33t
        0xfet 0x33t
        0x0t 0x0t
        0xfft 0x33t
        0xfft 0x33t
        0x12t 0x0t
        0x0t 0x34t
        0xbft 0x4dt
        0x0t 0x0t
        0xc0t 0x4dt
        0xfft 0x4dt
        0x12t 0x0t
        0x0t 0x4et
        0x8ft 0xa4t
        0x0t 0x0t
        0x90t 0xa4t
        0xc6t 0xa4t
        0x12t 0x0t
        0xc7t 0xa4t
        0x1ct 0xfbt
        0x0t 0x0t
        0x1dt 0xfbt
        0x1dt 0xfbt
        0x3t 0x0t
        0x1et 0xfbt
        0x1et 0xfbt
        0xdt 0x0t
        0x1ft 0xfbt
        0x28t 0xfbt
        0x3t 0x0t
        0x29t 0xfbt
        0x29t 0xfbt
        0xat 0x0t
        0x2at 0xfbt
        0x36t 0xfbt
        0x3t 0x0t
        0x37t 0xfbt
        0x37t 0xfbt
        0x0t 0x0t
        0x38t 0xfbt
        0x3ct 0xfbt
        0x3t 0x0t
        0x3dt 0xfbt
        0x3dt 0xfbt
        0x0t 0x0t
        0x3et 0xfbt
        0x3et 0xfbt
        0x3t 0x0t
        0x3ft 0xfbt
        0x3ft 0xfbt
        0x0t 0x0t
        0x40t 0xfbt
        0x41t 0xfbt
        0x3t 0x0t
        0x42t 0xfbt
        0x42t 0xfbt
        0x0t 0x0t
        0x43t 0xfbt
        0x44t 0xfbt
        0x3t 0x0t
        0x45t 0xfbt
        0x45t 0xfbt
        0x0t 0x0t
        0x46t 0xfbt
        0x4ft 0xfbt
        0x3t 0x0t
        0x50t 0xfbt
        0xb1t 0xfbt
        0x4t 0x0t
        0xb2t 0xfbt
        0xd2t 0xfbt
        0x0t 0x0t
        0xd3t 0xfbt
        0x3dt 0xfdt
        0x4t 0x0t
        0x3et 0xfdt
        0x3ft 0xfdt
        0x12t 0x0t
        0x40t 0xfdt
        0x4ft 0xfdt
        0x0t 0x0t
        0x50t 0xfdt
        0x8ft 0xfdt
        0x4t 0x0t
        0x90t 0xfdt
        0x91t 0xfdt
        0x0t 0x0t
        0x92t 0xfdt
        0xc7t 0xfdt
        0x4t 0x0t
        0xc8t 0xfdt
        0xeft 0xfdt
        0x0t 0x0t
        0xf0t 0xfdt
        0xfct 0xfdt
        0x4t 0x0t
        0xfdt 0xfdt
        0xfdt 0xfdt
        0x12t 0x0t
        0xfet 0xfdt
        0xfft 0xfdt
        0x0t 0x0t
        0x0t 0xfet
        0xft 0xfet
        0xdt 0x0t
        0x10t 0xfet
        0x1ft 0xfet
        0x0t 0x0t
        0x20t 0xfet
        0x23t 0xfet
        0xdt 0x0t
        0x24t 0xfet
        0x2ft 0xfet
        0x0t 0x0t
        0x30t 0xfet
        0x4ft 0xfet
        0x12t 0x0t
        0x50t 0xfet
        0x50t 0xfet
        0xct 0x0t
        0x51t 0xfet
        0x51t 0xfet
        0x12t 0x0t
        0x52t 0xfet
        0x52t 0xfet
        0xct 0x0t
        0x53t 0xfet
        0x53t 0xfet
        0x0t 0x0t
        0x54t 0xfet
        0x54t 0xfet
        0x12t 0x0t
        0x55t 0xfet
        0x55t 0xfet
        0xct 0x0t
        0x56t 0xfet
        0x5et 0xfet
        0x12t 0x0t
        0x5ft 0xfet
        0x5ft 0xfet
        0xat 0x0t
        0x60t 0xfet
        0x61t 0xfet
        0x12t 0x0t
        0x62t 0xfet
        0x63t 0xfet
        0xat 0x0t
        0x64t 0xfet
        0x66t 0xfet
        0x12t 0x0t
        0x67t 0xfet
        0x67t 0xfet
        0x0t 0x0t
        0x68t 0xfet
        0x68t 0xfet
        0x12t 0x0t
        0x69t 0xfet
        0x6at 0xfet
        0xat 0x0t
        0x6bt 0xfet
        0x6bt 0xfet
        0x12t 0x0t
        0x6ct 0xfet
        0x6ft 0xfet
        0x0t 0x0t
        0x70t 0xfet
        0x74t 0xfet
        0x4t 0x0t
        0x75t 0xfet
        0x75t 0xfet
        0x0t 0x0t
        0x76t 0xfet
        0xfct 0xfet
        0x4t 0x0t
        0xfdt 0xfet
        0xfet 0xfet
        0x0t 0x0t
        0xfft 0xfet
        0xfft 0xfet
        0xet 0x0t
        0x0t 0xfft
        0x0t 0xfft
        0x0t 0x0t
        0x1t 0xfft
        0x2t 0xfft
        0x12t 0x0t
        0x3t 0xfft
        0x5t 0xfft
        0xat 0x0t
        0x6t 0xfft
        0xat 0xfft
        0x12t 0x0t
        0xbt 0xfft
        0xbt 0xfft
        0xat 0x0t
        0xct 0xfft
        0xct 0xfft
        0xct 0x0t
        0xdt 0xfft
        0xdt 0xfft
        0xat 0x0t
        0xet 0xfft
        0xet 0xfft
        0xct 0x0t
        0xft 0xfft
        0xft 0xfft
        0x9t 0x0t
        0x10t 0xfft
        0x19t 0xfft
        0x8t 0x0t
        0x1at 0xfft
        0x1at 0xfft
        0xct 0x0t
        0x1bt 0xfft
        0x20t 0xfft
        0x12t 0x0t
        0x21t 0xfft
        0x3at 0xfft
        0x0t 0x0t
        0x3bt 0xfft
        0x40t 0xfft
        0x12t 0x0t
        0x41t 0xfft
        0x5at 0xfft
        0x0t 0x0t
        0x5bt 0xfft
        0x65t 0xfft
        0x12t 0x0t
        0x66t 0xfft
        0xdft 0xfft
        0x0t 0x0t
        0xe0t 0xfft
        0xe1t 0xfft
        0xat 0x0t
        0xe2t 0xfft
        0xe4t 0xfft
        0x12t 0x0t
        0xe5t 0xfft
        0xe6t 0xfft
        0xat 0x0t
        0xe7t 0xfft
        0xe7t 0xfft
        0x0t 0x0t
        0xe8t 0xfft
        0xeet 0xfft
        0x12t 0x0t
        0xeft 0xfft
        0xf8t 0xfft
        0x0t 0x0t
        0xf9t 0xfft
        0xfbt 0xfft
        0xet 0x0t
        0xfct 0xfft
        0xfdt 0xfft
        0x12t 0x0t
        0xfet 0xfft
        0xfft 0xfft
        0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "types"

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/itextpdf/text/pdf/BidiOrder;->paragraphEmbeddingLevel:B

    .line 240
    invoke-static {p1}, Lcom/itextpdf/text/pdf/BidiOrder;->validateTypes([B)V

    .line 242
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiOrder;->initialTypes:[B

    .line 244
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/BidiOrder;->runAlgorithm()V

    .line 245
    return-void
.end method

.method public constructor <init>([BB)V
    .locals 1
    .parameter "types"
    .parameter "paragraphEmbeddingLevel"

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/itextpdf/text/pdf/BidiOrder;->paragraphEmbeddingLevel:B

    .line 256
    invoke-static {p1}, Lcom/itextpdf/text/pdf/BidiOrder;->validateTypes([B)V

    .line 257
    invoke-static {p2}, Lcom/itextpdf/text/pdf/BidiOrder;->validateParagraphEmbeddingLevel(B)V

    .line 259
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiOrder;->initialTypes:[B

    .line 260
    iput-byte p2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->paragraphEmbeddingLevel:B

    .line 262
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/BidiOrder;->runAlgorithm()V

    .line 263
    return-void
.end method

.method public constructor <init>([CIIB)V
    .locals 4
    .parameter "text"
    .parameter "offset"
    .parameter "length"
    .parameter "paragraphEmbeddingLevel"

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const/4 v1, -0x1

    iput-byte v1, p0, Lcom/itextpdf/text/pdf/BidiOrder;->paragraphEmbeddingLevel:B

    .line 266
    new-array v1, p3, [B

    iput-object v1, p0, Lcom/itextpdf/text/pdf/BidiOrder;->initialTypes:[B

    .line 267
    const/4 v0, 0x0

    .local v0, k:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 268
    iget-object v1, p0, Lcom/itextpdf/text/pdf/BidiOrder;->initialTypes:[B

    sget-object v2, Lcom/itextpdf/text/pdf/BidiOrder;->rtypes:[B

    add-int v3, p2, v0

    aget-char v3, p1, v3

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_0
    invoke-static {p4}, Lcom/itextpdf/text/pdf/BidiOrder;->validateParagraphEmbeddingLevel(B)V

    .line 272
    iput-byte p4, p0, Lcom/itextpdf/text/pdf/BidiOrder;->paragraphEmbeddingLevel:B

    .line 274
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/BidiOrder;->runAlgorithm()V

    .line 275
    return-void
.end method

.method private static computeMultilineReordering([B[I)[I
    .locals 9
    .parameter "levels"
    .parameter "linebreaks"

    .prologue
    .line 921
    array-length v7, p0

    new-array v3, v7, [I

    .line 923
    .local v3, result:[I
    const/4 v4, 0x0

    .line 924
    .local v4, start:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v7, p1

    if-ge v0, v7, :cond_1

    .line 925
    aget v2, p1, v0

    .line 927
    .local v2, limit:I
    sub-int v7, v2, v4

    new-array v5, v7, [B

    .line 928
    .local v5, templevels:[B
    const/4 v7, 0x0

    array-length v8, v5

    invoke-static {p0, v4, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 930
    invoke-static {v5}, Lcom/itextpdf/text/pdf/BidiOrder;->computeReordering([B)[I

    move-result-object v6

    .line 931
    .local v6, temporder:[I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v7, v6

    if-ge v1, v7, :cond_0

    .line 932
    add-int v7, v4, v1

    aget v8, v6, v1

    add-int/2addr v8, v4

    aput v8, v3, v7

    .line 931
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 935
    :cond_0
    move v4, v2

    .line 924
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 938
    .end local v1           #j:I
    .end local v2           #limit:I
    .end local v5           #templevels:[B
    .end local v6           #temporder:[I
    :cond_1
    return-object v3
.end method

.method private static computeReordering([B)[I
    .locals 12
    .parameter "levels"

    .prologue
    .line 948
    array-length v6, p0

    .line 950
    .local v6, lineLength:I
    new-array v8, v6, [I

    .line 953
    .local v8, result:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 954
    aput v1, v8, v1

    .line 953
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 960
    :cond_0
    const/4 v0, 0x0

    .line 961
    .local v0, highestLevel:B
    const/16 v7, 0x3f

    .line 962
    .local v7, lowestOddLevel:B
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_3

    .line 963
    aget-byte v4, p0, v1

    .line 964
    .local v4, level:B
    if-le v4, v0, :cond_1

    .line 965
    move v0, v4

    .line 967
    :cond_1
    and-int/lit8 v11, v4, 0x1

    if-eqz v11, :cond_2

    if-ge v4, v7, :cond_2

    .line 968
    move v7, v4

    .line 962
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 972
    .end local v4           #level:B
    :cond_3
    move v4, v0

    .local v4, level:I
    :goto_2
    if-lt v4, v7, :cond_8

    .line 973
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v6, :cond_7

    .line 974
    aget-byte v11, p0, v1

    if-lt v11, v4, :cond_6

    .line 976
    move v9, v1

    .line 977
    .local v9, start:I
    add-int/lit8 v5, v1, 0x1

    .line 978
    .local v5, limit:I
    :goto_4
    if-ge v5, v6, :cond_4

    aget-byte v11, p0, v5

    if-lt v11, v4, :cond_4

    .line 979
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 983
    :cond_4
    move v2, v9

    .local v2, j:I
    add-int/lit8 v3, v5, -0x1

    .local v3, k:I
    :goto_5
    if-ge v2, v3, :cond_5

    .line 984
    aget v10, v8, v2

    .line 985
    .local v10, temp:I
    aget v11, v8, v3

    aput v11, v8, v2

    .line 986
    aput v10, v8, v3

    .line 983
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 990
    .end local v10           #temp:I
    :cond_5
    move v1, v5

    .line 973
    .end local v2           #j:I
    .end local v3           #k:I
    .end local v5           #limit:I
    .end local v9           #start:I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 972
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 995
    :cond_8
    return-object v8
.end method

.method private determineExplicitEmbeddingLevels()V
    .locals 4

    .prologue
    .line 392
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    iget-byte v3, p0, Lcom/itextpdf/text/pdf/BidiOrder;->paragraphEmbeddingLevel:B

    invoke-static {v2, v3}, Lcom/itextpdf/text/pdf/BidiOrder;->processEmbeddings([BB)[B

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->embeddings:[B

    .line 394
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->textLength:I

    if-ge v0, v2, :cond_1

    .line 395
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->embeddings:[B

    aget-byte v1, v2, v0

    .line 396
    .local v1, level:B
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 397
    and-int/lit8 v2, v1, 0x7f

    int-to-byte v1, v2

    .line 398
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    invoke-static {v1}, Lcom/itextpdf/text/pdf/BidiOrder;->typeForLevel(I)B

    move-result v3

    aput-byte v3, v2, v0

    .line 400
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultLevels:[B

    aput-byte v1, v2, v0

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    .end local v1           #level:B
    :cond_1
    return-void
.end method

.method private determineParagraphEmbeddingLevel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 361
    const/4 v1, -0x1

    .line 364
    .local v1, strongType:B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/itextpdf/text/pdf/BidiOrder;->textLength:I

    if-ge v0, v3, :cond_1

    .line 365
    iget-object v3, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    aget-byte v2, v3, v0

    .line 366
    .local v2, t:B
    if-eqz v2, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 367
    :cond_0
    move v1, v2

    .line 373
    .end local v2           #t:B
    :cond_1
    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 375
    iput-byte v4, p0, Lcom/itextpdf/text/pdf/BidiOrder;->paragraphEmbeddingLevel:B

    .line 381
    :goto_1
    return-void

    .line 364
    .restart local v2       #t:B
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    .end local v2           #t:B
    :cond_3
    if-nez v1, :cond_4

    .line 377
    iput-byte v4, p0, Lcom/itextpdf/text/pdf/BidiOrder;->paragraphEmbeddingLevel:B

    goto :goto_1

    .line 379
    :cond_4
    const/4 v3, 0x1

    iput-byte v3, p0, Lcom/itextpdf/text/pdf/BidiOrder;->paragraphEmbeddingLevel:B

    goto :goto_1
.end method

.method private findRunLimit(II[B)I
    .locals 3
    .parameter "index"
    .parameter "limit"
    .parameter "validSet"

    .prologue
    .line 1037
    add-int/lit8 p1, p1, -0x1

    .line 1039
    :cond_0
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_1

    .line 1040
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    aget-byte v1, v2, p1

    .line 1041
    .local v1, t:B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_2

    .line 1042
    aget-byte v2, p3, v0

    if-eq v1, v2, :cond_0

    .line 1041
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #t:B
    :cond_1
    move p1, p2

    .line 1049
    .end local p1
    :cond_2
    return p1
.end method

.method private findRunStart(I[B)I
    .locals 3
    .parameter "index"
    .parameter "validSet"

    .prologue
    .line 1058
    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_2

    .line 1059
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    aget-byte v1, v2, p1

    .line 1060
    .local v1, t:B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 1061
    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_0

    .line 1060
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1065
    :cond_1
    add-int/lit8 v2, p1, 0x1

    .line 1067
    .end local v0           #i:I
    .end local v1           #t:B
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static final getDirection(C)B
    .locals 1
    .parameter "c"

    .prologue
    .line 278
    sget-object v0, Lcom/itextpdf/text/pdf/BidiOrder;->rtypes:[B

    aget-byte v0, v0, p0

    return v0
.end method

.method private static isWhitespace(B)Z
    .locals 1
    .parameter "biditype"

    .prologue
    .line 1011
    sparse-switch p0, :sswitch_data_0

    .line 1021
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1019
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1011
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0xe -> :sswitch_0
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method private static processEmbeddings([BB)[B
    .locals 13
    .parameter "resultTypes"
    .parameter "paragraphEmbeddingLevel"

    .prologue
    .line 479
    const/16 v0, 0x3e

    .line 481
    .local v0, EXPLICIT_LEVEL_LIMIT:I
    array-length v11, p0

    .line 482
    .local v11, textLength:I
    new-array v4, v11, [B

    .line 486
    .local v4, embeddings:[B
    const/16 v12, 0x3e

    new-array v3, v12, [B

    .line 487
    .local v3, embeddingValueStack:[B
    const/4 v9, 0x0

    .line 494
    .local v9, stackCounter:I
    const/4 v7, 0x0

    .line 498
    .local v7, overflowAlmostCounter:I
    const/4 v8, 0x0

    .line 503
    .local v8, overflowCounter:I
    move v1, p1

    .line 504
    .local v1, currentEmbeddingLevel:B
    move v2, p1

    .line 507
    .local v2, currentEmbeddingValue:B
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v11, :cond_9

    .line 509
    aput-byte v2, v4, v5

    .line 511
    aget-byte v10, p0, v5

    .line 514
    .local v10, t:B
    sparse-switch v10, :sswitch_data_0

    .line 507
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 520
    :sswitch_0
    if-nez v8, :cond_6

    .line 522
    const/4 v12, 0x5

    if-eq v10, v12, :cond_1

    const/4 v12, 0x6

    if-ne v10, v12, :cond_3

    .line 523
    :cond_1
    add-int/lit8 v12, v1, 0x1

    or-int/lit8 v12, v12, 0x1

    int-to-byte v6, v12

    .line 530
    .local v6, newLevel:B
    :goto_2
    const/16 v12, 0x3e

    if-ge v6, v12, :cond_5

    .line 531
    aput-byte v2, v3, v9

    .line 532
    add-int/lit8 v9, v9, 0x1

    .line 534
    move v1, v6

    .line 535
    const/4 v12, 0x2

    if-eq v10, v12, :cond_2

    const/4 v12, 0x6

    if-ne v10, v12, :cond_4

    .line 536
    :cond_2
    or-int/lit16 v12, v6, 0x80

    int-to-byte v2, v12

    .line 543
    :goto_3
    aput-byte v2, v4, v5

    goto :goto_1

    .line 525
    .end local v6           #newLevel:B
    :cond_3
    add-int/lit8 v12, v1, 0x2

    and-int/lit8 v12, v12, -0x2

    int-to-byte v6, v12

    .restart local v6       #newLevel:B
    goto :goto_2

    .line 538
    :cond_4
    move v2, v6

    goto :goto_3

    .line 550
    :cond_5
    const/16 v12, 0x3c

    if-ne v1, v12, :cond_6

    .line 551
    add-int/lit8 v7, v7, 0x1

    .line 552
    goto :goto_1

    .line 557
    .end local v6           #newLevel:B
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 558
    goto :goto_1

    .line 567
    :sswitch_1
    if-lez v8, :cond_7

    .line 568
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 569
    :cond_7
    if-lez v7, :cond_8

    const/16 v12, 0x3d

    if-eq v1, v12, :cond_8

    .line 570
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 571
    :cond_8
    if-lez v9, :cond_0

    .line 572
    add-int/lit8 v9, v9, -0x1

    .line 573
    aget-byte v2, v3, v9

    .line 574
    and-int/lit8 v12, v2, 0x7f

    int-to-byte v1, v12

    goto :goto_1

    .line 583
    :sswitch_2
    const/4 v9, 0x0

    .line 584
    const/4 v8, 0x0

    .line 585
    const/4 v7, 0x0

    .line 586
    move v1, p1

    .line 587
    move v2, p1

    .line 589
    aput-byte p1, v4, v5

    goto :goto_1

    .line 597
    .end local v10           #t:B
    :cond_9
    return-object v4

    .line 514
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_1
        0xf -> :sswitch_2
    .end sparse-switch
.end method

.method private reinsertExplicitCodes(I)I
    .locals 6
    .parameter "textLength"

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 436
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->initialTypes:[B

    array-length v0, v2

    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 437
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->initialTypes:[B

    aget-byte v1, v2, v0

    .line 438
    .local v1, t:B
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    .line 439
    :cond_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->embeddings:[B

    aput-byte v4, v2, v0

    .line 440
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    aput-byte v1, v2, v0

    .line 441
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultLevels:[B

    aput-byte v5, v2, v0

    goto :goto_0

    .line 443
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 444
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->embeddings:[B

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BidiOrder;->embeddings:[B

    aget-byte v3, v3, p1

    aput-byte v3, v2, v0

    .line 445
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    aget-byte v3, v3, p1

    aput-byte v3, v2, v0

    .line 446
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultLevels:[B

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultLevels:[B

    aget-byte v3, v3, p1

    aput-byte v3, v2, v0

    goto :goto_0

    .line 454
    .end local v1           #t:B
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultLevels:[B

    aget-byte v2, v2, v4

    if-ne v2, v5, :cond_3

    .line 455
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultLevels:[B

    iget-byte v3, p0, Lcom/itextpdf/text/pdf/BidiOrder;->paragraphEmbeddingLevel:B

    aput-byte v3, v2, v4

    .line 457
    :cond_3
    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->initialTypes:[B

    array-length v2, v2

    if-ge v0, v2, :cond_5

    .line 458
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultLevels:[B

    aget-byte v2, v2, v0

    if-ne v2, v5, :cond_4

    .line 459
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultLevels:[B

    iget-object v3, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultLevels:[B

    add-int/lit8 v4, v0, -0x1

    aget-byte v3, v3, v4

    aput-byte v3, v2, v0

    .line 457
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 466
    :cond_5
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->initialTypes:[B

    array-length v2, v2

    return v2
.end method

.method private removeExplicitCodes()I
    .locals 5

    .prologue
    .line 412
    const/4 v2, 0x0

    .line 413
    .local v2, w:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/itextpdf/text/pdf/BidiOrder;->textLength:I

    if-ge v0, v3, :cond_1

    .line 414
    iget-object v3, p0, Lcom/itextpdf/text/pdf/BidiOrder;->initialTypes:[B

    aget-byte v1, v3, v0

    .line 415
    .local v1, t:B
    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x5

    if-eq v1, v3, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v3, 0x6

    if-eq v1, v3, :cond_0

    const/4 v3, 0x7

    if-eq v1, v3, :cond_0

    const/16 v3, 0xe

    if-eq v1, v3, :cond_0

    .line 416
    iget-object v3, p0, Lcom/itextpdf/text/pdf/BidiOrder;->embeddings:[B

    iget-object v4, p0, Lcom/itextpdf/text/pdf/BidiOrder;->embeddings:[B

    aget-byte v4, v4, v0

    aput-byte v4, v3, v2

    .line 417
    iget-object v3, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    iget-object v4, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    aget-byte v4, v4, v0

    aput-byte v4, v3, v2

    .line 418
    iget-object v3, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultLevels:[B

    iget-object v4, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultLevels:[B

    aget-byte v4, v4, v0

    aput-byte v4, v3, v2

    .line 419
    add-int/lit8 v2, v2, 0x1

    .line 413
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 422
    .end local v1           #t:B
    :cond_1
    return v2
.end method

.method private resolveImplicitLevels(IIBBB)V
    .locals 5
    .parameter "start"
    .parameter "limit"
    .parameter "level"
    .parameter "sor"
    .parameter "eor"

    .prologue
    const/4 v4, 0x3

    .line 787
    and-int/lit8 v2, p3, 0x1

    if-nez v2, :cond_2

    .line 788
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_4

    .line 789
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    aget-byte v1, v2, v0

    .line 791
    .local v1, t:B
    if-nez v1, :cond_0

    .line 788
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 793
    :cond_0
    if-ne v1, v4, :cond_1

    .line 794
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultLevels:[B

    aget-byte v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    goto :goto_1

    .line 796
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultLevels:[B

    aget-byte v3, v2, v0

    add-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    goto :goto_1

    .line 800
    .end local v0           #i:I
    .end local v1           #t:B
    :cond_2
    move v0, p1

    .restart local v0       #i:I
    :goto_2
    if-ge v0, p2, :cond_4

    .line 801
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    aget-byte v1, v2, v0

    .line 803
    .restart local v1       #t:B
    if-ne v1, v4, :cond_3

    .line 800
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 806
    :cond_3
    iget-object v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultLevels:[B

    aget-byte v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    goto :goto_3

    .line 810
    .end local v1           #t:B
    :cond_4
    return-void
.end method

.method private resolveNeutralTypes(IIBBB)V
    .locals 9
    .parameter "start"
    .parameter "limit"
    .parameter "level"
    .parameter "sor"
    .parameter "eor"

    .prologue
    .line 724
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_9

    .line 725
    iget-object v7, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    aget-byte v5, v7, v0

    .line 726
    .local v5, t:B
    const/16 v7, 0x11

    if-eq v5, v7, :cond_0

    const/16 v7, 0x12

    if-eq v5, v7, :cond_0

    const/16 v7, 0xf

    if-eq v5, v7, :cond_0

    const/16 v7, 0x10

    if-ne v5, v7, :cond_3

    .line 728
    :cond_0
    move v4, v0

    .line 729
    .local v4, runstart:I
    const/4 v7, 0x4

    new-array v7, v7, [B

    fill-array-data v7, :array_0

    invoke-direct {p0, v4, p2, v7}, Lcom/itextpdf/text/pdf/BidiOrder;->findRunLimit(II[B)I

    move-result v3

    .line 735
    .local v3, runlimit:I
    if-ne v4, p1, :cond_4

    .line 736
    move v1, p4

    .line 750
    .local v1, leadingType:B
    :cond_1
    :goto_1
    if-ne v3, p2, :cond_6

    .line 751
    move v6, p5

    .line 764
    .local v6, trailingType:B
    :cond_2
    :goto_2
    if-ne v1, v6, :cond_8

    .line 766
    move v2, v1

    .line 774
    .local v2, resolvedType:B
    :goto_3
    invoke-direct {p0, v4, v3, v2}, Lcom/itextpdf/text/pdf/BidiOrder;->setTypes(IIB)V

    .line 777
    move v0, v3

    .line 724
    .end local v1           #leadingType:B
    .end local v2           #resolvedType:B
    .end local v3           #runlimit:I
    .end local v4           #runstart:I
    .end local v6           #trailingType:B
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 738
    .restart local v3       #runlimit:I
    .restart local v4       #runstart:I
    :cond_4
    iget-object v7, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    add-int/lit8 v8, v4, -0x1

    aget-byte v1, v7, v8

    .line 739
    .restart local v1       #leadingType:B
    if-eqz v1, :cond_1

    const/4 v7, 0x3

    if-eq v1, v7, :cond_1

    .line 741
    const/16 v7, 0xb

    if-ne v1, v7, :cond_5

    .line 742
    const/4 v1, 0x3

    goto :goto_1

    .line 743
    :cond_5
    const/16 v7, 0x8

    if-ne v1, v7, :cond_1

    .line 746
    const/4 v1, 0x3

    goto :goto_1

    .line 753
    :cond_6
    iget-object v7, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    aget-byte v6, v7, v3

    .line 754
    .restart local v6       #trailingType:B
    if-eqz v6, :cond_2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    .line 756
    const/16 v7, 0xb

    if-ne v6, v7, :cond_7

    .line 757
    const/4 v6, 0x3

    goto :goto_2

    .line 758
    :cond_7
    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    .line 759
    const/4 v6, 0x3

    goto :goto_2

    .line 771
    :cond_8
    invoke-static {p3}, Lcom/itextpdf/text/pdf/BidiOrder;->typeForLevel(I)B

    move-result v2

    .restart local v2       #resolvedType:B
    goto :goto_3

    .line 780
    .end local v1           #leadingType:B
    .end local v2           #resolvedType:B
    .end local v3           #runlimit:I
    .end local v4           #runstart:I
    .end local v5           #t:B
    .end local v6           #trailingType:B
    :cond_9
    return-void

    .line 729
    :array_0
    .array-data 0x1
        0xft
        0x10t
        0x11t
        0x12t
    .end array-data
.end method

.method private resolveWeakTypes(IIBBB)V
    .locals 12
    .parameter "start"
    .parameter "limit"
    .parameter "level"
    .parameter "sor"
    .parameter "eor"

    .prologue
    .line 611
    move/from16 v2, p4

    .line 612
    .local v2, preceedingCharacterType:B
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 613
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    aget-byte v8, v9, v0

    .line 614
    .local v8, t:B
    const/16 v9, 0xd

    if-ne v8, v9, :cond_0

    .line 615
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    aput-byte v2, v9, v0

    .line 612
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 617
    :cond_0
    move v2, v8

    goto :goto_1

    .line 623
    .end local v8           #t:B
    :cond_1
    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_5

    .line 624
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    aget-byte v9, v9, v0

    const/16 v10, 0x8

    if-ne v9, v10, :cond_3

    .line 625
    add-int/lit8 v1, v0, -0x1

    .local v1, j:I
    :goto_3
    if-lt v1, p1, :cond_3

    .line 626
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    aget-byte v8, v9, v1

    .line 627
    .restart local v8       #t:B
    if-eqz v8, :cond_2

    const/4 v9, 0x3

    if-eq v8, v9, :cond_2

    const/4 v9, 0x4

    if-ne v8, v9, :cond_4

    .line 628
    :cond_2
    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    .line 629
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    const/16 v10, 0xb

    aput-byte v10, v9, v0

    .line 623
    .end local v1           #j:I
    .end local v8           #t:B
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 625
    .restart local v1       #j:I
    .restart local v8       #t:B
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 638
    .end local v1           #j:I
    .end local v8           #t:B
    :cond_5
    move v0, p1

    :goto_4
    if-ge v0, p2, :cond_7

    .line 639
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    aget-byte v9, v9, v0

    const/4 v10, 0x4

    if-ne v9, v10, :cond_6

    .line 640
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    const/4 v10, 0x3

    aput-byte v10, v9, v0

    .line 638
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 656
    :cond_7
    add-int/lit8 v0, p1, 0x1

    :goto_5
    add-int/lit8 v9, p2, -0x1

    if-ge v0, v9, :cond_b

    .line 657
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    aget-byte v9, v9, v0

    const/16 v10, 0x9

    if-eq v9, v10, :cond_8

    iget-object v9, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    aget-byte v9, v9, v0

    const/16 v10, 0xc

    if-ne v9, v10, :cond_9

    .line 658
    :cond_8
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    add-int/lit8 v10, v0, -0x1

    aget-byte v3, v9, v10

    .line 659
    .local v3, prevSepType:B
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    add-int/lit8 v10, v0, 0x1

    aget-byte v7, v9, v10

    .line 660
    .local v7, succSepType:B
    const/16 v9, 0x8

    if-ne v3, v9, :cond_a

    const/16 v9, 0x8

    if-ne v7, v9, :cond_a

    .line 661
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    const/16 v10, 0x8

    aput-byte v10, v9, v0

    .line 656
    .end local v3           #prevSepType:B
    .end local v7           #succSepType:B
    :cond_9
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 662
    .restart local v3       #prevSepType:B
    .restart local v7       #succSepType:B
    :cond_a
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    aget-byte v9, v9, v0

    const/16 v10, 0xc

    if-ne v9, v10, :cond_9

    const/16 v9, 0xb

    if-ne v3, v9, :cond_9

    const/16 v9, 0xb

    if-ne v7, v9, :cond_9

    .line 663
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    const/16 v10, 0xb

    aput-byte v10, v9, v0

    goto :goto_6

    .line 669
    .end local v3           #prevSepType:B
    .end local v7           #succSepType:B
    :cond_b
    move v0, p1

    :goto_7
    if-ge v0, p2, :cond_11

    .line 670
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    aget-byte v9, v9, v0

    const/16 v10, 0xa

    if-ne v9, v10, :cond_e

    .line 672
    move v6, v0

    .line 673
    .local v6, runstart:I
    const/4 v9, 0x1

    new-array v9, v9, [B

    const/4 v10, 0x0

    const/16 v11, 0xa

    aput-byte v11, v9, v10

    invoke-direct {p0, v6, p2, v9}, Lcom/itextpdf/text/pdf/BidiOrder;->findRunLimit(II[B)I

    move-result v5

    .line 676
    .local v5, runlimit:I
    if-ne v6, p1, :cond_f

    move/from16 v8, p4

    .line 678
    .restart local v8       #t:B
    :goto_8
    const/16 v9, 0x8

    if-eq v8, v9, :cond_c

    .line 679
    if-ne v5, p2, :cond_10

    move/from16 v8, p5

    .line 682
    :cond_c
    :goto_9
    const/16 v9, 0x8

    if-ne v8, v9, :cond_d

    .line 683
    const/16 v9, 0x8

    invoke-direct {p0, v6, v5, v9}, Lcom/itextpdf/text/pdf/BidiOrder;->setTypes(IIB)V

    .line 687
    :cond_d
    move v0, v5

    .line 669
    .end local v5           #runlimit:I
    .end local v6           #runstart:I
    .end local v8           #t:B
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 676
    .restart local v5       #runlimit:I
    .restart local v6       #runstart:I
    :cond_f
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    add-int/lit8 v10, v6, -0x1

    aget-byte v8, v9, v10

    goto :goto_8

    .line 679
    .restart local v8       #t:B
    :cond_10
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    aget-byte v8, v9, v5

    goto :goto_9

    .line 692
    .end local v5           #runlimit:I
    .end local v6           #runstart:I
    .end local v8           #t:B
    :cond_11
    move v0, p1

    :goto_a
    if-ge v0, p2, :cond_14

    .line 693
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    aget-byte v8, v9, v0

    .line 694
    .restart local v8       #t:B
    const/16 v9, 0x9

    if-eq v8, v9, :cond_12

    const/16 v9, 0xa

    if-eq v8, v9, :cond_12

    const/16 v9, 0xc

    if-ne v8, v9, :cond_13

    .line 695
    :cond_12
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    const/16 v10, 0x12

    aput-byte v10, v9, v0

    .line 692
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 700
    .end local v8           #t:B
    :cond_14
    move v0, p1

    :goto_b
    if-ge v0, p2, :cond_19

    .line 701
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    aget-byte v9, v9, v0

    const/16 v10, 0x8

    if-ne v9, v10, :cond_17

    .line 703
    move/from16 v4, p4

    .line 704
    .local v4, prevStrongType:B
    add-int/lit8 v1, v0, -0x1

    .restart local v1       #j:I
    :goto_c
    if-lt v1, p1, :cond_16

    .line 705
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    aget-byte v8, v9, v1

    .line 706
    .restart local v8       #t:B
    if-eqz v8, :cond_15

    const/4 v9, 0x3

    if-ne v8, v9, :cond_18

    .line 707
    :cond_15
    move v4, v8

    .line 711
    .end local v8           #t:B
    :cond_16
    if-nez v4, :cond_17

    .line 712
    iget-object v9, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    const/4 v10, 0x0

    aput-byte v10, v9, v0

    .line 700
    .end local v1           #j:I
    .end local v4           #prevStrongType:B
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 704
    .restart local v1       #j:I
    .restart local v4       #prevStrongType:B
    .restart local v8       #t:B
    :cond_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 716
    .end local v1           #j:I
    .end local v4           #prevStrongType:B
    .end local v8           #t:B
    :cond_19
    return-void
.end method

.method private runAlgorithm()V
    .locals 10

    .prologue
    .line 287
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiOrder;->initialTypes:[B

    array-length v0, v0

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiOrder;->textLength:I

    .line 291
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiOrder;->initialTypes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    .line 298
    iget-byte v0, p0, Lcom/itextpdf/text/pdf/BidiOrder;->paragraphEmbeddingLevel:B

    const/4 v8, -0x1

    if-ne v0, v8, :cond_0

    .line 299
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/BidiOrder;->determineParagraphEmbeddingLevel()V

    .line 303
    :cond_0
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiOrder;->textLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultLevels:[B

    .line 304
    const/4 v0, 0x0

    iget v8, p0, Lcom/itextpdf/text/pdf/BidiOrder;->textLength:I

    iget-byte v9, p0, Lcom/itextpdf/text/pdf/BidiOrder;->paragraphEmbeddingLevel:B

    invoke-direct {p0, v0, v8, v9}, Lcom/itextpdf/text/pdf/BidiOrder;->setLevels(IIB)V

    .line 308
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/BidiOrder;->determineExplicitEmbeddingLevels()V

    .line 311
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/BidiOrder;->removeExplicitCodes()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiOrder;->textLength:I

    .line 315
    iget-byte v6, p0, Lcom/itextpdf/text/pdf/BidiOrder;->paragraphEmbeddingLevel:B

    .line 316
    .local v6, prevLevel:B
    const/4 v1, 0x0

    .line 317
    .local v1, start:I
    :goto_0
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiOrder;->textLength:I

    if-ge v1, v0, :cond_3

    .line 318
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultLevels:[B

    aget-byte v3, v0, v1

    .line 319
    .local v3, level:B
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/text/pdf/BidiOrder;->typeForLevel(I)B

    move-result v4

    .line 321
    .local v4, prevType:B
    add-int/lit8 v2, v1, 0x1

    .line 322
    .local v2, limit:I
    :goto_1
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiOrder;->textLength:I

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultLevels:[B

    aget-byte v0, v0, v2

    if-ne v0, v3, :cond_1

    .line 323
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 326
    :cond_1
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiOrder;->textLength:I

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultLevels:[B

    aget-byte v7, v0, v2

    .line 327
    .local v7, succLevel:B
    :goto_2
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lcom/itextpdf/text/pdf/BidiOrder;->typeForLevel(I)B

    move-result v5

    .local v5, succType:B
    move-object v0, p0

    .line 331
    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/pdf/BidiOrder;->resolveWeakTypes(IIBBB)V

    move-object v0, p0

    .line 335
    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/pdf/BidiOrder;->resolveNeutralTypes(IIBBB)V

    move-object v0, p0

    .line 339
    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/text/pdf/BidiOrder;->resolveImplicitLevels(IIBBB)V

    .line 341
    move v6, v3

    .line 342
    move v1, v2

    .line 343
    goto :goto_0

    .line 326
    .end local v5           #succType:B
    .end local v7           #succLevel:B
    :cond_2
    iget-byte v7, p0, Lcom/itextpdf/text/pdf/BidiOrder;->paragraphEmbeddingLevel:B

    goto :goto_2

    .line 350
    .end local v2           #limit:I
    .end local v3           #level:B
    .end local v4           #prevType:B
    :cond_3
    iget v0, p0, Lcom/itextpdf/text/pdf/BidiOrder;->textLength:I

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/BidiOrder;->reinsertExplicitCodes(I)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/BidiOrder;->textLength:I

    .line 351
    return-void
.end method

.method private setLevels(IIB)V
    .locals 2
    .parameter "start"
    .parameter "limit"
    .parameter "newLevel"

    .prologue
    .line 1083
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 1084
    iget-object v1, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultLevels:[B

    aput-byte p3, v1, v0

    .line 1083
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1086
    :cond_0
    return-void
.end method

.method private setTypes(IIB)V
    .locals 2
    .parameter "start"
    .parameter "limit"
    .parameter "newType"

    .prologue
    .line 1074
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 1075
    iget-object v1, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultTypes:[B

    aput-byte p3, v1, v0

    .line 1074
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1077
    :cond_0
    return-void
.end method

.method private static typeForLevel(I)B
    .locals 1
    .parameter "level"

    .prologue
    .line 1029
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private static validateLineBreaks([II)V
    .locals 8
    .parameter "linebreaks"
    .parameter "textLength"

    .prologue
    .line 1125
    const/4 v2, 0x0

    .line 1126
    .local v2, prev:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 1127
    aget v1, p0, v0

    .line 1128
    .local v1, next:I
    if-gt v1, v2, :cond_0

    .line 1129
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "bad.linebreak.1.at.index.2"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1131
    :cond_0
    move v2, v1

    .line 1126
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1133
    .end local v1           #next:I
    :cond_1
    if-eq v2, p1, :cond_2

    .line 1134
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "last.linebreak.must.be.at.1"

    invoke-static {v4, p1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1136
    :cond_2
    return-void
.end method

.method private static validateParagraphEmbeddingLevel(B)V
    .locals 2
    .parameter "paragraphEmbeddingLevel"

    .prologue
    .line 1114
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 1117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal.paragraph.embedding.level.1"

    invoke-static {v1, p0}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1119
    :cond_0
    return-void
.end method

.method private static validateTypes([B)V
    .locals 6
    .parameter "types"

    .prologue
    const/4 v5, 0x0

    .line 1094
    if-nez p0, :cond_0

    .line 1095
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "types.is.null"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1097
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 1098
    aget-byte v1, p0, v0

    if-ltz v1, :cond_1

    aget-byte v1, p0, v0

    const/16 v2, 0x12

    if-le v1, v2, :cond_2

    .line 1099
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "illegal.type.value.at.1.2"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aget-byte v5, p0, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1097
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1102
    :cond_3
    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    .line 1103
    aget-byte v1, p0, v0

    const/16 v2, 0xf

    if-ne v1, v2, :cond_4

    .line 1104
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "b.type.before.end.of.paragraph.at.index.1"

    invoke-static {v2, v0}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1102
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1107
    :cond_5
    return-void
.end method


# virtual methods
.method public getBaseLevel()B
    .locals 1

    .prologue
    .line 1002
    iget-byte v0, p0, Lcom/itextpdf/text/pdf/BidiOrder;->paragraphEmbeddingLevel:B

    return v0
.end method

.method public getLevels()[B
    .locals 3

    .prologue
    .line 817
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/itextpdf/text/pdf/BidiOrder;->textLength:I

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/itextpdf/text/pdf/BidiOrder;->getLevels([I)[B

    move-result-object v0

    return-object v0
.end method

.method public getLevels([I)[B
    .locals 7
    .parameter "linebreaks"

    .prologue
    .line 848
    iget v6, p0, Lcom/itextpdf/text/pdf/BidiOrder;->textLength:I

    invoke-static {p1, v6}, Lcom/itextpdf/text/pdf/BidiOrder;->validateLineBreaks([II)V

    .line 850
    iget-object v6, p0, Lcom/itextpdf/text/pdf/BidiOrder;->resultLevels:[B

    invoke-virtual {v6}, [B->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v3, v6

    check-cast v3, [B

    .line 855
    .local v3, result:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v3

    if-ge v0, v6, :cond_2

    .line 856
    iget-object v6, p0, Lcom/itextpdf/text/pdf/BidiOrder;->initialTypes:[B

    aget-byte v5, v6, v0

    .line 857
    .local v5, t:B
    const/16 v6, 0xf

    if-eq v5, v6, :cond_0

    const/16 v6, 0x10

    if-ne v5, v6, :cond_1

    .line 859
    :cond_0
    iget-byte v6, p0, Lcom/itextpdf/text/pdf/BidiOrder;->paragraphEmbeddingLevel:B

    aput-byte v6, v3, v0

    .line 862
    add-int/lit8 v1, v0, -0x1

    .local v1, j:I
    :goto_1
    if-ltz v1, :cond_1

    .line 863
    iget-object v6, p0, Lcom/itextpdf/text/pdf/BidiOrder;->initialTypes:[B

    aget-byte v6, v6, v1

    invoke-static {v6}, Lcom/itextpdf/text/pdf/BidiOrder;->isWhitespace(B)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 864
    iget-byte v6, p0, Lcom/itextpdf/text/pdf/BidiOrder;->paragraphEmbeddingLevel:B

    aput-byte v6, v3, v1

    .line 862
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 855
    .end local v1           #j:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 873
    .end local v5           #t:B
    :cond_2
    const/4 v4, 0x0

    .line 874
    .local v4, start:I
    const/4 v0, 0x0

    :goto_2
    array-length v6, p1

    if-ge v0, v6, :cond_4

    .line 875
    aget v2, p1, v0

    .line 876
    .local v2, limit:I
    add-int/lit8 v1, v2, -0x1

    .restart local v1       #j:I
    :goto_3
    if-lt v1, v4, :cond_3

    .line 877
    iget-object v6, p0, Lcom/itextpdf/text/pdf/BidiOrder;->initialTypes:[B

    aget-byte v6, v6, v1

    invoke-static {v6}, Lcom/itextpdf/text/pdf/BidiOrder;->isWhitespace(B)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 878
    iget-byte v6, p0, Lcom/itextpdf/text/pdf/BidiOrder;->paragraphEmbeddingLevel:B

    aput-byte v6, v3, v1

    .line 876
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 884
    :cond_3
    move v4, v2

    .line 874
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 887
    .end local v1           #j:I
    .end local v2           #limit:I
    :cond_4
    return-object v3
.end method

.method public getReordering([I)[I
    .locals 2
    .parameter "linebreaks"

    .prologue
    .line 909
    iget v1, p0, Lcom/itextpdf/text/pdf/BidiOrder;->textLength:I

    invoke-static {p1, v1}, Lcom/itextpdf/text/pdf/BidiOrder;->validateLineBreaks([II)V

    .line 911
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/BidiOrder;->getLevels([I)[B

    move-result-object v0

    .line 913
    .local v0, levels:[B
    invoke-static {v0, p1}, Lcom/itextpdf/text/pdf/BidiOrder;->computeMultilineReordering([B[I)[I

    move-result-object v1

    return-object v1
.end method
