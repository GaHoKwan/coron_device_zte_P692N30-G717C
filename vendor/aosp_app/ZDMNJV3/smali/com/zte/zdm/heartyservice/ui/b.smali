.class Lcom/zte/zdm/heartyservice/ui/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/heartyservice/ui/a;


# direct methods
.method constructor <init>(Lcom/zte/zdm/heartyservice/ui/a;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/heartyservice/ui/b;->a:Lcom/zte/zdm/heartyservice/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/b;->a:Lcom/zte/zdm/heartyservice/ui/a;

    invoke-virtual {v0}, Lcom/zte/zdm/heartyservice/ui/a;->dismiss()V

    return-void
.end method
