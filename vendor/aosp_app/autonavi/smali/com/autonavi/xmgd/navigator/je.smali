.class Lcom/autonavi/xmgd/navigator/je;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/SetDataPath;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SetDataPath;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/je;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/je;->a:Lcom/autonavi/xmgd/navigator/SetDataPath;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/SetDataPath;->c(Lcom/autonavi/xmgd/navigator/SetDataPath;)V

    return-void
.end method
