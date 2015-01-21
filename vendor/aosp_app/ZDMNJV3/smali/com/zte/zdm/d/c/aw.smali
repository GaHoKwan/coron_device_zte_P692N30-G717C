.class public final Lcom/zte/zdm/d/c/aw;
.super Lcom/zte/zdm/d/c/av;


# static fields
.field public static j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Results"

    sput-object v0, Lcom/zte/zdm/d/c/aw;->j:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/d/c/av;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/m;Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/ap;Lcom/zte/zdm/d/c/bn;Lcom/zte/zdm/d/c/bc;[Lcom/zte/zdm/d/c/ai;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p5, :cond_0

    move-object v4, v5

    :goto_0
    if-nez p6, :cond_1

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/zte/zdm/d/c/av;-><init>(Lcom/zte/zdm/d/c/m;Ljava/lang/String;Ljava/lang/String;[Lcom/zte/zdm/d/c/bn;[Lcom/zte/zdm/d/c/bc;[Lcom/zte/zdm/d/c/ai;)V

    iput-object p4, p0, Lcom/zte/zdm/d/c/aw;->c:Lcom/zte/zdm/d/c/ap;

    return-void

    :cond_0
    new-array v4, v1, [Lcom/zte/zdm/d/c/bn;

    aput-object p5, v4, v0

    goto :goto_0

    :cond_1
    new-array v5, v1, [Lcom/zte/zdm/d/c/bc;

    aput-object p6, v5, v0

    goto :goto_1
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zte/zdm/d/c/aw;->j:Ljava/lang/String;

    return-object v0
.end method
