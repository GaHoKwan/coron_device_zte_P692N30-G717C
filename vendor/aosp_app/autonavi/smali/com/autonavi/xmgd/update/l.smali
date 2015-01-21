.class Lcom/autonavi/xmgd/update/l;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/update/SoftUpdate;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/update/SoftUpdate;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/update/l;->a:Lcom/autonavi/xmgd/update/SoftUpdate;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClicked()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/update/l;->a:Lcom/autonavi/xmgd/update/SoftUpdate;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/update/SoftUpdate;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onSureClicked(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
