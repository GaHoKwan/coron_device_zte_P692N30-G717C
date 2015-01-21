.class Lcom/android/mms/ui/MmsPlayerActivity$3;
.super Ljava/lang/Object;
.source "MmsPlayerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsPlayerActivity;->confirmToDeleteMessage(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsPlayerActivity;

.field final synthetic val$msgUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsPlayerActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 689
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerActivity$3;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MmsPlayerActivity$3;->val$msgUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 692
    invoke-static {}, Lcom/android/mms/ui/SearchActivity;->setNeedRequery()V

    .line 693
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity$3;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    iget-object v2, p0, Lcom/android/mms/ui/MmsPlayerActivity$3;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity$3;->val$msgUri:Landroid/net/Uri;

    invoke-static {v1, v2, v3, v4, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 695
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 696
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 697
    .local v0, mIntent:Landroid/content/Intent;
    const-string v1, "delete_flag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 698
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity$3;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 699
    iget-object v1, p0, Lcom/android/mms/ui/MmsPlayerActivity$3;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 700
    return-void
.end method
