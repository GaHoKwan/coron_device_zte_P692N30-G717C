.class Lcom/mediatek/connectivity/CdsDuHelperActivity$3;
.super Ljava/lang/Object;
.source "CdsDuHelperActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/connectivity/CdsDuHelperActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/connectivity/CdsDuHelperActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsDuHelperActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity$3;->this$0:Lcom/mediatek/connectivity/CdsDuHelperActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    .line 122
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/connectivity/CdsDuHelperActivity$3;->this$0:Lcom/mediatek/connectivity/CdsDuHelperActivity;

    #getter for: Lcom/mediatek/connectivity/CdsDuHelperActivity;->mThis:Lcom/mediatek/connectivity/CdsDuHelperActivity;
    invoke-static {v2}, Lcom/mediatek/connectivity/CdsDuHelperActivity;->access$000(Lcom/mediatek/connectivity/CdsDuHelperActivity;)Lcom/mediatek/connectivity/CdsDuHelperActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 123
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const-string v2, "WARNING: Data Usage history data will all be deleted and the device will be reboot"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Yes"

    new-instance v4, Lcom/mediatek/connectivity/CdsDuHelperActivity$3$2;

    invoke-direct {v4, p0}, Lcom/mediatek/connectivity/CdsDuHelperActivity$3$2;-><init>(Lcom/mediatek/connectivity/CdsDuHelperActivity$3;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "No"

    new-instance v4, Lcom/mediatek/connectivity/CdsDuHelperActivity$3$1;

    invoke-direct {v4, p0}, Lcom/mediatek/connectivity/CdsDuHelperActivity$3$1;-><init>(Lcom/mediatek/connectivity/CdsDuHelperActivity$3;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 141
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 142
    return-void
.end method
