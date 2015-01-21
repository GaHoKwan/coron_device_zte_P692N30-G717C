.class Lcom/android/mms/ui/FolderModeSmsViewer$8;
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

.field final synthetic val$mUriTemp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FolderModeSmsViewer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$8;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    iput-object p2, p0, Lcom/android/mms/ui/FolderModeSmsViewer$8;->val$mUriTemp:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1280
    iget-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer$8;->val$mUriTemp:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1281
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1282
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.browser.application_id"

    iget-object v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer$8;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1283
    const/high16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1284
    iget-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer$8;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/FolderModeSmsViewer;->startActivity(Landroid/content/Intent;)V

    .line 1285
    return-void
.end method
