.class Lcom/autonavi/xmgd/navigator/ka;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Version;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Version;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ka;->a:Lcom/autonavi/xmgd/navigator/Version;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/autonavi/xmgd/application/FactoryMode;->getInstance()Lcom/autonavi/xmgd/application/FactoryMode;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/ka;->a:Lcom/autonavi/xmgd/navigator/Version;

    iget-object v1, v1, Lcom/autonavi/xmgd/navigator/Version;->a:[Z

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/application/FactoryMode;->doSelected([Z)V

    return-void
.end method
