.class Lcom/autonavi/xmgd/navigator/jh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/SetDataPath;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SetDataPath;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/jh;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/jh;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->f(Lcom/autonavi/xmgd/navigator/SetDataPath;)Lcom/autonavi/xmgd/navigator/jl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/jl;->cancel(Z)Z

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->cancelScanFiles()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
