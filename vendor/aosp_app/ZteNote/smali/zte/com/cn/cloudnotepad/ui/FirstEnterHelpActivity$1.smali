.class Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity$1;
.super Ljava/lang/Object;
.source "FirstEnterHelpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;->showServiceDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity$1;->this$0:Lzte/com/cn/cloudnotepad/ui/FirstEnterHelpActivity;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 247
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 248
    return-void
.end method
