.class Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$2;
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

.field final synthetic val$inputText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$2;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    iput-object p2, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$2;->val$inputText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 448
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$2;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->removeDialog(I)V

    .line 449
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$2;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #calls: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->createBackupProgressDialog()V
    invoke-static {v1}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$000(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;)V

    .line 450
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$2;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->setMenuItemEnabled(Z)V

    .line 451
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$2;->val$inputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, restorePoints:Ljava/lang/String;
    const-string v1, "."

    const-string v2, ","

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 453
    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$2;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    #calls: Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->backupAllSelectedApk(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->access$100(Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;Ljava/lang/String;)V

    .line 454
    return-void
.end method
