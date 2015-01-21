.class public final enum Lcom/b/a/a/a/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/b/a/a/a/b;

.field private static final synthetic c:[Lcom/b/a/a/a/b;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/b/a/a/a/b;

    const-string v1, "FEEDBACK"

    const-string v2, "feedback"

    invoke-direct {v0, v1, v2}, Lcom/b/a/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/b/a/a/a/b;->a:Lcom/b/a/a/a/b;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/b/a/a/a/b;

    const/4 v1, 0x0

    sget-object v2, Lcom/b/a/a/a/b;->a:Lcom/b/a/a/a/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/b/a/a/a/b;->c:[Lcom/b/a/a/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/b/a/a/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/a/a/a/b;
    .locals 1

    const-class v0, Lcom/b/a/a/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/a/b;

    return-object v0
.end method

.method public static values()[Lcom/b/a/a/a/b;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/b/a/a/a/b;->c:[Lcom/b/a/a/a/b;

    array-length v1, v0

    new-array v2, v1, [Lcom/b/a/a/a/b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/b/a/a/a/b;->b:Ljava/lang/String;

    return-object v0
.end method
