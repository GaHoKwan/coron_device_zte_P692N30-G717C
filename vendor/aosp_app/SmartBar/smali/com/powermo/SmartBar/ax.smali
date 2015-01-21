.class Lcom/powermo/SmartBar/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/aw;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/aw;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/ax;->a:Lcom/powermo/SmartBar/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/ax;->a:Lcom/powermo/SmartBar/aw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powermo/SmartBar/aw;->a(Lcom/powermo/SmartBar/aw;Landroid/app/Dialog;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ax;->a:Lcom/powermo/SmartBar/aw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powermo/SmartBar/aw;->a(Lcom/powermo/SmartBar/aw;Z)V

    return-void
.end method
