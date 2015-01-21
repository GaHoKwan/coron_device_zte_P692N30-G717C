.class public Lcom/sohu/handwriting/engine/HWIMEInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALC_CS_CURSIVE:I = 0x10000

.field public static final ALC_GB18030:I = 0xf

.field public static final ALC_GBK:I = 0x7

.field public static final ALC_GESTURE:I = 0x8000

.field public static final ALC_HONGKONG:I = 0x10

.field public static final ALC_LCALPHA:I = 0x400

.field public static final ALC_NUMERIC:I = 0x100

.field public static final ALC_PUNC_COMMON:I = 0x800

.field public static final ALC_PUNC_RARE:I = 0x1000

.field public static final ALC_SC_COMMON:I = 0x1

.field public static final ALC_SC_GB18030EX:I = 0x8

.field public static final ALC_SC_GBK34:I = 0x4

.field public static final ALC_SC_RADICAL:I = 0x80

.field public static final ALC_SC_RARE:I = 0x2

.field public static final ALC_SYM_COMMON:I = 0x2000

.field public static final ALC_SYM_RARE:I = 0x4000

.field public static final ALC_TC_TO_SC:I = 0x20

.field public static final ALC_UCALPHA:I = 0x200

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HWIMEInterface"

.field private static sInterface:Lcom/sohu/handwriting/engine/HWIMEInterface;


# instance fields
.field private dbpath:[B

.field private mKPenChar:Lcom/kpen/kpenchar;

.field private psses:[C

.field private range:I

.field private res:I


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/kpen/kpenchar;

    invoke-direct {v0}, Lcom/kpen/kpenchar;-><init>()V

    iput-object v0, p0, Lcom/sohu/handwriting/engine/HWIMEInterface;->mKPenChar:Lcom/kpen/kpenchar;

    .line 57
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sohu/handwriting/engine/HWIMEInterface;->dbpath:[B

    .line 58
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sohu/handwriting/engine/HWIMEInterface;->psses:[C

    .line 61
    const-string v2, "/sdcard/kpentest/kpenirs.irs"

    move v0, v1

    .line 64
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 65
    iget-object v3, p0, Lcom/sohu/handwriting/engine/HWIMEInterface;->dbpath:[B

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/sohu/handwriting/engine/HWIMEInterface;->dbpath:[B

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    aput-byte v1, v0, v2

    .line 67
    iget-object v0, p0, Lcom/sohu/handwriting/engine/HWIMEInterface;->mKPenChar:Lcom/kpen/kpenchar;

    iget-object v1, p0, Lcom/sohu/handwriting/engine/HWIMEInterface;->dbpath:[B

    invoke-virtual {v0, v1}, Lcom/kpen/kpenchar;->KPenInit([B)I

    move-result v0

    iput v0, p0, Lcom/sohu/handwriting/engine/HWIMEInterface;->res:I

    .line 69
    const/16 v0, 0x7f

    iput v0, p0, Lcom/sohu/handwriting/engine/HWIMEInterface;->range:I

    .line 71
    return-void
.end method

.method private static LOGD(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    return-void
.end method

.method public static getInterface()Lcom/sohu/handwriting/engine/HWIMEInterface;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/sohu/handwriting/engine/HWIMEInterface;->sInterface:Lcom/sohu/handwriting/engine/HWIMEInterface;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/sohu/handwriting/engine/HWIMEInterface;

    invoke-direct {v0}, Lcom/sohu/handwriting/engine/HWIMEInterface;-><init>()V

    sput-object v0, Lcom/sohu/handwriting/engine/HWIMEInterface;->sInterface:Lcom/sohu/handwriting/engine/HWIMEInterface;

    .line 77
    :cond_0
    sget-object v0, Lcom/sohu/handwriting/engine/HWIMEInterface;->sInterface:Lcom/sohu/handwriting/engine/HWIMEInterface;

    return-object v0
.end method


# virtual methods
.method public getmHWInterface()Lcom/kpen/kpenchar;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sohu/handwriting/engine/HWIMEInterface;->mKPenChar:Lcom/kpen/kpenchar;

    return-object v0
.end method

.method public recognize([S[C)I
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 99
    .line 101
    iget-object v0, p0, Lcom/sohu/handwriting/engine/HWIMEInterface;->mKPenChar:Lcom/kpen/kpenchar;

    array-length v2, p1

    iget-object v4, p0, Lcom/sohu/handwriting/engine/HWIMEInterface;->psses:[C

    const/16 v5, 0x10

    iget v6, p0, Lcom/sohu/handwriting/engine/HWIMEInterface;->range:I

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lcom/kpen/kpenchar;->KPenRecognize([SI[C[CII)I

    move-result v0

    .line 103
    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/sohu/handwriting/engine/HWIMEInterface;->sInterface:Lcom/sohu/handwriting/engine/HWIMEInterface;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/sohu/handwriting/engine/HWIMEInterface;->mKPenChar:Lcom/kpen/kpenchar;

    invoke-virtual {v0}, Lcom/kpen/kpenchar;->KPenUnInit()V

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/sohu/handwriting/engine/HWIMEInterface;->sInterface:Lcom/sohu/handwriting/engine/HWIMEInterface;

    .line 94
    :cond_0
    return-void
.end method
