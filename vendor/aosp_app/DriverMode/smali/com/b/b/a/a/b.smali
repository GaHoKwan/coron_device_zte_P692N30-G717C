.class public final enum Lcom/b/b/a/a/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/b/b/a/a/b;

.field public static final enum b:Lcom/b/b/a/a/b;

.field public static final enum c:Lcom/b/b/a/a/b;

.field private static final synthetic e:[Lcom/b/b/a/a/b;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/b/b/a/a/b;

    const-string v1, "LAUNCH"

    const-string v2, "launch"

    invoke-direct {v0, v1, v3, v2}, Lcom/b/b/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/b/b/a/a/b;->a:Lcom/b/b/a/a/b;

    new-instance v0, Lcom/b/b/a/a/b;

    const-string v1, "EVENT"

    const-string v2, "event"

    invoke-direct {v0, v1, v4, v2}, Lcom/b/b/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/b/b/a/a/b;->b:Lcom/b/b/a/a/b;

    new-instance v0, Lcom/b/b/a/a/b;

    const-string v1, "EXCEPTION"

    const-string v2, "exception"

    invoke-direct {v0, v1, v5, v2}, Lcom/b/b/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/b/b/a/a/b;->c:Lcom/b/b/a/a/b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/b/b/a/a/b;

    sget-object v1, Lcom/b/b/a/a/b;->a:Lcom/b/b/a/a/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/b/b/a/a/b;->b:Lcom/b/b/a/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/b/b/a/a/b;->c:Lcom/b/b/a/a/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/b/b/a/a/b;->e:[Lcom/b/b/a/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/b/b/a/a/b;->d:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/b/a/a/b;
    .locals 1

    const-class v0, Lcom/b/b/a/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/b/b/a/a/b;

    return-object v0
.end method

.method public static values()[Lcom/b/b/a/a/b;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/b/b/a/a/b;->e:[Lcom/b/b/a/a/b;

    array-length v1, v0

    new-array v2, v1, [Lcom/b/b/a/a/b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/b/b/a/a/b;->d:Ljava/lang/String;

    return-object v0
.end method
