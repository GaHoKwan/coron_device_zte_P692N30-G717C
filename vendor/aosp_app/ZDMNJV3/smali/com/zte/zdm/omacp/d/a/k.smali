.class final enum Lcom/zte/zdm/omacp/d/a/k;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/zte/zdm/omacp/d/a/k;

.field public static final enum b:Lcom/zte/zdm/omacp/d/a/k;

.field public static final enum c:Lcom/zte/zdm/omacp/d/a/k;

.field public static final enum d:Lcom/zte/zdm/omacp/d/a/k;

.field private static final synthetic f:[Lcom/zte/zdm/omacp/d/a/k;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/zte/zdm/omacp/d/a/k;

    const-string v1, "APPLICATION"

    const-string v2, "APPID"

    invoke-direct {v0, v1, v3, v2}, Lcom/zte/zdm/omacp/d/a/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/omacp/d/a/k;->a:Lcom/zte/zdm/omacp/d/a/k;

    new-instance v0, Lcom/zte/zdm/omacp/d/a/k;

    const-string v1, "PXLOGICAL"

    const-string v2, "PROXY-ID"

    invoke-direct {v0, v1, v4, v2}, Lcom/zte/zdm/omacp/d/a/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/omacp/d/a/k;->b:Lcom/zte/zdm/omacp/d/a/k;

    new-instance v0, Lcom/zte/zdm/omacp/d/a/k;

    const-string v1, "NAPDEF"

    const-string v2, "NAPID"

    invoke-direct {v0, v1, v5, v2}, Lcom/zte/zdm/omacp/d/a/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/omacp/d/a/k;->c:Lcom/zte/zdm/omacp/d/a/k;

    new-instance v0, Lcom/zte/zdm/omacp/d/a/k;

    const-string v1, "ACCESS"

    const-string v2, "RULE"

    invoke-direct {v0, v1, v6, v2}, Lcom/zte/zdm/omacp/d/a/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zte/zdm/omacp/d/a/k;->d:Lcom/zte/zdm/omacp/d/a/k;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/zte/zdm/omacp/d/a/k;

    sget-object v1, Lcom/zte/zdm/omacp/d/a/k;->a:Lcom/zte/zdm/omacp/d/a/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zte/zdm/omacp/d/a/k;->b:Lcom/zte/zdm/omacp/d/a/k;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zte/zdm/omacp/d/a/k;->c:Lcom/zte/zdm/omacp/d/a/k;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zte/zdm/omacp/d/a/k;->d:Lcom/zte/zdm/omacp/d/a/k;

    aput-object v1, v0, v6

    sput-object v0, Lcom/zte/zdm/omacp/d/a/k;->f:[Lcom/zte/zdm/omacp/d/a/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/zte/zdm/omacp/d/a/k;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/zte/zdm/omacp/d/a/k;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/zte/zdm/omacp/d/a/k;->valueOf(Ljava/lang/String;)Lcom/zte/zdm/omacp/d/a/k;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/zdm/omacp/d/a/k;
    .locals 1

    const-class v0, Lcom/zte/zdm/omacp/d/a/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/omacp/d/a/k;

    return-object v0
.end method

.method public static values()[Lcom/zte/zdm/omacp/d/a/k;
    .locals 1

    sget-object v0, Lcom/zte/zdm/omacp/d/a/k;->f:[Lcom/zte/zdm/omacp/d/a/k;

    invoke-virtual {v0}, [Lcom/zte/zdm/omacp/d/a/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/zdm/omacp/d/a/k;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/omacp/d/a/k;->e:Ljava/lang/String;

    return-object v0
.end method
