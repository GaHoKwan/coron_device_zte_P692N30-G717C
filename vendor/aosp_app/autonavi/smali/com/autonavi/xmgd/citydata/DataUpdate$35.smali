.class Lcom/autonavi/xmgd/citydata/DataUpdate$35;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field final synthetic this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/citydata/DataUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$35;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$35;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    const/4 v1, 0x1

    #setter for: Lcom/autonavi/xmgd/citydata/DataUpdate;->mIsEnterDeleteMode:Z
    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/DataUpdate;->access$3602(Lcom/autonavi/xmgd/citydata/DataUpdate;Z)Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$35;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    const-class v2, Lcom/autonavi/xmgd/citydata/DataUpdateDeleteMode;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$35;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$35;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->finish()V

    return-void
.end method

.method public onSureClicked(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$35;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/xmgd/citydata/DataUpdate;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onTitleRightBtnClicked()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/citydata/DataUpdate$35;->this$0:Lcom/autonavi/xmgd/citydata/DataUpdate;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/citydata/DataUpdate;->finish()V

    return-void
.end method
