.class Lcom/powermo/SmartBar/bs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/bo;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/bs;->a:Lcom/powermo/SmartBar/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/bs;->a:Lcom/powermo/SmartBar/bo;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/bo;->b()V

    return-void
.end method
