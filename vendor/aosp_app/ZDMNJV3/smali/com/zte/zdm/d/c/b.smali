.class public final Lcom/zte/zdm/d/c/b;
.super Lcom/zte/zdm/d/c/aq;


# static fields
.field public static final e:Ljava/lang/String; = "Add"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/d/c/aq;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/m;ZLcom/zte/zdm/d/c/s;Lcom/zte/zdm/d/c/ap;[Lcom/zte/zdm/d/c/ai;)V
    .locals 1

    invoke-direct {p0, p1, p4, p5}, Lcom/zte/zdm/d/c/aq;-><init>(Lcom/zte/zdm/d/c/m;Lcom/zte/zdm/d/c/ap;[Lcom/zte/zdm/d/c/ai;)V

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/zte/zdm/d/c/b;->b:Ljava/lang/Boolean;

    invoke-virtual {p0, p3}, Lcom/zte/zdm/d/c/b;->a(Lcom/zte/zdm/d/c/s;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "Add"

    return-object v0
.end method