.class Lzte/com/cn/cloudnotepad/ui/HomeActivity$8;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/HomeActivity;->showAboutDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$8;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 618
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/HomeActivity$8;->this$0:Lzte/com/cn/cloudnotepad/ui/HomeActivity;

    #calls: Lzte/com/cn/cloudnotepad/ui/HomeActivity;->downloadApk()V
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/ui/HomeActivity;->access$15(Lzte/com/cn/cloudnotepad/ui/HomeActivity;)V

    .line 619
    return-void
.end method
