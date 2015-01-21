.class Ltmsdkobf/lq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static CN:Landroid/content/Context;


# instance fields
.field protected CM:Ltmsdkobf/lr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 761
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Ltmsdkobf/lq;->CN:Landroid/content/Context;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    new-instance v0, Ltmsdkobf/lr;

    invoke-direct {v0}, Ltmsdkobf/lr;-><init>()V

    iput-object v0, p0, Ltmsdkobf/lq;->CM:Ltmsdkobf/lr;

    return-void
.end method


# virtual methods
.method public varargs a(I[Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"
    .parameter "datas"

    .prologue
    .line 772
    return-void
.end method

.method public cf(I)Z
    .locals 1
    .parameter "tag"

    .prologue
    .line 789
    const/4 v0, 0x0

    return v0
.end method
