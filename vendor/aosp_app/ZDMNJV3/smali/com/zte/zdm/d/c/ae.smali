.class public final Lcom/zte/zdm/d/c/ae;
.super Lcom/zte/zdm/d/c/aq;


# static fields
.field public static e:Ljava/lang/String;


# instance fields
.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Exec"

    sput-object v0, Lcom/zte/zdm/d/c/ae;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/d/c/aq;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/m;ZLcom/zte/zdm/d/c/s;Ljava/lang/String;Lcom/zte/zdm/d/c/ai;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/zte/zdm/d/c/ai;

    const/4 v1, 0x0

    aput-object p5, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/zte/zdm/d/c/aq;-><init>(Lcom/zte/zdm/d/c/m;[Lcom/zte/zdm/d/c/ai;)V

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/zte/zdm/d/c/ae;->b:Ljava/lang/Boolean;

    invoke-virtual {p0, p3}, Lcom/zte/zdm/d/c/ae;->a(Lcom/zte/zdm/d/c/s;)V

    iput-object p4, p0, Lcom/zte/zdm/d/c/ae;->g:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/ae;->g:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zte/zdm/d/c/ae;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/ae;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/zte/zdm/d/c/ai;
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/d/c/ae;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/d/c/ai;

    return-object v0
.end method
