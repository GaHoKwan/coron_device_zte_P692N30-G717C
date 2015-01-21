.class Lcom/android/mms/ui/FolderModeSmsViewer$18;
.super Ljava/lang/Object;
.source "FolderModeSmsViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/FolderModeSmsViewer;->onUpdate(Lcom/android/mms/data/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

.field final synthetic val$showString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FolderModeSmsViewer;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1786
    iput-object p1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$18;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    iput-object p2, p0, Lcom/android/mms/ui/FolderModeSmsViewer$18;->val$showString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1788
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer$18;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->recipent:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$3000(Lcom/android/mms/ui/FolderModeSmsViewer;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$18;->val$showString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1789
    return-void
.end method
