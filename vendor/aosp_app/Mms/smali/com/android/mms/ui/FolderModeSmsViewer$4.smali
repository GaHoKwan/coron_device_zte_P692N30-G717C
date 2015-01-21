.class Lcom/android/mms/ui/FolderModeSmsViewer$4;
.super Ljava/lang/Object;
.source "FolderModeSmsViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FolderModeSmsViewer;->confirmToDeleteMessage(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

.field final synthetic val$msgUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FolderModeSmsViewer;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 962
    iput-object p1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$4;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    iput-object p2, p0, Lcom/android/mms/ui/FolderModeSmsViewer$4;->val$msgUri:Landroid/net/Uri;

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

    .line 965
    invoke-static {}, Lcom/android/mms/ui/SearchActivity;->setNeedRequery()V

    .line 966
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$4;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    iget-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer$4;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer$4;->val$msgUri:Landroid/net/Uri;

    invoke-static {v1, v2, v3, v4, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 968
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 969
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 970
    .local v0, mIntent:Landroid/content/Intent;
    const-string v1, "delete_flag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 971
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$4;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 972
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$4;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 973
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$4;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 974
    return-void
.end method
