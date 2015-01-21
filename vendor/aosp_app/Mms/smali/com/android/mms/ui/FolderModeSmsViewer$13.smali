.class Lcom/android/mms/ui/FolderModeSmsViewer$13;
.super Ljava/lang/Object;
.source "FolderModeSmsViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FolderModeSmsViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 1367
    iput-object p1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$13;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer$13;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/FolderModeSmsViewer;->isDlgShow:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$2202(Lcom/android/mms/ui/FolderModeSmsViewer;Z)Z

    .line 1371
    return-void
.end method
