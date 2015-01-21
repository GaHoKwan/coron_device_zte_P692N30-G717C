.class Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$2;
.super Ljava/lang/Object;
.source "CreateAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->sortDialog(Lzte/com/cn/cloudnotepad/ui/HomeActivity;[Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$homeActivity:Lzte/com/cn/cloudnotepad/ui/HomeActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$2;->val$homeActivity:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 53
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 54
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog$2;->val$homeActivity:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    invoke-virtual {v0, p2}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->setSortOrder(I)V

    .line 55
    return-void
.end method
