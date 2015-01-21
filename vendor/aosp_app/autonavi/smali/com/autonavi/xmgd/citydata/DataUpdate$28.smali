.class Lcom/autonavi/xmgd/citydata/DataUpdate$28;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$28;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMidBtnClicked()V
    .locals 1

    invoke-super {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;->onMidBtnClicked()V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$28;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->finish()V

    return-void
.end method
