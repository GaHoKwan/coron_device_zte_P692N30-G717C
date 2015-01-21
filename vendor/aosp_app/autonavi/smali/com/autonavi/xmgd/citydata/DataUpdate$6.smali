.class Lcom/autonavi/xmgd/citydata/DataUpdate$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$6;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$6;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->showDialog(I)V

    return-void
.end method
