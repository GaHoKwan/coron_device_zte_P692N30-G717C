.class Lcom/mediatek/connectivity/CdsPdpActivity$1;
.super Ljava/lang/Object;
.source "CdsPdpActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/connectivity/CdsPdpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/connectivity/CdsPdpActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsPdpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsPdpActivity$1;->this$0:Lcom/mediatek/connectivity/CdsPdpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity$1;->this$0:Lcom/mediatek/connectivity/CdsPdpActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/mediatek/connectivity/CdsPdpActivity;->mSelectApnFeature:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/connectivity/CdsPdpActivity;->access$002(Lcom/mediatek/connectivity/CdsPdpActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity$1;->this$0:Lcom/mediatek/connectivity/CdsPdpActivity;

    #setter for: Lcom/mediatek/connectivity/CdsPdpActivity;->mSelectApnPos:I
    invoke-static {v1, p3}, Lcom/mediatek/connectivity/CdsPdpActivity;->access$102(Lcom/mediatek/connectivity/CdsPdpActivity;I)I

    .line 133
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity$1;->this$0:Lcom/mediatek/connectivity/CdsPdpActivity;

    #getter for: Lcom/mediatek/connectivity/CdsPdpActivity;->mApnSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/mediatek/connectivity/CdsPdpActivity;->access$200(Lcom/mediatek/connectivity/CdsPdpActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 134
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity$1;->this$0:Lcom/mediatek/connectivity/CdsPdpActivity;

    #calls: Lcom/mediatek/connectivity/CdsPdpActivity;->updateConnectButton()V
    invoke-static {v1}, Lcom/mediatek/connectivity/CdsPdpActivity;->access$300(Lcom/mediatek/connectivity/CdsPdpActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsPdpActivity$1;->this$0:Lcom/mediatek/connectivity/CdsPdpActivity;

    const-string v2, "enableMMS"

    #setter for: Lcom/mediatek/connectivity/CdsPdpActivity;->mSelectApnFeature:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/mediatek/connectivity/CdsPdpActivity;->access$002(Lcom/mediatek/connectivity/CdsPdpActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
