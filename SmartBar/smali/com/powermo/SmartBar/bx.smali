.class Lcom/powermo/SmartBar/bx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/bw;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/bw;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/bx;->a:Lcom/powermo/SmartBar/bw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/bx;->a:Lcom/powermo/SmartBar/bw;

    invoke-static {v0}, Lcom/powermo/SmartBar/bw;->a(Lcom/powermo/SmartBar/bw;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/powermo/SmartBar/bx;->a:Lcom/powermo/SmartBar/bw;

    invoke-static {v1}, Lcom/powermo/SmartBar/bw;->b(Lcom/powermo/SmartBar/bw;)Lcom/powermo/SmartBar/bv;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/powermo/SmartBar/bv;->c(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
