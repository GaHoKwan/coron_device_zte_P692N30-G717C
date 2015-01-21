.class Lcom/mediatek/connectivity/CdsConnectivityActivity$1;
.super Ljava/lang/Object;
.source "CdsConnectivityActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/connectivity/CdsConnectivityActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/connectivity/CdsConnectivityActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsConnectivityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity$1;->this$0:Lcom/mediatek/connectivity/CdsConnectivityActivity;

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
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 102
    packed-switch p3, :pswitch_data_0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity$1;->this$0:Lcom/mediatek/connectivity/CdsConnectivityActivity;

    const/4 v2, 0x0

    #setter for: Lcom/mediatek/connectivity/CdsConnectivityActivity;->mSelectConnType:I
    invoke-static {v1, v2}, Lcom/mediatek/connectivity/CdsConnectivityActivity;->access$002(Lcom/mediatek/connectivity/CdsConnectivityActivity;I)I

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity$1;->this$0:Lcom/mediatek/connectivity/CdsConnectivityActivity;

    iget-object v1, v1, Lcom/mediatek/connectivity/CdsConnectivityActivity;->mConnSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 119
    :goto_1
    return-void

    .line 104
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity$1;->this$0:Lcom/mediatek/connectivity/CdsConnectivityActivity;

    const/4 v2, 0x1

    #setter for: Lcom/mediatek/connectivity/CdsConnectivityActivity;->mSelectConnType:I
    invoke-static {v1, v2}, Lcom/mediatek/connectivity/CdsConnectivityActivity;->access$002(Lcom/mediatek/connectivity/CdsConnectivityActivity;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity$1;->this$0:Lcom/mediatek/connectivity/CdsConnectivityActivity;

    #setter for: Lcom/mediatek/connectivity/CdsConnectivityActivity;->mSelectConnType:I
    invoke-static {v1, v3}, Lcom/mediatek/connectivity/CdsConnectivityActivity;->access$002(Lcom/mediatek/connectivity/CdsConnectivityActivity;I)I

    .line 117
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 107
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsConnectivityActivity$1;->this$0:Lcom/mediatek/connectivity/CdsConnectivityActivity;

    const/4 v2, 0x0

    #setter for: Lcom/mediatek/connectivity/CdsConnectivityActivity;->mSelectConnType:I
    invoke-static {v1, v2}, Lcom/mediatek/connectivity/CdsConnectivityActivity;->access$002(Lcom/mediatek/connectivity/CdsConnectivityActivity;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    .line 124
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
