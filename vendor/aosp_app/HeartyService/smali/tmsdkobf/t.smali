.class public final Ltmsdkobf/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic N:Z

.field private static aV:[Ltmsdkobf/t;

.field public static final aY:Ltmsdkobf/t;

.field public static final aZ:Ltmsdkobf/t;

.field public static final ba:Ltmsdkobf/t;

.field public static final bb:Ltmsdkobf/t;

.field public static final bc:Ltmsdkobf/t;

.field public static final bd:Ltmsdkobf/t;


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
    const-class v0, Ltmsdkobf/t;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ltmsdkobf/t;->N:Z

    .line 11
    const/4 v0, 0x6

    new-array v0, v0, [Ltmsdkobf/t;

    sput-object v0, Ltmsdkobf/t;->aV:[Ltmsdkobf/t;

    .line 16
    new-instance v0, Ltmsdkobf/t;

    const-string v3, "CT_NONE"

    invoke-direct {v0, v2, v2, v3}, Ltmsdkobf/t;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/t;->aY:Ltmsdkobf/t;

    .line 18
    new-instance v0, Ltmsdkobf/t;

    const-string v2, "CT_GPRS"

    invoke-direct {v0, v1, v1, v2}, Ltmsdkobf/t;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/t;->aZ:Ltmsdkobf/t;

    .line 20
    new-instance v0, Ltmsdkobf/t;

    const-string v1, "CT_WIFI"

    invoke-direct {v0, v4, v4, v1}, Ltmsdkobf/t;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/t;->ba:Ltmsdkobf/t;

    .line 22
    new-instance v0, Ltmsdkobf/t;

    const-string v1, "CT_GPRS_WAP"

    invoke-direct {v0, v5, v5, v1}, Ltmsdkobf/t;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/t;->bb:Ltmsdkobf/t;

    .line 24
    new-instance v0, Ltmsdkobf/t;

    const-string v1, "CT_GPRS_NET"

    invoke-direct {v0, v6, v6, v1}, Ltmsdkobf/t;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/t;->bc:Ltmsdkobf/t;

    .line 26
    new-instance v0, Ltmsdkobf/t;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "CT_3G_NET"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/t;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/t;->bd:Ltmsdkobf/t;

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
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Ltmsdkobf/t;->aX:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Ltmsdkobf/t;->aX:Ljava/lang/String;

    .line 67
    iput p2, p0, Ltmsdkobf/t;->aW:I

    .line 68
    sget-object v0, Ltmsdkobf/t;->aV:[Ltmsdkobf/t;

    aput-object p0, v0, p1

    .line 69
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Ltmsdkobf/t;->aX:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Ltmsdkobf/t;->aW:I

    return v0
.end method
