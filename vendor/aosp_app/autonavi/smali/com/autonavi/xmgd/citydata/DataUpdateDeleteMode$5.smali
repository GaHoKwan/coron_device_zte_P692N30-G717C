.class Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$5;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$5;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->showDialog(I)V

    return-void
.end method
