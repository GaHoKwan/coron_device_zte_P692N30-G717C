.class public final Lcom/zte/zdm/d/c/as;
.super Lcom/zte/zdm/d/c/aj;


# static fields
.field public static e:Ljava/lang/String;


# instance fields
.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Put"

    sput-object v0, Lcom/zte/zdm/d/c/as;->e:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/d/c/aj;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/m;ZLjava/lang/String;Lcom/zte/zdm/d/c/s;Lcom/zte/zdm/d/c/ap;[Lcom/zte/zdm/d/c/ai;)V
    .locals 1

    invoke-direct {p0, p1, p5, p6}, Lcom/zte/zdm/d/c/aj;-><init>(Lcom/zte/zdm/d/c/m;Lcom/zte/zdm/d/c/ap;[Lcom/zte/zdm/d/c/ai;)V

    invoke-virtual {p0, p4}, Lcom/zte/zdm/d/c/as;->a(Lcom/zte/zdm/d/c/s;)V

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/zte/zdm/d/c/as;->b:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/zte/zdm/d/c/as;->g:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/as;->g:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zte/zdm/d/c/as;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/as;->g:Ljava/lang/String;

    return-object v0
.end method
