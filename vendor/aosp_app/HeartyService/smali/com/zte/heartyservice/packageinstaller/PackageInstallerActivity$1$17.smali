.class Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$17;
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
    .line 1278
    iput-object p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$17;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 1283
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$17;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableDataText2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a04b9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1288
    :goto_0
    return-void

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$17;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableDataText2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$12300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a04ba

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method