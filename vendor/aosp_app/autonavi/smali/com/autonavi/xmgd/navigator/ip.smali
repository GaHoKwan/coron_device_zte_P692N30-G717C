.class Lcom/autonavi/xmgd/navigator/ip;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/SearchResultForRoute;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ip;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ip;->a:Lcom/autonavi/xmgd/navigator/SearchResultForRoute;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/SearchResultForRoute;->dismissDialog(I)V

    return-void
.end method