.class public final Ltmsdkobf/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic N:Z

.field private static cI:[Ltmsdkobf/aa;

.field public static final cJ:Ltmsdkobf/aa;

.field public static final cK:Ltmsdkobf/aa;

.field public static final cL:Ltmsdkobf/aa;


# instance fields
.field private aW:I

.field private aX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9
    const-class v0, Ltmsdkobf/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ltmsdkobf/aa;->N:Z

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Ltmsdkobf/aa;

    sput-object v0, Ltmsdkobf/aa;->cI:[Ltmsdkobf/aa;

    .line 16
    new-instance v0, Ltmsdkobf/aa;

    const-string v3, "ETCL_LOGIC_MIN"

    invoke-direct {v0, v2, v2, v3}, Ltmsdkobf/aa;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/aa;->cJ:Ltmsdkobf/aa;

    .line 18
    new-instance v0, Ltmsdkobf/aa;

    const-string v2, "ETCL_LOGIC_BLACK_LIST"

    invoke-direct {v0, v1, v1, v2}, Ltmsdkobf/aa;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/aa;->cK:Ltmsdkobf/aa;

    .line 20
    new-instance v0, Ltmsdkobf/aa;

    const-string v1, "ETCL_LOGIC_MAX"

    invoke-direct {v0, v4, v4, v1}, Ltmsdkobf/aa;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/aa;->cL:Ltmsdkobf/aa;

    return-void

    :cond_0
    move v0, v2

    .line 9
    goto :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "val"
    .parameter "s"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Ltmsdkobf/aa;->aX:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Ltmsdkobf/aa;->aX:Ljava/lang/String;

    .line 61
    iput p2, p0, Ltmsdkobf/aa;->aW:I

    .line 62
    sget-object v0, Ltmsdkobf/aa;->cI:[Ltmsdkobf/aa;

    aput-object p0, v0, p1

    .line 63
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Ltmsdkobf/aa;->aX:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Ltmsdkobf/aa;->aW:I

    return v0
.end method
