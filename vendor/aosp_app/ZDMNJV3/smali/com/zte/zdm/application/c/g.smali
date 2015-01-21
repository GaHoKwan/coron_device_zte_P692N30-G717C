.class Lcom/zte/zdm/application/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/c/e;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/c/g;->a:Lcom/zte/zdm/application/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/zdm/application/c/e;->g:Z

    iget-object v0, p0, Lcom/zte/zdm/application/c/g;->a:Lcom/zte/zdm/application/c/e;

    invoke-virtual {v0}, Lcom/zte/zdm/application/c/e;->b()V

    return-void
.end method
