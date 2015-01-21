.class Lcom/android/mms/ui/FolderModeSmsViewer$11;
.super Ljava/lang/Object;
.source "FolderModeSmsViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FolderModeSmsViewer;->onMessageItemClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

.field final synthetic val$urls:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FolderModeSmsViewer;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1341
    iput-object p1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$11;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    iput-object p2, p0, Lcom/android/mms/ui/FolderModeSmsViewer$11;->val$urls:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1343
    if-ltz p2, :cond_1

    .line 1344
    iget-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer$11;->val$urls:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1345
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1346
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.browser.application_id"

    iget-object v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer$11;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1347
    iget-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer$11;->val$urls:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "smsto:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1348
    iget-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer$11;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    const-string v3, "com.android.mms.ui.SendMessageToActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1350
    :cond_0
    const/high16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1351
    iget-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer$11;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/FolderModeSmsViewer;->startActivity(Landroid/content/Intent;)V

    .line 1353
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1354
    return-void
.end method
