.class Lcom/mediatek/connectivity/CdsMtuSettingActivity$1;
.super Ljava/lang/Object;
.source "CdsMtuSettingActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/connectivity/CdsMtuSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/connectivity/CdsMtuSettingActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsMtuSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity$1;->this$0:Lcom/mediatek/connectivity/CdsMtuSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 95
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, item:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity$1;->this$0:Lcom/mediatek/connectivity/CdsMtuSettingActivity;

    #getter for: Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mInterfaceName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->access$000(Lcom/mediatek/connectivity/CdsMtuSettingActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .end local v0           #item:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, item:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsMtuSettingActivity$1;->this$0:Lcom/mediatek/connectivity/CdsMtuSettingActivity;

    #getter for: Lcom/mediatek/connectivity/CdsMtuSettingActivity;->mInterfaceName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/connectivity/CdsMtuSettingActivity;->access$000(Lcom/mediatek/connectivity/CdsMtuSettingActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .end local v0           #item:Ljava/lang/String;
    :cond_0
    return-void
.end method
