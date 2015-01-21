.class public final Lcom/zte/zdm/d/c/c;
.super Lcom/zte/zdm/d/c/aj;


# static fields
.field public static e:Ljava/lang/String;


# instance fields
.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Alert"

    sput-object v0, Lcom/zte/zdm/d/c/c;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/d/c/aj;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/m;ZLcom/zte/zdm/d/c/s;ILjava/lang/String;[Lcom/zte/zdm/d/c/ai;)V
    .locals 1

    invoke-direct {p0, p1, p6}, Lcom/zte/zdm/d/c/aj;-><init>(Lcom/zte/zdm/d/c/m;[Lcom/zte/zdm/d/c/ai;)V

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/zte/zdm/d/c/c;->b:Ljava/lang/Boolean;

    invoke-virtual {p0, p3}, Lcom/zte/zdm/d/c/c;->a(Lcom/zte/zdm/d/c/s;)V

    iput p4, p0, Lcom/zte/zdm/d/c/c;->g:I

    iput-object p5, p0, Lcom/zte/zdm/d/c/c;->h:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/zte/zdm/d/c/m;ZLcom/zte/zdm/d/c/s;I[Lcom/zte/zdm/d/c/ai;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/zte/zdm/d/c/c;-><init>(Lcom/zte/zdm/d/c/m;ZLcom/zte/zdm/d/c/s;ILjava/lang/String;[Lcom/zte/zdm/d/c/ai;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/d/c/c;->g:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/d/c/c;->h:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zte/zdm/d/c/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/d/c/c;->g:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/c/c;->h:Ljava/lang/String;

    return-object v0
.end method
