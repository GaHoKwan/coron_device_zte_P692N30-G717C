.class Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$5;
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
    .line 481
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$5;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$5;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$5;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    iget-object v1, v1, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->triggerByAllBtn(Ljava/lang/String;)V

    .line 486
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 487
    return-void
.end method