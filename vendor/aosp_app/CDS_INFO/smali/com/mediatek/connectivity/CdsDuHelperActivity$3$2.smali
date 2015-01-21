.class Lcom/mediatek/connectivity/CdsDuHelperActivity$3$2;
.super Ljava/lang/Object;
.source "CdsDuHelperActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/connectivity/CdsDuHelperActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/connectivity/CdsDuHelperActivity$3;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsDuHelperActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity$3$2;->this$1:Lcom/mediatek/connectivity/CdsDuHelperActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v1, "mediatek.net.datausg.DATA_INFO_DEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity$3$2;->this$1:Lcom/mediatek/connectivity/CdsDuHelperActivity$3;

    iget-object v1, v1, Lcom/mediatek/connectivity/CdsDuHelperActivity$3;->this$0:Lcom/mediatek/connectivity/CdsDuHelperActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 132
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity$3$2;->this$1:Lcom/mediatek/connectivity/CdsDuHelperActivity$3;

    iget-object v1, v1, Lcom/mediatek/connectivity/CdsDuHelperActivity$3;->this$0:Lcom/mediatek/connectivity/CdsDuHelperActivity;

    #getter for: Lcom/mediatek/connectivity/CdsDuHelperActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/mediatek/connectivity/CdsDuHelperActivity;->access$100(Lcom/mediatek/connectivity/CdsDuHelperActivity;)Landroid/widget/Toast;

    move-result-object v1

    const-string v2, "Data Usage statistics are deleted"

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity$3$2;->this$1:Lcom/mediatek/connectivity/CdsDuHelperActivity$3;

    iget-object v1, v1, Lcom/mediatek/connectivity/CdsDuHelperActivity$3;->this$0:Lcom/mediatek/connectivity/CdsDuHelperActivity;

    #getter for: Lcom/mediatek/connectivity/CdsDuHelperActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/mediatek/connectivity/CdsDuHelperActivity;->access$100(Lcom/mediatek/connectivity/CdsDuHelperActivity;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 134
    return-void
.end method
