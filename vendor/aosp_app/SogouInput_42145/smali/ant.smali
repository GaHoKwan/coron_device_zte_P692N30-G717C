.class public final enum Lant;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lant;

.field private static final synthetic a:[Lant;

.field public static final enum b:Lant;

.field public static final enum c:Lant;

.field public static final enum d:Lant;

.field public static final enum e:Lant;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lant;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lant;->a:Lant;

    new-instance v0, Lant;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v3}, Lant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lant;->b:Lant;

    new-instance v0, Lant;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lant;->c:Lant;

    new-instance v0, Lant;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v5}, Lant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lant;->d:Lant;

    new-instance v0, Lant;

    const-string v1, "RECEIVED"

    invoke-direct {v0, v1, v6}, Lant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lant;->e:Lant;

    const/4 v0, 0x5

    new-array v0, v0, [Lant;

    sget-object v1, Lant;->a:Lant;

    aput-object v1, v0, v2

    sget-object v1, Lant;->b:Lant;

    aput-object v1, v0, v3

    sget-object v1, Lant;->c:Lant;

    aput-object v1, v0, v4

    sget-object v1, Lant;->d:Lant;

    aput-object v1, v0, v5

    sget-object v1, Lant;->e:Lant;

    aput-object v1, v0, v6

    sput-object v0, Lant;->a:[Lant;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lant;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Lant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lant;

    return-object v0
.end method

.method public static values()[Lant;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lant;->a:[Lant;

    invoke-virtual {v0}, [Lant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lant;

    return-object v0
.end method
