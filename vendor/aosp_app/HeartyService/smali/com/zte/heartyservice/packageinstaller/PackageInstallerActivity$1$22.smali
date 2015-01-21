.class Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$22;
.super Ljava/lang/Object;
.source "PackageInstallerActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$22;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 8
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 1490
    const/4 v5, 0x1

    if-ne v5, p2, :cond_1

    .line 1491
    iget-object v5, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$22;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v5, v5, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRunText2:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$15400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0a04c8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1510
    :cond_0
    return-void

    .line 1493
    :cond_1
    iget-object v5, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$22;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v5, v5, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRunText2:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$15400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v5

    const v6, 0x7f0a04c9

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 1495
    iget-object v5, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$22;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v5, v5, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->receivers:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$15200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1496
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1497
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1499
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1501
    .local v4, receiver:Ljava/lang/String;
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$22;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v5, v5, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v5, v5, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    invoke-direct {v0, v5, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$22;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v5, v5, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$14900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1503
    .end local v0           #cn:Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    .line 1504
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
