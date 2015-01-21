.class Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$7;
.super Ljava/lang/Object;
.source "InstalledSoftwareActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->createDialog(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$7;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 509
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$7;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->removeDialog(I)V

    .line 510
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$7;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #calls: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->createUninstallingProgressDialog()V
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$200(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V

    .line 512
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$7;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->setMenuItemEnabled(Z)V

    .line 513
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$7;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #calls: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->uninstallApplications()V
    invoke-static {v0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$300(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V

    .line 514
    return-void
.end method
