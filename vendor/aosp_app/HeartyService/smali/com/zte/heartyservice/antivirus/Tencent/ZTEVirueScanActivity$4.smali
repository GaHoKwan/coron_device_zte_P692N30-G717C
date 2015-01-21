.class Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity$4;
.super Ljava/lang/Object;
.source "ZTEVirueScanActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity$4;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 258
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 259
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->ScanAction:Ljava/lang/String;

    sget-object v2, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->OverallScanAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity$4;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->access$100(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 261
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity$4;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->access$100(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 262
    return-void
.end method
