.class Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$13;
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
    .line 2682
    iput-object p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$13;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 2684
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$13;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->setResult(I)V

    .line 2685
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.heartyservice.intent.action.install_by_heartyservice_finish"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2686
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$13;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2687
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$13;->this$0:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;

    invoke-virtual {v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->finish()V

    .line 2688
    return-void
.end method
