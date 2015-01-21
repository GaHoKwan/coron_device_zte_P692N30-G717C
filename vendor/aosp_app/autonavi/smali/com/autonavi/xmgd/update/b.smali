.class Lcom/autonavi/xmgd/update/b;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/update/MapdataUpdate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/update/MapdataUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/update/b;->a:Lcom/autonavi/xmgd/update/MapdataUpdate;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMidBtnClicked()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/update/b;->a:Lcom/autonavi/xmgd/update/MapdataUpdate;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/update/MapdataUpdate;->finish()V

    return-void
.end method
