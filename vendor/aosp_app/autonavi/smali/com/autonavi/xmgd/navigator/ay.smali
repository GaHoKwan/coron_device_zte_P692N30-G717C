.class Lcom/autonavi/xmgd/navigator/ay;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/MainMenu;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/MainMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ay;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 0

    return-void
.end method

.method public onSureClicked(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ay;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/MainMenu;->c(Lcom/autonavi/xmgd/navigator/MainMenu;)V

    return-void
.end method
