.class Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;
.super Lcom/ibm/icu/text/CharsetRecog_sbcs;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ibm/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharsetRecog_windows_1256"
.end annotation


# static fields
.field private static byteMap:[B

.field private static ngrams:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 847
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;->ngrams:[I

    .line 854
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;->byteMap:[B

    return-void

    .line 847
    nop

    :array_0
    .array-data 0x4
        0xe1t 0xc7t 0x20t 0x0t
        0xe4t 0xc7t 0x20t 0x0t
        0xc7t 0xc8t 0x20t 0x0t
        0xe1t 0xdat 0x20t 0x0t
        0xedt 0xddt 0x20t 0x0t
        0xe1t 0xe1t 0x20t 0x0t
        0xe4t 0xe3t 0x20t 0x0t
        0xc7t 0xe6t 0x20t 0x0t
        0xc7t 0x20t 0xc7t 0x0t
        0x20t 0xc1t 0xc7t 0x0t
        0x20t 0xcat 0xc7t 0x0t
        0x20t 0xd1t 0xc7t 0x0t
        0x20t 0xe1t 0xc7t 0x0t
        0xc3t 0xe1t 0xc7t 0x0t
        0xc7t 0xe1t 0xc7t 0x0t
        0xc8t 0xe1t 0xc7t 0x0t
        0xcat 0xe1t 0xc7t 0x0t
        0xcct 0xe1t 0xc7t 0x0t
        0xcdt 0xe1t 0xc7t 0x0t
        0xcft 0xe1t 0xc7t 0x0t
        0xd3t 0xe1t 0xc7t 0x0t
        0xdat 0xe1t 0xc7t 0x0t
        0xdet 0xe1t 0xc7t 0x0t
        0xe3t 0xe1t 0xc7t 0x0t
        0xe6t 0xe1t 0xc7t 0x0t
        0xedt 0xe1t 0xc7t 0x0t
        0x20t 0xe3t 0xc7t 0x0t
        0x20t 0xe4t 0xc7t 0x0t
        0xcat 0xe4t 0xc7t 0x0t
        0xc7t 0x20t 0xc8t 0x0t
        0xc7t 0x20t 0xc9t 0x0t
        0xddt 0x20t 0xc9t 0x0t
        0xe1t 0x20t 0xc9t 0x0t
        0xe3t 0x20t 0xc9t 0x0t
        0xe6t 0x20t 0xc9t 0x0t
        0xc7t 0x20t 0xcat 0x0t
        0xc7t 0x20t 0xcft 0x0t
        0x20t 0xc9t 0xcft 0x0t
        0xc7t 0x20t 0xd1t 0x0t
        0x20t 0xc9t 0xd1t 0x0t
        0xc7t 0x20t 0xd3t 0x0t
        0xc7t 0x20t 0xdat 0x0t
        0xect 0xe1t 0xdat 0x0t
        0x20t 0xedt 0xddt 0x0t
        0xc7t 0x20t 0xe1t 0x0t
        0x20t 0xc9t 0xe1t 0x0t
        0x20t 0xect 0xe1t 0x0t
        0x20t 0xedt 0xe1t 0x0t
        0xc7t 0x20t 0xe3t 0x0t
        0x20t 0xc7t 0xe3t 0x0t
        0x20t 0xc9t 0xe3t 0x0t
        0x20t 0xe4t 0xe3t 0x0t
        0xc7t 0x20t 0xe4t 0x0t
        0xc7t 0x20t 0xe5t 0x0t
        0x20t 0xc7t 0xe5t 0x0t
        0xe1t 0xc7t 0xe6t 0x0t
        0x20t 0xe4t 0xe6t 0x0t
        0xc7t 0x20t 0xect 0x0t
        0xc7t 0x20t 0xedt 0x0t
        0xe3t 0x20t 0xedt 0x0t
        0xe6t 0x20t 0xedt 0x0t
        0x20t 0xc9t 0xedt 0x0t
        0x20t 0xd1t 0xedt 0x0t
        0x20t 0xe4t 0xedt 0x0t
    .end array-data

    .line 854
    :array_1
    .array-data 0x1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x0t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x81t
        0x20t
        0x83t
        0x20t
        0x20t
        0x20t
        0x20t
        0x88t
        0x20t
        0x8at
        0x20t
        0x9ct
        0x8dt
        0x8et
        0x8ft
        0x90t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x98t
        0x20t
        0x9at
        0x20t
        0x9ct
        0x20t
        0x20t
        0x9ft
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0xaat
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0xb5t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0xc0t
        0xc1t
        0xc2t
        0xc3t
        0xc4t
        0xc5t
        0xc6t
        0xc7t
        0xc8t
        0xc9t
        0xcat
        0xcbt
        0xcct
        0xcdt
        0xcet
        0xcft
        0xd0t
        0xd1t
        0xd2t
        0xd3t
        0xd4t
        0xd5t
        0xd6t
        0x20t
        0xd8t
        0xd9t
        0xdat
        0xdbt
        0xdct
        0xddt
        0xdet
        0xdft
        0xe0t
        0xe1t
        0xe2t
        0xe3t
        0xe4t
        0xe5t
        0xe6t
        0xe7t
        0xe8t
        0xe9t
        0xeat
        0xebt
        0xect
        0xedt
        0xeet
        0xeft
        0x20t
        0x20t
        0x20t
        0x20t
        0xf4t
        0x20t
        0x20t
        0x20t
        0x20t
        0xf9t
        0x20t
        0xfbt
        0xfct
        0x20t
        0x20t
        0xfft
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 845
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetRecog_sbcs;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 896
    const-string v0, "ar"

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 891
    const-string v0, "windows-1256"

    return-object v0
.end method

.method public match(Lcom/ibm/icu/text/CharsetDetector;)Lcom/ibm/icu/text/CharsetMatch;
    .locals 3
    .parameter "det"

    .prologue
    .line 901
    sget-object v1, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;->ngrams:[I

    sget-object v2, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;->byteMap:[B

    invoke-virtual {p0, p1, v1, v2}, Lcom/ibm/icu/text/CharsetRecog_sbcs;->match(Lcom/ibm/icu/text/CharsetDetector;[I[B)I

    move-result v0

    .line 902
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