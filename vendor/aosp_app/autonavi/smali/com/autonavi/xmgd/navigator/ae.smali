.class Lcom/autonavi/xmgd/navigator/ae;
.super Lcom/autonavi/xmgd/view/GDMenuItem;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/Feedback;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/Feedback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/ae;->a:Lcom/autonavi/xmgd/navigator/Feedback;

    invoke-direct {p0, p2}, Lcom/autonavi/xmgd/view/GDMenuItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onItemClick()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/ae;->a:Lcom/autonavi/xmgd/navigator/Feedback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/Feedback;->showDialog(I)V

    return-void
.end method
