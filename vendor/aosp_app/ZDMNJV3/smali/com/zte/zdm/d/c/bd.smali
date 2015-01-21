.class public final Lcom/zte/zdm/d/c/bd;
.super Lcom/zte/zdm/d/c/av;


# static fields
.field public static j:Ljava/lang/String;


# instance fields
.field private k:Lcom/zte/zdm/d/c/l;

.field private l:Lcom/zte/zdm/d/c/u;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Status"

    sput-object v0, Lcom/zte/zdm/d/c/bd;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/d/c/av;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zte/zdm/d/c/bn;Lcom/zte/zdm/d/c/bc;Lcom/zte/zdm/d/c/s;Lcom/zte/zdm/d/c/l;Lcom/zte/zdm/d/c/u;[Lcom/zte/zdm/d/c/ai;)V
    .locals 11

    if-nez p5, :cond_0

    const/4 v5, 0x0

    :goto_0
    if-nez p6, :cond_1

    const/4 v6, 0x0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/zte/zdm/d/c/bd;-><init>(Lcom/zte/zdm/d/c/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/zte/zdm/d/c/bn;[Lcom/zte/zdm/d/c/bc;Lcom/zte/zdm/d/c/s;Lcom/zte/zdm/d/c/l;Lcom/zte/zdm/d/c/u;[Lcom/zte/zdm/d/c/ai;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v5, v0, [Lcom/zte/zdm/d/c/bn;

    const/4 v0, 0x0

    aput-object p5, v5, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    new-array v6, v0, [Lcom/zte/zdm/d/c/bc;

    const/4 v0, 0x0

    aput-object p6, v6, v0

    goto :goto_1
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/m;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/zte/zdm/d/c/bn;[Lcom/zte/zdm/d/c/bc;Lcom/zte/zdm/d/c/s;Lcom/zte/zdm/d/c/l;Lcom/zte/zdm/d/c/u;[Lcom/zte/zdm/d/c/ai;)V
    .locals 8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p10

    invoke-direct/range {v1 .. v7}, Lcom/zte/zdm/d/c/av;-><init>(Lcom/zte/zdm/d/c/m;Ljava/lang/String;Ljava/lang/String;[Lcom/zte/zdm/d/c/bn;[Lcom/zte/zdm/d/c/bc;[Lcom/zte/zdm/d/c/ai;)V

    invoke-virtual {p0, p7}, Lcom/zte/zdm/d/c/bd;->a(Lcom/zte/zdm/d/c/s;)V

    move-object/from16 v0, p9

    invoke-virtual {p0, v0}, Lcom/zte/zdm/d/c/bd;->a(Lcom/zte/zdm/d/c/u;)V

    invoke-virtual {p0, p4}, Lcom/zte/zdm/d/c/bd;->c(Ljava/lang/String;)V

    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/zte/zdm/d/c/bd;->k:Lcom/zte/zdm/d/c/l;

    return-void
.end method


# virtual methods
.method public a(Lcom/zte/zdm/d/c/l;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/bd;->k:Lcom/zte/zdm/d/c/l;

    return-void
.end method

.method public a(Lcom/zte/zdm/d/c/u;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/bd;->l:Lcom/zte/zdm/d/c/u;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cmd cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/zte/zdm/d/c/bd;->m:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zte/zdm/d/c/bd;->j:Ljava/lang/String;

    return-object v0
.end method

.method public l()Lcom/zte/zdm/d/c/l;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bd;->k:Lcom/zte/zdm/d/c/l;

    return-object v0
.end method

.method public m()Lcom/zte/zdm/d/c/u;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bd;->l:Lcom/zte/zdm/d/c/u;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bd;->m:Ljava/lang/String;

    return-object v0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/bd;->l:Lcom/zte/zdm/d/c/u;

    invoke-virtual {v0}, Lcom/zte/zdm/d/c/u;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
