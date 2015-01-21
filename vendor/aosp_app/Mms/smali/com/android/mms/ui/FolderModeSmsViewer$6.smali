.class Lcom/android/mms/ui/FolderModeSmsViewer$6;
.super Ljava/lang/Object;
.source "FolderModeSmsViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/FolderModeSmsViewer;
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
    .line 1233
    iput-object p1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$6;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer$6;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #calls: Lcom/android/mms/ui/FolderModeSmsViewer;->onMessageItemClick()V
    invoke-static {v0}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$2100(Lcom/android/mms/ui/FolderModeSmsViewer;)V

    .line 1238
    return-void
.end method
