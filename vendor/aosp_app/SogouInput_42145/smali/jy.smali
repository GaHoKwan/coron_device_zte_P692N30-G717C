.class final enum Ljy;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Ljy;

.field private static final synthetic a:[Ljy;

.field public static final enum b:Ljy;

.field public static final enum c:Ljy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Ljy;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v2}, Ljy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljy;->a:Ljy;

    new-instance v0, Ljy;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Ljy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljy;->b:Ljy;

    new-instance v0, Ljy;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Ljy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljy;->c:Ljy;

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Ljy;

    sget-object v1, Ljy;->a:Ljy;

    aput-object v1, v0, v2

    sget-object v1, Ljy;->b:Ljy;

    aput-object v1, v0, v3

    sget-object v1, Ljy;->c:Ljy;

    aput-object v1, v0, v4

    sput-object v0, Ljy;->a:[Ljy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljy;
    .locals 1
    .parameter

    .prologue
    .line 56
    const-class v0, Ljy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljy;

    return-object v0
.end method

.method public static values()[Ljy;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Ljy;->a:[Ljy;

    invoke-virtual {v0}, [Ljy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljy;

    return-object v0
.end method
