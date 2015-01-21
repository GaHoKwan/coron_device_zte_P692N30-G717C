.class Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity$2;
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
    .line 196
    iput-object p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->mEngineDataUpdateManager:Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;
    invoke-static {v1}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;->access$000(Lcom/zte/heartyservice/antivirus/Tencent/ZTEVirueScanActivity;)Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/antivirus/Tencent/EngineDataUpdateManager;->check(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ZTEVirueScanActivity"

    const-string v2, "error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
