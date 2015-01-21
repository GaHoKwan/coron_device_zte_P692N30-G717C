.class Lcom/android/mms/ui/FolderModeSmsViewer$3;
.super Ljava/lang/Object;
.source "FolderModeSmsViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FolderModeSmsViewer;->lockMessage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

.field final synthetic val$lock:Z

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FolderModeSmsViewer;Landroid/content/ContentValues;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 791
    iput-object p1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$3;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    iput-object p2, p0, Lcom/android/mms/ui/FolderModeSmsViewer$3;->val$values:Landroid/content/ContentValues;

    iput-boolean p3, p0, Lcom/android/mms/ui/FolderModeSmsViewer$3;->val$lock:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 793
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer$3;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$3;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->searchUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$1100(Lcom/android/mms/ui/FolderModeSmsViewer;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer$3;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 794
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer$3;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    new-instance v1, Lcom/android/mms/ui/FolderModeSmsViewer$3$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/FolderModeSmsViewer$3$1;-><init>(Lcom/android/mms/ui/FolderModeSmsViewer$3;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 801
    return-void
.end method
