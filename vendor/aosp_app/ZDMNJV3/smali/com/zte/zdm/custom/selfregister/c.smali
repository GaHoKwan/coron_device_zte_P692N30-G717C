.class Lcom/zte/zdm/custom/selfregister/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/custom/selfregister/b;


# direct methods
.method constructor <init>(Lcom/zte/zdm/custom/selfregister/b;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/custom/selfregister/c;->a:Lcom/zte/zdm/custom/selfregister/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "vdmc"

    const-string v1, "vdmc resend self register."

    invoke-static {v0, v1}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/custom/selfregister/b;->n()Lcom/zte/zdm/f/a/e;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/f/a/f;->a(Lcom/zte/zdm/f/a/e;)Lcom/zte/zdm/f/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/f/a/f;->e()V

    return-void
.end method
