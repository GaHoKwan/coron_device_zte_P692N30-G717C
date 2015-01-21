.class Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$1;
.super Ljava/lang/Object;
.source "VirusScanResultAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;

.field final synthetic val$pkgname:Ljava/lang/String;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;

    iput p2, p0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$1;->val$pkgname:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 78
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->mDataList:Ljava/util/List;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->access$100(Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$1;->val$position:I

    if-gt v3, v4, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->mDataList:Ljava/util/List;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->access$100(Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$1;->val$position:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;

    .line 83
    .local v2, qscanrecord:Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;
    iget v3, v2, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;->apkType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 84
    iget-object v0, v2, Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;->path:Ljava/lang/String;

    .line 85
    .local v0, apkPath:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;

    #calls: Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->removeFile(Ljava/lang/String;)Z
    invoke-static {v3, v0}, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->access$200(Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->mActivity:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->access$300(Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;)Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->removeQScanRecord(Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;)V

    goto :goto_0

    .line 96
    .end local v0           #apkPath:Ljava/lang/String;
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->mActivity:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->access$300(Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;)Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$1;->val$pkgname:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 98
    iget-object v3, p0, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->mActivity:Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;
    invoke-static {v3}, Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;->access$300(Lcom/zte/heartyservice/antivirus/Tencent/VirusScanResultAdapter;)Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEVieusScanningActivity;->removeQScanRecord(Lcom/zte/heartyservice/antivirus/Tencent/QScanRecordEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
