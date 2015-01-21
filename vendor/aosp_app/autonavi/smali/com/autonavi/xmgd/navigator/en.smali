.class Lcom/autonavi/xmgd/navigator/en;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/NaviSetting;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/NaviSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/en;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/en;->a:Lcom/autonavi/xmgd/navigator/NaviSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/navigator/NaviSetting;->showDialog(I)V

    return-void
.end method
