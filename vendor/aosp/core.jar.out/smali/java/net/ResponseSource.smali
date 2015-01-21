.class public final enum Ljava/net/ResponseSource;
.super Ljava/lang/Enum;
.source "ResponseSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljava/net/ResponseSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljava/net/ResponseSource;

.field public static final enum CACHE:Ljava/net/ResponseSource;

.field public static final enum CONDITIONAL_CACHE:Ljava/net/ResponseSource;

.field public static final enum NETWORK:Ljava/net/ResponseSource;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Ljava/net/ResponseSource;

    const-string v1, "CACHE"

    invoke-direct {v0, v1, v2}, Ljava/net/ResponseSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/net/ResponseSource;->CACHE:Ljava/net/ResponseSource;

    .line 35
    new-instance v0, Ljava/net/ResponseSource;

    const-string v1, "CONDITIONAL_CACHE"

    invoke-direct {v0, v1, v3}, Ljava/net/ResponseSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/net/ResponseSource;->CONDITIONAL_CACHE:Ljava/net/ResponseSource;

    .line 40
    new-instance v0, Ljava/net/ResponseSource;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v4}, Ljava/net/ResponseSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/net/ResponseSource;->NETWORK:Ljava/net/ResponseSource;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/net/ResponseSource;

    sget-object v1, Ljava/net/ResponseSource;->CACHE:Ljava/net/ResponseSource;

    aput-object v1, v0, v2

    sget-object v1, Ljava/net/ResponseSource;->CONDITIONAL_CACHE:Ljava/net/ResponseSource;

    aput-object v1, v0, v3

    sget-object v1, Ljava/net/ResponseSource;->NETWORK:Ljava/net/ResponseSource;

    aput-object v1, v0, v4

    sput-object v0, Ljava/net/ResponseSource;->$VALUES:[Ljava/net/ResponseSource;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/net/ResponseSource;
    .locals 1
    .parameter "name"

    .prologue
    .line 24
    const-class v0, Ljava/net/ResponseSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/net/ResponseSource;

    return-object v0
.end method

.method public static values()[Ljava/net/ResponseSource;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Ljava/net/ResponseSource;->$VALUES:[Ljava/net/ResponseSource;

    invoke-virtual {v0}, [Ljava/net/ResponseSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/ResponseSource;

    return-object v0
.end method


# virtual methods
.method public requiresConnection()Z
    .locals 1

    .prologue
    .line 43
    sget-object v0, Ljava/net/ResponseSource;->CONDITIONAL_CACHE:Ljava/net/ResponseSource;

    if-eq p0, v0, :cond_0

    sget-object v0, Ljava/net/ResponseSource;->NETWORK:Ljava/net/ResponseSource;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
