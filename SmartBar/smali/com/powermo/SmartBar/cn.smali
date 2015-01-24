.class Lcom/powermo/SmartBar/cn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/cm;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/cm;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/cn;->a:Lcom/powermo/SmartBar/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/cn;->a:Lcom/powermo/SmartBar/cm;

    invoke-static {v0}, Lcom/powermo/SmartBar/cm;->i(Lcom/powermo/SmartBar/cm;)V

    return-void
.end method
