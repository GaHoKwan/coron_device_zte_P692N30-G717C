.class Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$3;
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
    .line 458
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$3;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity$3;->this$0:Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/apksmanager/InstalledSoftwareActivity;->removeDialog(I)V

    .line 461
    return-void
.end method
