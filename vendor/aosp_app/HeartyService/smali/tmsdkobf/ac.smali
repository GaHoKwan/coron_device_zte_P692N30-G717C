.class public final Ltmsdkobf/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic N:Z

.field private static cT:[Ltmsdkobf/ac;

.field public static final cU:Ltmsdkobf/ac;

.field public static final cV:Ltmsdkobf/ac;

.field public static final cW:Ltmsdkobf/ac;

.field public static final cX:Ltmsdkobf/ac;

.field public static final cY:Ltmsdkobf/ac;

.field public static final cZ:Ltmsdkobf/ac;

.field public static final da:Ltmsdkobf/ac;

.field public static final db:Ltmsdkobf/ac;


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
    const-class v0, Ltmsdkobf/ac;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Ltmsdkobf/ac;->N:Z

    .line 11
    const/16 v0, 0x8

    new-array v0, v0, [Ltmsdkobf/ac;

    sput-object v0, Ltmsdkobf/ac;->cT:[Ltmsdkobf/ac;

    .line 16
    new-instance v0, Ltmsdkobf/ac;

    const-string v3, "E_TRAFFIC_TEMPLATE_TYPE_MIN"

    invoke-direct {v0, v2, v2, v3}, Ltmsdkobf/ac;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ac;->cU:Ltmsdkobf/ac;

    .line 18
    new-instance v0, Ltmsdkobf/ac;

    const-string v2, "E_TRAFFIC_TEMPLATE_TYPE_LEFT"

    invoke-direct {v0, v1, v1, v2}, Ltmsdkobf/ac;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ac;->cV:Ltmsdkobf/ac;

    .line 20
    new-instance v0, Ltmsdkobf/ac;

    const-string v1, "E_TRAFFIC_TEMPLATE_TYPE_USE"

    invoke-direct {v0, v4, v4, v1}, Ltmsdkobf/ac;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ac;->cW:Ltmsdkobf/ac;

    .line 22
    new-instance v0, Ltmsdkobf/ac;

    const-string v1, "E_TRAFFIC_TEMPLATE_TYPE_EXCESS"

    invoke-direct {v0, v5, v5, v1}, Ltmsdkobf/ac;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ac;->cX:Ltmsdkobf/ac;

    .line 24
    new-instance v0, Ltmsdkobf/ac;

    const-string v1, "E_TRAFFIC_TEMPLATE_TYPE_PACKAGE"

    invoke-direct {v0, v6, v6, v1}, Ltmsdkobf/ac;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ac;->cY:Ltmsdkobf/ac;

    .line 26
    new-instance v0, Ltmsdkobf/ac;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "E_TRAFFIC_TEMPLATE_TYPE_BALANCE_BEGIN"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/ac;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ac;->cZ:Ltmsdkobf/ac;

    .line 28
    new-instance v0, Ltmsdkobf/ac;

    const/4 v1, 0x6

    const/4 v2, 0x6

    const-string v3, "E_TRAFFIC_TEMPLATE_TYPE_BALANCE_END"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/ac;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ac;->da:Ltmsdkobf/ac;

    .line 30
    new-instance v0, Ltmsdkobf/ac;

    const/4 v1, 0x7

    const/4 v2, 0x7

    const-string v3, "E_TRAFFIC_TEMPLATE_TYPE_MAX"

    invoke-direct {v0, v1, v2, v3}, Ltmsdkobf/ac;-><init>(IILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/ac;->db:Ltmsdkobf/ac;

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
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Ltmsdkobf/ac;->aX:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Ltmsdkobf/ac;->aX:Ljava/lang/String;

    .line 71
    iput p2, p0, Ltmsdkobf/ac;->aW:I

    .line 72
    sget-object v0, Ltmsdkobf/ac;->cT:[Ltmsdkobf/ac;

    aput-object p0, v0, p1

    .line 73
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Ltmsdkobf/ac;->aX:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Ltmsdkobf/ac;->aW:I

    return v0
.end method
