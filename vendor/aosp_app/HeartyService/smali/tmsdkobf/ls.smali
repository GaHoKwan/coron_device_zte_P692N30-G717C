.class final enum Ltmsdkobf/ls;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ltmsdkobf/ls;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CO:Ltmsdkobf/ls;

.field public static final enum CP:Ltmsdkobf/ls;

.field public static final enum CQ:Ltmsdkobf/ls;

.field public static final enum CR:Ltmsdkobf/ls;

.field public static final enum CS:Ltmsdkobf/ls;

.field private static final synthetic CT:[Ltmsdkobf/ls;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 471
    new-instance v0, Ltmsdkobf/ls;

    const-string v1, "LEVEL_VERBOSE"

    invoke-direct {v0, v1, v2}, Ltmsdkobf/ls;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltmsdkobf/ls;->CO:Ltmsdkobf/ls;

    .line 472
    new-instance v0, Ltmsdkobf/ls;

    const-string v1, "LEVEL_DEBUG"

    invoke-direct {v0, v1, v3}, Ltmsdkobf/ls;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltmsdkobf/ls;->CP:Ltmsdkobf/ls;

    .line 473
    new-instance v0, Ltmsdkobf/ls;

    const-string v1, "LEVEL_INFO"

    invoke-direct {v0, v1, v4}, Ltmsdkobf/ls;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltmsdkobf/ls;->CQ:Ltmsdkobf/ls;

    .line 474
    new-instance v0, Ltmsdkobf/ls;

    const-string v1, "LEVEL_WARN"

    invoke-direct {v0, v1, v5}, Ltmsdkobf/ls;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltmsdkobf/ls;->CR:Ltmsdkobf/ls;

    .line 475
    new-instance v0, Ltmsdkobf/ls;

    const-string v1, "LEVEL_ERROR"

    invoke-direct {v0, v1, v6}, Ltmsdkobf/ls;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltmsdkobf/ls;->CS:Ltmsdkobf/ls;

    .line 470
    const/4 v0, 0x5

    new-array v0, v0, [Ltmsdkobf/ls;

    sget-object v1, Ltmsdkobf/ls;->CO:Ltmsdkobf/ls;

    aput-object v1, v0, v2

    sget-object v1, Ltmsdkobf/ls;->CP:Ltmsdkobf/ls;

    aput-object v1, v0, v3

    sget-object v1, Ltmsdkobf/ls;->CQ:Ltmsdkobf/ls;

    aput-object v1, v0, v4

    sget-object v1, Ltmsdkobf/ls;->CR:Ltmsdkobf/ls;

    aput-object v1, v0, v5

    sget-object v1, Ltmsdkobf/ls;->CS:Ltmsdkobf/ls;

    aput-object v1, v0, v6

    sput-object v0, Ltmsdkobf/ls;->CT:[Ltmsdkobf/ls;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 470
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
