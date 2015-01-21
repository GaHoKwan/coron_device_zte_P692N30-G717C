.class Lcom/autonavi/xmgd/navigator/dt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/MyNavigate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/MyNavigate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/dt;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/dt;->a:Lcom/autonavi/xmgd/navigator/MyNavigate;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/MyNavigate;->removeDialog(I)V

    return-void
.end method
