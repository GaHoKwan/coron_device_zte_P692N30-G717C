.class Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$7;
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
    .line 931
    iput-object p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$7;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 936
    const/4 v0, 0x1

    if-ne v0, p2, :cond_0

    .line 937
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$7;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWriteText2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$6400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a049b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 941
    :goto_0
    return-void

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1$7;->this$1:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    #getter for: Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWriteText2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->access$6400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0a049c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
