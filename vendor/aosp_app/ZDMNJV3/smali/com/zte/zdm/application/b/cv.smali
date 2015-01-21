.class Lcom/zte/zdm/application/b/cv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/ct;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/ct;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/cv;->a:Lcom/zte/zdm/application/b/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/b/cv;->a:Lcom/zte/zdm/application/b/ct;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/application/b/ct;->a(Lcom/zte/zdm/application/b/ct;Ljava/lang/Integer;)Ljava/lang/Integer;

    return-void
.end method
