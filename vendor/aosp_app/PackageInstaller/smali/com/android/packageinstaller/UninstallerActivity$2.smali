.class Lcom/android/packageinstaller/UninstallerActivity$2;
.super Ljava/lang/Object;
.source "UninstallerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/packageinstaller/UninstallerActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/packageinstaller/UninstallerActivity;


# direct methods
.method constructor <init>(Lcom/android/packageinstaller/UninstallerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/packageinstaller/UninstallerActivity$2;->this$0:Lcom/android/packageinstaller/UninstallerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallerActivity$2;->this$0:Lcom/android/packageinstaller/UninstallerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 98
    iget-object v0, p0, Lcom/android/packageinstaller/UninstallerActivity$2;->this$0:Lcom/android/packageinstaller/UninstallerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 99
    return-void
.end method