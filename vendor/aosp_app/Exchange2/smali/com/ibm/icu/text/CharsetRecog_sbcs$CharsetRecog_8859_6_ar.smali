.class Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;
.super Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_8859_6_ar"
.end annotation


# static fields
.field private static ngrams:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 537
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;->ngrams:[I

    return-void

    :array_0
    .array-data 0x4
        0xe4t 0xc7t 0x20t 0x0t
        0xe6t 0xc7t 0x20t 0x0t
        0xc7t 0xc8t 0x20t 0x0t
        0xe4t 0xd9t 0x20t 0x0t
        0xeat 0xe1t 0x20t 0x0t
        0xe4t 0xe4t 0x20t 0x0t
        0xe6t 0xe5t 0x20t 0x0t
        0xc7t 0xe8t 0x20t 0x0t
        0xc7t 0x20t 0xc7t 0x0t
        0x20t 0xc1t 0xc7t 0x0t
        0x20t 0xcat 0xc7t 0x0t
        0x20t 0xd1t 0xc7t 0x0t
        0x20t 0xe4t 0xc7t 0x0t
        0xc3t 0xe4t 0xc7t 0x0t
        0xc7t 0xe4t 0xc7t 0x0t
        0xc8t 0xe4t 0xc7t 0x0t
        0xcat 0xe4t 0xc7t 0x0t
        0xcct 0xe4t 0xc7t 0x0t
        0xcdt 0xe4t 0xc7t 0x0t
        0xcft 0xe4t 0xc7t 0x0t
        0xd3t 0xe4t 0xc7t 0x0t
        0xd9t 0xe4t 0xc7t 0x0t
        0xe2t 0xe4t 0xc7t 0x0t
        0xe5t 0xe4t 0xc7t 0x0t
        0xe8t 0xe4t 0xc7t 0x0t
        0xeat 0xe4t 0xc7t 0x0t
        0x20t 0xe5t 0xc7t 0x0t
        0x20t 0xe6t 0xc7t 0x0t
        0xcat 0xe6t 0xc7t 0x0t
        0xc7t 0x20t 0xc8t 0x0t
        0xc7t 0x20t 0xc9t 0x0t
        0xe1t 0x20t 0xc9t 0x0t
        0xe4t 0x20t 0xc9t 0x0t
        0xe5t 0x20t 0xc9t 0x0t
        0xe8t 0x20t 0xc9t 0x0t
        0xc7t 0x20t 0xcat 0x0t
        0xc7t 0x20t 0xcft 0x0t
        0x20t 0xc9t 0xcft 0x0t
        0xc7t 0x20t 0xd1t 0x0t
        0x20t 0xc9t 0xd1t 0x0t
        0xc7t 0x20t 0xd3t 0x0t
        0xc7t 0x20t 0xd9t 0x0t
        0xe9t 0xe4t 0xd9t 0x0t
        0x20t 0xeat 0xe1t 0x0t
        0xc7t 0x20t 0xe4t 0x0t
        0x20t 0xc9t 0xe4t 0x0t
        0x20t 0xe9t 0xe4t 0x0t
        0x20t 0xeat 0xe4t 0x0t
        0xc7t 0x20t 0xe5t 0x0t
        0x20t 0xc7t 0xe5t 0x0t
        0x20t 0xc9t 0xe5t 0x0t
        0x20t 0xe6t 0xe5t 0x0t
        0xc7t 0x20t 0xe6t 0x0t
        0xc7t 0x20t 0xe7t 0x0t
        0x20t 0xc7t 0xe7t 0x0t
        0xe4t 0xc7t 0xe8t 0x0t
        0x20t 0xe6t 0xe8t 0x0t
        0xc7t 0x20t 0xe9t 0x0t
        0xc7t 0x20t 0xeat 0x0t
        0xe5t 0x20t 0xeat 0x0t
        0xe8t 0x20t 0xeat 0x0t
        0x20t 0xc9t 0xeat 0x0t
        0x20t 0xd1t 0xeat 0x0t
        0x20t 0xe6t 0xeat 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    const-string v0, "ar"

    return-object v0
.end method

.method public match(Lcom/ibm/icu/text/CharsetDetector;)Lcom/ibm/icu/text/CharsetMatch;
    .locals 3
    .parameter "det"

    .prologue
    .line 551
    sget-object v1, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;->ngrams:[I

    sget-object v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;->byteMap:[B

    invoke-virtual {p0, p1, v1, v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs;->match(Lcom/ibm/icu/text/CharsetDetector;[I[B)I

    move-result v0

    .line 552
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