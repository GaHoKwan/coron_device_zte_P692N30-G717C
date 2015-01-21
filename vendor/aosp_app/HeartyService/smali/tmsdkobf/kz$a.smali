.class public final enum Ltmsdkobf/kz$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdkobf/kz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ltmsdkobf/kz$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Bw:Ltmsdkobf/kz$a;

.field public static final enum Bx:Ltmsdkobf/kz$a;

.field private static final synthetic Bz:[Ltmsdkobf/kz$a;


# instance fields
.field By:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Ltmsdkobf/kz$a;

    const-string v1, "WIFI_APPROVE"

    const-string v2, "WifiApprove"

    invoke-direct {v0, v1, v3, v2}, Ltmsdkobf/kz$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/kz$a;->Bw:Ltmsdkobf/kz$a;

    .line 46
    new-instance v0, Ltmsdkobf/kz$a;

    const-string v1, "USERLOG"

    const-string v2, "UserLog"

    invoke-direct {v0, v1, v4, v2}, Ltmsdkobf/kz$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ltmsdkobf/kz$a;->Bx:Ltmsdkobf/kz$a;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Ltmsdkobf/kz$a;

    sget-object v1, Ltmsdkobf/kz$a;->Bw:Ltmsdkobf/kz$a;

    aput-object v1, v0, v3

    sget-object v1, Ltmsdkobf/kz$a;->Bx:Ltmsdkobf/kz$a;

    aput-object v1, v0, v4

    sput-object v0, Ltmsdkobf/kz$a;->Bz:[Ltmsdkobf/kz$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Ltmsdkobf/kz$a;->By:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Ltmsdkobf/kz$a;->By:Ljava/lang/String;

    return-object v0
.end method
