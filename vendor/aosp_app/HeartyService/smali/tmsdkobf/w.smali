.class public final Ltmsdkobf/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic N:Z

.field public static final bA:Ltmsdkobf/w;

.field public static final bB:Ltmsdkobf/w;

.field private static bp:[Ltmsdkobf/w;

.field public static final bq:Ltmsdkobf/w;

.field public static final br:Ltmsdkobf/w;

.field public static final bs:Ltmsdkobf/w;

.field public static final bt:Ltmsdkobf/w;

.field public static final bu:Ltmsdkobf/w;

.field public static final bv:Ltmsdkobf/w;

.field public static final bw:Ltmsdkobf/w;

.field public static final bx:Ltmsdkobf/w;

.field public static final by:Ltmsdkobf/w;

.field public static final bz:Ltmsdkobf/w;


# instance fields
.field private aW:I

.field private aX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9
    const-class v0, Ltmsdkobf/w;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ltmsdkobf/w;->N:Z

    .line 11
    const/16 v0, 0xc

    new-array v0, v0, [Ltmsdkobf/w;

    sput-object v0, Ltmsdkobf/w;->bp:[Ltmsdkobf/w;

    .line 16
    new-instance v0, Ltmsdkobf/w;

    const-string v3, "MPT_NONE"

    invoke-direct {v0, v2, v2, v3}, Ltmsdkobf/w;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/w;->bq:Ltmsdkobf/w;

    .line 18
    new-instance v0, Ltmsdkobf/w;

    const-string v2, "MPT_Symbian"

    invoke-direct {v0, v1, v1, v2}, Ltmsdkobf/w;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/w;->br:Ltmsdkobf/w;

    .line 20
    new-instance v0, Ltmsdkobf/w;

    const-string v1, "MPT_Android"

    invoke-direct {v0, v4, v4, v1}, Ltmsdkobf/w;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/w;->bs:Ltmsdkobf/w;

    .line 22
    new-instance v0, Ltmsdkobf/w;

    const-string v1, "MPT_Iphone"

    invoke-direct {v0, v5, v5, v1}, Ltmsdkobf/w;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/w;->bt:Ltmsdkobf/w;

    .line 24
    new-instance v0, Ltmsdkobf/w;

    const-string v1, "MPT_Kjava"

    invoke-direct {v0, v6, v6, v1}, Ltmsdkobf/w;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/w;->bu:Ltmsdkobf/w;

    .line 26
    new-instance v0, Ltmsdkobf/w;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "MPT_Server"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/w;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/w;->bv:Ltmsdkobf/w;

    .line 28
    new-instance v0, Ltmsdkobf/w;

    const/4 v1, 0x6

    const/4 v2, 0x6

    const-string v3, "MPT_WinPhone"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/w;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/w;->bw:Ltmsdkobf/w;

    .line 30
    new-instance v0, Ltmsdkobf/w;

    const/4 v1, 0x7

    const/4 v2, 0x7

    const-string v3, "MPT_MTK"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/w;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/w;->bx:Ltmsdkobf/w;

    .line 32
    new-instance v0, Ltmsdkobf/w;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const-string v3, "MPT_BB"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/w;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/w;->by:Ltmsdkobf/w;

    .line 34
    new-instance v0, Ltmsdkobf/w;

    const/16 v1, 0x9

    const/16 v2, 0x9

    const-string v3, "MPT_PC_Windows"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/w;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/w;->bz:Ltmsdkobf/w;

    .line 36
    new-instance v0, Ltmsdkobf/w;

    const/16 v1, 0xa

    const/16 v2, 0x65

    const-string v3, "MPT_SymbianV5"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/w;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/w;->bA:Ltmsdkobf/w;

    .line 38
    new-instance v0, Ltmsdkobf/w;

    const/16 v1, 0xb

    const/16 v2, 0x66

    const-string v3, "MPT_END"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/w;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/w;->bB:Ltmsdkobf/w;

    return-void

    :cond_0
    move v0, v2

    .line 9
    goto/16 :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "val"
    .parameter "s"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Ltmsdkobf/w;->aX:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Ltmsdkobf/w;->aX:Ljava/lang/String;

    .line 79
    iput p2, p0, Ltmsdkobf/w;->aW:I

    .line 80
    sget-object v0, Ltmsdkobf/w;->bp:[Ltmsdkobf/w;

    aput-object p0, v0, p1

    .line 81
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Ltmsdkobf/w;->aX:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Ltmsdkobf/w;->aW:I

    return v0
.end method
