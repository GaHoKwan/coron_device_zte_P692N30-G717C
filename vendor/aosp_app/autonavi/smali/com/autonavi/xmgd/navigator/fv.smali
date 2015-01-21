.class Lcom/autonavi/xmgd/navigator/fv;
.super Lcom/autonavi/xmgd/utility/ADialogListener;


# instance fields
.field private synthetic a:Lcom/autonavi/xmgd/navigator/PoiDetail;


# direct methods
.method constructor <init>(Lcom/autonavi/xmgd/navigator/PoiDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/fv;->a:Lcom/autonavi/xmgd/navigator/PoiDetail;

    invoke-direct {p0}, Lcom/autonavi/xmgd/utility/ADialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onListViewItemSelected(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/autonavi/xmgd/utility/ADialogListener;->onListViewItemSelected(ILjava/util/List;)V

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/fv;->a:Lcom/autonavi/xmgd/navigator/PoiDetail;

    invoke-static {v0}, Lcom/autonavi/xmgd/navigator/PoiDetail;->b(Lcom/autonavi/xmgd/navigator/PoiDetail;)Lcom/autonavi/xmgd/utility/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/CustomDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/fv;->a:Lcom/autonavi/xmgd/navigator/PoiDetail;

    invoke-static {v3}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(Lcom/autonavi/xmgd/navigator/PoiDetail;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/fv;->a:Lcom/autonavi/xmgd/navigator/PoiDetail;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/xmgd/navigator/PoiDetail;->a(ILandroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
