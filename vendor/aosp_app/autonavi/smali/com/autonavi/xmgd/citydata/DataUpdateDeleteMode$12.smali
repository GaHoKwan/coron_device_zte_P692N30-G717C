.class Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$12;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    if-ne v1, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p2, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    iget-object v2, v0, Lcom/autonavi/xmgd/citydata/DataItem;->children:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iget-boolean v0, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-eqz p2, :cond_3

    if-eqz v0, :cond_4

    :cond_3
    if-nez p2, :cond_5

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/citydata/DataItem;

    iput-boolean p2, v0, Lcom/autonavi/xmgd/citydata/DataItem;->isSelected:Z

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode$12;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->refreshDownloadSelectedInfo()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;->access$1200(Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method
