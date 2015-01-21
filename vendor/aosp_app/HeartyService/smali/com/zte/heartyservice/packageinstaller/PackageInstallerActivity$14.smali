.class Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$14;
.super Ljava/lang/Object;
.source "PackageInstallerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2696
    iput-object p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$14;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x0

    .line 2698
    const-string v1, "PackageInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " begin install app !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$14;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->installResult:I
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$14;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->installResult:I
    invoke-static {v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2702
    const-string v1, "PackageInstaller"

    const-string v2, "begin run app"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$14;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$14;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mLaunchIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2709
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$14;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #setter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->installResult:I
    invoke-static {v1, v4}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$702(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I

    .line 2710
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$14;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->finish()V

    .line 2729
    :cond_0
    :goto_1
    return-void

    .line 2705
    :catch_0
    move-exception v0

    .line 2707
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2713
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$14;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->installResult:I
    invoke-static {v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$14;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isCheckFinshed:Z
    invoke-static {v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2715
    const-string v1, "PackageInstaller"

    const-string v2, "begin install app"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$14;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hideAll()V
    invoke-static {v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V

    .line 2720
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$14;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #calls: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hideButton()V
    invoke-static {v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$17800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V

    .line 2721
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$14;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mKey:Landroid/view/View;
    invoke-static {v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2723
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$14;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->initView()V

    goto :goto_1
.end method
