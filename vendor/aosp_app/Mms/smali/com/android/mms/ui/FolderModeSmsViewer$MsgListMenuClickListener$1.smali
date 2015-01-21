.class Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener$1;
.super Ljava/lang/Object;
.source "FolderModeSmsViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;

    iget-object v1, v0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener$1;->this$1:Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;

    iget-object v0, v0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mURLs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$1600(Lcom/android/mms/ui/FolderModeSmsViewer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Browser;->saveBookmark(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    return-void
.end method
