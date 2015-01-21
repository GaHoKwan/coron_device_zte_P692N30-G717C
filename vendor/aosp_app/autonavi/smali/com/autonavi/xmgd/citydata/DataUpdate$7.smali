.class Lcom/autonavi/xmgd/citydata/DataUpdate$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$7;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$7;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v2}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v1, :cond_3

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$7;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mBinder:Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;
    invoke-static {v2}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/citydata/DataUpdateService$DataUpdateServiceBinder;->getDownloadTaskItemListSize()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$7;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->btnDeleAllDownloadTask:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$1000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :goto_1
    iget-object v4, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$7;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    if-nez p1, :cond_4

    move v3, v1

    :goto_2
    if-ne p1, v1, :cond_5

    move v2, v1

    :goto_3
    if-ne p1, v5, :cond_2

    move v0, v1

    :cond_2
    #calls: Lcom/autonavi/xmgd/citydata/DataUpdate;->updateButtonStatus(ZZZ)V
    invoke-static {v4, v3, v2, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$1100(Lcom/autonavi/xmgd/citydata/DataUpdate;ZZZ)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$7;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->isInitViews:Z
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$1200(Lcom/autonavi/xmgd/citydata/DataUpdate;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$7;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshNoDownloadScreen()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$1300(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$7;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #getter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->btnDeleAllDownloadTask:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$1000(Lcom/autonavi/xmgd/citydata/DataUpdate;)Landroid/widget/ImageButton;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    :cond_4
    move v3, v0

    goto :goto_2

    :cond_5
    move v2, v0

    goto :goto_3

    :cond_6
    if-ne p1, v1, :cond_7

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$7;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshDownloadingScreen()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$1400(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    goto :goto_0

    :cond_7
    if-ne p1, v5, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$7;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    #calls: Lcom/autonavi/xmgd/citydata/DataUpdate;->refreshDownloadScreen()V
    invoke-static {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$1500(Lcom/autonavi/xmgd/citydata/DataUpdate;)V

    goto :goto_0
.end method
