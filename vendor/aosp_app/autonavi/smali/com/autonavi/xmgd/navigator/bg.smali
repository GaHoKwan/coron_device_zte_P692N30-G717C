.class Lcom/autonavi/xmgd/navigator/bg;
.super Lcom/autonavi/xmgd/view/GDMenuItem;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/MainMenu;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/MainMenu;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/bg;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    invoke-direct {p0, p2}, Lcom/autonavi/xmgd/view/GDMenuItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onItemClick()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/bg;->a:Lcom/autonavi/xmgd/navigator/MainMenu;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/MainMenu;->showDialog(I)V

    return-void
.end method
