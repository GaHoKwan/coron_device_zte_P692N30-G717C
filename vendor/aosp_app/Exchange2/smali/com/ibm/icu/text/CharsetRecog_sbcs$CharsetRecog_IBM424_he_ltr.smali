.class Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;
.super Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_IBM424_he_ltr"
.end annotation


# static fields
.field private static ngrams:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1018
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;->ngrams:[I

    return-void

    :array_0
    .array-data 0x4
        0x46t 0x41t 0x40t 0x0t
        0x54t 0x41t 0x40t 0x0t
        0x51t 0x45t 0x40t 0x0t
        0x54t 0x45t 0x40t 0x0t
        0x56t 0x45t 0x40t 0x0t
        0x58t 0x45t 0x40t 0x0t
        0x58t 0x51t 0x40t 0x0t
        0x62t 0x54t 0x40t 0x0t
        0x69t 0x54t 0x40t 0x0t
        0x46t 0x55t 0x40t 0x0t
        0x51t 0x55t 0x40t 0x0t
        0x46t 0x57t 0x40t 0x0t
        0x51t 0x57t 0x40t 0x0t
        0x46t 0x68t 0x40t 0x0t
        0x51t 0x68t 0x40t 0x0t
        0x41t 0x71t 0x40t 0x0t
        0x46t 0x71t 0x40t 0x0t
        0x51t 0x71t 0x40t 0x0t
        0x45t 0x40t 0x41t 0x0t
        0x54t 0x40t 0x41t 0x0t
        0x55t 0x40t 0x41t 0x0t
        0x71t 0x40t 0x41t 0x0t
        0x40t 0x45t 0x41t 0x0t
        0x45t 0x46t 0x41t 0x0t
        0x40t 0x54t 0x41t 0x0t
        0x40t 0x56t 0x41t 0x0t
        0x45t 0x40t 0x42t 0x0t
        0x55t 0x40t 0x42t 0x0t
        0x71t 0x40t 0x42t 0x0t
        0x45t 0x40t 0x45t 0x0t
        0x51t 0x40t 0x45t 0x0t
        0x54t 0x40t 0x45t 0x0t
        0x55t 0x40t 0x45t 0x0t
        0x57t 0x40t 0x45t 0x0t
        0x68t 0x40t 0x45t 0x0t
        0x71t 0x40t 0x45t 0x0t
        0x40t 0x54t 0x45t 0x0t
        0x40t 0x41t 0x46t 0x0t
        0x40t 0x45t 0x46t 0x0t
        0x40t 0x41t 0x48t 0x0t
        0x40t 0x41t 0x51t 0x0t
        0x40t 0x42t 0x51t 0x0t
        0x40t 0x45t 0x51t 0x0t
        0x45t 0x40t 0x54t 0x0t
        0x55t 0x40t 0x54t 0x0t
        0x71t 0x40t 0x54t 0x0t
        0x40t 0x62t 0x54t 0x0t
        0x40t 0x69t 0x54t 0x0t
        0x51t 0x51t 0x55t 0x0t
        0x58t 0x51t 0x55t 0x0t
        0x68t 0x51t 0x55t 0x0t
        0x45t 0x40t 0x56t 0x0t
        0x55t 0x40t 0x56t 0x0t
        0x71t 0x40t 0x56t 0x0t
        0x40t 0x42t 0x56t 0x0t
        0x40t 0x45t 0x56t 0x0t
        0x40t 0x45t 0x62t 0x0t
        0x45t 0x40t 0x69t 0x0t
        0x55t 0x40t 0x69t 0x0t
        0x71t 0x40t 0x69t 0x0t
        0x40t 0x45t 0x69t 0x0t
        0x40t 0x41t 0x71t 0x0t
        0x40t 0x45t 0x71t 0x0t
        0x51t 0x46t 0x71t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1012
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1016
    const-string v0, "IBM424_ltr"

    return-object v0
.end method

.method public match(Lcom/ibm/icu/text/CharsetDetector;)Lcom/ibm/icu/text/CharsetMatch;
    .locals 4
    .parameter "det"

    .prologue
    .line 1027
    sget-object v1, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;->ngrams:[I

    sget-object v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;->byteMap:[B

    const/16 v3, 0x40

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/ibm/icu/text/CharsetRecog_sbcs;->match(Lcom/ibm/icu/text/CharsetDetector;[I[BB)I

    move-result v0

    .line 1028
    .local v0, confidence:I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/ibm/icu/text/CharsetMatch;

    invoke-direct {v1, p1, p0, v0}, Lcom/ibm/icu/text/CharsetMatch;-><init>(Lcom/ibm/icu/text/CharsetDetector;Lcom/ibm/icu/text/CharsetRecognizer;I)V

    goto :goto_0
.end method