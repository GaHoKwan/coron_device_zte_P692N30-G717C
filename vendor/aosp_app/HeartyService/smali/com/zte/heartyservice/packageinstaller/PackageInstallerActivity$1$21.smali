.class Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$21;
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
    .line 1432
    iput-object p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$21;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 1437
    const/4 v3, 0x1

    if-ne v3, p2, :cond_1

    .line 1438
    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$21;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v3, v3, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRunText2:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$14700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0a04c5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1452
    :cond_0
    return-void

    .line 1440
    :cond_1
    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$21;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v3, v3, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRunText2:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$14700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0a04c6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1442
    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$21;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v3, v3, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->autoRunReceivers:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$14500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1444
    .local v2, receiver:Ljava/lang/String;
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$21;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v3, v3, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    iget-object v3, v3, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$21;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v3, v3, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$14900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1446
    .end local v0           #cn:Landroid/content/ComponentName;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
