.class Lcom/zte/zdm/application/b/ck;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/ci;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/ci;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/ck;->a:Lcom/zte/zdm/application/b/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/ck;->a:Lcom/zte/zdm/application/b/ci;

    invoke-static {v0}, Lcom/zte/zdm/application/b/ci;->e(Lcom/zte/zdm/application/b/ci;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/ck;->a:Lcom/zte/zdm/application/b/ci;

    invoke-static {v0}, Lcom/zte/zdm/application/b/ci;->e(Lcom/zte/zdm/application/b/ci;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/ck;->a:Lcom/zte/zdm/application/b/ci;

    invoke-static {v1}, Lcom/zte/zdm/application/b/ci;->e(Lcom/zte/zdm/application/b/ci;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method
