.class Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$1;
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
    .line 581
    iput-object p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$1;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x1

    .line 586
    if-ne v2, p2, :cond_0

    .line 587
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$1;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAdText2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$2900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a047f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 588
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$1;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mApplicationAdInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    invoke-static {v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$2000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$1;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v1, v1, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->setBlock(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 593
    :goto_0
    return-void

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$1;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAdText2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$2900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a0480

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 591
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$1;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mApplicationAdInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    invoke-static {v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$2000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$1;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v1, v1, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;->setBlock(Landroid/content/Context;Ljava/lang/Boolean;)V

    goto :goto_0
.end method
