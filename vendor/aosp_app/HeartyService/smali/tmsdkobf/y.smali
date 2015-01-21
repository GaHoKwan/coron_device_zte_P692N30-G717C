.class public final Ltmsdkobf/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic N:Z

.field private static ch:[Ltmsdkobf/y;

.field public static final ci:Ltmsdkobf/y;

.field public static final cj:Ltmsdkobf/y;

.field public static final ck:Ltmsdkobf/y;

.field public static final cl:Ltmsdkobf/y;

.field public static final cm:Ltmsdkobf/y;


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
    const-class v0, Ltmsdkobf/y;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ltmsdkobf/y;->N:Z

    .line 11
    const/4 v0, 0x5

    new-array v0, v0, [Ltmsdkobf/y;

    sput-object v0, Ltmsdkobf/y;->ch:[Ltmsdkobf/y;

    .line 16
    new-instance v0, Ltmsdkobf/y;

    const-string v3, "E_QUERY_MIN"

    invoke-direct {v0, v2, v2, v3}, Ltmsdkobf/y;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/y;->ci:Ltmsdkobf/y;

    .line 18
    new-instance v0, Ltmsdkobf/y;

    const-string v2, "E_QUERY_ALL"

    invoke-direct {v0, v1, v1, v2}, Ltmsdkobf/y;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/y;->cj:Ltmsdkobf/y;

    .line 20
    new-instance v0, Ltmsdkobf/y;

    const-string v1, "E_QUERY_TRAFFIC"

    invoke-direct {v0, v4, v4, v1}, Ltmsdkobf/y;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/y;->ck:Ltmsdkobf/y;

    .line 22
    new-instance v0, Ltmsdkobf/y;

    const-string v1, "E_QUERY_MONEY"

    invoke-direct {v0, v5, v5, v1}, Ltmsdkobf/y;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/y;->cl:Ltmsdkobf/y;

    .line 24
    new-instance v0, Ltmsdkobf/y;

    const-string v1, "E_QUERY_MAX"

    invoke-direct {v0, v6, v6, v1}, Ltmsdkobf/y;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/y;->cm:Ltmsdkobf/y;

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
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Ltmsdkobf/y;->aX:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Ltmsdkobf/y;->aX:Ljava/lang/String;

    .line 65
    iput p2, p0, Ltmsdkobf/y;->aW:I

    .line 66
    sget-object v0, Ltmsdkobf/y;->ch:[Ltmsdkobf/y;

    aput-object p0, v0, p1

    .line 67
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Ltmsdkobf/y;->aX:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Ltmsdkobf/y;->aW:I

    return v0
.end method
